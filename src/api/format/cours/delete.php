<?php
include '../../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(7)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to create a new matieres']);
        exit();
    }
    if (isset($_POST['MAT_ID'])) {
        if (isset($_POST['SEM_ID'])) {
            if (isset($_POST['ETU_ID'])) {
                $SQL = "DELETE FROM ICA_FORMAT WHERE MAT_ID = ? AND SEM_ID = ? AND ETU_ID = ?";
                $stmt = $conn->prepare($SQL);
                $stmt->bind_param("iii", $_POST['MAT_ID'], $_POST['SEM_ID'], $_POST['ETU_ID']);
                $stmt->execute();
                echo json_encode(['status' => 'success', 'message' => 'Cours deleted']);
            }
            else {
                echo json_encode(['status' => 'error', 'message' => 'ETU_ID is required']);
            }
        }
        else {
            echo json_encode(['status' => 'error', 'message' => 'SEM_ID is required']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'MAT_ID is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}


?>