<?php require_once './autoload.php'; ?>

<!doctype html>
<html lang="en">
<head>
    <style>
        ul { margin-left: 10px; padding: 0; }
        li { display: inline-block; padding: 10px; background-color: rgba(38, 135, 255, 0.41); }
        a { color: white; text-decoration: none; font-weight: bold; }
        a:hover { text-decoration: underline; color: #045cae; }
        h1 { margin-left: 10px; }
    </style>
    <title>Page 2</title>
</head>
<body>
<?php 
$menu = new Menu();
echo $menu->render();
?>
    <h1>Page 2</h1>
</body>
</html>