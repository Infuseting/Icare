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
        if (isset($_POST['heritage'])) {
            $SQL = "DELETE FROM ICA_HERITE WHERE CLA_ID = ?";
            $stmt = $conn->prepare($SQL);
            $stmt->bind_param('i', $_POST['CLA_ID']);
            $stmt->execute();

            foreach (explode(',', $_POST['heritage'][0]) as $heritage) {
                if (strlen($heritage) == 0) {
                    continue;
                }
                $SQL2 = "INSERT INTO ICA_HERITE(CLA_ID, ANCETRE_CLA_ID) VALUES (?, ?)";
                $stmt2 = $conn->prepare($SQL2);
                $stmt2->bind_param("ii", $_POST['CLA_ID'], $heritage);
                $stmt2->execute();
            }
            echo json_encode(['status' => 'success', 'message' => 'Class added successfully with heritage']);
        }
        else {
            echo json_encode(['status' => 'error', 'message' => 'heritage is required']);
        }


    } else {
        echo json_encode(['status' => 'error', 'message' => 'etu id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>