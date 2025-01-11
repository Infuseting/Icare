<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(6)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to manage prof']);
        exit();
    }
    if (isset($_POST['USE_UUID'])) {
        $SQL2 = "DELETE FROM ICA_Responsable WHERE USE_UUID = ?";
        $stmt2 = $conn->prepare($SQL2);
        $stmt2->bind_param("i", $_POST['USE_UUID']);
        $stmt2->execute();
        $SQL = "DELETE FROM ICA_Prof WHERE USE_UUID = ?";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("i", $_POST['USE_UUID']);
        $stmt->execute();


        echo json_encode(['status' => 'success', 'message' => 'Prof created successfully']);






    } else {
        echo json_encode(['status' => 'error', 'message' => 'User id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>