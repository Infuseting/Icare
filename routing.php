<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

function route($path) {
    $path = preg_replace('/[?#].*/', '', $path);
    $path = preg_replace('/https?:\/\/[^\/]+/', '', $path);
    return $path;
}

$router = route($_SERVER['REQUEST_URI']);
if ($router == '/' || $router == '') {
    $router = '/dashboard';
}
if (!file_exists('page' . $router . '.php')) {
    header('Location: /error/404');
    exit();
}
?>
<div class="h-full w-full">
    <?php
        include 'page' . $router . '.php';
    ?>
</div>
