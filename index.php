<?php


function loadClasses2($class_name){
        $classesPath = './includes/classes/'.$class_name.'.php';
        $controllersPath = './includes/controllers/'.$class_name.'.php';

        if(file_exists($classesPath)){
            require_once($classesPath);
        }else if(file_exists($controllersPath)){
            require_once($controllersPath);
        }
    }

    spl_autoload_register(loadClasses2);

    require_once('./includes/routes/Routes.php');


  //  error_reporting(0);
   // ini_set('display_errors', 0);


 ?>
