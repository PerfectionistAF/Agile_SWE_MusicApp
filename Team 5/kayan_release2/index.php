<?php

require_once 'src/controller.php';

$section = $_GET['section'] ?? $_POST['section'] ?? 'home';
$action = $_GET['action'] ?? $_POST['action'] ?? 'default';

if ($section=='sign-in') {
    
    include 'controller/sign-in.php';
    
    $signInController = new SignInController();
    $signInController->runAction($action);
    
} 
else if ($section == 'contact-us'){
    
    include 'controller/contact-us.php';
    $contactUsController = new ContactUsController();
    $contactUsController->runAction($action);
}
else if ($section == 'apply'){
    
    include 'controller/apply.php';
    $applyController = new ApplyController();
    $applyController->runAction($action);
}
else{
	include 'controller/home.php';
	$homeController = new HomeController();
	$homeController->runAction($action);
}

?>