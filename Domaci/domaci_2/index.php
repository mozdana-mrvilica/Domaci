<?php

require_once 'helpers.php'; 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <H1>Drugi domaci</H1>
    <?php require_once 'navigation.php'; ?>
    <h2>Generate URL</h2>
    <?php
        $urlParams = ['naziv' => 'M&M\'s', 'cijena' => '2.5'];
    ?>
    <p><?php echo generateUrlQuery($urlParams) ?></p>
</body>
</html>