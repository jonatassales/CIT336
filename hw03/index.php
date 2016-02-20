<?php
include 'config/conf.php';

$objUser = new User();
$users = $objUser->getUser($data);
$data['limit'] = 5;
unset($data);

if($_POST['insertUser']) {
  //Insert User
  $data['fields']['name'] = $_POST['name'];
  $data['fields']['adress'] = $_POST['adress'];
  $data['fields']['email'] = $_POST['email'];
  $objUser->insertUser($data);
  header("Location: index.php?alert=success");
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet">
  <script src="assets/javascript/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <?php if($_GET['alert']) { ?>
      <div class="row">
        <?php if($_GET['alert'] == 'success') { ?>
          <div class="alert alert-success"><b>Well done! </b>User has been saved!</div>
        <?php } else { ?>
          <div class="alert alert-error">A problem has occurred</div>
        <?php } ?>
      </div>
    <?php } ?>
    <div class="row">
    <h3>Users</h3>
    </div>
    <div class="row">
      <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
          </tr>
        </thead>
        <tbody>
        <?php
         foreach ($users as $key => $value) {
           echo '<tr>';
           echo '<td>'. $key . '</td>';
           echo '<td>'. $value['name'] . '</td>';
           echo '<td>'. $value['email'] . '</td>';
           echo '<td>'. $value['adress'] . '</td>';
           echo '</tr>';
         }
        ?>
        </tbody>
      </table>
    </div>
    <div class="row">
      <a href="form.php" class="btn btn-primary">Create User</a>
    </div>
  </div>
</body>
</html>
