<?php
	include_once "Connection.php";

	class usr{}
	
	$email = $_POST["email"];
	$password = $_POST["password"];
	
	if ((empty($email)) || (empty($password))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom tidak boleh kosong"; 
		die(json_encode($response));
	}
	
	$query = mysqli_query($koneksi, "SELECT * FROM pelanggan WHERE email='$email' AND password='$password'");
	$row = mysqli_fetch_array($query);
	
	if (!empty($row)){
		$response = new usr();
		$response->success = 1;
		$response->message = "Selamat datang ".$row['username'];
		$response->nama = $row['username'];
		$response->email = $row['email'];
		die(json_encode($response));
	} else { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Email atau password salah";
		die(json_encode($response));
	}
	
	mysqli_close($koneksi);

?>
