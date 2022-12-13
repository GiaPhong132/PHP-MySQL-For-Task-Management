<!DOCTYPE html>
<html lang="en">

<style>
    #message {
        display: none;
        background: Lavender;
        color: #000;
        position: relative;
        padding: 20px;
        margin-top: 10px;
    }

    #message p {
        padding: 10px 35px;
        font-size: 18px;
    }

    /* Add a green text color and a checkmark when the requirements are right */
    .valid {
        color: green;
    }

    .valid:before {
        position: relative;
        left: -35px;
        content: "✔";
    }

    /* Add a red text color and an "x" when the requirements are wrong */
    .invalid {
        color: red;
    }

    .invalid:before {
        position: relative;
        left: -35px;
        content: "✖";
    }
</style>

<head>
    <title>Cinema</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
    <form action="./server.php" method="POST">
        <div class="container">
            <h2>Cinema</h2>
            <button type="submit" class="btn" name="customer">Customer</button>
            <button type="submit" class="btn btn-default" name="order">Order</button>
            <button type="submit" class="btn btn-primary" name="movie">Movie</button>
            <!-- <button hidden type="button" class="btn btn-success">Success</button>
            <button hidden type="button" class="btn btn-info">Info</button>
            <button hidden type="button" class="btn btn-warning">Warning</button>
            <button hidden type="button" class="btn btn-danger">Danger</button> -->
        </div>
    </form>