<?php
    session_start();
    $_SESSION['host'] = 'mysql:host=localhost;port=3306;dbname=izi;charset=utf8';
    $_SESSION['ndcSQL'] = 'root';
    $_SESSION['mdpSQL'] = '';

    $_SESSION['user'] = 'Etienne';
    $_SESSION['userId'] = 1;

    header('Location: ./assets/php/main.php');