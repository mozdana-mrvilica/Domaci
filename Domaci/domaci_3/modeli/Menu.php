<?php
namespace modeli;

use interfejsi\Renderable;

class Menu implements Renderable{
    private $items;

    public function __construct(){
        $this->item=[
            new MenuItem('Homepage','homepage.php',['ime'=>'Vlado','prezime'=>'Moskov']),
            new MenuItem('Page 1','page_1.php',['ime'=>'Vlado','prezime'=>'Moskov']),
            new MenuItem('Page 2','page_2.php',['ime'=>'Vlado','prezime'=>'Moskov']),
        ];
    }
    public  function remder(){
        $links = "";
        foreach($this->item as $item){
            $links .="<li>{$item->render()}</li>";
        }
        $list = "<ul>{$links}</ul>";
        return $list;
    }
}