<?php
	include_once "Connection.php";

	class usr{}

    $today = date("Ymd");
    $NoTa = $_POST["NoTa"];
	$email = $_POST["email"];
	$alamat = $_POST["alamat"];
    $query = mysqli_query($koneksi, "INSERT INTO jual (NoTa, email, alamat, tanggal) VALUES('".$NoTa."','".$email."','".$alamat."','".$today."')");


	mysqli_close($koneksi);
?>	