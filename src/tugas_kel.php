<?php
// Koneksi ke database
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "asisten_belajar";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
}

function getChatData() {
    global $conn;

    if ($conn === null) {
        die("Koneksi database null");
    }

    $sql = "SELECT * FROM diskusi";
    $result = $conn->query($sql);

    $data = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }

    return $data;
}
$chatData = getChatData();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Diskusi Kelompok</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white; 
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>
    <h2>Data Diskusi Kelompok</h2>
    <table>
        <tr>
            <th>NIM</th>
            <th>Nama Lengkap</th>
            <th>Angkatan</th>
            <th>Kelas</th>
            <th>Kontak</th>

        </tr>
        <?php foreach ($chatData as $data) : ?>
            <tr>
                <td><?php echo $data['nim']; ?></td>
                <td><?php echo $data['nama_lengkap']; ?></td>
                <td><?php echo $data['angkatan']; ?></td>
                <td><?php echo $data['kelas']; ?></td>
                <td><a href="<?php echo $data['no_wa']; ?>" target="_blank">Hubungi Disini</a></td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>

<?php
$conn->close();
?>
