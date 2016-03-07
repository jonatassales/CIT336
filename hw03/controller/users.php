<?php
include '../config/conf.php';

$objUser = new User();

if($_POST['insertUser']) {
  //Insert User
  $data['fields']['name'] = $_POST['name'];
  $data['fields']['adress'] = $_POST['adress'];
  $data['fields']['email'] = $_POST['email'];
  $objUser->insertUser($data);
  header("Location: ../index.php?alert=success");
}

if($_POST['search']) {
  $users = $objUser->searchUserByName($_POST['name']);
  foreach ($users as $key => $value) {
    echo '<tr>';
    echo '<td>'. $key . '</td>';
    echo '<td>'. $value['name'] . '</td>';
    echo '<td>'. $value['email'] . '</td>';
    echo '<td>'. $value['adress'] . '</td>';
    echo '</tr>';
  }
}
