<?php
	include_once "Connection.php";

	class usr{}

    $today=date("Ymd");
    $NoTa = $_POST["NoTa"];
	$kd_brg = $_POST["kd_brg"];
	$quantity = $_POST["quantity"];

    $query = mysqli_query($koneksi, "INSERT INTO djual (NoTa, kd_brg, quantity) VALUES('".$NoTa."','".$kd_brg."','".$quantity."')");

	mysqli_close($koneksi);
?>	