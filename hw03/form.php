<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet">
  <script src="assets/javascript/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row">
    <h3>Create User</h3>
    </div>
    <div class="row">
      <form action="index.php" method="POST">
        <input placeholder="Name" type="text" class="span4" name="name"><br>
        <input placeholder="Address" type="text" class="span5" name="adress"><br>
        <input placeholder="Email" type="text" class="span5" name="email"><br>
        <input type="hidden" name="insertUser" value="true">
        <div class="btn-group">
          <button type="submit" class="btn">Submit</button>
          <a href="index.php" class="btn btn-primary">&larr; Back</a>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
