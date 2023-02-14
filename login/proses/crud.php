<?php
    require 'panggil.php';

    // proses tambah
    if(!empty($_GET['aksi'] == 'tambah'))
    {
        $id_member = strip_tags($_POST['id_member']);
        $user = strip_tags($_POST['user']);
        $pass = strip_tags($_POST['pass']);
        $level = strip_tags($_POST['level']);
        
        $tabel = 'login';
        # proses insert
        $data[] = array(
            'id_member'     =>$id_member,
            'user'		=>$user,
            'pass'		=>md5($pass),
            'level'      =>$level
        );
        $proses->tambah_data($tabel,$data);
        echo '<script>alert("Tambah Data Berhasil");window.location="../index.php"</script>';
    }
// proses tambah member
    if(!empty($_GET['aksi'] == 'tambah_member'))
    {
        $nm_member = strip_tags($_POST['nm_member']);
        $alamat_member = strip_tags($_POST['alamat_member']);
        $telepon = strip_tags($_POST['telepon']);
        $email = strip_tags($_POST['email']);
        $gambar = strip_tags($_POST['gambar']);
        $nik = strip_tags($_POST['nik']);
        
        $tabel = 'member';
        # proses insert
        $data[] = array(
            'nm_member'     =>$nm_member,
            'alamat_member'      =>$alamat_member,
            'telepon'      =>$telepon,
            'email'      =>$email,
            'gambar'      =>$gambar,
            'nik'      =>$nik
        );
        $proses->tambah_data_member($tabel,$data);
        echo '<script>alert("Tambah Data Berhasil");window.location="../index.php"</script>';
    }

    // proses edit
	if(!empty($_GET['aksi'] == 'edit'))
	{
		$id_member = strip_tags($_POST['id_member']);
		$user = strip_tags($_POST['user']);
		$pass = strip_tags($_POST['pass']);
        $level = strip_tags($_POST['level']);
		
        // jika pass tidak diisi
        if($pass == '')
        {
            $data = array(
                'user'		=>$user,
                'level'	=>$level,
                'id_member'		=>$id_member
            );
        }else{

            $data = array(
                'user'		=>$user,
                'pass'		=>md5($pass),
                'id_member'		=>$id_member,
                'level'     =>$level
            );
        }
        $tabel = 'login';
        $where = 'id_login';
        $id = strip_tags($_POST['id_login']);
        $proses->edit_data($tabel,$data,$where,$id);
        echo '<script>alert("Edit Data Berhasil");window.location="../index.php"</script>';
    }
    
    // hapus data
    if(!empty($_GET['aksi'] == 'hapus'))
    {
        $tabel = 'login';
        $where = 'id_login';
        $id = strip_tags($_GET['hapusid']);
        $proses->hapus_data($tabel,$where,$id);
        echo '<script>alert("Hapus Data Berhasil");window.location="../index.php"</script>';
    }

    // login
    if(!empty($_GET['aksi'] == 'login'))
    {   
        // validasi text untuk filter karakter khusus dengan fungsi strip_tags()
        $user = strip_tags($_POST['user']);
        $pass = strip_tags($_POST['pass']);
        // panggil fungsi proses_login() yang ada di class prosesCrud()
        $result = $proses->proses_login($user,$pass);
        if($result == 'gagal')
        {
            echo "<script>window.location='../login.php?get=gagal';</script>";
        }else{
            // status yang diberikan 
            session_start();
            $_SESSION['ADMIN'] = $result;
            // status yang diberikan 
            echo "<script>window.location='../index.php';</script>";
        }
    }
?>