<?php

require_once 'helpers.php';

echo "<h2> Zadatak GET sa parametrima</h2>";
echo (formatGetPArams());
echo "<br/>";

echo "<h2>Zadatak sa IP adresama</h2>";

$testExamples = ['192.168.1.254','536774','34.65.34.7','234.134.0.111'];
foreach($testExamples as $example){
    if(validateIP($example)){
        echo $example . " validna IP adresa <br/>";
        
    }
    else{
        echo $example . " nije validna IP adresa <br/>";
    }
}