<?php

include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (!(hasAdminPermission(13)) && $_SESSION['UUID'] !== $_POST['USE_UUID']) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to modify permissions']);
        exit();
    }
    if (isset($_POST['USE_UUID']) && isset($_POST['CAL_ID'])) {
        $SQL3 = "DELETE FROM ICA_Calendar WHERE USE_UUID = ? AND CAL_ID = ?";
        $stmt3 = $conn->prepare($SQL3);
        $stmt3->bind_param("si", $_POST['USE_UUID'], $_POST['CAL_ID']);
        $stmt3->execute();

        echo json_encode(['status' => 'success', 'message' => 'Calendar event removed successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role name, start time, and end time are required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
