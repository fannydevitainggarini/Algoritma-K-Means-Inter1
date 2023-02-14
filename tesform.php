<html>
    <head>
        <title></title>
    </head>
    <body>
        <form action="">
            <table>
                <tr><td>nama_barang</td><td><input type="text" onKeyUp="isi_otomatis()" id="nama_barang"></td></tr>
                <tr><td>kondisi</td><td><input type="text" id="kondisi" disabled></td></tr>
                <tr><td>harga_beli</td><td><input type="text" id="harga_beli" disabled></td></tr>
                <tr><td>harga_jual</td><td><input type="text" id="harga_jual" disabled></td></tr>
            </table>
        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript">
            function isi_otomatis(){
                var nama_barang = $("#nama_barang").val();
                $.ajax({
                    url: 'ajax.php',
                    data:"nama_barang="+nama_barang ,
                }).success(function (data) {
                    var json = data,
                    obj = JSON.parse(json);
                    $('#kondisi').val(obj.kondisi);
                    $('#harga_beli').val(obj.harga_beli);
                    $('#harga_jual').val(obj.harga_jual);
                    
                });
            }
        </script>
    </body>
</html>
