<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(6) || hasAdminPermission(7))) {
    if (!$_GET['id'] == $_SESSION['UUID']) {
        Header('Location: /error/403');
        exit();
    }
    Header('Location: /error/401');
    exit();
}


$SQL = "SELECT * FROM ICA_User JOIN ICA_Appartient USING (USE_UUID) JOIN ICA_EDT USING (EDT_ID)  WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $_GET['id']);
$stmt->execute();
$result = $stmt->get_result();

$SQL = "SELECT * FROM ICA_User JOIN ICA_Calendar USING (USE_UUID) WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $_GET['id']);
$stmt->execute();
$result2 = $stmt->get_result();


?>
<div id="calendar" class="h-full w-full"></div>
<div class="flex justify-center items-end">
    <?php
        if (hasAdminPermission(7)) {
            echo '<button onclick="saveCustomEDT(calendar, \'' . $_GET['id'] . '\', destroyedEvent)" id="fixedButton" class="fixed bottom-0 mb-4 z-[80] px-4 py-2 bg-green-500 hover:bg-green-700 text-white rounded">Save Changes</button>';
        }

    ?>
</div>
<script src="/assets/js/calendar.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<!-- iCal.js Library -->

<script>
    const calendarEl = document.getElementById('calendar');
    let destroyedEvent = [];
    let calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'timeGridWeek',
        firstDay: 1, // Set Monday as the first day of the week
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        slotMinTime: '08:00:00', // Limit start time to 8 AM
        slotMaxTime: '20:00:00', // Limit end time to 8 PM
        <?php
            if (hasAdminPermission(7)) {
                echo 'editable: true,';
                echo 'droppable: true,';
                echo 'selectable: true,';
            }
            else {
                echo 'editable: false,';
                echo 'droppable: false,';
                echo 'selectable: false,';
            }

        ?>

        // Add events dynamically on selection
        select: function(info) {
            const title = prompt('Enter event title:');
            if (title) {
                calendar.addEvent({
                    title: title,
                    start: info.startStr,
                    end: info.endStr,
                    id: - Math.floor(Math.random() * 1000000) - 1
                });
            }
        },
        eventDidMount: function(info) {
            info.el.addEventListener('dblclick', function() {
                if (confirm(`Are you sure you want to delete the event "${info.event.title}"?`)) {
                    info.event.remove();
                    destroyedEvent.push(info.event.id);
                }
            });
        }
    });

    function parseVCS(data) {
        const events = [];
        // Replace literal "\n" with actual newlines (if necessary)
        data = data.replace(/\\n/g, '\n');

        // Split data into individual events based on "BEGIN:VEVENT" and "END:VEVENT"
        const eventBlocks = data.split("BEGIN:VEVENT").slice(1);
        for (const block of eventBlocks) {
            const endIndex = block.indexOf("END:VEVENT");
            if (endIndex === -1) continue;

            const eventData = block.substring(0, endIndex).trim();
            const event = {};

            // Extract key-value pairs
            eventData.split("\n").forEach(line => {

                const [key, value] = line.split(":");
                if (key === "SUMMARY") event.title = value;
                if (key.includes("DTSTART")) event.start = parseVCSDate(value);
                if (key.includes("DTEND")) event.end = parseVCSDate(value);
                event.backgroundColor = 'purple';
                event.editable = false;
                event.eventResizableFromStart = false;
                event.eventDurationEditable = false;
            });

            events.push(event);
        }
        return events;
    }

    function parseVCSDate(vcsDate) {
        const year = vcsDate.substring(0, 4);
        const month = vcsDate.substring(4, 6);
        const day = vcsDate.substring(6, 8);
        const hour = vcsDate.substring(9, 11);
        const minute = vcsDate.substring(11, 13);
        const second = vcsDate.substring(13, 15);
        return new Date(`${year}-${month}-${day}T${hour}:${minute}:${second}`);
    }
    <?php
    while ($row = $result->fetch_assoc()) {
        echo 'fetch("/api/proxy.php?URL='.$row['EDT_Link'].'")
.then(response => {
    if (!response.ok) {
        throw new Error("Network response was not ok");
    }
    return response.text();
})
.then(data => {
    console.log(\'Successfully loaded .ics file.\');
    const events = parseVCS(data);
    calendar.addEventSource(events); // Add events to FullCalendar
})
.catch(error => console.error(\'Error loading .ics file:\', error));';
    }
?>
    <?php
        $SQL = "SELECT * FROM ICA_Calendar WHERE USE_UUID = ?";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param('s', $_GET['id']);
        $stmt->execute();
        $result = $stmt->get_result();
        while ($row = $result->fetch_assoc()) {
            echo 'calendar.addEvent({
                id: "' . $row['CAL_ID'] . '",
                title: "' . $row['CAL_Libelle'] . '",
                start: "' . $row['CAL_HORAIRE_DEPART'] . '",
                end: "' . $row['CAL_HORAIRE_FIN'] . '",
                backgroundColor: "blue",
                editable: true,
                eventResizableFromStart: true,
                eventDurationEditable: true
            });';
        }

         ?>
    calendar.setOption('locale', 'fr');

    calendar.render();
    function saveCustomEDT(calendar, uuid) {
        let count = 0;
        const loadingToastPerm = newLoadingToast("Sauvegarde en cours ...");
        destroyedEvent.forEach(event => {
            fetch('/api/calendar/remove.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: new URLSearchParams({
                    'USE_UUID': uuid,
                    'CAL_ID': event,
                })
            })
                .then(response => {
                    if (!response.ok) {
                        return response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
                    }
                    return response.json();
                })
                .then(data => {
                    if (data.status === 'success') {

                    } else {
                        count++;
                    }
                })
                .catch(error => {
                    console.error('Error:', error.message);
                    count++;
                });
        });
        calendar.getEvents().forEach(event => {
            if (event.backgroundColor !== 'purple') {
                fetch('/api/calendar/save.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({
                        'USE_UUID': uuid,
                        'CAL_Libelle': event.title,
                        'CAL_ID': event.id,
                        'CAL_HORAIRE_DEPART': event.start.toISOString().slice(0, 19).replace('T', ' '),
                        'CAL_HORAIRE_FIN':  event.end.toISOString().slice(0, 19).replace('T', ' ')
                    })
                })
                    .then(response => {
                        if (!response.ok) {
                            response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.status === 'success') {


                        } else {
                            count++;
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error.message);
                        count++;
                    });
            }
        });
        loadingToastPerm.hideToast();
        if (count === 0) {
            newSuccessToast("Calendrier modifiée avec succes");
        }
        else {
            newSuccessToast("Calendrier modifiée avec succes mais " + count + " évenement(s) n'ont pas pu être sauvegardé(s)");
        }

    }
</script>

