-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 03:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asisten_belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `asisten_jawaban`
--

CREATE TABLE `asisten_jawaban` (
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asisten_jawaban`
--

INSERT INTO `asisten_jawaban` (`pertanyaan`, `jawaban`) VALUES
('Apa itu sistem operasi?', 'Sistem operasi adalah perangkat lunak yang mengelola sumber daya perangkat keras dan menyediakan antarmuka antara perangkat keras dan perangkat lunak aplikasi.'),
('Bagaimana cara kerja algoritma pencarian biner?', 'Algoritma pencarian biner bekerja dengan membagi data menjadi dua bagian dan mencari nilai tengah untuk membandingkannya dengan elemen yang dicari. Pencarian dilanjutkan pada setengah data yang relevan hingga elemen ditemukan.'),
('Apa perbedaan antara RAM dan ROM?', 'RAM (Random Access Memory) digunakan untuk menyimpan data sementara dan kehilangan data saat daya dimatikan. ROM (Read-Only Memory) digunakan untuk menyimpan data yang tetap dan tidak hilang saat daya dimatikan.'),
('Apa itu pengembangan perangkat lunak berbasis Agile?', 'Pengembangan perangkat lunak berbasis Agile adalah pendekatan yang menekankan kerja kolaboratif, respons terhadap perubahan cepat, dan pengiriman iteratif dan inkremental.'),
('Bagaimana cara mengamankan jaringan komputer?', 'Langkah-langkah untuk mengamankan jaringan komputer melibatkan penggunaan firewall, enkripsi data, pengelolaan hak akses, dan pemantauan aktivitas jaringan.'),
('Apa yang dimaksud dengan kecerdasan buatan?', 'Kecerdasan buatan adalah bidang ilmu komputer yang berfokus pada pengembangan sistem yang dapat melakukan tugas-tugas yang membutuhkan kecerdasan manusia, seperti pemahaman bahasa dan pengambilan keputusan.'),
('Apa peran compiler dalam pemrograman?', 'Compiler adalah perangkat lunak yang menerjemahkan kode sumber program dalam bahasa pemrograman tingkat tinggi menjadi kode objek yang dapat dieksekusi oleh komputer.'),
('Bagaimana cara mengatasi SQL injection?', 'Untuk mengatasi SQL injection, dapat dilakukan dengan menggunakan parameterized queries, prepared statements, dan validasi input pengguna secara ketat.'),
('Apa itu teknologi blockchain?', 'Blockchain adalah teknologi distribusi data yang memungkinkan penyimpanan data secara terdesentralisasi dan aman menggunakan rantai blok terhubung yang dienkripsi.'),
('Apa perbedaan antara IPv4 dan IPv6?', 'IPv4 menggunakan alamat 32-bit, sedangkan IPv6 menggunakan alamat 128-bit. IPv6 diperkenalkan untuk mengatasi keterbatasan alamat IPv4 dalam mendukung pertumbuhan internet.'),
('Bagaimana cara mengoptimalkan kinerja database?', 'Optimasi kinerja database melibatkan penggunaan indeks, normalisasi tabel, tuning kueri, dan pemilihan hardware yang sesuai.'),
('Apa itu trigonometri?', 'Trigonometri adalah cabang matematika yang mempelajari hubungan antara sudut dan panjang sisi pada segitiga, terutama segitiga siku-siku.'),
('Bagaimana cara menyelesaikan persamaan kuadrat?', 'Persamaan kuadrat dapat diselesaikan menggunakan rumus kuadrat, yaitu x = (-b ± √(b^2 - 4ac)) / 2a.'),
('Apa yang dimaksud dengan hukum Newton?', 'Hukum Newton adalah tiga prinsip dasar gerak dan gaya yang dirumuskan oleh Sir Isaac Newton, yang menjadi dasar dalam fisika klasik.'),
('Bagaimana cara melakukan integral?', 'Integral adalah operasi matematika yang merupakan kebalikan dari diferensiasi. Metode integral yang umum digunakan termasuk integral tentu dan integral tak tentu.'),
('Apa itu algoritma?', 'Algoritma adalah urutan langkah-langkah terstruktur untuk menyelesaikan masalah atau melakukan tugas tertentu.'),
('Bagaimana cara mengimplementasikan algoritma pengurutan cepat?', 'Algoritma pengurutan cepat (QuickSort) dapat diimplementasikan dengan memilih elemen pivot, mempartisi array, dan mengurutkan dua bagian array secara rekursif.'),
('Apa yang dimaksud dengan paradigma pemrograman berorientasi objek?', 'Paradigma pemrograman berorientasi objek adalah pendekatan pemrograman yang menggunakan objek dan kelas untuk mengorganisir dan merancang kode.'),
('Bagaimana cara mengelola dan menyimpan password dengan aman?', 'Password dapat dielola dan disimpan dengan aman menggunakan teknik seperti hash password dan penyimpanan dalam format terenkripsi.'),
('Apa itu teknologi Internet of Things (IoT)?', 'Internet of Things (IoT) adalah konsep di mana objek fisik atau perangkat dapat terhubung dan bertukar data melalui jaringan internet.'),
('Bagaimana cara membuat dan mengelola website statis?', 'Website statis dapat dibuat dengan HTML dan CSS, kemudian dielola dengan cara mengupdate manual file HTML yang sesuai.'),
('Apa itu paradigma pemrograman berorientasi objek?', 'Paradigma pemrograman berorientasi objek adalah pendekatan pemrograman yang menggunakan konsep objek, seperti kelas dan pewarisan, untuk merancang dan mengorganisir kode.'),
('Bagaimana cara kerja algoritma pengurutan cepat (QuickSort)?', 'QuickSort adalah algoritma pengurutan yang membagi array menjadi dua bagian, mengurutkan masing-masing bagian secara terpisah, dan menggabungkannya.'),
('Apa itu jaringan saraf tiruan (neural network)?', 'Jaringan saraf tiruan adalah model komputasi yang terinspirasi oleh struktur dan fungsi jaringan saraf biologis, digunakan untuk tugas pembelajaran mesin.'),
('Bagaimana cara melakukan debugging dalam pemrograman?', 'Debugging melibatkan identifikasi dan perbaikan kesalahan (bug) dalam kode program. Ini dapat dilakukan dengan menggunakan alat bantu, log, atau analisis langkah demi langkah.'),
('Apa perbedaan antara HTTP dan HTTPS?', 'HTTPS (Hypertext Transfer Protocol Secure) adalah versi aman dari HTTP, menggunakan enkripsi SSL/TLS untuk melindungi data yang dikirim antara klien dan server.'),
('Bagaimana cara mengelola konflik dalam sistem kontrol versi?', 'Sistem kontrol versi membantu mengelola perubahan dalam kode sumber. Konflik dapat diatasi dengan komunikasi tim yang baik dan penggunaan cabang (branch) yang efektif.'),
('Apa itu arsitektur mikroprosesor?', 'Arsitektur mikroprosesor merujuk pada desain internal mikroprosesor, termasuk struktur ALU, registernya, dan cara instruksi dieksekusi.'),
('Bagaimana cara melakukan enkripsi data?', 'Enkripsi data melibatkan pengubahan data menjadi format yang tidak dapat dibaca tanpa kunci enkripsi. Algoritma enkripsi populer termasuk AES dan RSA.'),
('Apa perbedaan antara perangkat lunak sumber terbuka dan tertutup?', 'Perangkat lunak sumber terbuka memiliki kode sumber yang dapat diakses dan dimodifikasi oleh siapa pun. Perangkat lunak tertutup memiliki kode sumber yang tidak dapat diakses oleh pengguna umum.'),
('Bagaimana cara mengembangkan aplikasi mobile?', 'Pengembangan aplikasi mobile melibatkan pemahaman tentang bahasa pemrograman mobile seperti Java (Android), Swift (iOS), dan kerangka kerja seperti React Native atau Flutter.'),
('Apa itu analisis kompleksitas algoritma?', 'Analisis kompleksitas algoritma mempertimbangkan seberapa efisien suatu algoritma dalam menyelesaikan masalah dengan memperhatikan waktu dan ruang yang dibutuhkan.'),
('Bagaimana cara mengamankan situs web dari serangan DDoS?', 'Pengamanan dari serangan DDoS melibatkan penggunaan firewall, sistem deteksi intrusi, dan layanan penyedia CDN (Content Delivery Network).'),
('Apa yang dimaksud dengan metode agile scrum?', 'Agile Scrum adalah metode pengembangan perangkat lunak yang menerapkan prinsip-prinsip Agile dengan menggunakan kerangka kerja Scrum untuk manajemen proyek.'),
('Bagaimana cara kerja teknologi Virtual Reality (VR)?', 'Teknologi VR menciptakan lingkungan virtual yang dapat dijelajahi oleh pengguna, biasanya melalui penggunaan headset khusus dan sensor gerak.'),
('Apa perbedaan antara front-end dan back-end development?', 'Front-end development berfokus pada antarmuka pengguna dan interaksi pengguna, sementara back-end development menangani logika dan pemrosesan server.'),
('Bagaimana cara mendeteksi dan mencegah serangan phishing?', 'Pendeteksian dan pencegahan phishing melibatkan edukasi pengguna, penggunaan filter email, dan implementasi protokol keamanan.'),
('Apa itu bahasa pemrograman Python?', 'Python adalah bahasa pemrograman tingkat tinggi yang mudah dipelajari, memiliki sintaksis yang jelas, dan mendukung berbagai paradigma pemrograman.'),
('Bagaimana cara mengelola basis data menggunakan SQL?', 'SQL digunakan untuk mengelola basis data, termasuk operasi seperti SELECT, INSERT, UPDATE, DELETE, dan pembuatan tabel dan indeks.'),
('Apa peran sistem kontrol versi Git dalam pengembangan perangkat lunak?', 'Git memungkinkan pengembang melacak perubahan kode, bekerja bersama tim, dan mengelola versi proyek secara efisien.'),
('Bagaimana cara mengoptimalkan performa website?', 'Optimasi performa website melibatkan penggunaan gambar yang dioptimalkan, caching, dan pengaturan server yang efisien.'),
('Apa itu trigonometri?', 'Trigonometri adalah cabang matematika yang mempelajari hubungan antara sudut dan panjang sisi pada segitiga, terutama segitiga siku-siku.'),
('Bagaimana cara menghitung luas segitiga?', 'Luas segitiga dapat dihitung dengan rumus 0.5 * alas * tinggi.'),
('Apa itu hukum Newton tentang gerak?', 'Hukum Newton tentang gerak menyatakan bahwa sebuah objek akan tetap bergerak dengan kecepatan konstan kecuali ada gaya yang bekerja padanya.'),
('Bagaimana cara melakukan pengelompokan darah manusia?', 'Darah manusia dapat dikelompokkan berdasarkan sistem ABO dan faktor Rh.'),
('Apa yang dimaksud dengan integritas data?', 'Integritas data adalah kondisi di mana data tetap konsisten, tepat, dan tidak mengalami kerusakan selama proses penyimpanan, pengambilan, dan pemrosesan.'),
('Bagaimana cara mendeteksi dan mencegah virus komputer?', 'Mendeteksi dan mencegah virus komputer dapat dilakukan dengan menggunakan perangkat lunak antivirus, memperbarui sistem operasi, dan berhati-hati terhadap lampiran email yang mencurigakan.'),
('Apa perbedaan antara algoritma DFS dan BFS?', 'DFS (Depth-First Search) mengeksplorasi sejauh mungkin ke dalam suatu cabang sebelum kembali, sedangkan BFS (Breadth-First Search) mengeksplorasi semua tetangga suatu simpul sebelum melangkah ke level berikutnya.'),
('Bagaimana cara mengembangkan aplikasi mobile?', 'Pengembangan aplikasi mobile melibatkan pemahaman tentang bahasa pemrograman mobile seperti Java (Android), Swift (iOS), dan kerangka kerja seperti React Native atau Flutter.'),
('Apa itu bahasa pemrograman Python?', 'Python adalah bahasa pemrograman tingkat tinggi yang mudah dipelajari, memiliki sintaksis yang jelas, dan mendukung berbagai paradigma pemrograman.'),
('Bagaimana cara mengelola basis data menggunakan SQL?', 'SQL (Structured Query Language) digunakan untuk mengelola basis data, termasuk operasi seperti SELECT, INSERT, UPDATE, DELETE, dan pembuatan tabel dan indeks.'),
('Apa itu Internet of Things (IoT)?', 'Internet of Things adalah konsep di mana objek fisik atau perangkat terhubung ke internet, memungkinkan pertukaran data dan kontrol secara otomatis.'),
('Apa itu SQL injection?', 'SQL injection adalah serangan keamanan di mana penyerang menyisipkan kode SQL berbahaya ke dalam input yang kemudian dieksekusi oleh database.'),
('Apa perbedaan antara REST dan SOAP?', 'REST (Representational State Transfer) dan SOAP (Simple Object Access Protocol) adalah dua pendekatan berbeda untuk pengembangan layanan web. REST lebih ringan dan menggunakan protokol HTTP, sementara SOAP menggunakan format pesan XML dan dapat menggunakan beberapa protokol transport.'),
('Apa itu machine learning?', 'Machine learning adalah cabang dari kecerdasan buatan yang memungkinkan sistem komputer untuk belajar dari data dan meningkatkan kinerjanya tanpa pemrograman ekspisit.'),
('Apa yang dimaksud dengan Big Data?', 'Big Data merujuk pada kumpulan data yang sangat besar dan kompleks yang sulit atau tidak praktis diolah dengan cara tradisional. Ini melibatkan volume data yang besar, kecepatan pengumpulan data, dan keragaman data yang tinggi.'),
('Bagaimana cara mengoptimalkan performa database?', 'Optimasi performa database melibatkan penggunaan indeks, normalisasi tabel, tuning kueri, dan pemilihan hardware yang sesuai.');

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `nim` varchar(20) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `angkatan` varchar(25) DEFAULT NULL,
  `no_wa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`nim`, `nama_lengkap`, `kelas`, `angkatan`, `no_wa`) VALUES
