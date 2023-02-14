<?php

// koneksi database
$conn = mysqli_connect('localhost', 'root', '', 'kasirbaru');

// cek id_barang
if (isset($_POST['id_barang'])) {
 $id_barang = $_POST['id_barang'];

 $query = mysqli_query($conn, "SELECT id_barang FROM barang WHERE id_barang = '$id_barang'"); 

 if($query->num_rows > 0) {
  echo "<script>alert('id_barang sudah terdaftar');</script>";
 } else {
  mysqli_query($conn, "INSERT INTO tb_test (id_barang) VALUES ('$id_barang')");
 }
}

// tampilkan data
$stmt = mysqli_query($conn, "SELECT id_barang FROM tb_test");

?>

<!DOCTYPE html>
<html>
<head>
 <title>Validasi data yang sudah ada didatabase dengan PHP</title>
</head>
<body>

 <h3>Contoh validasi id_barang</h3>

 <form method="POST" action="">
  <label for="id_barang">Masukan id_barang</label>
  <input type="text" name="id_barang" id="id_barang">
  <button type="submit" name="submit">Kirim</button>
 </form>
 
 <br/>
 <hr/>
 <br/>


</body>
</html>