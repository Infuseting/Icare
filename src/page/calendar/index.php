<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(12) || hasAdminPermission(13))) {
    if (!($_GET['id'] == $_SESSION['UUID'])) {
        Header('Location: /error/401');
        exit();
    }
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
<div class="fixed bottom-0 mb-4 z-[80] w-full">
    <div class="flex justify-center">
        <?php
        if (hasAdminPermission(13) || $_GET['id'] == $_SESSION['UUID']) {
            echo '<button type="button" class="px-4 py-2 bg-blue-500 hover:bg-blue-700 text-white rounded" aria-haspopup="dialog" aria-expanded="false" aria-controls="hs-stacked-overlays" data-hs-overlay="#hs-stacked-overlays">
  <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="m370-80-16-128q-13-5-24.5-12T307-235l-119 50L78-375l103-78q-1-7-1-13.5v-27q0-6.5 1-13.5L78-585l110-190 119 50q11-8 23-15t24-12l16-128h220l16 128q13 5 24.5 12t22.5 15l119-50 110 190-103 78q1 7 1 13.5v27q0 6.5-2 13.5l103 78-110 190-118-50q-11 8-23 15t-24 12L590-80H370Zm70-80h79l14-106q31-8 57.5-23.5T639-327l99 41 39-68-86-65q5-14 7-29.5t2-31.5q0-16-2-31.5t-7-29.5l86-65-39-68-99 42q-22-23-48.5-38.5T533-694l-13-106h-79l-14 106q-31 8-57.5 23.5T321-633l-99-41-39 68 86 64q-5 15-7 30t-2 32q0 16 2 31t7 30l-86 65 39 68 99-42q22 23 48.5 38.5T427-266l13 106Zm42-180q58 0 99-41t41-99q0-58-41-99t-99-41q-59 0-99.5 41T342-480q0 58 40.5 99t99.5 41Zm-2-140Z"/></svg>
</button>';
            echo '<button onclick="saveCustomEDT(calendar, \'' . $_GET['id'] . '\', destroyedEvent)" id="fixedButton" class="ml-4 px-4 py-2 bg-green-500 hover:bg-green-700 text-white rounded">Save Changes</button>';
        }
        ?>
    </div>

</div>

<div id="hs-stacked-overlays" class="hs-overlay hs-overlay-backdrop-open:bg-gray-900/50 hidden size-full fixed top-0 start-0 z-[90] overflow-x-hidden overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-stacked-overlays-label">
    <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto">
        <div class="flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
            <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                <h3 id="hs-stacked-overlays-label" class="font-bold text-gray-800 dark:text-white">
                    EDT Manager
                </h3>
                <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-stacked-overlays">
                    <span class="sr-only">Close</span>
                    <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M18 6 6 18"></path>
                        <path d="m6 6 12 12"></path>
                    </svg>
                </button>
            </div>

            <div class="p-4 overflow-y-auto">
                <div class="flex flex-col align-items flex-nowrap">
                    <?php
                    $SQL = "SELECT * FROM ICA_EDT JOIN ICA_Appartient USING (EDT_ID) WHERE USE_UUID = ?";
                    $stmt = $conn->prepare($SQL);
                    $stmt->bind_param('s', $_GET['id']);
                    $stmt->execute();
                    $result10 = $stmt->get_result();
                    while ($row10 = $result10->fetch_assoc()) {
                        echo '<div class="flex justify-between border-2 border-white rounded-lg w-100 px-3 py-1">
           <p class="font-medium" style="color: #' . $row10['EDT_Color'] . '; text-shadow: 1px 0 #fff, -1px 0 #fff, 0 1px #fff, 0 -1px #fff, 1px 1px #fff, -1px -1px #fff, 1px -1px #fff, -1px 1px #fff;">' . $row10['EDT_Name'] . '</p>
           <button onclick="deleteEDT(this, '.$row10['EDT_ID'].', '.$_GET['id'].')" type="button" class="text-red-600">
               <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg>
           </button>
       </div>';
                    }

                    ?>
                </div>
                <div class="justify-center flex pt-4">
                    <button type="button" class="py-2 px-4 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none" aria-haspopup="dialog" aria-expanded="false" aria-controls="hs-stacked-overlays-2" data-hs-overlay="#hs-stacked-overlays-2" data-hs-overlay-options='{
          "isClosePrev": true
        }'>
                        Create new EDT
                    </button>
                </div>

            </div>

            <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-stacked-overlays">
                    Close
                </button>
                <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none">
                    Save changes
                </button>
            </div>
        </div>
    </div>
</div>


