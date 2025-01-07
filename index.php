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
function getConn()
{
    global $conn;
    return $conn;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<div class="flex">
    <?php ob_start(); ?>
    <?php include 'routing.php'?>
    <?php $routingContent = ob_get_clean(); ?>
    <?php include 'component/sidebar.php'; ?>
    <?php echo $routingContent; ?>
</div>
<script src="https://cdn.tailwindcss.com"></script>
<script src="/assets/js/script.js"></script>
</body>
</html>

