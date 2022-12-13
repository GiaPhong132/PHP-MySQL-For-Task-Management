<?php

function render($file, $data = array())
{
    // require_once $file;
    $view_file = $file;
    if (is_file($view_file)) {
        extract($data);
        ob_start();
        require_once($view_file);
        $content = ob_get_clean();
        require_once('./basic_layout.php');
    } else {
        header('Location: ./views/errors/errors.php');
    }
}