('22157201027', 'MARGARETHA NUR ALNI CHANIAGO', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201028', 'MAULIDIYAH', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201030', 'MOCH DAFFA TAJUDDIN AKMAL', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201032', 'MOHAMMAD ALFIAN PRATAMA', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201033', 'MUHAMMAD AKBAR REISHANDY', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201034', 'MUHAMMAD AFIF FAISAL', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201035', 'MUHAMMAD ALDI WARDANA', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201036', 'MUHAMMAD SYAHRUL MUKAROM', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201037', 'NABILA RIZKI AMELIA', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201038', 'NADHIFATUL AINI', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201039', 'ΝΙΚMAH TILLAH DEWI', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201041', 'NURUL FIRDAUS', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201042', 'PUTRI INDAH SARI', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201043', 'SAMSUL HIDAYAT', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201045', 'SILVI KUSUMA WARDHANI GUNAWAN', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201046', 'SINTA BETHARI AYU PUTRI', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201048', 'WAHYU TRIONO', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201049', 'YENI KURNIAWATI', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201050', 'NOVA MAULIDIYAH', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201051', 'ZAHRO AL ASURO', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463'),
('22157201052', 'WISNU CAHYO UTOMO', 'B', '2022', 'https://api.whatsapp.com/send?phone=6285812085463');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_user`
--

CREATE TABLE `pertanyaan_user` (
  `pertanyaan` text DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan_user`
