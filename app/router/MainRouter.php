<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */

namespace Application\Router;

use Phalcon\Mvc\Router\Group;

class MainRouter extends Group
{
    public function initialize()
    {
        $this->setPaths([
            'namespaces' => 'Application\\Controllers',
        ]);

        $this->add(
            '/',
            [
                'action' => 'helloworld',
                'controller'=>'index'

            ]
        );
        $this->add('/users', array( 
            'controller' => 'users', 
            'action' => 'index', 
         ));
         $this->add(
            '/users/save',
            'Users::save'
        );
        $this->add(
            '/users/{id:[0-9]+}/edit',
            'Users::edit'
        );
        $this->add(
            '/users/{id:[0-9]+}/update',
            'Users::update'
        );
        $this->add(
            '/users/{id:[0-9]+}/delete',
            'Users::delete'
        );
    }
}