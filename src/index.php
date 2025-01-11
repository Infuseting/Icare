<?php
include 'config.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<div class="flex overflow-x-auto h-full">
    <?php ob_start(); ?>
    <?php include 'routing.php' ?>
    <?php $routingContent = ob_get_clean(); ?>
    <?php include 'component/sidebar.php'; ?>
    <?php echo $routingContent; ?>
</div>
<script src="/assets/js/script.js"></script>
<script type="module" src="/assets/js/preline.js"></script>
<script src="/assets/js/toastify.js"></script>
</body>
</html>

