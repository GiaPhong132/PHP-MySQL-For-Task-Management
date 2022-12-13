<div class="container">

    <div class="modal fade" id="findTargetModal" role="dialog">
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
                                        <h2><b>Find Target Form</b></h2>
                                    </center>
                                </legend><br>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">Amount Target:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="amount" placeholder="Amount" class="form-control" type="number" min="10000" max="50000000" title="Value must be greater than or equal 0" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">In:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                            <input type="month" name="month" class="form-control" id="dateTargetIncome" onchange="checkDateTarget()" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="sel1" class="col-md-4 control-label">Branch Code:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <?php
                                        if (strpos(@$query, "FROM ticket")) {
                                            echo '<select class="form-control" name="branchCode" required>';
                                            echo '<option value="" selected disabled>Choose</option>';
                                            foreach ($records as $row) {
                                                echo '


                                            <option value="' . $row['Branch_code'] . '">' . $row['Branch_code'] . '</option>
                                                    ';
                                            }
                                            echo '</select>';
                                        } else {
                                            echo '
                                            <input title="Branch code must be is bx with x from 0 - 4" type="text" class="form-control" name="branchCode" pattern="(?=.*b)(?=.*[0-4]).{2}" required>
                                            ';
                                        }
                                        ?>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-4"><br>
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" name="findTarget" style="background-color: Turquoise;border-color: Turquoise;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFIND <span class="glyphicon glyphicon-search"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
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

<script>

</script>