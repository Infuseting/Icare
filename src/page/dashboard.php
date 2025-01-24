<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

$SQL = "SELECT * FROM ICA_User JOIN ICA_Appartient USING (USE_UUID) JOIN ICA_EDT USING (EDT_ID)  WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $_SESSION['UUID']);
$stmt->execute();
$result = $stmt->get_result();

$SQL = "SELECT * FROM ICA_User JOIN ICA_Calendar USING (USE_UUID) WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $_SESSION['UUID']);
$stmt->execute();
$result2 = $stmt->get_result();


?>

<div class="flex justify-center py-10 items-center w-full">
    <div class=" w-3/4  h-3/4  rounded-lg border-2 px-4 py-4 shadow-lg bg-gray-100">
        <a href="/calendar/?id=<?php echo $_SESSION['UUID'] ?>" class="text-3xl font-bold">Mon EDT</a>
        <div id="calendar" class="pt-4 h-full w-full rounded-b-lg">

        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<!-- iCal.js Library -->

<script>
    const calendarEl = document.getElementById('calendar');
    let destroyedEvent = [];
    let calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'timeGridWeek',
        firstDay: 1, // Set Monday as the first day of the week
        headerToolbar: {
            left: '',
            center: '',
            right: 'prev,next'
        },
        slotMinTime: '08:00:00', // Limit start time to 8 AM
        slotMaxTime: '20:00:00', // Limit end time to 8 PM
        editable: false,
        droppable: false,
        selectable: false,

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
    $stmt->bind_param('s', $_SESSION['UUID']);
    $stmt->execute();
    $result = $stmt->get_result();
    while ($row = $result->fetch_assoc()) {
        echo 'calendar.addEvent({
                title: "' . $row['CAL_Libelle'] . '",
                start: "' . $row['CAL_HORAIRE_DEPART'] . '",
                end: "' . $row['CAL_HORAIRE_FIN'] . '",
                backgroundColor: "blue",
                editable: false,
                eventResizableFromStart: false,
                eventDurationEditable: false
            });';
    }

    ?>
    calendar.setOption('locale', 'fr');

    calendar.render();
</script>
