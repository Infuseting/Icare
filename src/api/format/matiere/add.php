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
    if (isset($_POST['MAT_Libelle'])) {
        $SQL = "INSERT INTO ICA_Matiere (MAT_Libelle) VALUES (?)";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("s", $_POST['MAT_Libelle']);
        $stmt->execute();
        echo json_encode(['status' => 'success', 'message' => 'Matiere created']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'MAT_Libelle is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>