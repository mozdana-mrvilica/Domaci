<?php
$niz = array(1,2,3);
$niz = [
    0=> 1
]
$niz = [1,"2", true,[1,2,3]];

$niz2 = [
    0 => 'Jedan',
    '2' => 'Dva',
];

?>

<pre>
    <?php
    /*print_r($niz);
    var_dump($niz);
    die("Gone");
    Print naredbe */
    $element = current($niz);
    $element = next($niz); //pomjeranje pokazivaca na sledeci
    $element = current($niz1);
    $element = reset($niz)
    echo $element;

    ?>
</pre>