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
if (substr($router, -1) === '/') {
    $router .= 'index';
}
if (strpos($router, '/api') === 0) {
    include 'api' . $router . '.php';
} elseif (!file_exists('page' . $router . '.php')) {
    header('Location: /error/404');
    exit();
}
?>
<div class="h-screen w-full overflow-x-auto">
    <?php
        include 'page' . $router . '.php';
    ?>
</div>
