<?php
session_start();
$nim=$_SESSION['nim'];
$nama=$_SESSION['nama'];

$page=@$_GET['page'];

if(!empty($_SESSION['nim'])){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bs/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="data_table/datatable.css">

    <style>
        body {
            background: url('iii.jpg') repeat center center fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
    

<div class="container">
    <div class="row">
        <div class="col-lg-3 mt-5">
            <?php include"navigasi.php"; ?>
        </div>

        <div class="col-lg-9 mt-5">
            <?php
                if ($page=='asistenAI') {
                    include"asistenAI.php";
                }
                if ($page=='jadwal') {
                    include"jadwal.php";
                }
                if ($page=='ruangan') {
                    include"ruangan.php";
                }
                elseif($page=='home'||empty($page)){
                    include 'home.php';
                }
                 elseif($page=='kalender'||empty($page)){
                include 'kalender.php';
                }
                elseif($page=='catatan'){
                    include'catatan.php';
                }
                elseif($page=='contact'){
                    include'contact.php';
                }
                elseif($page=='tugas'){
                    include'tugas.php';
                }
                 elseif($page=='tugas_kel'){
                include'tugas_kel.php';
                }
                elseif($page=='logout'){
                    unset($_SESSION['nim']);
                    unset($_SESSION['nama']);
                    header("location:login.php");
                }
            ?>
        </div>
    </div>
</div>


<script src="jquery/jquery.js"></script>
<script src="bs/js/bootstrap.js"></script>
<script src="data_table/jquery.datatable.js"></script>
<script src="data_table/datatable.bootstrap.js"></script>
<script src="data_table/main.js"></script>
</body>
</html>
<?php
}
else{
    header("location:login.php");
}
?>