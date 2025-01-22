<!DOCTYPE html>
<html>
<head>
    <title>Jadwal</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: white; 
        }

        th, td {
            border: 0.5px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        td.pulang {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Jadwal</h1>
    <table>
        <tr>
            <th>Hari</th>
            <th>Mata Pelajaran</th>
            <th>Jam</th>
        </tr>
        <?php
        $jadwal = array(
            'Senin' => array(
                array('PGRI', '09:20 - 11:00'),
                array('Statistika', '12:00 - 14:00'),
                array('Pulang', '14:00', 'pulang')
            ),
            'Selasa' => array(
                array('Sistem Basis Data', '11:00 - 14:20'),
                array('Pulang', '14:20', 'pulang')
            ),
            'Rabu' => array(
                array('Kewarganegaraan', '09:20 - 11:00'),
                array('Pulang', '11:00', 'pulang')
            ),
            'Kamis' => array(
                array('Algoritma&Struktur Data', '11:00 - 14:20'),
                array('Pulang', '14:20', 'pulang')
            ),
            'Jumat' => array(
                array('Sistem Operasi', '07:40 - 10:10'),
                array('Sistem Multimedia', '10:10 - 12:40'),
                array('Pulang', '12:40', 'pulang')  
            )
        );

        foreach ($jadwal as $hari => $mataPelajaran) {
            $jumlahPelajaran = count($mataPelajaran);

            echo "<tr>";
            echo "<td rowspan='$jumlahPelajaran'>$hari</td>";

            $isFirst = true;
            foreach ($mataPelajaran as $jadwalPelajaran) {
                if ($isFirst) {
                    $isFirst = false;
                } else {
                    echo "<tr>";
                }

                echo "<td";
                if (isset($jadwalPelajaran[2]) && $jadwalPelajaran[2] === 'pulang') {
                    echo " class='pulang'";
                }
                echo ">{$jadwalPelajaran[0]}</td>";
                echo "<td>{$jadwalPelajaran[1]}</td>";

                echo "</tr>";
            }
        }
        ?>
    </table>
</body>
</html>
