<?php
include "system/header.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcom to MARTA</title>

    <link href="/tools/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="/style/home.css" rel="stylesheet">

    <link rel="stylesheet" href="/tools/fontawesome/css/font-awesome.min.css">

    <script src="/tools/jquery/jquery.js"></script>
    <script src="/tools/bootstrap/js/bootstrap.min.js"></script>
    <?=@$customScriptsJS?>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.coms/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/logout"><i class="glyphicon glyphicon-off"></i> Logout</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="/database_project/home"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="/database_project/managecards"><i class="fa fa-bullhorn"></i> Manage Cards</a></li>
                <li><a href="/database_project/triphistory"><i class="fa fa-check-square-o"></i> View Trip History</a></li>

        </ul>
    </div>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
