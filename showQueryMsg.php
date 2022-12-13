<?php
if (isset($messageInsert)) {
    if ($messageInsert == "Insert Successful")
        echo '
                    <h2>Notifications</h2>
                    <div class="alert alert-success">
                        <strong>Insert Success!</strong>
                     </div>
                    ';
    else {
        echo '
                    <h2>Notifications</h2>
                           <div class="alert alert-danger">
                <strong>' . $messageInsert . '</strong>!
                </div>
                        ';
    }
}

if (isset($updateMessage)) {
    $success = 1;
    echo '
                    <h2>Notifications</h2>';
    foreach ($updateMessage as $message) {
        if (!strpos($message, 'Successful') and  !strpos($message, 'Successfully')) {
            echo '
                <div class="alert alert-danger">
                    <strong>' . $message . '</strong>!
                    </div>
                     ';
            $success = 0;
        }
    }
    if ($success) {
        echo '
                <div class="alert alert-success">
                    <strong>Update Successfully!</strong>!
                    </div>
                     ';
    }
}

if (isset($messageDel)) {
    echo '
                    <h2>Notifications</h2>';
    if (strpos($messageDel, 'Successfully'))
        echo '
                    <div class="alert alert-success">
                        <strong>' . $messageDel . '</strong>
                     </div>
                    ';
    else {
        echo '
                           <div class="alert alert-danger">
                <strong>' . $messageDel . '</strong>!
                </div>
                        ';
    }
}

if (isset($messageTarget)) {
    echo '
                    <h2>Notifications</h2>';
    if (strpos($messageTarget, 'DAT CHI TIEU TRONG VONG'))
        echo '
                    <div class="alert alert-success">
                        <strong>' . $messageTarget . '</strong>
                     </div>
                    ';
    else {
        echo '
                           <div class="alert alert-danger">
                <strong>' . $messageTarget . '</strong>!
                </div>
                        ';
    }
}
