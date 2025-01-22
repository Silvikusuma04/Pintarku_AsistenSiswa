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
            background: url('iii.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .notification-icon {
            font-size: 24px;
            margin-right: 10px;
            cursor: pointer;
        }

        .reminder-checkbox {
            margin-right: 5px;
        }

        .reminder-icon {
            font-size: 20px;
            cursor: pointer;
            display: none;
        }
    </style>
</head>

<body>
    <div class="card">
        <div class="card-header bg-primary text-white">
           AGENDA HARI INI
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="data-table" class="table table-bordered">
                    <thead>
                        <th>Tanggal Pengumpulan</th>
                        <th>Waktu</th>
                        <th>Mata Pelajaran</th>
                        <th>Tugas</th>
                        <th>Catatan</th>
                    </thead>
                    <tbody>
                        <?php
                        $file = "file/" . $nim . "-" . $nama . ".txt";
                        $fh = fopen($file, "r");
                        while (!feof($fh)) {
                            $baris = fgets($fh);
                            if ($baris) {
                                $string_data = explode("|", $baris);
                        ?>
                                <tr>
                                    <td><?php echo $string_data['0'] ?></td>
                                    <td><?php echo $string_data['1'] ?></td>
                                    <td><?php echo $string_data['2'] ?></td>
                                    <td><?php echo $string_data['3'] ?></td>
                                    <td>
                                        <?php echo $string_data['4'] ?>
                                        <input type="checkbox" class="reminder-checkbox" data-id="<?php echo $string_data['0'] ?>">
                                    </td>
                                </tr>
                        <?php
                            }
                        }
                        fclose($fh);
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function () {
            // Handle checkbox change
            $('.reminder-checkbox').change(function () {
                var dateId = $(this).data('id');
                var isChecked = $(this).prop('checked');

                // Show a popup for completed tasks
                if (isChecked) {
                    alert('Selamat! Kamu sudah mengerjakan tugas dengan baik.');
                }
            });
            
            // Check reminders on page load
            checkReminders();
        });
    </script>
</body>

</html>
