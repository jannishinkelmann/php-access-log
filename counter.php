<?php
  function recordAccess($page, $url, $referrer='') {
    $config = include('config.php');
    $mysqli = new mysqli($config['host'], $config['user'], $config['pass'], $config['db']);

    if ($mysqli->connect_errno) {
        die($mysqli->connect_error);
    }

    $sqlString = "INSERT INTO $config['table'] ($config['pageCol'], $config['urlCol'], $config['referrerCol']) VALUES (?, ?, ?);";
    $prepared = $mysqli->prepare($sqlString);
    $prepared->bind_param('sss', $page, $url, $referrer);
    $prepared->execute();
  }
?>
