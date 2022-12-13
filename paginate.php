<div class="container">

    <!-- <h2>Pagination</h2> -->
    <!-- <p>The .pagination class provides pagination links:</p> -->
    <form action="" style="float: right;" method="POST">
        <input type="hidden" value="<?php echo $query ?>" name="queryPage" ;>
        <ul class="pagination">
            <?php
            if (!isset($pageNo))
                $pageNo = 1;

            $indexStart = $pageNo > 3 ? $pageNo - 3 : 1;
            if ($records->num_rows < 10) {
                $indexEnd = $pageNo + 1;
                $indexStart = $indexEnd - 5;
            } else
                $indexEnd = $indexStart + 5;
            for ($index = $indexStart; $index < $indexEnd; $index++)
                if ($index > 0) { {
                        if ($index == $pageNo) {
                            echo '
            <button value="' . $index . '" name="pageClick" type="submit" class="btn btn-danger">
                    ' . $index . '
            </button> ';
                        } else {
                            echo '
            <button value="' . $index . '" name="pageClick" type="submit" class="btn btn-info">
                    ' . $index . '
            </button> ';
                        }
                    }
                }
            ?>
        </ul>
    </form>


</div>