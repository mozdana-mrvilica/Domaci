<?php

namespace modeli;

use intefejsi\Renderable;

class MennuItem implements Renderable{
    private $label;
    private $pageName;
    private $params;

    public function __construct($label, $pageName, $params){
        $this->label = $label;
        $this->pageName = $pageName;
        $this->params = $params;

    }

    public function render(){
        $href = $this->generateHref();
        $link = "<a href=\"{$href}\">{$this->label}</a>";
        return $link;
    }

}
