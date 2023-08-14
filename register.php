<?php

include_once('auth.php');

if(isset($_POST['register'])) {
    $data = [
        "name" => $_POST["name"],
        "username" => $_POST["username"],
        "password" => $_POST["password"],
        "password_confirm" => $_POST["password_confirm"]
    ];

    $register = auth::register($data);

    // die(var_dump($register));

    if($register["status"] === "success") {
        header("Location: login.php");
    } else {
        header("Location: register.php");
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <style>
    body {
        background-color: #f8f9fa;
    }

    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        background-color: #ffffff;
    }

    .card-header {
        background-color: green;
        color: #fff;
        border-radius: 5px 5px 0 0;
    }

    .card-body {
        padding: 20px;
    }

    .btn-primary {
        background-color: green;
        border-color: green;
        transition: background-color 0.3s, border-color 0.3s;
    }

    .btn-primary:hover {
        background-color: yellowgreen;
        border-color: #0056b3;
    }

    .text-center a {
        color: #007bff;
        text-decoration: none;
    }

    .text-center a:hover {
        text-decoration: underline;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 0 0.25rem rgba(0, 123, 255, 0.25);
    }
</style>


</head>

<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <span class="h3">Register</span>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="mb-3">
                        <label for="name">Name</label>
                        <input class="form-control" type="text" name="name" id="name">
                    </div>
                    <div class="mb-3">
                        <label for="username">Username</label>
                        <input class="form-control" type="text" name="username" id="username">
                    </div>
                    <div class="mb-3">
                        <label for="password">Password</label>
                        <input class="form-control" type="password" name="password" id="password">
                    </div>
                    <div class="mb-3">
                        <label for="password_confirm">Confirm Password</label>
                        <input class="form-control" type="password" name="password_confirm" id="password_confirm">
                    </div>
                    <div class="d-grid gap-2">
                        <button name="register" type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
                <div class="text-center">Already have an account? <a href="login.php">Login</a> now!</div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>