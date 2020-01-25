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
			$num_rows = mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM pelanggan"));

			$statement = $koneksi->prepare("UPDATE pelanggan SET username=?, password=? WHERE email=?");

			$statement->bind_param('sss', $username, $password, $email);
			$results =  $statement->execute();
			if($results){
				$response = new usr();
				$response->success = 1;
				$response->message = "Profil berhasil diperbarui";
				die(json_encode($response));
			}else{
				print 'Error : ('. $mysqli->errno .') '. $mysqli->error;
			}

    	}
	}

	mysqli_close($koneksi);

?>	
