<div class="container">

    <div class="modal fade" id="findModal" role="dialog">
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
                                        <h2><b>Search Customer</b></h2>
                                    </center>
                                </legend><br>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">UserName</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="username" placeholder="UserName" class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Total Price</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                                            <input name="totalPrice" placeholder="Total Price" class="form-control" type="number" min="50000">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Name</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="name" placeholder="Name" class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Birthday:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                            <input type="date" name="birthday" placeholder="" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="sel1" class="col-md-4 control-label">Gender:</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <select class="form-control" name="gender" value="a">
                                            <option value="" selected disabled>Choose</option>
                                            <option value="1">Male</option>
                                            <option value="-1">Female</option>
                                            <option value="0">Other</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Total Point</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-thumbs-up"></i></span>
                                            <input type="number" name="totalPoint" placeholder="Total Point" class="form-control" min="10">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">E-Mail</label>
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input title="Right Format Email: abc@xyz.bdf" name="email" placeholder="E-Mail Address" class="form-control" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" type="email">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-4"><br>
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" name="find" style="background-color: Turquoise;border-color: Turquoise;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFIND <span class="glyphicon glyphicon-search"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
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