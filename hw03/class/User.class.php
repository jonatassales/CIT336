<?php
class User extends CRUD {

  private $table = 'users';

  function getUser($data = "") {
    $data['table'] = $this->table;
    return $this->read($data);
  }

  function insertUser($data) {
    $data['table'] = $this->table;
    return $this->create($data);
  }
}
?>
