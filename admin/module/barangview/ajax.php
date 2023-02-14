 <?php

//membuat koneksi ke database
$koneksi = mysqli_connect("localhost", "root", "", "kasirbaru");

//variabel nim yang dikirimkan form.php
$nama_barang = $_GET['nama_barang'];

//mengambil data
$query = mysqli_query($koneksi, "select * from barang where nama_barang='$nama_barang'");
$brg = mysqli_fetch_array($query);
$data = array(
            'kondisi'      =>  @$brg['kondisi'],
            'harga_beli'      =>  @$brg['harga_beli'],
            'harga_jual'   =>  @$brg['harga_jual'],);

//tampil data
echo json_encode($data);
?>