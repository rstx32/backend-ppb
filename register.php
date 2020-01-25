<?php
	include_once "Connection.php";

	class usr{}

	$username = $_POST["username"];
	$email = $_POST["email"];
	$password = $_POST["password"];
	$confirm_password = $_POST["confirm_password"];

	if ((empty($username))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom nama tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($email))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom email tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($password))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom password tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($confirm_password)) || $password != $confirm_password) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Konfirmasi password tidak sama";
		die(json_encode($response));
	} else {
		if (!empty($email)&& $password == $confirm_password){
			$num_rows = mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM pelanggan WHERE email='".$email."'"));

			if ($num_rows == 0){
				$query = mysqli_query($koneksi, "INSERT INTO pelanggan (username, password, email) VALUES('".$username."','".$password."','".$email."')");

				if ($query){
					$response = new usr();
					$response->success = 1;
					$response->message = "Register berhasil, silahkan login.";
					die(json_encode($response));

				} else {
					$response = new usr();
					$response->success = 0;
					$response->message = "Email sudah terdaftar";
					die(json_encode($response));
				}
			} else {
				$response = new usr();
				$response->success = 0;
				$response->message = "Email sudah terdaftar";
				die(json_encode($response));
			}
		}
	}

	mysqli_close($koneksi);

?>	
