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
    if (isset($_POST['ETU_ID'])) {
        if (isset($_POST['NIV_ID'])) {
            if (isset($_POST['TYPC_ID'])) {
                if (isset($_POST['CLA_Libelle'])) {
                    $SQL = 'INSERT INTO ICA_Classe (ETU_ID, NIV_ID, TYPC_ID, CLA_Libelle) VALUES (?, ?, ?, ?)';
                    $stmt = $conn->prepare($SQL);
                    $stmt->bind_param('iiis', $_POST['ETU_ID'], $_POST['NIV_ID'], $_POST['TYPC_ID'], $_POST['CLA_Libelle']);
                    $stmt->execute();
                    if (isset($_POST['heritage'])) {
                        foreach (explode(',', $_POST['heritage'][0]) as $heritage) {
                            if (strlen($heritage) == 0) {
                                continue;
                            }
                            $SQL2 = "INSERT INTO ICA_HERITE(CLA_ID, ANCETRE_CLA_ID) VALUES (?, ?)";
                            $stmt2 = $conn->prepare($SQL2);
                            $classeId = $stmt->insert_id;
                            $stmt2->bind_param("ii", $classeId, $heritage);
                            $stmt2->execute();
                        }
                        echo json_encode(['status' => 'success', 'message' => 'Class added successfully with heritage']);
                    }
                    else {
                        echo json_encode(['status' => 'success', 'message' => 'Class added successfully']);
                    }
                }
                else {
                    echo json_encode(['status' => 'error', 'message' => 'Class name is required']);
                }
            }
            else {
                echo json_encode(['status' => 'error', 'message' => 'Type class id is required']);
            }
        }
        else {
            echo json_encode(['status' => 'error', 'message' => 'Niveau id is required']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'etu id is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>