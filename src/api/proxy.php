<?php


$url = $_GET['URL'];
$icsContent = file_get_contents($url);
echo $icsContent;

function convertIcsToVcs($icsContent) {
    $vcsContent = "BEGIN:VCALENDAR\nVERSION:1.0\n";
    $lines = explode("\n", $icsContent);
    foreach ($lines as $line) {
        if (strpos($line, "BEGIN:VEVENT") !== false) {
            $vcsContent .= "BEGIN:VEVENT\n";
        } elseif (strpos($line, "END:VEVENT") !== false) {
            $vcsContent .= "END:VEVENT\n";
        } elseif (strpos($line, "SUMMARY:") !== false) {
            $vcsContent .= str_replace("SUMMARY:", "SUMMARY:", $line) . "\n";
        } elseif (strpos($line, "DTSTART:") !== false) {
            $vcsContent .= str_replace("DTSTART:", "DTSTART:", $line) . "\n";
        } elseif (strpos($line, "DTEND:") !== false) {
            $vcsContent .= str_replace("DTEND:", "DTEND:", $line) . "\n";
        }
    }
    $vcsContent .= "END:VCALENDAR\n";
    return $vcsContent;
}


?>