<div class="container">

    <div class="modal fade" id="findAfterModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <!-- <h4 class="modal-title">Customer</h4> -->
                </div>

                <div class="modal-body">

                    <div class="formInsert">

                        <form class="well form-horizontal" action=" " method="POST" id="contact_form">
                            <fieldset>

                                <!-- Form Name -->
                                <legend>
                                    <center>
                                        <h2><b>Find Order Form</b></h2>
                                    </center>
                                </legend><br>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">Amount:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="amount" placeholder="Amount" class="form-control" type="number" min="0" title="Value must be greater than or equal 0" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">After:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                            <input type="date" name="afterDate" class="form-control" id="userdate" onchange="TDate()" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="sel1" class="col-md-4 control-label">Food's Name:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <?php
                                        if (strpos(@$query, "FROM food")) {
                                            echo '<select class="form-control" name="foodName" value="a" required>
                                            <option value="" selected disabled>Choose</option>
                                            ';
                                            foreach ($records as $row) {
                                                echo '


                                            <option value="' . $row['Name'] . '">' . $row['Name'] . '</option>
                                                    ';
                                            }
                                            echo '</select>';
                                        } else {
                                            echo '
                                            <input type="text" class="form-control" name="foodName" required>
                                            ';
                                        }
                                        ?>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-4"><br>
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" name="findOrderAfter" style="background-color: Turquoise;border-color: Turquoise;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFIND <span class="glyphicon glyphicon-search"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
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