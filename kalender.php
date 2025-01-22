<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalender Akademik</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

            .red {
    background-color: #ffffff; /* Warna putih */
}
    </style>
</head>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asis"; 

$koneksi = new mysqli($servername, $username, $password, $dbname);

if ($koneksi->connect_error) {
    die("Koneksi database gagal: " . $koneksi->connect_error);
}

$query = "SELECT * FROM kalender_akademik";
$result = $koneksi->query($query);

if ($result->num_rows > 0) {
    echo "<table>
            <tr>
                <th>Tanggal</th>
                <th>Keterangan</th>
            </tr>";

    while ($row = $result->fetch_assoc()) {
        $tanggal = $row["tanggal"];
        $keterangan = $row["keterangan"];
        
        // Cek apakah ada keterangan, jika ada beri class 'red'
        $class = ($keterangan != '') ? ' class="red"' : '';

        echo "<tr{$class}>
                <td>{$tanggal}</td>
                <td>{$keterangan}</td>
              </tr>";
    }

    echo "</table>";
} else {
    echo "Tidak ada data pada kalender akademik.";
}

$koneksi->close();
?>

</body>
</html>
