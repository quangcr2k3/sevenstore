<?php
    session_start();
    extract($_REQUEST);
    
    if(array_key_exists('btn_update_gio_hang',$_REQUEST)){
        foreach($sl as $key=>$value){
            // Lấy giá trị size từ ô nhập size
            $sz = $_REQUEST['sz'][$key];

            // Cập nhật số lượng và size trong giỏ hàng
            $_SESSION['cart'][$key]['sl'] = $value;
            $_SESSION['cart'][$key]['sz'] = $sz;
        }
    }
  header('location: danh-sach-gio-hang.php');



?>