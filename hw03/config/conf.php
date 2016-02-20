<?php
//
// Defining project's contants
//
define("DB", "store");
define("SERVERNAME", "127.0.0.1");
define("USER", "root");
define("PASSWORD", "root");

//
// Loading project's classes
//
function autoloader($class) {
    include 'class/' . $class . '.class.php';
}
spl_autoload_register('autoloader');

// Function created to make debug process simpler
function pr($value) {
  echo '<pre>';
  print_r($value);
  echo "</pre>";
}
?>
