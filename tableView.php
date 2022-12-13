 <div class="container">
     <h2>Customer Table</h2>
     <table class="table">
         <thead>
             <form action="" method="POST">
                 <tr>
                     <input type="hidden" value="<?php echo $query ?>" name="querySort">
                     <th style="border: 0px; padding-right: 0px;">Username &nbsp<button name="userNameSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i>
                         </button></th>
                     <th style="border: 0px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspName &nbsp<button name="nameSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                     <th style="border: 0px;">Gender&nbsp&nbsp<button name="genderSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                     <th style="border: 0px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEmail &nbsp<button name="emailSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                     <th style="border: 0px;">Total Point &nbsp<button name="pointSort" type="submit" style="font: size 16px;"><i class="fa fa-sort"></i></button></th>
                 </tr>
             </form>
         </thead>
         <tbody>


             <?php
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
                                <td>&nbsp&nbsp&nbsp' . $row['Gender'] . '</td>
                                <td>' . $row['Email'] . '</td>
                                <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp' . $row['Total_point'] . '</td>
                                <td>
                                <button id ="popUpUpdate' . $count . '" style="background-color: green; border-color: green" type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#updateModal' . $count . '">Update</button>

                                    <button style="background-color: red; border-color: red" type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#deleteModal' . $count . '">Delete</button>
                                </td>
                                </tr>
                                    ';
                        $count++;
                    }
                }
                ?>

         </tbody>
     </table>
 </div>