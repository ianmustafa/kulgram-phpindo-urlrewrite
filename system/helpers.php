<?php

/**
 * Dump 'n die à la Laravel.
 * @param  mixed   $value  Var to be dumped
 * @param  boolean $export Use var_export() instead of var_dump()
 */
function dd($value, $export = false)
{
    echo '<pre>';
    $export ? var_export($value) : var_dump($value);
    exit('</pre>');
}

/**
 * Membuat URL absolut dalam app.
 * @param  string $path Opsional: path yang perlu ditambahkan ke URL hasil
 * @return string       Hasil URL absolut
 */
function site_url($path = '')
{
    return
        (
            isset($_SERVER['HTTPS']) ||
                (
                    isset($_SERVER['HTTP_X_FORWARDED_PROTO']) &&
                    $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https'
                )
            ? 'https'
            : 'http'
        ) . "://{$_SERVER['HTTP_HOST']}/{$path}";
}
