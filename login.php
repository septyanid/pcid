<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>PCID</title>
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<br/>
	<div id="wrapper">

	<img src="images/kahaptex.jpg">

		<form action="action.php?act=login" method="post" onSubmit="return validasi()">
			<div>
				<label>Username:</label>
				<input type="text" name="username" id="username" />
			</div>
			<div>
				<label>Password:</label>
				<input type="password" name="password" id="password" />
			</div>
		<div class="row">
			<div class="col-sm">
				<input type="submit" value="Login" class="tombol">
			</div>			
			<div class="col-sm">
				<a href="index2">Guess Login</a>
			</div>
		</div>
		</form>
	</div>

<?php 
	if(isset($_GET['pesan'])) { 
?>
			<div class="error">
				<label>Oopps... <?php echo $_GET['pesan']; ?></label>
			</div>
<?php 
	} 
?>
<script type="text/javascript">
	function validasi() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;		
		if (username != "" && password!="") {
			return true;
		}else{
			alert('Username dan Password harus di isi !');
			return false;
		}
	}
</script>

<script>
	$(document).ready(function(){
	    $("#body").fadeIn(3000);
	});
</script>
</body> 
</html>