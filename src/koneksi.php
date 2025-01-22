<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asisten_belajar";

$koneksi = new mysqli($servername, $username, $password, $dbname);

if ($koneksi->connect_error) {
    die("Koneksi database gagal: " . $koneksi->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $message = $_POST["message-input"];
    $role = $_POST["role"];

    if ($role == "user") {
        $response = getDosenResponse($message);
        echo $response;
    }
}

function getDosenResponse($message) {
    global $koneksi;

    $stmt = $koneksi->prepare("SELECT jawaban FROM pertanyaan_user WHERE pertanyaan = ?");
    $stmt->bind_param("s", $message);
    $stmt->execute();
    $stmt->bind_result($jawaban);
    $stmt->fetch();
    $stmt->close();

    if ($jawaban !== null) {
        return $jawaban;
    } else {
        return "Maaf, pertanyaan Anda harus kami jawab lebih rinci. Silakan klik <a href='https://api.whatsapp.com/send?phone=6285812085463&text=Halo, saya mahahasiwa dari pintarku,asisten muhasiwa izin bertanya.' target='_blank'>di sini</a> untuk menghubungi kami melalui WhatsApp.";
    }

}
?>
