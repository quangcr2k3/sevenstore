<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../../sevenstore/css/chi-tiet-sp/products.css">
    <link rel="stylesheet" href="../../sevenstore/css/tin-tuc/tintuc.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../sevenstore/css/chi-tiet-sp/plugin/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../sevenstore/css/chi-tiet-sp/plugin/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Tin Tức</title>
</head>

<body>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../../sevenstore/css/chi-tiet-sp/plugin/js/owl.carousel.min.js"></script>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4" style="background-color: rgb(54, 54, 54);text-align: center">
                <div class="login">


                  <!-- CODE CHECK ĐĂNG NHẬP -->
                  <?php 
                    session_start();
                    if(!isset($_SESSION['user'])){
                  ?>
                  <a href="../../sevenstore/tai-khoan/dang-nhap.php"><p><strong>ĐĂNG NHẬP / ĐĂNG KÍ</strong></p></a> 
                    <?php }else{ ?>
                  <a href="../../sevenstore/tai-khoan/thong-tin-tk.php"><p><strong>XIN CHÀO <?=$_SESSION['user']['ho_ten']?></strong></p></a>
                  <?php } ?>
                </div>



            </div>
            <div class="col-md-4" style="background-color: rgb(54, 54, 54);text-align: center">
                <div class="logo">
                <a href="index.php"><img src="../../sevenstore/css/danh-sach-sp/img/logo_sevenstore.png" alt="anh"></a>
                </div>
            </div>
            <div class="col-md-4" style="background-color: rgb(54, 54, 54);text-align: center">
                <!-- MÃ CODE PHP CHECK SỐ LƯỢNG SẢN PHẨM THÊM VÀO GIỎ HÀNG  -->

                <div class="giohang" style = "position: reletive;">
               
                    <?php
                            $sll = 0;
                            if(isset($_SESSION['cart'])){
                                foreach($_SESSION['cart'] as $item){
                                    extract($item);
                                    $sll+= $sl;
                                }
                            }
                        ?>
                    <span style = "position: absolute;padding:3px 8px;background-color:#fff;border-radius:50px;left:295px;top:25px;" ><?=$sll?></span>
                <ul>
                        <li><p style="color: rgb(212, 212, 212);font-size: 14px;">GIỎ HÀNG</p></li>
                       <a href="danh-sach-gio-hang.php"><li><i class="fa fa-shopping-basket" style="font-size:28px;color:rgb(255, 255, 255)"></i></li></a> 
                    </ul>
                </div>
            </div>
        </div>
    </div>







    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" style="background-color: rgb(211, 211, 211);">
                <div class="nav">
                    <ul>
                        <li><a href="index.php">TRANG CHỦ</a></li>
                        <li><a href="danh-sach-sp.php">SẢN PHẨM</a></li>
                            <li><a href="gioi-thieu.php">GIỚI THIỆU</a></li>
                            <li><a href="tin-tuc.php">TIN TỨC</a></li>
                            <li><a href="lien-he.php">LIÊN HỆ</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>


    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-md-4">
                <!-- ---------------------
                --------------------------- -->
                <div class="row">
                    <div class="serch">
                        <input type="text" placeholder="Tìm kiếm...">
                        <button><i class="fa fa-search"></i></button>
                    </div>
                </div>

                <!-- ---------------------
                --------------------------- -->

                <div class="row" style="margin-top: 50px;">
                    <div class="baiviet">
                        <h5>BÀI VIẾT MỚI</h5>
                    </div>
                </div>


                <div class="row">
                    <div class="out">

                        <table>
                            <tr>
                                <td>
                                    <img src="../../sevenstore/css/tin-tuc/img/puma.jpg" alt="" style="object-fit: cover;">
                                </td>
                                <td>
                                    <p>Puma Pursuit cạnh tranh cực kỳ khốc liệt với Nike Luminous ! </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="../../sevenstore/css/tin-tuc/img/nike.jpg" alt="" style="object-fit: cover;">
                                </td>
                                <td>
                                    <p>Chính thức ra mắt Nike Luminous pack cực kỳ nóng bỏng !</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="../../sevenstore/css/tin-tuc/img/messi.png" alt="" style="object-fit: cover;">
                                </td>
                                <td>
                                    <p>Trên tay đôi giày giúp Messi thực hiện cú sút phạt thành bàn ở phút 90+</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="../../sevenstore/css/tin-tuc/img/alexia.jpg" alt="" style="object-fit: cover;">
                                </td>
                                <td>
                                    <p>Giới thiệu Nike Phantom GT2 Elite phiên bản thửa riêng cho Alexia Putellas</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="../../sevenstore/css/tin-tuc/img/shop.jpg" alt="" style="object-fit: cover;">
                                </td>
                                <td>
                                    <p>Hệ thống giày Seven Store - Uy tín làm nên thương hiệu </p>
                                </td>
                            </tr>


                        </table>



                    </div>
                </div>

            </div>


            <div class="col-md-8">
                <div class="row">



                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/bst_2023_2.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">Top 10 những đôi giày nổi bật tại Seven Store</p>
                            <p class="gach"></p>
                            <p class="nho">Với hệ thống giày lớn đầy đủ mẫu mã đa dạng thì ...</p>

                        </div>
                    </div>

                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/tri_an.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">Chương trình khuyến mãi tri ân khách hàng thành viên</p>
                            <p class="gach"></p>
                            <p class="nho">Tới đây sẽ có những ưu đãi cho những khách hàng thành viên ...</p>

                        </div>
                    </div>

                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/bst_2023_5.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">NIKE ra mắt BST giày bóng đá “SHADOW PACK” 2023</p>
                            <p class="gach"></p>
                            <p class="nho">Theo truyền thống của Nike, mỗi năm hãng thể thao ...</p>

                        </div>
                    </div>

                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/bst_2023_1.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">Top 5 đôi giày bóng đá tấn công được ưa chuộng nhất</p>
                            <p class="gach"></p>
                            <p class="nho">Những ngày đầu mùa giải 2023-24 của các giải bóng đá ...</p>

                        </div>
                    </div>

                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/tin_tuc1.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">Giày bóng đá bị bốc mùi hôi, phải làm sao?</p>
                            <p class="gach"></p>
                            <p class="nho">Giày bóng đá sử dụng một thời gian thường hay có mùi hôi, ...</p>

                        </div>
                    </div>

                    <div class="card" style="width: 14rem;">
                        <img src="../../sevenstore/css/tin-tuc/img/tin_tuc2.jpg" class="card-img-top" alt="..." style="object-fit: cover;">
                        <div class="card-body" style="
                        padding-top: 0px;
                        padding-right: 0px;
                        padding-bottom: 0px;
                        padding-left: 10px;
                    ">


                            <p class="card-text">Erling Haaland trở thành đại sứ thương hiệu của Nike!</p>
                            <p class="gach"></p>
                            <p class="nho">Erling Haaland đi giày bóng đá gì? Đó là câu hỏi lặp đi lặp lại ...</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>









 



    <div class="container-fluid now2" style="margin-top: 70px;">
        <div class="row">
            <div class="container" style="margin-top: 50px;">
                <div class="row">
                    <div class="col-md-3">
                        <div class="fo">
                        <img src="../../sevenstore/css/danh-sach-sp/img/logo_sevenstore.png" alt="" style ="width:60px;">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="fo">
                            <h5>Shop</h5>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h5>Hỗ trợ</h5>
                    </div>
                    <div class="col-md-3">
                        <h5>Tin khuyến mãi</h5>
                    </div>
                </div>

                <div class="row" style="margin-top: 0px;">
                    <div class="col-md-3">
                        <div class="fo">
                            <ul>

                                <li>
                                    <p>
                                    Nhiệm vụ của chúng tôi là mang đến những sản phẩm chất lượng với giá cả tốt nhất cho khách hàng. Được hỗ trợ khách hàng là niềm vinh dự của chúng tôi . <br><br>
                                    Xin cám ơn !                                    
                                </p>
                                </li>
                                <li><i class="fa fa-facebook "></i>
                                    <i class="fa fa-firefox"></i>
                                    <i class="fa fa-pinterest-p"></i>
                                    <i class="fa fa-youtube"></i>

                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="fo">

                            <ul>

                                <li>
                                    <p>Trang chủ</p>
                                </li>
                                <li>
                                    <p>Cửa hàng</p>
                                </li>
                                <li>
                                    <p>Giới thiệu</p>
                                </li>
                                <li>
                                    <p>Liên hệ</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="fo">

                            <ul>

                                <li>
                                    <p>Ưu đãi</p>
                                </li>
                                <li>
                                    <p>Giao nhận</p>
                                </li>
                                <li>
                                    <p>Đổi trả</p>
                                </li>
                                <li>
                                    <p>Bảo mật</p>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="fo">
                            <ul>
                                <li>
                                    <p>Nhập vào email của bạn để đăng ký nhận tin khuyến mãi ...</p>
                                </li>
                                <li>
                                    <input type="text" placeholder="You@gmail.com">
                                    <a href="#">Đăng ký</a>
                                </li>
                            </ul>
                        </div>


                    </div>

                </div>

            </div>
        </div>
    </>









    <script type="text/javascript">
        const nextIcon = ' <i class="fa fa-chevron-left" style="font-size:36px;color:black"></i>';
        const preIcon = ' <i class="fa fa-chevron-right" style="font-size:36px;color:black"></i>';
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            responsiveClass: true,
            navText: [
                nextIcon,
                preIcon
            ],
            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                600: {
                    items: 3,
                    nav: false
                },
                1200: {
                    items: 5,
                    nav: true,
                    loop: false
                }
            }
        })
    </script>




    <script src=" https://code.jquery.com/jquery-3.2.1.slim.min.js " integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN " crossorigin="anonymous "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js " integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q " crossorigin="anonymous "></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js " integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl " crossorigin="anonymous "></script>











</body>

</html>