--

INSERT INTO `pertanyaan_user` (`pertanyaan`, `jawaban`, `role`) VALUES
('tugas', 'Anda bisa melihat tugas di sisi kiri.', 'Dosen'),
('eror', 'Silakan hubungi kami di WhatsApp untuk bantuan lebih lanjut.', 'Support'),
('catatan', 'Catatan dapat dilihat di sisi kiri.', 'Support'),
('jadwal', 'Jadwal dapat ditemukan di sisi kiri.', 'Support'),
('materi', 'Materi kuliah dapat diakses melalui platform e-learning ', 'Dosen'),
('diskusi', 'Diskusi dilakukan melalui forum diskusi di website.', 'Support'),
('asisten', 'Asisten mahasiswa siap membantu Anda dengan pertanyaan akademis.', 'support'),
('uas', 'Silakan hubungi kami di WhatsApp untuk bantuan lebih lanjut.', 'dosen'),
('kisi-kisi', 'Silakan hubungi kami di WhatsApp untuk bantuan lebih lanjut.', 'dosen'),
('uts', 'Silakan hubungi kami di WhatsApp untuk bantuan lebih lanjut.', 'dosen'),
('rps', 'Silakan hubungi kami di WhatsApp untuk bantuan lebih lanjut.', 'dosen'),
('Jadwal Kuliah', 'Jadwal kuliah dapat dilihat di sistem informasi akademik kampus kami. Pastikan Anda selalu memeriksa informasi terbaru di sana.', 'Dosen'),
('Materi Kuliah', 'Materi kuliah dapat diakses melalui portal pembelajaran daring. Apakah ada materi tertentu yang ingin Anda diskusikan?', 'Dosen'),
('Tugas Kuliah', 'Tugas kuliah akan diumumkan di kelas dan dapat diakses melalui platform pembelajaran. Pastikan Anda mengikuti pembaruan terkini.', 'Dosen'),
('Ujian dan Penilaian', 'Informasi terkait ujian dan penilaian akan diumumkan di kelas dan dapat ditemukan di sistem informasi akademik.', 'Dosen'),
('Proyek Akhir', 'Proyek akhir merupakan bagian penting dari kurikulum. Detail lebih lanjut akan dijelaskan di dalam kelas.', 'Dosen'),
('Referensi Buku dan Sumber Belajar', 'Referensi dan sumber belajar dapat Anda temukan di perpustakaan kampus dan di rekomendasi oleh dosen di setiap mata kuliah.', 'Dosen'),
('Praktikum', 'Jadwal dan informasi praktikum akan diumumkan dalam kelas. Pastikan Anda mengikuti informasi terkini di portal pembelajaran.', 'Dosen'),
('Konsultasi', 'Jika Anda membutuhkan konsultasi tambahan, silakan jadwalkan pertemuan dengan saya melalui email atau selama jam konsultasi saya.', 'Dosen'),
('Kehadiran dan Absensi', 'Ketentuan kehadiran dan absensi akan dijelaskan di dalam kelas. Pastikan untuk mengikuti aturan yang berlaku.', 'Dosen'),
('Beasiswa', 'Informasi tentang beasiswa dapat ditemukan di bagian keuangan kampus. Saya juga dapat memberikan informasi umum jika Anda butuh bantuan.', 'Dosen'),
('Magang', 'Untuk informasi magang, silakan hubungi kantor penempatan kerja kami di kampus. Mereka dapat memberikan panduan lebih lanjut.', 'Dosen'),
('Kerja Praktek', 'Ketentuan kerja praktek akan dijelaskan di dalam kelas. Pastikan untuk mendengarkan informasi terbaru.', 'Dosen'),
('Asosiasi atau Komunitas Mahasiswa', 'Anda dapat bergabung dengan asosiasi atau komunitas mahasiswa di kampus untuk mendapatkan pengalaman dan networking yang lebih baik.', 'Dosen'),
('Lingkungan Kampus', 'Lingkungan kampus kami sangat mendukung kegiatan akademis dan ekstrakurikuler. Nikmati fasilitas yang kami sediakan.', 'Dosen'),
('Pendaftaran Mata Kuliah', 'Proses pendaftaran mata kuliah dapat diakses melalui portal akademik. Pastikan untuk mematuhi batas waktu pendaftaran.', 'Dosen'),
('Pilihan Kejuruan atau Spesialisasi', 'Informasi tentang pilihan kejuruan atau spesialisasi akan dijelaskan di dalam kelas. Pertimbangkan minat dan tujuan karir Anda.', 'Dosen'),
('Pertukaran Pelajar', 'Program pertukaran pelajar dapat dijelaskan oleh koordinator pertukaran pelajar di kampus. Mereka dapat memberikan panduan lebih lanjut.', 'Dosen'),
('Kerja Sama dengan Perusahaan atau Industri', 'Kerja sama dengan perusahaan atau industri dapat memberikan peluang pengalaman dan penempatan kerja. Informasi lebih lanjut akan diumumkan.', 'Dosen'),
('Peluang Karir', 'Peluang karir di bidang ilmu komputer sangat beragam. Kami akan memberikan informasi terkait peluang karir selama perkuliahan.', 'Dosen'),
('Seminar dan Workshop', 'Ikuti seminar dan workshop yang diadakan di kampus untuk mendapatkan wawasan tambahan dan memperluas pengetahuan Anda.', 'Dosen'),
('Sarana dan Prasarana Kampus', 'Fasilitas dan sarana kampus dapat Anda nikmati selama studi di sini. Pastikan untuk memanfaatkannya.', 'Dosen'),
('Kegiatan Ekstrakurikuler', 'Berpartisipasi dalam kegiatan ekstrakurikuler dapat memperkaya pengalaman Anda di kampus. Cari tahu lebih lanjut tentang opsi yang tersedia.', 'Dosen'),
('Perpustakaan Kampus', 'Perpustakaan kampus menyediakan koleksi buku dan referensi yang kaya. Gunakan sumber daya ini untuk mendukung studi Anda.', 'Dosen'),
('Fasilitas Laboratorium', 'Fasilitas laboratorium kami dilengkapi dengan peralatan terkini. Anda akan menggunakan fasilitas ini selama praktikum dan penelitian.', 'Dosen'),
('Dosen Pembimbing dan Penasihat Akademik', 'Saya sebagai dosen pembimbing dan penasihat akademik siap membantu Anda dalam perjalanan akademis dan karir Anda. Jangan ragu untuk menghubungi saya.', 'Dosen'),
('Kelas Online atau Pembelajaran Jarak Jauh', 'Jika ada kelas online atau pembelajaran jarak jauh, informasi akan diumumkan di portal pembelajaran. Pastikan Anda mengikuti instruksi yang diberikan.', 'Dosen'),
('Prestasi dan Kompetisi', 'Ikuti kompetisi dan pertandingan yang diadakan di tingkat kampus atau lebih tinggi. Ini dapat menjadi peluang untuk mengasah keterampilan Anda.', 'Dosen'),
('Hak dan Kewajiban Mahasiswa', 'Hak dan kewajiban mahasiswa akan dijelaskan dalam kode etik dan peraturan kampus. Pastikan Anda memahami dan mematuhi ketentuan tersebut.', 'Dosen'),
('Sistem Informasi Akademik', 'Sistem informasi akademik akan memberikan informasi terkait perkuliahan, nilai, dan informasi penting lainnya. Pastikan Anda selalu memantau wira akademik anda', 'Dosen'),
('Ketentuan Akademik', 'Ketentuan akademik kampus akan dijelaskan dalam pedoman akademik. Pastikan Anda membaca dan memahami peraturan tersebut.', 'Dosen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
