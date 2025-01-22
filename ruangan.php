<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penggunaan Ruangan Kampus</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .status-available {
            color: green;
        }

        .status-unavailable {
            color: red;
        }

        .search-container {
            margin-bottom: 20px;
        }

        .search-container input[type=text] {
            padding: 8px;
            margin-top: 8px;
            margin-bottom: 8px;
            width: 250px;
            box-sizing: border-box;
        }

        .empty-info {
            background-color: #007bff;
            color: white;
            padding: 8px;
            margin-top: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="search-container">
    <label for="search">Search:</label>
    <input type="text" id="search" placeholder="Search..." onkeyup="searchTable()">
</div>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asis"; 

$koneksi = new mysqli($servername, $username, $password, $dbname);

if ($koneksi->connect_error) {
    die("Koneksi database gagal: " . $koneksi->connect_error);
}

$query = "SELECT * FROM penggunaan_ruangan";
$result = $koneksi->query($query);

if ($result->num_rows > 0) {
    echo "<table border='1' id='myTable'>
            <tr>
                <th>No</th>
                <th>Hari</th>
                <th>Jam Ke</th>
                <th>Ruangan</th>
                <th>Digunakan oleh</th>
                <th>Mata Kuliah</th>
            </tr>";

    $no = 1; // Tambahkan variabel untuk nomor urut
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $no++ . "</td>
                <td>" . $row["hari"] . "</td>
                <td>" . $row["jam_ke"] . "</td>
                <td>" . $row["ruangan"] . "</td>
                <td>" . $row["digunakan"] . "</td>
                <td>" . $row["matkul"] . "</td>
              </tr>";
    }

    echo "</table>";

    // Tambahkan informasi ruangan kosong di bawah tabel
    echo "<div class='empty-info'>
            <p>Di hari Senin:</p>
            <ul>
                <li>Ruangan 102 kosong jam ke 5-12</li>
                <li>Ruangan Lab Komputer Lama kosong jam ke 7-12</li>
                <li>Ruangan Lab Komputer Baru kosong jam ke 7-12</li>
                <li>Ruangan 104 kosong jam ke 7-12</li>
                <li>Ruangan 203 kosong jam ke 4-12</li>
                <li>Ruangan 302 kosong jam ke 7-12 dan 1-3</li>
            </ul>
          </div>";

    echo "<div class='empty-info'>
            <p>Di hari Selasa:</p>
            <ul>
                <li>Ruangan 203 kosong jam ke 7-12</li>
                <li>Ruangan Lab Komputer Baru kosong jam ke 11-12</li>
                <li>Ruangan Lab Komputer Lama kosong jam ke 9-12</li>
                <li>Ruangan 004 kosong jam ke 7-12</li>
            </ul>
          </div>";

    echo "<div class='empty-info'>
            <p>Di hari Rabu:</p>
            <ul>
                <li>Ruangan 306 kosong jam ke 5-12</li>
                <li>Ruangan Lab Komputer Lama kosong jam ke 7-12</li>
                <li>Ruangan 004 kosong jam ke 5-12</li>
                <li>Ruangan 203 kosong jam ke 7-12</li>
                <li>Ruangan 18 kosong jam ke 7-12</li>
            </ul>
          </div>";

    echo "<div class='empty-info'>
            <p>Di hari Kamis:</p>
            <ul>
                <li>Ruangan 201 kosong jam ke 7-12</li>
                <li>Ruangan Lab Komputer Lama kosong jam ke 11-12</li>
                <li>Ruangan Lab Komputer Baru kosong jam ke 7-12</li>
            </ul>
          </div>";

    echo "<div class='empty-info'>
            <p>Di hari Jumat:</p>
            <ul>
                <li>Ruangan Lab Komputer Lama kosong jam ke 7-12</li>
                <li>Ruangan Lab Komputer Baru kosong jam ke 7-12</li>
            </ul>
          </div>";

} else {
    echo "Tidak ada data penggunaan ruangan.";
}

$koneksi->close();
?>

<script>
function searchTable() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("search");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        var found = false; // Tambahkan variabel untuk menandai hasil pencarian

        td = tr[i].getElementsByTagName("td");

        for (var j = 1; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    found = true; // Jika ditemukan, set found menjadi true
                    break; // Keluar dari loop jika sudah ditemukan
                }
            }
        }

        if (found) {
            tr[i].style.display = "";
        } else {
            tr[i].style.display = "none";
        }
    }
}
</script>

</body>
</html>
