<div class="container">
    <?php
    if ($records->num_rows > 0) {
        $count = 0;
        foreach ($records as $row) {
            $date = date_create($row['Birthday']);
            $dateUI = date_format($date, 'Y') . '-' . date_format($date, 'm') . '-' . date_format($date, 'd');
            // echo '<input type="date" name="birthday" placeholder="" class="form-control" value=" ' . date_format($date, 'Y') . '-' . date_format($date, 'm') . '-' . date_format($date, 'd') . '  ">';
            echo '
                    <div class="modal fade" id="updateModal' . $count . '" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <!-- <h4 class="modal-title">Customer</h4> -->
                                </div>
                                <div class="modal-body">
                                    <div class="formInsert">
                                        <form class="well form-horizontal" action="" method="POST" id="contact_form">
                                            <fieldset>
                                                <!-- Form Name -->
                                                <legend>
                                                    <center>
                                                        <h2><b>Update Form</b></h2>
                                                    </center>
                                                </legend><br>
                        ';

            echo '
                                            <div class="form-group">
                                            <label class="col-md-4 control-label">UserName</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input name="username" placeholder="UserName" class="form-control" type="text" value="' . $row['Username'] . '" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Password</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
                                                    <input name="password" placeholder="Password" class="form-control" type="password" value=' . $row['Password'] . '" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Name</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input name="name" placeholder="Name" class="form-control" type="text" value="' . $row['Name'] . '">
                                                </div>
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Birthday:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-heart-empty"></i></span>
                                                    <input type="date" name="birthday" placeholder="" class="form-control" value="' . $dateUI . '">
                                                </div>
                                            </div>
                                        </div>

                        ';

            if ($row['Gender'] == "Male") {
                echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender" value="a">
                                                    <option value="1" selected>Male</option>
                                                    <option value="-1">Female</option>
                                                    <option value="0">Other</option>
                                                </select>
                                            </div>
                                        </div>
                                             ';
            } elseif ($row['Gender'] == "Female") {
                echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender" value="a">
                                                    <option value="1">Male</option>
                                                    <option value="-1" selected>Female</option>
                                                    <option value="0">Other</option>
                                                </select>
                                            </div>
                                        </div>
                                             ';
            } elseif ($row['Gender'] == "Other") {
                echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender" value="a">
                                                    <option value="1">Male</option>
                                                    <option value="-1">Female</option>
                                                    <option value="0"  selected>Other</option>
                                                </select>
                                            </div>
                                        </div>
                                             ';
            } else {
                echo '
                                                 <div class="form-group">
                                                <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                                <div class="col-md-4 inputGroupContainer">
                                                    <select class="form-control" name="gender" value="a">
                                                    <option hidden selected="true" disabled="disabled">Choose Gender</option>
                                                        <option value="1">Male</option>
                                                        <option value="-1">Female</option>
                                                        <option value="0" >Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                             ';
            }

            echo '

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Address</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input name="address" placeholder="Address" class="form-control" value="' . $row['Address'] . '">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Phone Number</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
                                            <input type="tel" name="phoneNumber" placeholder="0XXXXXXXXX" pattern="[0]{1}[1-9]{1}[0-9]{8}" class="form-control" value="' . $row['Phone'] . '" required>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">E-Mail</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input title="Right Format Email: abc@xyz.bdf" name="email" placeholder="E-Mail Address" class="form-control" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" type="email" value="' . $row['Email'] . '">
                                        </div>
                                    </div>
                                </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4"><br>
                                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" name="updateCustomer" style="background-color:green;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspUPDATE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                                        </div>
                                    </div>


                                    </fieldset>
                                    </form>
                                </div>
                            </div><!-- /.container -->

                            </div>


                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                            </div>
                            </div>
                            </div>

                    ';
            $count++;
        }
    }


    ?>





    <?php

    ?>


    <!-- </div> -->
    <!-- Modal -->

</div>