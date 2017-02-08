<?php

// Ambil data dari database
$stmt = $pdo->prepare('SELECT * FROM halaman WHERE id = :id');
$stmt->execute(['id' => $halaman_id]);
$halaman = $stmt->fetch();

// Jika tidak ada halaman dengan id ini, tampilkan halaman 404
if (false === $halaman) {
    include ROOT . 'views/error/404.view.php';
} else {
    include ROOT . 'views/halaman.view.php';
}
