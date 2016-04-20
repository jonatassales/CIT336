<?php
define("MAPS_KEY","AIzaSyChJMgL98Vq5Im4ycVbkGi6y_hccHY2KfI");
define("DB", "maps");
define("SERVERNAME", "127.0.0.1");
define("USER", "root");
define("PASSWORD", "root");

try {
  $conn = new PDO("mysql:host=".SERVERNAME.";dbname=".DB, USER, PASSWORD);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

?>
