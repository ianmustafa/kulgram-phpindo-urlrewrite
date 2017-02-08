<?php
// Import
$config = require 'system/config.php';
$pdo = require 'system/db.php';

// Ambil artikel
$query = $pdo->query('SELECT id, judul FROM artikel');

// Prepare statement
$stmt = $pdo->prepare('UPDATE artikel SET slug = :slug WHERE id = :id');

// Loop
foreach ($query->fetchAll() as $row) {
    echo "Update artikel #{$row->id}... ";

    // Buat slug dari judul dengan me-replace spasinya menjadi dash
    // dan mengecilkan huruf kapital
    $slug = strtolower(str_replace(' ', '-', $row->judul));

    // Eksekusi
    $stmt->execute(['id' => $row->id, 'slug' => $slug]);

    echo "selesai.<br>" . PHP_EOL;
}
