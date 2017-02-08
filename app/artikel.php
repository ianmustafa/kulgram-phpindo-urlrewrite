<?php

// Ambil data dari database
$stmt = $pdo->prepare('SELECT * FROM artikel WHERE id = :id AND w_terbit <= CURRENT_TIMESTAMP');
$stmt->execute(['id' => $artikel_id]);
$artikel = $stmt->fetch();

// Jika tidak ada artikel dengan id ini, tampilkan halaman 404
if (false === $artikel) {
    include ROOT . 'views/error/404.view.php';
} else {
    include ROOT . 'views/artikel.view.php';
}
