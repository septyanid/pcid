<?php
	include "koneksi.php";
	session_start();
$proses = $_GET['act'];

if($_GET['act']=="input"){
		$no_pc = $_POST['no_pc'];
		$divisi = $_POST['divisi'];
		$nama_user = $_POST['nama_user'];
		$set_pc = $_POST['set_pc'];
		$printer1 = $_POST['printer1'];
		$printer2 = $_POST['printer2'];
		$scanner = $_POST['scanner'];
		$ip0 = $_POST['ip0'];
		$ip1 = $_POST['ip1'];
		$ip2 = $_POST['ip2'];
		$lain_lain = $_POST['lain_lain'];

		$printer1 = !empty($printer1) ? "'$printer1'" : "NULL";
		$printer2 = !empty($printer2) ? "'$printer2'" : "NULL";
		$scanner = !empty($scanner) ? "'$scanner'" : "NULL";

		$sql_input = "INSERT INTO pcid (no_pc, divisi, nama_user, set_pc, printer1, printer2, scanner, ip0, ip1, ip2, lain_lain)
			VALUES ('$no_pc', '$divisi', '$nama_user', '$set_pc', $printer1, $printer2, $scanner, '$ip0', '$ip1', '$ip2', '$lain_lain')";

		$result_input = mysqli_query($konek, $sql_input);

		if ($result_input) {
	    	header("location:index.php?pesan=input");
	  } else {
	    	header("location:index.php?pesan=gagal input");
	  }

}else if($_GET['act']=="edit"){
		$id = $_POST['id'];
		$no_pc = $_POST['no_pc'];
		$divisi = $_POST['divisi'];
		$nama_user = $_POST['nama_user'];
		$set_pc = $_POST['set_pc'];
		$printer1 = $_POST['printer1'];
		$printer2 = $_POST['printer2'];
		$scanner = $_POST['scanner'];
		$ip0 = $_POST['ip0'];
		$ip1 = $_POST['ip1'];
		$ip2 = $_POST['ip2'];
		$lain_lain = $_POST['lain_lain'];

		$printer1 = !empty($printer1) ? "'$printer1'" : "NULL";
		$printer2 = !empty($printer2) ? "'$printer2'" : "NULL";
		$scanner = !empty($scanner) ? "'$scanner'" : "NULL";

		$sql_update = "UPDATE `pcid` SET
				id = '$id',
				no_pc = '$no_pc',
				divisi = '$divisi',
				nama_user = '$nama_user',
				set_pc = '$set_pc',
				printer1 = $printer1,
				printer2 = $printer2,
				scanner = $scanner,
				ip0 = '$ip0',
				ip1 = '$ip1',
				ip2 = '$ip2',
				lain_lain = '$lain_lain' WHERE id = '$id'";

		$result_update = mysqli_query($konek, $sql_update);

		if($result_update){
			header("location:index.php?pesan=update");
		}else{
			header("location:index.php?pesan=gagal update");
		}

}else if($_GET['act']=="delete"){
		$id = $_GET['id'];
		$sql = "DELETE FROM pcid WHERE id = '$id'";
		$result = mysqli_query($konek, $sql);

		if($result){
					header("location:index.php?pesan=delete");
				}else{
					header("location:index.php?pesan=gagal delete");
				}

}else if($_GET['act']=="login") {
		$username = $_POST['username'];
		$password = $_POST['password'];
		 
		$login = mysqli_query("SELECT * FROM user WHERE username='$username' AND password='$password'");
		$cek = mysqli_num_rows($konek, $login);
		 
		if($cek > 0){
			session_start();
			$_SESSION['username'] = $username;
			$_SESSION['status'] = "login";
			header("location:index");
		}else{
			header("location:login?pesan=gagal login data tidak ditemukan");
		}
			}	
		
?>