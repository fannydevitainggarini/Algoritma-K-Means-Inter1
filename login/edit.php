<?php
    // session start
    if(!empty($_SESSION)){ }else{ session_start(); }
    //session
	if(!empty($_SESSION['admin'] && $_SESSION['level'] == "admin")){ }else{ header('location:login.php'); }
    // panggil file
    require 'proses/panggil.php';
    
    // tampilkan form edit
    $idGet = strip_tags($_GET['id']);
    $hasil = $proses->tampil_data_id('login','id_login',$idGet);
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Edit Pengguna</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
    <body style="background:#fdb35a;">
		<div class="container">
			<br/>
            <span style="color:#fff";>Selamat Datang, <?php echo $sesi['nama_pengguna'];?></span>
			<div class="float-right">	
				<a href="index.php" class="btn btn-success btn-md" style="margin-right:1pc;"><span class="fa fa-home"></span> Kembali</a> 
				<a href="logout.php" class="btn btn-danger btn-md float-right"><span class="fa fa-sign-out"></span> Logout</a>
			</div>		
			<br/><br/><br/>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-lg-6">
					<br/>
					<div class="card">
						<div class="card-header">
						<h4 class="card-title">Edit Pengguna - <?php echo $hasil['nama_pengguna'];?></h4>
						</div>
						<div class="card-body">
						<!-- form berfungsi mengirimkan data input 
						dengan method post ke proses crud dengan paramater get aksi edit -->
							<form action="proses/crud.php?aksi=edit" method="POST">
								<div class="form-group">
									<label>Id Member</label>
									<input type="number" value="<?php echo $hasil['id_member'];?>" class="form-control" name="id_member">
								</div>
								<div class="form-group">
									<label>Username</label>
									<input type="text" value="<?php echo $hasil['user'];?>" class="form-control" name="user">
								</div>
								<div class="form-group">
									<label>Password</label>
									<input type="password" value="" placeholder="ubah password" class="form-control" name="pass">
									<input type="hidden" value="<?php echo $hasil['id_login'];?>" class="form-control" name="id_login">
								</div>
								<div class="form-group">
									<label>Level</label>
									<input type="text" value="<?php echo $hasil['level'];?>" class="form-control" name="level" readonly>
								</div>
								<button class="btn btn-primary btn-md" name="create"><i class="fa fa-edit"> </i> Edit Data</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</body>
</html>