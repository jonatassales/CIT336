<?php
/**
 * I've created this CRUD to make interactions with
 * PDO and database easier using PHP arrays to represents
 * parts of a query
 *
 * @author Jonatas Sales <jonatasvsales@gmail.com>
 * @copyright 2016, Jonatas Sales
 * @license http://opensource.org/licenses/MIT
 * @link http://github.com/jonatassales
 */

class CRUD {

  private $query, $conn;

  function __construct() {
    try {
      $this->conn = new PDO("mysql:host=".SERVERNAME.";dbname=".DB, USER, PASSWORD);
      // set the PDO error mode to exception
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
      echo "Connection failed: " . $e->getMessage();
    }
  }

  /**
   * Method to insert records in the database
   *
   * @access public static
   * @param array $data; Keys are table and fields
   * @return PDOStatement Object
   */
  function create ($data) {
    if(is_array($data)) {
      $this->query  = "INSERT INTO {$data['table']} ";
      if(is_array($data['fields'])) {
        $this->query .= "(";
        $i = 0;
        foreach ($data['fields'] as $key => $value) {
          $this->query .= ($i) ? "," . $key : $key;
          $i++;
        }
        $this->query .= ")";
      } else {
        return false;
      }
      $this->query .= " VALUES (";
      $i = 0;
      foreach ($data['fields'] as $key => $value) {
        $this->query .= ($i) ? ",'" . $value . "'" : "'" . $value . "'";
        $i++;
      }
      $this->query .= ")";
      $sql = $this->conn->prepare($this->query);
      $sql->execute();
    } else {
      return false;
    }
  }

  /**
   * Simple method to query records in the database (later I'll implement JOINS and LOGICAL operators)
   *
   * @access public static
   * @param array $data; Keys are table, fields, condition and limit which represents parts of a query
   * @return PDOStatement Object
   */
  function read($data) {
    $this->query  = "SELECT ";
    $this->query .= ($data['fields']) ? implode(",",$data['fields']) : "*";
    $this->query .= " FROM {$data['table']} ";
    if(is_array($data['condition'])) {
      $this->query .= "WHERE 1";
      foreach ($data['condition'] as $key => $value) {
        $this->query .= " AND $key = '$value'";
      }
    }
    $this->query .= ($data['limit']) ? "LIMIT ".$data['limit'] : "";

    return $this->fetch($this->query);
  }

  function update($data) {

  }

  function delete($data) {
    $this->query  = "DELETE FROM ";
    $this->query .= $data['table'];
    $this->query .= ($)
  }

  function fetch($query) {
    return $this->conn->query($query);
  }
}
?>
