<?php

$links = [
    'page1' =>[
        'label' => 'Page 1', 
        'page_name' => 'page_1.php', 
        'params' =>['name' => 'Vlado', 'surname' => 'Moskov']
    ],

    'page2' =>[
        'label' => 'Page 2', 
        'page_name' => 'page_2.php', 
        'params' =>['name' => 'Vlado', 'surname' => 'Moskov']
    ],
];

echo "<ul>";
foreach($links as $link){
    $linkParams = $link['params'];
    $linkPage = $link['page_name'];
    $linkHref = generateHref($linkPage,$linkParams);
    echo "<li><a href=$linkHref>" . $link['label']."</a></li>";

}

echo"</ul>";
