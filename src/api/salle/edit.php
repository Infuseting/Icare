<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(9)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to manage class']);
        exit();
    }
    if (isset($_POST['SAL_ID'])) {
        if (isset($_POST['type'])) {
            $SQL = "DELETE FROM ICA_EST_TYPE WHERE SAL_ID = ?";
            $stmt = $conn->prepare($SQL);
            $stmt->bind_param('i', $_POST['SAL_ID']);
            $stmt->execute();

            foreach (explode(',', $_POST['type'][0]) as $type) {
                if (strlen($type) == 0) {
                    continue;
                }
                $SQL2 = "INSERT INTO ICA_EST_TYPE(SAL_ID, TYP_ID) VALUES (?, ?)";
                $stmt2 = $conn->prepare($SQL2);
                $stmt2->bind_param("ii", $_POST['SAL_ID'], $type);
                $stmt2->execute();
            }

        }
        if (isset($_POST['utilisable'])) {
            error_log("test");
            $SQL = "DELETE FROM ICA_Autorise WHERE SAL_ID = ?";
            $stmt = $conn->prepare($SQL);
            $stmt->bind_param('i', $_POST['SAL_ID']);
            $stmt->execute();

            foreach (explode(',', $_POST['utilisable'][0]) as $utilisable) {
                error_log($utilisable);
                if (strlen($utilisable) == 0) {
                    continue;
                }
                $SQL2 = "INSERT INTO ICA_Autorise(SAL_ID, ETU_ID) VALUES (?, ?)";
                $stmt2 = $conn->prepare($SQL2);
                $stmt2->bind_param("ii", $_POST['SAL_ID'], $utilisable);
                $stmt2->execute();
            }
        }

        echo json_encode(['status' => 'success', 'message' => 'Salleupdated successfully']);


    } else {
        echo json_encode(['status' => 'error', 'message' => 'sal id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>