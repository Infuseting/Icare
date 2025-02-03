<?php

include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (isset($_POST['USE_UUID']) && isset($_POST['EDT_ID'])) {
        $SQL3 = "DELETE FROM ICA_Appartient WHERE USE_UUID = ? AND EDT_ID = ?";
        $stmt3 = $conn->prepare($SQL3);
        $stmt3->bind_param("ii", $_POST['USE_UUID'], $_POST['EDT_ID']);
        $stmt3->execute();
        $SQL3 = "DELETE FROM ICA_EDT WHERE EDT_ID = ? ";
        $stmt3 = $conn->prepare($SQL3);
        $stmt3->bind_param("i", $_POST['EDT_ID']);
        $stmt3->execute();


        echo json_encode(['status' => 'success', 'message' => 'EDT removed successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role name, start time, and end time are required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
