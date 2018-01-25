<?php

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    // On va chercher l'ID_RESTAURENT
    $req = $bdd->query('
        SELECT *
        FROM t_restaurents
        INNER JOIN t_commandes ON t_restaurents.id_restaurent = t_commandes.ID_RESTAURENT
        WHERE t_commandes.ID_USER = '.$_SESSION['userId'].'
    ');

    $i = 0;

    while($restaurent = $req->fetch()) {
        echo $restaurent['nom'] . '<br>';
    }