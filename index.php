<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>PCID</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<h3 class="judul">Data PC Staff Kahaptex</h3>
	<hr />

<?php
		if(isset($_GET['pesan'])){
			$pesan = $_GET['pesan'];
			if($pesan == "input"){
				echo '<div class="alert alert-primary" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
						<strong> Sukses..!</strong> Data Berhasil Tersimpan.
						</div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}else if($pesan == "gagal input"){
				echo '<div class="alert alert-primary" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
						<strong> Maaf..!</strong> Data Gagal Tersimpan.
						</div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}else if($pesan == "update"){
				echo '<div class="alert alert-primary" role="alert">
			            <strong> Sukses..!</strong> Data Berhasil Diubah.
			            </div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}else if($pesan == "gagal update"){
				echo '<div class="alert alert-primary" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
						<strong> Maaf..!</strong> Data Gagal Diubah.
						</div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}else if($pesan == "delete"){
				echo '<div class="alert alert-primary" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
						<strong> Sukses..!</strong> Data Berhasil Terhapus.
						</div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}else if($pesan == "gagal delete"){
				echo '<div class="alert alert-primary" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
						<strong> Maaf..!</strong> Data Gagal Dihapus.
						</div>';
				echo '<meta http-equiv="refresh" content="3;url=index.php">';
			}
		}
	?>

<?php 
	$s_jurusan="";
    $s_keyword="";
    if (isset($_POST['search'])) {
        $s_jurusan = $_POST['s_jurusan'];
        $s_keyword = $_POST['s_keyword'];
    }
?>

<form method="POST" action="">
    <div class="row mb-3">
    	<div class="col-sm-2" >
	        <a href="#" type="button" class="btn btn-primary2" data-toggle="modal" data-target="#ModalInput">Tambah Data</a>
	    </div>
    	<div class="col-sm-2">
            <select name="s_jurusan" id="s_jurusan" class="form-control">
                <option value="">All</option>
                <option value="manager" <?php if ($s_jurusan=="manager"){ echo "selected"; } ?>>MANAGER</option>
                <option value="hrd" <?php if ($s_jurusan=="hrd"){ echo "selected"; } ?>>HRD</option>
                <option value="design" <?php if ($s_jurusan=="design"){ echo "selected"; } ?>>DESIGN</option>
                <option value="it" <?php if ($s_jurusan=="it"){ echo "selected"; } ?>>IT</option>
                <option value="exim" <?php if ($s_jurusan=="exim"){ echo "selected"; } ?>>EXIM</option>
                <option value="stok" <?php if ($s_jurusan=="stok"){ echo "selected"; } ?>>STOK LT.4</option>
                <option value="law" <?php if ($s_jurusan=="law"){ echo "selected"; } ?>>LAW</option>
                <option value="sj" <?php if ($s_jurusan=="sj"){ echo "selected"; } ?>>SJ</option>
                <option value="produksi" <?php if ($s_jurusan=="produksi"){ echo "selected"; } ?>>PRODUKSI</option>
                <option value="purchasing" <?php if ($s_jurusan=="purchasing"){ echo "selected"; } ?>>PURCHASING</option>
                <option value="gudang" <?php if ($s_jurusan=="gudang"){ echo "selected"; } ?>>GUDANG</option>
                <option value="audit" <?php if ($s_jurusan=="audit"){ echo "selected"; } ?>>AUDIT</option>
                <option value="a/r" <?php if ($s_jurusan=="a/r"){ echo "selected"; } ?>>A/R</option>
                <option value="akunting" <?php if ($s_jurusan=="akunting"){ echo "selected"; } ?>>AKUNTING</option>
                <option value="fakturing" <?php if ($s_jurusan=="fakturing"){ echo "selected"; } ?>>FAKTURING</option>
                <option value="marketing" <?php if ($s_jurusan=="marketing"){ echo "selected"; } ?>>MARKETING</option>
            </select>	        
    	</div> 
	    <div class="col-sm-3" >
	        <input type="text" placeholder="Keyword" name="s_keyword" id="s_keyword" class="form-control" value="<?php echo $s_keyword; ?>">
	    </div>
	    <div class="col-sm-1" >
	        <button id="search" name="search" class="btn btn-warning"><i class="fa fa-search"></i></button>
	    </div>
	    <div class="col-sm-2">
