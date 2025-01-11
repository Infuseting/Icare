<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(4)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to create a new role']);
        exit();
    }
    if (isset($_POST['name'])) {
        $SQL = "INSERT INTO ICA_Role (ROL_Libelle) VALUES (?)";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("s", $_POST['name']);

        if (!empty($_POST['permissions'])) {
            if (!hasAdminPermission(3)) {
                echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to add permissions']);
                exit();
            }
            $stmt->execute();
            foreach ($_POST['permissions'] as $permission) {
                if (strlen($permission) == 0) {
                    continue;
                }
                $SQL2 = "INSERT INTO ICA_ROLE_HAS_PERMISSION (ROL_ID, PER_ID) VALUES (?, ?)";
                $stmt2 = $conn->prepare($SQL2);
                $roleId = $stmt->insert_id;
                $stmt2->bind_param("ii", $roleId, $permission);
                $stmt2->execute();
            }
            echo json_encode(['status' => 'success', 'message' => 'Role create with permissions']);
        }
        else {
            echo json_encode(['status' => 'success', 'message' => 'Role create without any permissions']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role name is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>