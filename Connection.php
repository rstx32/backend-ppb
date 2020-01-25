<?php
    define('HOSTNAME', '#');
    define('USERNAME', '#');
    define('PASSWORD', '#');
    define('DB_SELECT', '#');

    $koneksi = new mysqli(HOSTNAME,USERNAME,PASSWORD,DB_SELECT) or die (mysqli_errno());
?>