<?php
		$sql_jml = mysqli_query($konek, "SELECT no_pc FROM pcid");
		$jml_pc = mysqli_num_rows($sql_jml);
?>

	    	Total PC :&nbsp; <?php echo $jml_pc ?>
	    </div>
	</div>
</form>
<!-- ============================Modal Input================================-->
<div class="modal fade" id="ModalInput" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silahkan Input Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<form role="form" action="action.php?act=input" method="post">
<?php
	//$proses = $_GET['proses'];

				$sql = "SELECT no_pc FROM `pcid` order by no_pc DESC";
				$hasil = mysqli_query($konek, $sql);
				$data = mysqli_fetch_array($hasil);
				$no_pc = $data['no_pc'];
			
?>
	<div class="form-group">
	    <label>ID</label>
	    <input type="text" class="form-control" name="no_pc" value="<?php echo $no_pc ?>">
  	</div>

  	<div class="form-group">
	    <label>Divisi</label>
	    	<select name="divisi" class="form-control">
	    		<option value=""></option>
	    		<option value="MANAGER">MANAGER</option>
	    		<option value="HRD">HRD</option>
	    		<option value="DESIGN">DESIGN</option>
	    		<option value="IT">IT</option>
	    		<option value="EXIM">EXIM</option>
	    		<option value="STOK LT.4">STOK LT.4</option>
	    		<option value="LAW">LAW</option>
	    		<option value="SJ">SJ</option>
	    		<option value="PRODUKSI">PRODUKSI</option>
	    		<option value="PURCHASING">PURCHASING</option>
	    		<option value="GUDANG">GUDANG</option>
	    		<option value="AUDIT">AUDIT</option>
	    		<option value="AKUNTING">AKUNTING</option>
	    		<option value="FAKTURING">FAKTURING</option>
	    		<option value="A/R">A/R</option>
	    		<option value="MARKETING">MARKETING</option>
	    	</select>
  	</div>

  	<div class="form-group">
	    <label>User</label>
	    <input type="text" class="form-control" name="nama_user">
  	</div>

  	<div class="form-group">
	    <label>Set PC</label>
	    <input type="text" class="form-control" name="set_pc">
  	</div>

  	<div class="form-group">
	    <label>Printer 1</label>
	    <input type="text" class="form-control" name="printer1">
  	</div>

  	<div class="form-group">
	    <label>Printer 2</label>
	    <input type="text" class="form-control" name="printer2">
  	</div>

  	<div class="form-group">
	    <label>Scanner</label>
	    <input type="text" class="form-control" name="scanner">
  	</div>

  	<div class="form-group">
	    <label>IP 0</label>
	    <input type="text" class="form-control" name="ip0">
  	</div>

  	<div class="form-group">
	    <label>IP 1</label>
	    <input type="text" class="form-control" name="ip1">
  	</div>

  	<div class="form-group">
	    <label>IP n</label>
	    <input type="text" class="form-control" name="ip2">
  	</div>

  	<div class="form-group">
	    <label>Lain-Lain</label>
	    <input type="text" class="form-control" name="lain_lain">
  	</div>
	<div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>

        </form>
      </div>
	</div>
  </div>
</div>
<!-- ============================End of Modal Input================================-->

	

