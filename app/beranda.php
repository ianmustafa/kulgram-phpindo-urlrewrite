<?php

// Ambil data dari database
$query = $pdo->query('SELECT * FROM artikel WHERE w_terbit <= CURRENT_TIMESTAMP ORDER BY w_terbit DESC');
$list_artikel = $query->fetchAll();

// Jika tidak ada artikel dalam database, tampilkan halaman kosong
if (0 === count($list_artikel)) {
    include ROOT . 'views/error/empty.view.php';
} else {
    include ROOT . 'views/beranda.view.php';
}