<div id="hs-stacked-overlays-2" class="hs-overlay hs-overlay-backdrop-open:bg-gray-900/50 hidden size-full fixed top-0 start-0 z-[90] overflow-x-hidden overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-stacked-overlays-label">
    <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto">
        <div class="flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
            <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                <h3 id="hs-stacked-overlays-label" class="font-bold text-gray-800 dark:text-white">
                    New EDT
                </h3>
                <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-stacked-overlays">
                    <span class="sr-only">Close</span>
                    <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M18 6 6 18"></path>
                        <path d="m6 6 12 12"></path>
                    </svg>
                </button>
            </div>

            <div class="p-4 overflow-y-auto">
                <select onchange="changeSelect(this)" data-hs-select='{
          "placeholder": "Type EDT...",
          "toggleTag": "<button type=\"button\" aria-expanded=\"false\"></button>",
          "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
          "dropdownScope": "window",
          "dropdownClasses": "z-[100] w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
          "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
          "optionTemplate": "<div class=\"flex justify-between items-center w-full\"><span data-title></span><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-3.5 text-blue-600 dark:text-blue-500 \" xmlns=\"http:.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><polyline points=\"20 6 9 17 4 12\"/></svg></span></div>",
          "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
        }' class="hidden">
                    <option value="">Choose</option>
                    <option value="1">EDT ADE</option>
                    <!--<option value="2">Google Calendar</option>-->
                    <option value="3">lien .vcs</option>
                </select>
                <div id="EDT_ADE" class="hidden">
                    <input type="text" id="ADE_NUMBER" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="ID EDT">
                    <input type="text" id="ADE_LIBELLE" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Libelle">

                    <div class="mt-4 flex flex-col items-center">
                        <input type="color" class="p-1 h-10 w-14 block  bg-white border border-gray-200 cursor-pointer rounded-lg disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700" id="hs-color-input" value="#2563eb" title="Color of events">
                        <a href="/assets/mp4/ADE_ID.mp4" class="text-red-500">Trouver l'ID de mon emploie du temps</a>
                    </div>

                </div>
                <div id="EDT_CALENDAR" class="hidden">
                    <input type="text" id="ADE_NUMBER" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Google calendar link">
                    <input type="text" id="ADE_LIBELLE" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Libelle">

                    <div class="mt-4 flex justify-center">
                        <input type="color" class="p-1 h-10 w-14 block  bg-white border border-gray-200 cursor-pointer rounded-lg disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700" id="hs-color-input" value="#2563eb" title="Color of events">
                    </div>
                </div>
                <div id="EDT_VCS" class="hidden">
                    <input type="text" id="ADE_NUMBER" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Lien VCS">
                    <input type="text" id="ADE_LIBELLE" class="mt-4 py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Libelle">

                    <div class="mt-4 flex justify-center">
                        <input type="color" class="p-1 h-10 w-14 block  bg-white border border-gray-200 cursor-pointer rounded-lg disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700" id="hs-color-input" value="#2563eb" title="Color of events">
                    </div>
                </div>
            </div>

            <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-stacked-overlays">
                    Close
                </button>
                <button onclick="addEDT(this, <?php echo $_GET['id']?>)" type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none">
                    Save changes
                </button>
            </div>
        </div>
    </div>
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
        if (hasAdminPermission(13) || $_GET['id'] == $_SESSION['UUID']) {
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
                    backgroundColor: 'blue',
                    id: - Math.floor(Math.random() * 1000000) - 1
                });
            }
        },
        eventDidMount: function(info) {
            info.el.addEventListener('dblclick', function() {
                if (info.event.backgroundColor === 'blue') {

                    if (confirm(`Are you sure you want to delete the event "${info.event.title}"?`)) {
                        info.event.remove();
                        destroyedEvent.push(info.event.id);
                    }
                }
            });
        }
    });

    function parseVCS(data, color) {
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
                event.editable = false;
                event.eventResizableFromStart = false;
                event.eventDurationEditable = false;
                event.backgroundColor = color;

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
    const events = parseVCS(data, "#'.$row['EDT_Color'].'");
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
                start: "' . $row['CAL_HORAIRE_DEBUT'] . '",
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
            console.log(event.backgroundColor);
            if (event.backgroundColor === 'blue') {
                console.log(uuid);
                console.log(event.title);
                console.log(event.id);
                console.log(event.start.toISOString().slice(0, 19).replace('T', ' '));
                console.log(event.end.toISOString().slice(0, 19).replace('T', ' '));
                fetch('/api/calendar/save.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({
                        'USE_UUID': uuid,
                        'CAL_Libelle': event.title,
                        'CAL_ID': event.id,
                        'CAL_HORAIRE_DEBUT': event.start.toISOString().slice(0, 19).replace('T', ' '),
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