
<?php
require_once(__DIR__ . "/php/autoloader.php");

$security = new Security();
if (isset($_POST["forgot_password"])) {
  $email = $_POST["email"];
  $new_password = $_POST["new_password"];
  
  $security->forgotPassword($email, $new_password);
  // Aquí se llama al método forgotPassword() de la instancia de la clase Security
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot password</title>
    <link rel="stylesheet" href="./Assets/css/register.css">
</head>

<body>
    <p class="tip"></p>
    <div class="cont">
      <div class="form sign-in">
        <form method="post" action="">
          <h2>Forgot password!!</h2>
          <label>
            <span>Email</span>
            <input type="text" name="email" placeholder="example@gmail.com" value="">
          </label>
          <label>
            <span>New Password</span>
            <div class="password-field">
              <input type="password" name="new_password" minlength="6" maxlength="20" value="" required>
            </div>
          </label>
          <button type="submit" name="forgot_password" class="submit">UPDATE</button>
        </form>
      </div>
    </div>
  </body>
  
</html>
