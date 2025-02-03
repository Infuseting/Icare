<?php
require 'class.iCalReader.php';
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
$uuid = $_GET['id'];

$SQL = "SELECT * FROM ICA_User JOIN ICA_Appartient USING (USE_UUID) JOIN ICA_EDT USING (EDT_ID)  WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $uuid);
$stmt->execute();
$result = $stmt->get_result();

$events = [];
while ($row = $result->fetch_assoc()) {
    $url = $row['EDT_Link'];
    $events = array_merge($events, (array)(parseICS($url) ?? []));
}

$SQL = "SELECT * FROM ICA_User JOIN ICA_Calendar USING (USE_UUID) WHERE USE_UUID = ?";
$stmt = $conn->prepare($SQL);
$stmt->bind_param('s', $uuid);
$stmt->execute();
$result = $stmt->get_result();

while ($row = $result->fetch_assoc()) {
    $event = [];
    $event['DTSTART'] = $row['CAL_HORAIRE_DEBUT'];
    $event['DTEND'] = $row['CAL_HORAIRE_FIN'];
    $event['SUMMARY'] = $row['CAL_Libelle'];
    $event['LOCATION'] = '';
    $events[] = $event;
}


echo generateICS($events);
function parseICS($icsData) {
    $ical = new ICal($icsData);


    $ical->sortEventsWithOrder($ical->events());

    $events = $ical->events();

    return $events;
}

function generateICS($events) {
    $ics = "BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//Icare Organizations//NONSGML v1.0//EN\n";
    foreach ($events as $event) {
        $ics .= "BEGIN:VEVENT\n";
        foreach ($event as $key => $value) {
            $ics .= "$key:$value\n";
        }
        $ics .= "END:VEVENT\n";
    }

    $ics .= "END:VCALENDAR";
    return $ics;
}




?>