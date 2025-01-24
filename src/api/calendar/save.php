<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(13) || $_SESSION['UUID'] != $_POST['USE_UUID']) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to modify permissions']);
        exit();
    }
    if (isset($_POST['CAL_ID']) && isset($_POST['USE_UUID']) && isset($_POST['CAL_Libelle']) && isset($_POST['CAL_HORAIRE_DEBUT']) && isset($_POST['CAL_HORAIRE_FIN'])) {
        if ($_POST['CAL_ID'] < 0) {

            $SQL3 = "INSERT INTO ICA_Calendar (USE_UUID, CAL_Libelle, CAL_HORAIRE_DEBUT, CAL_HORAIRE_FIN) VALUES (?, ?, ?, ?)";
            $stmt3 = $conn->prepare($SQL3);
            $stmt3->bind_param("ssss", $_POST['USE_UUID'], $_POST['CAL_Libelle'], $_POST['CAL_HORAIRE_DEBUT'], $_POST['CAL_HORAIRE_FIN']);
            $stmt3->execute();
        }


        echo json_encode(['status' => 'success', 'message' => 'Calendar event created successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role name, start time, and end time are required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>