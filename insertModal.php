<script></script>
<div class="container">
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <!-- <h4 class="modal-title">Customer</h4> -->
                </div>

                <div class="modal-body">



                    <div class="formInsert">

                        <form class="well form-horizontal" action="server.php" method="POST" id="contact_form">
                            <fieldset>

                                <!-- Form Name -->
                                <legend>
                                    <center>
                                        <h2><b>Registration Form</b></h2>
                                    </center>
                                </legend><br>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">UserName</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="username" placeholder="UserName" class="form-control" type="text" value="<?php echo @$username ?>" required minlength="5">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Password</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
                                            <input id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" placeholder="Password" class="form-control" type="password" value="<?php echo @$password ?>">
                                        </div>
                                    </div>
                                </div>

                                <div id="message">
                                    <h3>Password must contain the following:</h3>
                                    <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                    <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                    <p id="number" class="invalid">A <b>number</b></p>
                                    <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Name</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="name" placeholder="Name" class="form-control" type="text" value="<?php echo @$name ?>">
                                        </div>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <label class="col-md-4 control-label">Birthday:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                            <input type="date" name="birthday" placeholder="" class="form-control" value="<?php echo @$birthday ?>" id="dateButton" onchange="checkFormat()" required>
                                        </div>
                                    </div>
                                </div>


                                <?php
                                if (@$gender == "Male") {
                                    echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender"  required>
                                                    <option value="1" selected>Male</option>
                                                    <option value="-1">Female</option>
                                                    <option value="0">Other</option>
                                                </select>
                                            </div>
                                        </div>
                                             ';
                                } elseif (@$gender == "Female") {
                                    echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender"  required>
                                                    <option value="1">Male</option>
                                                    <option value="-1" selected>Female</option>
                                                    <option value="0">Other</option>
                                                </select>
                                            </div>
                                        </div>
                                             ';
                                } elseif (@$gender == "Other") {
                                    echo '
                                                 <div class="form-group">
                                            <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                            <div class="col-md-4 inputGroupContainer">
                                                <select class="form-control" name="gender"  required>
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
                                                    <select class="form-control" name="gender" required>
                                                    <option hidden selected="true" value="" disabled="disabled">Choose Gender</option>
                                                        <option value="1">Male</option>
                                                        <option value="-1">Female</option>
                                                        <option value="0" >Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                             ';
                                }
                                ?>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Address</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input name="address" placeholder="Address" class="form-control" value="<?php echo @$address ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Phone Number</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
                                            <input title="Phone Number's Length = 10 and must start with 0" type="tel" name="phoneNumber" placeholder="0XXXXXXXXX" pattern="[0]{1}[1-9]{1}[0-9]{8}" class="form-control" value="<?php echo @$phoneNumber ?>" required minlength="10" maxlength="10">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">E-Mail</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input name="email" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" placeholder="E-Mail Address" class="form-control" type="email" title="Right Format Email: abc@xyz.bdf" value="<?php echo @$email ?>">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-4"><br>
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button style="background-color: YellowGreen;border-color: YellowGreen;" type="submit" class="btn btn-warning" name="insert">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspINSERT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                                    </div>
                                </div>


                            </fieldset>
                        </form>
                    </div>
                </div><!-- /.container -->

            </div>



        </div>
    </div>
</div>

<script type="text/javascript">
    function clearall() {
        var elements = document.getElementsByTagName("input");
        for (var ii = 0; ii < elements.length; ii++) {
            elements[ii].value = "";
        }
    }
</script>

<?php
if (strpos(@$messageInsert, 'Success'))

    echo '<script type="text/javascript">',
    'clearall(); ',
    '</script>';

?>