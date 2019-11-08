<?php

function generateUrlQuery($params){
    $url = "";

    if(count($params)===0){
        return $url;
    }

    elseif (count($params)===1){
        $url .= rawurlencode(key($params)) ."=". rawurlencode(reset($params));
        return $url;
    }
    else{
        foreach($params as $key => $value){
            if ($value === end($params)){
                $url .= rawurldecode($key) ."=". rawurlencode($value);
            }
            else{
                $url .= rawurlencode($key) ."=". rawurlencode($value) .'&';
            }
        }
        return $url;
    }
}

function generateHref($paganame, $params){
    $href = $paganame .'?'. generateUrlQuery($params);
    return $href;

}

function formatGetParams(){
    return $_GET;
}

function validateIP($address){
    $addressValues = explode(".", $address);
    if(!$addressValues) return false;
    if(count($addressValues) === 4){
        foreach($addressValues as $value){
            if($value < 0 || $value > 255){
                return false;
            }
        }
        return true;
    }
    return false;
}

