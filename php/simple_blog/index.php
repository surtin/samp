<?php

// Make some sessions
session_start();

// include config
require('config.php');

require('classes/Messages.php');
require('classes/Router.php');
require('classes/Controller.php');
require('classes/Model.php');

require('controllers/home.php');
require('controllers/users.php');
require('controllers/posts.php');

require('models/home.php');
require('models/post.php');
require('models/user.php');

$router = new Router($_GET);
$controller = $router->createController();
if ($controller) {
    $controller->executeAction();
}
