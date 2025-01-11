<?php
include '../../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(2)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to modify permissions of user']);
        exit();
    }
    if (isset($_POST['USE_UUID'])) {
        if (!empty($_POST['roles']) && is_array($_POST['roles'])) {
            $SQL2 = "DELETE FROM ICA_USER_HAS_ROLE WHERE USE_UUID = ?";
            $stmt2 = $conn->prepare($SQL2);
            $stmt2->bind_param("i", $_POST['USE_UUID']);
            $stmt2->execute();
            foreach (explode(',', $_POST['roles'][0]) as $role) {
                if (strlen($role) == 0) {
                    continue;
                }

                $SQL3 = "INSERT INTO ICA_USER_HAS_ROLE (USE_UUID, ROL_ID) VALUES (?, ?)";
                $stmt3 = $conn->prepare($SQL3);
                $stmt3->bind_param("ii", $_POST['USE_UUID'], $role);
                $stmt3->execute();
            }
            echo json_encode(['status' => 'success', 'message' => 'User role modified']);
        }
        else {
            echo json_encode(['status' => 'success', 'message' => 'Roles modification is not set']);
        }
    }
    else {
        echo json_encode(['status' => 'error', 'message' => 'UUID of User is required']);
    }
}
else {
    header('Location: /error/405');
    exit();
}

?>