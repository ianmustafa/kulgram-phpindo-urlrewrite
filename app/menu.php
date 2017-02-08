<?php

// Ambil data dari database
$query = $pdo->query('SELECT id, judul FROM halaman');
$list_menu = $query->fetchAll();

include ROOT . 'views/menu.view.php';
