<?php

// Definisikan konstanta yg mengarah ke root folder
define('ROOT', str_replace('system', '', __DIR__));

// Import konfigurasi
$config = require ROOT . 'system/config.php';
// Import koneksi PDO
$pdo    = require ROOT . 'system/db.php';
// Import fungsi-fungsi helper
require ROOT . 'system/helpers.php';


// Ambil ID artikel jika ada
$artikel_id = isset($_GET['artikel_id']) ? $_GET['artikel_id'] : null;
// Ambil ID halaman jika ada
$halaman_id = isset($_GET['halaman_id']) ? $_GET['halaman_id'] : null;


// Route sederhana
if ($halaman_id !== null) {
    include ROOT . 'app/halaman.php';
} else if ($artikel_id !== null) {
    include ROOT . 'app/artikel.php';
} else {
    include ROOT . 'app/beranda.php';
}
