<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kuliah Telegram PHP Indonesia for Students: URL Rewrite</title>

    <!-- Bootstrap core CSS -->
    <link href="https://unpkg.com/bootswatch@3.3.7/readable/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
article {
    margin-bottom: 80px;
}

article h1 a,
article h1 a:hover,
article h1 a:focus,
article h1 a:active {
    color: #333;
}

article h1 a {
    text-decoration: none;
}
    </style>
</head>

<body>
    <?php include ROOT . 'app/menu.php' ?>

    <div class="container">

        <?php foreach ($list_artikel as $artikel) : ?>
            <article id="article-<?= $artikel->id ?>">
                <h1><a href="<?= site_url('?artikel_id=' . $artikel->id) ?>"><?= $artikel->judul ?></a></h1>
                <p class="text-muted">Diterbitkan pada <?= (new DateTime($artikel->w_terbit))->format('j F y H.i') ?></p>

                <p><?= $artikel->konten ?></p>
            </article>
        <?php endforeach ?>

    </div><!-- /.container -->

    <script src="https://unpkg.com/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://unpkg.com/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
