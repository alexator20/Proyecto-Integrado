<?php
require_once __DIR__ . "/php/autoloader.php";
/* $security = new Security();
$security->checkLoggedIn(); */
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register y log in</title>
    <link rel="stylesheet" href="./Assets/css/register.css">
</head>

<!-- referencia: https://codepen.io/suez/pen/RpNXOR -->

<body>
    <p class="tip"></p>
    <div class="cont">
        <div class="form sign-in">
            <form method="post" action="">
                <h2>Welcome back,</h2>
                <label>
                    <span>Email</span>
                    <input type="text" name="email" placeholder="example@gmail.com" value="">
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password"  minlength="6" maxlength="20" value="" required>
                </label>
                <p class="forgot-pass">Forgot password?</p>
                <a href="./index.html"><button type="button" class="submit">Sign In</button></a>
            </form>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>New here?</h2>
                    <p>Sign up and discover great amount of new opportunities!</p>
                </div>
                <div class="img__text m--in">
                    <h2>One of us?</h2>
                    <p>If you already has an account, just sign in. We've missed you!</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            <div class="form sign-up">
                <form method="post" action="signUp.php">
                    <h2>Time to feel like home,</h2>
                    <label>
                        <span>Name</span>
                        <input type="text" name="name" value="">
                    </label>
                    <label>
                        <span>Last name</span>
                        <input type="text" name="lastname" value="">
                    </label>
                    <label>
                        <span>Email</span>
                        <input type="text" name="email" placeholder="example@gmail.com" value="">
                    </label>
                    <label>
                        <span>Address</span>
                        <input type="text" name="address" value="">
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" name="password" minlength="6" maxlength="20" value="" required>
                    </label>
                    <!-- <a href="./register.php"><button type="button" class="submit">Sign In</button></a> -->
                    <button type="submit" class="submit" value="Sign In">Sign Up</button>
                </form>
            </div>
        </div>
    </div>
    <script src="./Assets/js/register.js"></script>
</body>

</html>