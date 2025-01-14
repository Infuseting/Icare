<?php
include '../index.php';

$conn = getConn();
if (!isset($conn)) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection error']);
    exit();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hasAdminPermission(10)) {
        echo json_encode(['status' => 'error', 'message' => 'You do not have permissions to manage class']);
        exit();
    }
    if (isset($_POST['BAT_ID1'])) {
        if (isset($_POST['BAT_ID2'])) {
            if (isset($_POST['DIS_Temps'])) {
                if ($_POST['DIS_Temps'] >= 0 && $_POST['DIS_Temps'] <= 300) {
                    $SQL = 'SELECT * FROM ICA_Distance WHERE BAT_ID1 = ? AND BAT_ID2 = ?';
                    $stmt = $conn->prepare($SQL);
                    $stmt->bind_param('ii', $_POST['BAT_ID1'], $_POST['BAT_ID2']);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    $row = $result->num_rows > 0 ? true : false;
                    error_log($row);
                    if ($row) {
                        $SQL = 'UPDATE ICA_Distance SET DIS_Temps = ? WHERE BAT_ID1 = ? AND BAT_ID2 = ?';
                        $stmt = $conn->prepare($SQL);
                        $stmt->bind_param('iii', $_POST['DIS_Temps'], $_POST['BAT_ID1'], $_POST['BAT_ID2']);
                        $stmt->execute();
                        $SQL = 'UPDATE ICA_Distance SET DIS_Temps = ? WHERE BAT_ID2 = ? AND BAT_ID1 = ?';
                        $stmt = $conn->prepare($SQL);
                        $stmt->bind_param('iii', $_POST['DIS_Temps'], $_POST['BAT_ID1'], $_POST['BAT_ID2']);
                        $stmt->execute();
                        echo json_encode(['status' => 'success', 'message' => 'updated successfully']);
                    } else {
                        $SQL = 'INSERT INTO ICA_Distance(BAT_ID1, BAT_ID2, DIS_Temps) VALUES (?, ?, ?)';
                        $stmt = $conn->prepare($SQL);
                        $stmt->bind_param('iii', $_POST['BAT_ID1'], $_POST['BAT_ID2'], $_POST['DIS_Temps']);
                        $stmt->execute();
                        $SQL = 'INSERT INTO ICA_Distance(BAT_ID2, BAT_ID1, DIS_Temps) VALUES (?, ?, ?)';
                        $stmt = $conn->prepare($SQL);
                        $stmt->bind_param('iii', $_POST['BAT_ID1'], $_POST['BAT_ID2'], $_POST['DIS_Temps']);
                        $stmt->execute();
                        echo json_encode(['status' => 'success', 'message' => 'added successfully']);
                    }
                }
                else {
                    echo json_encode(['status' => 'error', 'message' => 'temps must be between 0 and 300']);
                }
            }
            else {
                echo json_encode(['status' => 'error', 'message' => 'temps is required']);
            }
        }
        else {
            echo json_encode(['status' => 'error', 'message' => 'type is required']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'bat id 1 is required']);
    }
} else {
    header('Location: /error/405');
    exit();
}
?>