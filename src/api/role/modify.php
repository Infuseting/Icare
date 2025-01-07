<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(3)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to modify a role']);
        exit();
    }
    if (isset($_POST['ROL_ID'])) {
        //$SQL = "UPDATE ICA_Role SET ROL_Libelle = ? WHERE ROL_ID = ?";
        //$stmt = $conn->prepare($SQL);
        //$stmt->bind_param("si", $_POST['name'], $_POST['ROL_ID']);
        //$stmt->execute();
        if (!empty($_POST['permissions']) && is_array($_POST['permissions'])) {
            if (!hasAdminPermission(3)) {
                echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to modify permissions']);
                exit();
            }
            $SQL2 = "DELETE FROM ICA_ROLE_HAS_PERMISSION WHERE ROL_ID = ?";
            $stmt2 = $conn->prepare($SQL2);
            $stmt2->bind_param("i", $_POST['ROL_ID']);
            $stmt2->execute();
            foreach (explode(',', $_POST['permissions'][0]) as $permission) {
                $SQL3 = "INSERT INTO ICA_ROLE_HAS_PERMISSION (ROL_ID, PER_ID) VALUES (?, ?)";
                $stmt3 = $conn->prepare($SQL3);
                $stmt3->bind_param("ii", $_POST['ROL_ID'], $permission);
                $stmt3->execute();
            }
            echo json_encode(['status' => 'success', 'message' => 'Role modified with permissions']);
        }
        else {
            echo json_encode(['status' => 'success', 'message' => 'Role modified without any permissions']);
        }
    }
    else {
        echo json_encode(['status' => 'error', 'message' => 'Role ID is required']);
    }
}
else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method']);
}

?>