<div class="header">
    <div class="container menu-top">
        <div class="row">
            <div class="col-12">
                <div class="img-logo">
                    <div class="logo">
                        <a href="index.php"><img src="Assets/frontend/images/logo.sami.webp" alt=""></a>
                    </div>
                </div>
                <div class="menu-header banner-right">
                    <div class="headertop">
                        <div class="headertopleft">
                            <div class="ship">
                                <div class="shipping-img">
                                    <img src="Assets/frontend/images/giaohang.sami.webp" alt="" class="img-shipping">
                                </div>
                                <div class="shipping-text">
                                    <div class="text1">Giao hàng miễn phí</div>
                                    <div class="text2">ngoại thành với hóa đơn trên 90k, nội thành với hóa đơn
                                        trên 200k
                                    </div>
                                </div>
                                <div style="clear: both"></div>
                            </div>
                        </div>
                        <div class="header-content">
                            <div class="hottline">
                                <span style="color: #DC1C4C">Liên hệ -</span> <a href="tel:0889984956">0889984956</a>
                                <div class="headercenter">
                                    <div class="titleheader">Chào mừng bạn đến với SAMMISHOP!</div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <div class="headerbottom">
                        <div class="box-search" id="search__form_input">
                            <form action="" method="POST">
                                <div class="box-input">
                                    <input class="input-search" id="product__search" name="search_text" type="text" placeholder="Nhập từ khóa tìm kiếm">
                                    <button class="icon-search" type="submit"><i class="fa fa-search "></i></button>
                                </div>
                            </form>
                            <div class="result__product">
                                <?php require_once 'Mvc/frontend/controllers/ProductController.php';
                                $obj_controller = new ProductController();
                                $obj_controller->searchProductName();
                                ?>
                            </div>
                        </div>
                        <div>
                            <div class="icon-user"><i class="fa fa-user "></i>

                                <div class="dangnhap">
                                    <ul>
                                        <?php if (!isset($_SESSION["user_account"]) && empty($_SESSION["user_account"])): ?>
                                        <li><a href="dang-nhap">Đăng nhập</a></li>
                                        <li>/</li>
                                        <li><a href="dang-ky">Đăng ký</a></li>
                                    </ul>
                                    <?php else: ?>
                                        <div style="margin-bottom: 5px"><a
                                                    href=""><?php echo $_SESSION["user_account"]["fullname"] ?></a>
                                        </div>
                                        <div style="margin-bottom: 5px"><a href="lich-su-mua-hang">Lịch sửa mua hàng</a></div>
                                        <div style="margin-bottom: 5px"><a href="logout">Đăng xuất</a></div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
    </div>
    <div class="menu-bottom">
        <div class="container">
            <div class="row">
                <div class="banner-left">
                    <div class="menu-left">
                        <i id="icon-bar" class="fa fa-bars"></i>
                        <span class="menu1">DANH MỤC SẢN PHẨM</span>
                    </div>
                </div>
                <div class="menu banner-right">
                    <ul class="menu-center">
                        <li><a href="index.php">TRANG CHỦ </a></li>
                        <li><a href="san-pham-moi">HÀNG MỚI VỀ </a></li>
                        <?php require_once 'Mvc/frontend/controllers/CategoryController.php';
                                $category_controller=new CategoryController();
                                    $category_controller->CategoryNews();
                        ?>
                        <li><a href="he-thong-cua-hang">HỆ THỐNG CỬA HÀNG </a></li>
                    </ul>
                    <div class="shopping">
                        <a href="gio-hang-cua-ban"> <i id="icon-shopping" class="fa fa-shopping-cart"></i>
                            <?php $total = 0;
                            if (isset($_SESSION["cart"]) && !empty($_SESSION["cart"])):
                                {
                                    foreach ($_SESSION["cart"] as $list) {
                                        $total += $list["quanlity"];
                                    }
                                }
                                ?>
                                <span class="menu1">(<?php echo $total; ?>) SẢN PHẨM</span>
                            <?php else: ?>
                                <span class="menu1"> SẢN PHẨM</span>
                            <?php endif; ?>
                        </a>
                    </div>

                </div>
                <div style="clear: both"></div>
            </div>
        </div>
    </div>
</div>
