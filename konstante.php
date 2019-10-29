<?php
    define('PI', 3.14);

    $poluprecnik = 10;

    echo "Obim je ".(2 * $poluprecnik * PI);

    $voce = ['jabuka','kruska','jagoda'];
    $povrce = null;

    echo gettype($voce);
    echo "<br/>";

    if(is_array($voce)){
        echo 'Voce je niz.';
        echo "<br/>";
    }

    if(is_null($povrce)){
        echo 'Povrce je null.';
        echo "<br/>";
    }
?>