<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= site_url() ?>">URL Rewrite</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <?php foreach ($list_menu as $item) : ?>
                    <li><a href="<?= site_url('?halaman_id=' . $item->id) ?>"><?= $item->judul ?></a></li>
                <?php endforeach ?>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
