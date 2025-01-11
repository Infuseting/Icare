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
        if (isset($_POST['STA_ID'])) {
            if (isset($_POST['matieres'])) {
                $SQL = "UPDATE ICA_Prof SET STA_ID = ? WHERE USE_UUID = ?";
                $stmt = $conn->prepare($SQL);
                $stmt->bind_param("ii", $_POST['STA_ID'], $_POST['USE_UUID']);
                $stmt->execute();
                $SQL = "DELETE FROM ICA_Responsable WHERE USE_UUID = ?";
                $stmt = $conn->prepare($SQL);
                $stmt->bind_param("i", $_POST['USE_UUID']);
                $stmt->execute();


                foreach (explode(',', $_POST['matieres'][0]) as $matiere) {
                    error_log($matiere);
                    if (strlen($matiere) == 0) {
                        continue;
                    }
                    $SQL3 = "INSERT INTO ICA_Responsable (USE_UUID, MAT_ID) VALUES (?, ?)";
                    $stmt3 = $conn->prepare($SQL3);
                    $stmt3->bind_param("ii", $_POST['USE_UUID'], $matiere);
                    $stmt3->execute();
                }


                echo json_encode(['status' => 'success', 'message' => 'Prof created successfully']);
            }
            else {
                echo json_encode(['status' => 'error', 'message' => 'Matiere id is required']);
            }
        }
        else {
            echo json_encode(['status' => 'error', 'message' => 'Status id is required']);
        }





    } else {
        echo json_encode(['status' => 'error', 'message' => 'User id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>