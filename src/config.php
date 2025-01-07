<?php
$env = parse_ini_file('.env');

session_start();

$servername = $env['DB_SERVER'];
$username = $env['DB_USER'];
$password = $env['DB_PASSWORD'];
$dbname = $env['DB_NAME'];

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if (!isset($_GET['UUID']) && !isset($_SESSION['UUID'])) {
    Header('Location: ' . $env['CAS_LOGIN_URL']);
    exit();
} else {
    if (isset($_GET['UUID'])) {
        $_SESSION['UUID'] = $_GET['UUID'];
    }

    $sql = "SELECT COUNT(*) FROM ICA_User WHERE USE_UUID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $_SESSION['UUID']);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->fetch_row()[0] == 0) {
        Header('Location: ' . $env['CAS_LOGIN_URL']);
        exit();
    }
}
function hasAdminPermission($id){
    global $conn;
    $sql = "SELECT * FROM ICA_User_Permission WHERE USE_UUID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $_SESSION['UUID']);
    $stmt->execute();
    $result = $stmt->get_result();
    while ($row = $result->fetch_assoc()) {
        if ($row['PER_ID'] == $id || $row['PER_ID'] == 1) {
            return true;
        }
    }
    return false;
}
function getConn()
{
    global $conn;
    return $conn;
}
?>