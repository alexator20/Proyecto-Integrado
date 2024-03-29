<?php
require_once __DIR__ . "/php/autoloader.php";
$security = new Security();
$security->doLogin();
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

    <img class="logo" src="./Assets/imgs/logoEmpresa.jpeg" width="120px" height="120px">

    <div class="container text-center">
        <div class="row align-items-center">
            <div class="col">
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
                                <input type="password" name="password" minlength="6" maxlength="20" value="" required>
                            </label>
                            <a href="./forgot.php">
                                <p class="forgot-pass">Forgot password?</p>
                            </a>
                            <button type="submit" class="submit" value="Sign In">Sign In</button>
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
                            <form method="post" action="./signUp.php">
                                <h2>Time to feel like home,</h2>
                                <label>
                                    <span>Name</span>
                                    <input type="text" name="name" value="" required>
                                </label>
                                <label>
                                    <span>Last name</span>
                                    <input type="text" name="lastname" value="" required>
                                </label>
                                <label>
                                    <span>Email</span>
                                    <input type="text" name="email" placeholder="example@gmail.com" value="" required>
                                </label>
                                <label>
                                    <span>Address</span>
                                    <input type="text" name="address" value="" required>
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
            </div>
        </div>
    </div>
    <script src="./Assets/js/register.js"></script>
</body>

</html>