<?php

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    $req = $bdd->query('SELECT * FROM t_restaurents ORDER BY note DESC');

    while ($resto = $req->fetch()) {

            // AFFICHAGE DES RESTAURENTS
        echo '
            <div class="restaurent" style="background : url(' . $resto['image'] . ') fixed; background-size: cover ">
                
                <h2 class="nom-restaurent"> ' . $resto['nom'] . '</h2>
                
                <div class="note-restaurent"></div>
                
            </div>
        ';

    }

