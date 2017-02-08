<?php

// Definisikan konstanta yg mengarah ke root folder
define('ROOT', str_replace('system', '', __DIR__));

// Import konfigurasi
$config = require ROOT . 'system/config.php';
// Import koneksi PDO
$pdo    = require ROOT . 'system/db.php';
// Import fungsi-fungsi helper
require ROOT . 'system/helpers.php';


// Mari bermain dengan Request URI
$uri = trim ($_SERVER['REQUEST_URI'], '/');
// Pisahkan URI per segmennya
$url_segments = explode('/', $uri);


// Route sederhana
if ($url_segments[0] === 'halaman') {
    $halaman_id = $url_segments[1];
    include ROOT . 'app/halaman.php';
} else if ($url_segments[0] === 'artikel') {
    $artikel_id = $url_segments[1];
    include ROOT . 'app/artikel.php';
} else {
    include ROOT . 'app/beranda.php';
}
