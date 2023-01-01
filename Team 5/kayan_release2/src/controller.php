<?php

class Controller {
    //put your code here
    
    function runAction($actionName) {
        $actionName .= 'Action';
        if (method_exists($this, $actionName)){
            $this->$actionName();
        } else {
			echo "Error 404";
        }
        
    }
}