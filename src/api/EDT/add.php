<?php

include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    error_log(print_r($_POST, true));
    if (isset($_POST['USE_UUID']) && isset($_POST['EDT_LINK']) && isset($_POST['EDT_COLOR']) && isset($_POST['EDT_LIBELLE'])) {
        $SQL = "INSERT INTO ICA_EDT (EDT_LINK, EDT_Color, EDT_NAME) VALUES (?, ?, ?);";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("sss", $_POST['EDT_LINK'], $_POST['EDT_COLOR'], $_POST['EDT_LIBELLE']);
        if ($stmt->execute()) {
            $insert_id = $stmt->insert_id;
            error_log($insert_id);
            error_log($_POST['USE_UUID']);
            $SQL2 = "INSERT INTO ICA_Appartient (USE_UUID, EDT_ID) VALUES (?, ?);";
            $stmt2 = $conn->prepare($SQL2);
            $stmt2->bind_param("si", $_POST['USE_UUID'], $insert_id);
            $stmt2->execute();
            echo json_encode(['status' => 'success', 'message' => 'EDT added successfully']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Failed to add EDT']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role name, start time, and end time are required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
