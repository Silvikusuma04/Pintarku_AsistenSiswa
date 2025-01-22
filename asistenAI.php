<?php
function koneksiDatabase() {
$server = "localhost";
$username ="root";
$password="";
$database_name ="asisten_belajar";

$koneksi = mysqli_connect($server,$username,$password,$database_name);

if ($koneksi->connect_error) {
    die("Koneksi database gagal: " . $koneksi->connect_error);
}

return $koneksi;
}

function jawabPertanyaan($pertanyaan) {
    $jawabanDefault = "Maaf, Kami tidak tahu jawaban untuk pertanyaan itu.";

    $koneksi = koneksiDatabase();
    // Mengamankan input pertanyaan
    $pertanyaan = $koneksi->real_escape_string($pertanyaan);
    // Query ke database untuk mendapatkan jawaban
    $query = "SELECT jawaban FROM asisten_jawaban WHERE pertanyaan LIKE '%$pertanyaan%'";
    $result = $koneksi->query($query);
    if ($result && $result->num_rows > 0) {
        // Mengambil jawaban dari database
        $row = $result->fetch_assoc();
        $jawaban = $row['jawaban'];
        return $jawaban;
    } else {
        return $jawabanDefault;
    }
}

$pertanyaan = '';
$jawaban = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $pertanyaan = strtolower($_POST['pertanyaan']);
    $jawaban = jawabPertanyaan($pertanyaan);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asisten Belajar Coding</title>
    <style>
        .chat-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: white;
        }

        .chat-container h1 {
            text-align: center;
        }

        .chat-container .chat-log {
            height: 400px;
            overflow-y: scroll;
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }

        .chat-container .user-message {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="chat-container">
        <h1>Asisten Belajar</h1>
        <div class="chat-log">
            <?php if (!empty($jawaban)) : ?>
                <div class="user-message">
                    <strong>Pertanyaan:</strong> <?php echo $_POST['pertanyaan']; ?>
                </div>
                <div class="user-message">
                    <strong>Jawaban:</strong> <?php echo $jawaban; ?>
                </div>
            <?php endif; ?>
        </div>
        <form method="post" action="">
            <input type="text" name="pertanyaan" placeholder="Ketik anda pertanyaan di sini" required autofocus>
            <button type="submit">Tanyakan</button>
        </form>
    </div>
</body>
</html>