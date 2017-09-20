<?php
  if(!isset($_SESSION['id'])){
    $_SESSION['id'] = false;
  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="<?=ROOT_DIR?>/public/css/style.css" />
	<link rel="shortcut icon" href="<?=ROOT_DIR?>/public/img/favicon.ico" type="image/x-icon">
	<title>The Forge</title>
  </head>
  <body>
	<div class="content">
		<div id="navbar">
			<a class="btn btn-secondary float-right" href="<?=ROOT_DIR?>/home/listitems"><i class="fa fa-balance-scale" aria-hidden="true"></i> ITEM LIST</a>
			<h3 style="margin-top:5px;" class="float-left"><a href="<?=SITE_URL?>"><i class="fa fa-leaf"></i></a> The Forge</h3>
		</div>