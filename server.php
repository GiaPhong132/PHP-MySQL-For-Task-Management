<?php
// session_start();
require_once "./model/Connection.php";
require_once "./model/Render.php";


connectDB($conn);
$directory = "./views/";
$file = "";
$pageNo = 1;

if (isset($_POST['customer'])) {
    // $sql = "call insert_new_customer('c89988111', 'kbrownsaaaaaworth0', 'mmQ3Ube2C', 'Katleen Brownsworth', '1963-03-21', 'Female', '2507 Debra Circle', '0904392596', 'kbrownsworth0@sciencedaily.com', '2022-08-06 2:20', 580);";
    // $records = $conn->query($sql);
    $file = $directory . 'customerInsert.php';
    $data = array();
    render($file, $data);
} elseif (isset($_POST['insert'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $name = $_POST['name'];
    $birthday = $_POST['birthday'];
    // if (isset($_POST['gender']))
    switch ($_POST['gender']) {
        case 1:
            $gender = "Male";
            break;
        case -1:
            $gender = "Female";
            break;
        case 0:
            $gender = "Other";
            break;
        default:
            $gender = "";
    };
    $address = $_POST['address'];
    $phoneNumber = $_POST['phoneNumber'];
    $email = $_POST['email'];

    $query_findMaxCID = "SELECT MAX(CustomerID) as max FROM Customer";
    $customerIDMax = $conn->query($query_findMaxCID);

    foreach ($customerIDMax as $key) $max = $key['max'];
    $max = $max[0] . (intval(ltrim($max, 'c')) + 1);

    // echo $max;

    $currentDate  = date("Y-m-d") . ' ' . date("h:i");

    $sql = "call insert_new_customer('$max', '$username', '$password', '$name', '$birthday', '$gender', '$address', '$phoneNumber', '$email', '$currentDate', 100);";

    $records = $conn->query($sql);
    foreach ($records as $row) $message = $row['response_customer'];

    $data = array('messageInsert' => $message, 'username' => $username, 'password' => $password, 'name' => $name, 'birthday' => $birthday, 'gender' => $gender, 'address' => $address, 'phoneNumber' => $phoneNumber, 'email' => $email);
    $file = $directory . 'customerInsert.php';
    render($file, $data);
} elseif (isset($_POST['viewAll'])) {

    $sql = "SELECT * FROM Customer ORDER BY Username ASC LIMIT 10 OFFSET 0;";
    // echo $sql;
    $records = $conn->query($sql);
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql);
    $file = $directory . 'customerView.php';
    render($file, $data);
} elseif (isset($_POST['updateCustomer'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $name = $_POST['name'];
    $birthday = $_POST['birthday'];
    switch ($_POST['gender']) {
        case 1:
            $gender = "Male";
            break;
        case -1:
            $gender = "Female";
            break;
        default:
            $gender = "Other";
    };
    $address = $_POST['address'];
    $phoneNumber = $_POST['phoneNumber'];
    $email = $_POST['email'];

    $sql = "call update_name_customer('$username', '$name');";
    $sql .= "call update_birthday_customer('$username', '$birthday');";
    $sql .= "call update_gender_customer('$username', '$gender');";
    $sql .= "call update_address_customer('$username', '$address');";
    $sql .= "call update_phone_customer('$username', '$phoneNumber');";
    $sql .= "call update_email_customer('$username', '$email');";

    $updateMessage = array();
    $indx = 0;

    if ($conn->multi_query($sql)) {
        do {
            // Store first result set
            if ($result = $conn->store_result()) {
                while ($row = $result->fetch_row()) {
                    $updateMessage[$indx] = $row[0];
                }
                $result->free_result();
            }
            // if there are more result-sets, the print a divider
            if ($conn->more_results()) {
                $indx++;
            }
            //Prepare next result set
        } while ($conn->next_result());
    }

    $data = array('updateMessage' => $updateMessage);
    $file = $directory . 'customerInsert.php';
    render($file, $data);
} elseif (isset($_POST['deleteCustomer'])) {
    $customerIDDel = $_POST['deleteCustomer'];
    $sql = "call delete_customer('$customerIDDel')";
    $records = $conn->query($sql);
    foreach ($records as $row) $messageDel = $row['response'];
    $data = array('messageDel' => $messageDel);
    $file = $directory . 'customerInsert.php';
    render($file, $data);
} elseif (isset($_POST['find'])) {
    @$username = $_POST['username'];
    @$name = $_POST['name'];
    @$totalPoint = $_POST['totalPoint'];
    if (isset($_POST['gender']))
        switch (@$_POST['gender']) {
            case 1:
                $gender = "Male";
                break;
            case -1:
                $gender = "Female";
                break;
            default:
                $gender = "Other";
                break;
        };
    @$phoneNumber = $_POST['phoneNumber'];
    @$email = $_POST['email'];
    @$totalPrice = $_POST['totalPrice'];

    $sql = "SELECT * FROM Customer";
    if (@$username != "") $sql .= " Username = '$username'";
    if (@$name != "") $sql .= " Name = '$name'";
    if (@$totalPoint != "") $sql .= " total_point > $totalPoint";
    if (@$gender != "") $sql .= " Gender = '$gender'";
    if (@$phoneNumber != "") $sql .= " Phone = '$phoneNumber'";
    if (@$email != "") $sql .= " Email = '$email'";

    if ($whereIndx = strpos($sql, "r "))
        $sql = substr_replace($sql, ' WHERE', $whereIndx + 1, 0);

    $len = strlen($sql);
    for ($indx = 0; $indx < $len - 1; $indx++) {
        if ($sql[$indx] == "'" and $sql[$indx + 1] == " ") {
            $sql = substr_replace($sql, " and ", $indx + 1, 0);
        }
    }
    if ((!strpos($sql, "ame")) and (!strpos($sql, "day")) and (!strpos($sql, "Phone")) and (!strpos($sql, "Mail")) and @$gender != "" and @$totalPrice != "")
        $sql = "CALL customer_orders('$gender', '$totalPrice')";
    else
        $sql .= " ORDER BY Username ASC LIMIT 10;";
    // echo $sql;
    $records = $conn->query($sql);
    $page = "find";
    $data = array('records' => $records, 'page' => $page, 'query' => $sql);
    $file = $directory . 'customerView.php';

    render($file, $data);
} elseif (isset($_POST['querySort'])) {
    $sql = $_POST['querySort'];

    $sql[strpos($sql, "BY ") + 2];
    $replaceStart = strpos($sql, "BY ") + 2;
    $replaceEnd = strpos($sql, " ASC");
    $replaceEnd = ($replaceEnd > 0) ? $replaceEnd : (strpos($sql, " DESC"));

    $lenReplace = $replaceEnd - $replaceStart;

    if (isset($_POST['userNameSort']))
        $sql = substr_replace($sql, "Username ", $replaceStart + 1, $lenReplace);

    if (isset($_POST['nameSort']))
        $sql = substr_replace($sql, "Name ", $replaceStart + 1, $lenReplace);

    if (isset($_POST['genderSort']))
        $sql = substr_replace($sql, "Gender ", $replaceStart + 1, $lenReplace);

    if (isset($_POST['emailSort']))
        $sql = substr_replace($sql, "Email ", $replaceStart + 1, $lenReplace);

    if (isset($_POST['pointSort']))
        $sql = substr_replace($sql, "total_point ", $replaceStart + 1, $lenReplace);

    if ($indx = strpos($sql, "ASC"))
        $sql = substr_replace($sql, "DESC", $indx, 3);
    elseif ($indx = strpos($sql, "DESC"))
        $sql = substr_replace($sql, "ASC", $indx, 4);

    // echo "<br>";
    // echo $sql;


    $records = $conn->query($sql);
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql);
    $file = $directory . 'customerView.php';

    render($file, $data);
} elseif (isset($_POST['order'])) {
    $sql = "SELECT DISTINCT Name FROM food;";
    $records = $conn->query($sql);
    // echo $records->num_rows;
    $data = array('records' => $records, 'query' => $sql);
    $file = $directory . 'order.php';
    render($file, $data);
} elseif (isset($_POST['findOrderAfter'])) {
    $amount = $_POST['amount'];
    $afterDate = $_POST['afterDate'];
    $foodName = $_POST['foodName'];

    $sql = "CALL findOrderAfter('$afterDate', $amount, '$foodName', ' ', 0);";
    $records = $conn->query($sql);
    $data = array('records' => $records, 'query' => $sql);
    $file = $directory . 'order.php';
    render($file, $data);
} elseif (isset($_POST['orderSort'])) {
    $sql = $_POST['orderSort'];
    // $sql = "CALL findOrderAfter('2020-01-01', 0, 'Coca', 'amoasasdasasunt', 0);";
    if (isset($_POST['nameSort']))
        $sortParameter = 'Name';
    elseif (isset($_POST['amountSort']))
        $sortParameter = 'amount';
    else
        $sortParameter = 'userName';

    $len = strlen($sql);

    for ($indx = $len - 1; $indx > 0; $indx--) {
        if (($sql[$indx] == ',')) {
            if (!isset($endReplace)) {
                $endReplace = $indx - 2;
            } else {
                $startReplace = $indx + 3;
                break;
            }
        }
    }
    // echo $sql;
    // echo '<br>';
    // echo $endReplace - $startReplace;
    $sql = substr_replace($sql, $sortParameter, $startReplace, $endReplace - $startReplace + 1);


    // echo $sql;


    $records = $conn->query($sql);
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql);
    $file = $directory . 'order.php';

    render($file, $data);
} elseif (isset($_POST['pageClick'])) {
    $sql = $_POST['queryPage'];


    if (isset($_POST['pageClick']))
        $pageNo = $_POST['pageClick'];

    // echo $pageNo;
    $offset = ($pageNo - 1) * 10;

    $flag = strpos($sql, "OFFSET");
    if (!(strpos($sql, "ALL ") or strpos($sql, "all ") or strpos($sql, "all "))) {
        if ($flag) {
            $startReplace = strpos($sql, "OFFSET ") + strlen("OFFSET ");
            $sql[$startReplace];
            $endReplace = strpos($sql, ";");
            $sql = substr_replace($sql, $offset, $startReplace, $endReplace - $startReplace);
        } else {
            $sql = substr_replace($sql, " OFFSET 0", strpos($sql, ";"), 0);
        }
    } else {
        $len = strlen($sql);
        for ($indx = $len - 1; $indx > 0; $indx--) {
            if ($sql[$indx] == ',')
                break;
        }
        $endReplace = strpos($sql, ");") - 1;
        $sql = substr_replace($sql, $offset, $indx + 1, $endReplace - $indx);

        // echo 1;
    }
    // echo !(strpos($sql, "ALL ") or strpos($sql, "all ") or strpos($sql, "all "));
    $records = $conn->query($sql);
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql);
    if (strpos($sql, "Customer"))
        $file = $directory . 'CustomerView.php';
    else
        $file = $directory . 'order.php';
    render($file, $data);
} elseif (isset($_POST['movie'])) {
    $sql = "SELECT DISTINCT Branch_code FROM ticket;";
    // echo $sql;
    $records = $conn->query($sql);
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql);

    // echo $records->num_rows;
    $file = $directory . 'movie.php';
    render($file, $data);
} elseif (isset($_POST['findTarget'])) {

    $branchCode = $_POST['branchCode'];
    $date = $_POST['month'];
    $target = $_POST['amount'];

    $month = substr_replace($date, "", 0, strpos($date, '-') + 1);

    $year = substr_replace($date, "", strpos($date, '-'), strlen($month) + 1);
    // echo $month->format('m');

    $sql = "select dayReachTarget($month, $year, '$branchCode', $target);";
    $records = $conn->query($sql);
    $filedName = substr_replace($sql, "", 0, 7);
    $filedName = substr_replace($filedName, "", strlen($filedName)  - 1, 1);

    foreach ($records as $row) $messageTarget = $row[$filedName];

    $file = $directory . 'movie.php';
    $data = array('records' => $records, 'pageNo' => $pageNo, 'query' => $sql, 'messageTarget' => $messageTarget);
    // echo $message;
    render($file, $data);
}
