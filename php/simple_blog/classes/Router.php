<?php

/**
 * Router class
 * Handles the URL scheme with properties controller, action and request.
 * Quick change for drone test. Routes everything where it should be
 * like a good little router should.
 */

class Router
{
    private $controller;
    private $action;
    private $request;

    /**
     * Routes controllers to views so everything looks fine and dandy and working
     */
    public function __construct($request)
    {
        $this->request = $request;

        // Controller handler
        if ($this->request['controller'] == "") {
            $this->controller = 'home'; // load the homepage if nothing is done
        } else {
            $this->controller = $this->request['controller'];
        }
        
        // Action handler
        if ($this->request['action'] == "") {
            $this->action= 'index';
        } else {
            $this->action = $this->request['action'];
        }
    }

    /**
     * createController does...
     * Some super maigcal shit like state if controller exists and pops it to the user. Or it dies in a
     * huge fire and everyone cries. Same thing...
     */
    
    public function createController()
    {
        if (class_exists($this->controller)) {
            $parents = class_parents($this->controller);
            //check Extend
            if (in_array("Controller", $parents)) {
                if (method_exists($this->controller, $this->action)) {
                    return new $this->controller($this->action, $this->request);
                } else {
                    // method doesn't exist
                    echo '<h1>Method does not exist</h1>';
                    return;
                }
            } else {
                // Base controller doesn't exist
                echo "<h1>Base Controller not found.</h1>";
                return;
            }
        } else {
            // Controller view doesn't exist
            echo "<h1>Controller class doesn't exist</h1>";
            return;
        }
    }
}
