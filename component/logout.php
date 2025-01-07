<?php
$env = parse_ini_file('../.env');
session_start();
session_unset();
session_destroy();
Header('Location: ' . $env['CAS_LOGIN_URL']);
exit();
?>