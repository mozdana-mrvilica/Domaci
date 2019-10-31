<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Uvod u PHP</title>
</head>
<body>
    <p>
        <?php 
        $a  =   10;
        $b  =   20;

        echo "<h1>Zdravo</h1>"
        ?>
    
</p>
    <H1>Uvod u PHP</H1>

    <p>
<?php   
        //single line comment
        /* multiline commnet*/

        echo $a . "+" . $b . "=". ($a+$b);

        $string1 = 'Ovo je broj' . $a;
        $string2 = "Ovo je broj $a";
        $string3 = "Ovo je broj $a";

        echo '<p>'. $string2 . '<p>';
        echo "<p>". $string2 . "<p>";
        ?>
    </p>

    <p>
        <?php

        $prvi = 10;
        $drugi = 20;


        $zbir = $prvi + $drugi;
        $razlika = $prvi - $drugi;
        $kolicnik = $prvi / $drugi;
        $ostatak = $prvi % $drugi;

        $cijlobrojno = round($prvi/$drugi,0,PHP_ROUND_HALF_UP)

        echo "<p>{ $zbir }<p>";
        echo "<p>{ $razlika }<p>"; 
        echo "<p>{ $kolicnik } <p>"; 
        echo "<p>{ $ostatak } <p>";
    ?>

    </p>
</body>
</html>