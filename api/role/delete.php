<?php
include '../index.php';


$conn = getConn();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(5)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to delete a role']);
        exit();
    }

    if (isset($_POST['ROL_ID'])) {
        $ROL_ID = $_POST['ROL_ID'];
        $SQL = "DELETE FROM ICA_ROLE_HAS_PERMISSION WHERE ROL_ID = ?";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("i", $ROL_ID);
        $stmt->execute();
        $SQL = "DELETE FROM ICA_USER_HAS_ROLE WHERE ROL_ID = ?";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("i", $ROL_ID);
        $stmt->execute();
        $SQL = "DELETE FROM ICA_Role WHERE ROL_ID = ?";
        $stmt = $conn->prepare($SQL);
        $stmt->bind_param("i", $ROL_ID);
        if ($stmt->execute()) {
            echo json_encode(['status' => 'success', 'message' => 'Role deleted successfully']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Error while deleting role']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Role ID is required']);
    }
}
else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method']);
}


?>