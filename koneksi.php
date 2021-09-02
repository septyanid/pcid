<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$database = "pcid";

	$konek = mysqli_connect($host, $user, $pass);
	
	mysqli_select_db($konek, $database);
		if(!$konek){
			die("koneksi gagal".mysqli_connect_error());
		}
?>