<!-- ============================Start of Table================================-->
<div class="limiter">
	<div class="container-table100">
		<div class="wrap-table100">
			<div class="table100 ver1 m-b-110">
				<div class="table100-head">
					<table>
						<thead>
							<tr class="row100 head">
								<th class="cell100 column1">#</th>
								<th class="cell100 column2">ID</th>
								<th class="cell100 column3">Divisi</th>
								<th class="cell100 column4">User</th>
								<th class="cell100 column5">Set PC</th>
								<th class="cell100 column6">Printer 1</th>
								<th class="cell100 column7">Printer 2</th>
								<th class="cell100 column8">Scanner</th>
								<th class="cell100 column9">IP 0</th>
								<th class="cell100 column10">IP 1</th>
								<th class="cell100 column11">IP n</th>
								<th class="cell100 column12">Lain-Lain</th>
								<th class="cell100 column13">Proses</th>
							</tr>
						</thead>
					</table>
				</div>
<div class="table100-body js-pscroll">
	<table>
		<tbody>
<?php
    $search_jurusan = '%'. $s_jurusan .'%';
    $search_keyword = '%'. $s_keyword .'%';
    $no = 1;
    $query = "SELECT * FROM pcid WHERE divisi LIKE ? AND (no_pc LIKE ? OR divisi LIKE ? OR nama_user LIKE ? OR ip0 LIKE ? OR ip1 LIKE ?) ORDER BY id ASC";
    $dewan1 = $konek->prepare($query);
    $dewan1->bind_param('ssssss', $search_jurusan, $search_keyword, $search_keyword, $search_keyword, $search_keyword, $search_keyword);
    $dewan1->execute();
    $res1 = $dewan1->get_result();

    if ($res1->num_rows > 0) {
        while ($row = $res1->fetch_assoc()) {
            $id = $row['id'];
            $no_pc = $row['no_pc'];
            $divisi = $row['divisi'];
            $nama_user = $row['nama_user'];
            $set_pc = $row['set_pc'];
            $printer1 = $row['printer1'];
            $printer2 = $row['printer2'];
            $scanner = $row['scanner'];
            $ip0 = $row['ip0'];
            $ip1 = $row['ip1'];
            $ip2 = $row['ip2'];
            $lain_lain = $row['lain_lain'];
?>
			<tr class="row100 body">
				<td class="cell100 column1"><?php echo $no++; ?></td>
				<td class="cell100 column2"><?php echo $no_pc; ?></td>
				<td class="cell100 column3"><?php echo $divisi; ?></td>
				<td class="cell100 column4"><?php echo $nama_user; ?></td>
				<td class="cell100 column5"><?php echo $set_pc; ?></td>
				<td class="cell100 column6"><?php echo $printer1; ?></td>
				<td class="cell100 column7"><?php echo $printer2; ?></td>
				<td class="cell100 column8"><?php echo $scanner; ?></td>
				<td class="cell100 column9"><?php echo $ip0; ?></td>
				<td class="cell100 column10"><?php echo $ip1; ?></td>
				<td class="cell100 column11"><?php echo $ip2; ?></td>
				<td class="cell100 column12"><?php echo $lain_lain; ?></td>
				<td class="cell100 column13">
					<a href="#" data-toggle="modal" data-target="#ModalEdit<?php echo $row['id'];?>"><i class="fa fa-edit"></i></a>
					<a href="action.php?act=delete&id=<?php echo $row['id']; ?>" onClick="return confirm ('are you sure you want to delete ?')"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
<!-- =====================================Model Edit======================================== -->
<div class="modal fade" id="ModalEdit<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<form role="form" action="action.php?act=edit" method="post">
<?php
	//$proses = $_GET['proses'];
				$id = $row['id'];
				$sql2 = "SELECT * FROM `pcid` where id='$id'";
				$hasil2 = mysqli_query($konek, $sql2);
                $data2 = mysqli_fetch_array($hasil2);
                $id = $data2['id'];
				$no_pc = $data2['no_pc'];
				$divisi = $data2['divisi'];
				$nama_user = $data2['nama_user'];
				$set_pc = $data2['set_pc'];
				$printer1 = $data2['printer1'];
				$printer2 = $data2['printer2'];
				$scanner = $data2['scanner'];
				$ip0 = $data2['ip0'];
				$ip1 = $data2['ip1'];
				$ip2 = $data2['ip2'];
				$lain_lain = $data2['lain_lain'];
			
?>
	<div class="form-group">
	    <label>#</label>
	    <input type="text" class="form-control" name="id" value="<?php echo $id ?>" readonly>

  	</div><div class="form-group">
	    <label>ID</label>
	    <input type="text" class="form-control" name="no_pc" value="<?php echo $no_pc ?>">
  	</div>

  	<div class="form-group">
	    <label>Divisi</label>
	    <select name="divisi" class="form-control">
	    		<option value="<?php echo $divisi;?>"><?php echo $divisi;?></option>
	    		<option value="MANAGER">MANAGER</option>
	    		<option value="HRD">HRD</option>
	    		<option value="DESIGN">DESIGN</option>
	    		<option value="IT">IT</option>
	    		<option value="EXIM">EXIM</option>
	    		<option value="STOK LT.4">STOK LT.4</option>
	    		<option value="LAW">LAW</option>
	    		<option value="SJ">SJ</option>
	    		<option value="PRODUKSI">PRODUKSI</option>
	    		<option value="PURCHASING">PURCHASING</option>
	    		<option value="GUDANG">GUDANG</option>
	    		<option value="AUDIT">AUDIT</option>
	    		<option value="AKUNTING">AKUNTING</option>
	    		<option value="FAKTURING">FAKTURING</option>
	    		<option value="A/R">A/R</option>
	    		<option value="MARKETING">MARKETING</option>
	    	</select>
  	</div>

  	<div class="form-group">
	    <label>User</label>
	    <input type="text" class="form-control" name="nama_user" value="<?php echo $nama_user ?>">
  	</div>

  	<div class="form-group">
	    <label>Set PC</label>
	    <input type="text" class="form-control" name="set_pc" value="<?php echo $set_pc ?>">
  	</div>

  	<div class="form-group">
	    <label>Printer 1</label>
	    <input type="text" class="form-control" name="printer1" value="<?php echo $printer1 ?>">
  	</div>

  	<div class="form-group">
	    <label>Printer 2</label>
	    <input type="text" class="form-control" name="printer2" value="<?php echo $printer2 ?>">
  	</div>

  	<div class="form-group">
	    <label>Scanner</label>
	    <input type="text" class="form-control" name="scanner" value="<?php echo $scanner ?>">
  	</div>

  	<div class="form-group">
	    <label>IP 0</label>
	    <input type="text" class="form-control" name="ip0" value="<?php echo $ip0 ?>">
  	</div>

  	<div class="form-group">
	    <label>IP 1</label>
	    <input type="text" class="form-control" name="ip1" value="<?php echo $ip1 ?>">
  	</div>

  	<div class="form-group">
	    <label>IP n</label>
	    <input type="text" class="form-control" name="ip2" value="<?php echo $ip2 ?>">
  	</div>

  	<div class="form-group">
	    <label>Lain-Lain</label>
	    <input type="text" class="form-control" name="lain_lain" value="<?php echo $lain_lain ?>">
  	</div>

	<div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
    </div>
    	</form>
      </div>
    </div>
  </div>
</div>
<?php 
} 
	} else { 
?> 
			<tr>
				<td style="text-align: center;">Tidak ada data ditemukan</td>
            </tr>
<?php 
} 
?>
		</tbody>
	</table>
</div>
</div>
</div>
</div>
</div>
<!--======================================End of Model Edit========================================-->

<!--=======================================End of Table===========================================-->

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="js/main.js"></script>
<!--===============================================================================================-->
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
	<script>
	    $(document).ready(function() {
	        window.setTimeout(function() {
	            $(".alert").fadeTo(500, 0).slideUp(500, function(){
	                $(this).remove();
	            });
	        }, 3000);
	    });    
	</script>
	<!-- <script>
		function bootstrapAlert() {
			$.bootstrapGrowl("this is message is success");
		}
	</script> -->
</body>
</html>