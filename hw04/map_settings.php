<?php
$sql = "SELECT * FROM markers WHERE 1";

$rs = $conn->query($sql);

$file = array();
foreach ($rs as $key => $value) {
  $file['places'][] = array(
    'name'=> $value['name'],
    'address'=> $value['address'],
    'lat'=> $value['lat'],
    'lng'=> $value['lng']
  );
}

$fp = fopen('markers.json', 'w');
fwrite($fp, json_encode($file));
fclose($fp);
?>
