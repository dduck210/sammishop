<div class="slider">
  <div class="container">
    <div class="row">
     <div class="banner-left">
       <?php require_once 'Mvc/frontend/controllers/CategoryController.php';
       $category_controller=new CategoryController();
       $category_controller->getCategoryProduct();
       ?>
     </div>
      <div class="banner-right">
        <div class="banner">
          <img src="Assets/frontend/images/slideshow1.webp" alt="">
        </div>
        <div class="menu-phai">
          <div>
            <a href="">
              <img alt="" src="Assets/frontend/images/banner-right-1.jpg">
            </a>
          </div>
          <div style="margin-top: 25px">
            <a href="">
              <img alt="" src="Assets/frontend/images/banner-right-1.jpg">
            </a>
          </div>
        </div>
        <div style="clear: both"></div>
      </div>
      <div style="clear: both"></div>
    </div>
  </div>
</div>
<?php
    require_once "Mvc/frontend/controllers/ProductController.php";
    $product_controller=new ProductController();
    $product_controller->hotProduct();
?>
  <div class="container" style="padding-bottom: 30px">
    <div class="row ">
      <div class="col-lg-12 col-md-12  banner2">
        <div class="banner_trai">
          <a href=""><img src="Assets/frontend/images/banner1.webp" alt=""></a>
        </div>
        <div class="banner-center">
          <div class="img1">
            <a href=""><img src="Assets/frontend/images/banner2.webp" alt=""></a>
          </div>
          <div class="img2">
            <a href=""><img src="Assets/frontend/images/banner-3.webp" alt=""></a>
          </div>
        </div>
        <div class="banner_phai">
          <a href=""><img src="Assets/frontend/images/banner4.webp" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</div>
<?php require_once "Mvc/frontend/controllers/ProductController.php";
      $product_controller=new ProductController();
      $product_controller->NewsProduct();
?>
<?php require_once "Mvc/frontend/controllers/ProducerController.php";
      $product_controller=new ProducerController();
      $product_controller->hotProducer();
?>

