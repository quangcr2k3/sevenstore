<?php
        session_start();
        session_destroy();
        header('location: /sevenstore/trang-chinh/index.php');
    ?>