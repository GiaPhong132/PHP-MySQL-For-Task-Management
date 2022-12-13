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

        <!--Start Insert Modal -->
        <?php require_once './insertModal.php'; ?>
        <!--End Insert Modal -->

        <!-- Start Find Modal -->
        <?php require_once './findModal.php'; ?>
        <!-- End Find Modal -->

        <?php require_once './findTarget.php'; ?>
        <!-- Start Find Order After  -->

        <?php require_once './findOrderAfter.php'; ?>
        <!-- End Find Order After  -->

    </div>

    <!-- TABLE -->
    <?php require_once './tableView.php'; ?>


    <!-- StartUpdate Modal -->
    <?php require_once './updateModal.php'; ?>
    <!-- End Update Modal -->


    <!-- ############### -->
    <div class="container">
        <?php
        if ($records->num_rows > 0) {
            $count = 0;
            foreach ($records as $row) {

                echo '
                            <div class="modal fade" id="deleteModal' . $count++ . '" role="dialog">
                                <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   <!-- <h4 class="modal-title">Confirmation</h4> -->
                                    </div>
                                    <div class="modal-body">
                                    <h1 style="color: red;"> Confirm to delete <span style="color: green;">' . $row['Username'] . '</span> </h1>
                                         <form action="" method="POST">
                                        <input name="deleteCustomer" type="hidden" value="' . $row['CustomerID'] . '">
                                         <div class="modal-footer">
                                         <button type="button" data-dismiss="modal" class="btn btn-primary" id="modal-btn-no" style="width: 49px;"> No</button>
                                         <button  type="submit" class="btn btn-default" id="modal-btn-si" style="background-color: yellow;">Yes</button>
                                       </div>
                                        </form>

                                    </div>
                                </div>

                                </div>
                            </div>';
            }
        }
        ?>
    </div>
    </div>


    <?php
    if ($records->num_rows < 11)
        require_once './paginate.php'; ?>

</body>
<script>
    let numRows = 1200;
    for (let idx = 0; idx < numRows; idx++) {
        let btnId = 'popUpUpdate' + idx;
        // console.log(btnId);
        const btn = document.getElementById(btnId);

        btn.addEventListener('click', function onClick() {
            btn.style.backgroundColor = 'salmon';
            btn.style.color = 'white';
        });
    }
</script>

</html>

<?php
require_once('./footer.php');
