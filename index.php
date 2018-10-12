<?php
  $title = 'Start';
  $accessUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http') . '://' . $_SERVER[HTTP_HOST] . $_SERVER[REQUEST_URI];
  $referrer = (isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '');

  include_once('counter.php');
  recordAccess($title, $accessUrl, $referrer);
?>
