<?php
require_once('./header.php');
// foreach ($records as $row) echo $row['response_username'];
?>

<div class="container">
    <br>
    <?php require_once './buttonQuery.php'; ?>

    <?php require_once './insertModal.php'; ?>

    <?php require_once './findModal.php'; ?>

    <?php require_once './findOrderAfter.php'; ?>

    <?php require_once './findTarget.php'; ?>
</div>

<div class="container">
    <?php
    if ((mysqli_num_fields($records) > 1)) echo "<h2>Customer's Order Table</h2>";
    ?>

    <table class="table">
        <?php
        // echo $query;
        if ((mysqli_num_fields($records) > 1)) {
            echo '

                        <thead>
                                    <form action="" method="POST">
                                        <tr>
                                            <input type="hidden" value="' . $query . '" name="orderSort">
                                            <th style="border: 0px; padding-right: 0px;">Username &nbsp<button name="userNameSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i>
                                                </button></th>
                                            <th style="border: 0px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspName &nbsp<button name="nameSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                                            <th style="border: 0px;">Gender&nbsp&nbsp</th>
                                            <th style="border: 0px;">&nbsp&nbsp&nbspPhone &nbsp</th>
                                            <th style="border: 0px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAddress &nbsp</th>
                                            <th style="border: 0px;">Order Amount &nbsp<button name="amountSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                                        </tr>
                                    </form>
                                </thead>
                            ';
        }
        ?>
        <tbody>


            <?php
            if ((mysqli_num_fields($records) > 1)) {
                if ($records->num_rows > 0) {
                    $count = 0;
                    foreach ($records as $row) {
                        if ($count % 6 == 0)
                            echo '<tr class = "default">';
                        elseif ($count % 6 == 1)
                            echo '<tr class = "success">';
                        elseif ($count % 6 == 2)
                            echo '<tr class = "danger">';
                        elseif ($count % 6 == 3)
                            echo '<tr class = "info">';
                        elseif ($count % 6 == 4)
                            echo '<tr class = "warning">';
                        else
                            echo '<tr class = "active">';

                        echo '
                                <td>' . $row['Username'] . '</td>
                                <td>' . $row['Name'] . '</td>
                                <td>&nbsp&nbsp' . $row['Gender'] . '</td>
                                <td>' . $row['Phone'] . '</td>
                                <td>' . $row['Address'] . '</td>
                                <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp' . $row['OrderAmount'] . '</td>
                                </tr>
                                    ';
                        $count++;
                    }
                }
            }
            ?>

        </tbody>
    </table>
</div>



<?php
if ($query != "SELECT DISTINCT Name FROM food;")
    require_once './paginate.php'; ?>

<?php
require_once('./footer.php');
