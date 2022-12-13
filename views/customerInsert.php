<?php
require_once('./header.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cinema</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../public/style/customerInsert.css">
    <script src="../public/script/customerInsert.js"></script>
</head>

<body>
    <div class="container">
        <br>
        <!-- Trigger the modal with a button -->
        <?php require_once './buttonQuery.php'; ?>
        <br>
        <br>

        <!-- Start Insert Modal -->
        <?php require_once './insertModal.php'; ?>
        <!-- End Insert Modal -->

        <!-- Find Modal -->
        <?php require_once './findModal.php'; ?>
        <!-- End Find Modal -->

        <!-- Start Find Order After  -->
        <?php require_once './findOrderAfter.php'; ?>
        <!-- End Find Order After  -->

        <?php require_once './findTarget.php'; ?>

        <!-- Modal -->
        <?php require_once './showQueryMsg.php'; ?>

    </div>

    <!-- <script type="text/javascript">
        function clearall() {
            var elements = document.getElementsByTagName("input");
            for (var ii = 0; ii < elements.length; ii++) {
                elements[ii].value = "";
            }
        }
    </script> -->
</body>

</html>




<?php
require_once('./footer.php');
