<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(8)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to manage class']);
        exit();
    }
    if (isset($_POST['CLA_ID'])) {
        $SQL = 'DELETE FROM ICA_HERITE WHERE ANCETRE_CLA_ID = ?';
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param('i', $_POST['CLA_ID']);
        $stmt->execute();
        $SQL = 'DELETE FROM ICA_Classe WHERE CLA_ID = ?';
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param('i', $_POST['CLA_ID']);
        $stmt->execute();
        echo json_encode(['status' => 'success', 'message' => 'Class removed successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'cla id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>