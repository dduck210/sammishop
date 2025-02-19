<div class="banner__product">
<div class="container">
    <div class="" style="margin: 0px -15px !important;padding-left: 10px">
        <ul>
            <li><a href="index.php"> Trang chủ</a></li>
            <li>/</li>
          <?php
            $category_id=$product['category_id'];
            $category_name=$product["category_name"];
            $category_slug=Helper::getSlug($category_name);
            $category_link="san-pham/$category_slug/$category_id";
          ?>
            <li><a href="<?php echo $category_link; ?>">Danh mục : <?php echo $product["category_name"]; ?></a></li>
            <li>/</li>
          <li class="active"><?php echo $product["title"]; ?></li>
        </ul>
    </div>
</div>
</div>
<div class="container">
  <div class="row">
      <div class="product__detail__left">

         <div class="product__img">
             <img src="Assets/uploads/products/<?php echo $product["avatar"]; ?>" alt="" id="img-main">
         </div>
          <div class="product__detail__img">
              <ul>
                <?php if(!empty($product["avatar"])): ?>
                <li class="abcxyz">
                  <img src="Assets/uploads/products/<?php echo $product['avatar'] ?>" id="<?php echo $product['id'] ?>" alt="" onclick="changeImage(<?php echo $product['id'] ?>)">
                </li>
                <?php endif; ?>

                <?php if(!empty($product_images)):
                  foreach ($product_images as $image):
                  ?>
                  <li class="abcxyz">
                      <img src="Assets/Uploads/product_images/<?php echo $image['avatar'] ?>" id="<?php echo $image['id'] ?>" alt="" onclick="changeImage(<?php echo $image['id'] ?>)">
                  </li>
                  <?php endforeach; ?>
                  <?php endif; ?>
              </ul>
          </div>
          <div class=""></div>
      </div>
      <div class="product__detail__center">
          <div class="product__detail">
              <h3 style="font-weight: bold;color: black !important;"><?php echo $product["title"]; ?></h3>
              <div class="product__producer">Thương hiệu : <span><?php echo $product["producer_name"]; ?></span>
                  <?php if($product['quality'] >= 10): ?>
                      <span style="margin-left: 50px;color: green"> <i class="fa fa-check"></i> Còn hàng</span>
                  <?php  elseif ($product['quality'] < 10 && $product['quality'] > 0): ?>
                      <span style="margin-left: 50px;color: green"> <i class="fa fa-check"></i> Còn <?php echo $product['quality'];  ?> sản phẩm</span>
                  <?php else: ?>
                      <span style="margin-left: 50px;color: red"> <i class="fa fa-check"></i>Hết hàng</span>
                  <?php endif; ?>
              </div>
            <?php if($product['discount'] > 0): ?>
              <div class="price-sale">Giá khuyến mãi :<?php echo number_format($product["price"]-($product["price"]*($product["discount"]/100)));   ?> đ</div>
              <div class="price">Giá gốc: <?php  echo number_format($product["price"]); ?>đ</div>
              <div class="discount">Giảm <?php echo $product["discount"]; ?>% - Tiết kiệm : <?php echo  number_format($product["price"]*$product["discount"]/100); ?> đ</div>
            <?php else: ?>
            <div class="price-sale">Giá sản phẩm : <?php echo  number_format($product["price"]); ?> đ</div>
            <?php endif; ?>
              <div class="product__summary">
                  <?php echo $product['summary']; ?>
              </div>
          </div>
          <?php if($product["quality"] > 0): ?>
          <div class="product__shopping">
            <div class="buttons_added">
              <input class="minus is-form" type="button" value="-">
              <input  type="number"  class="input-qty" max="10" min="1" readonly id="numCart" name="quanlity"value="1">
              <input class="plus is-form" type="button" value="+">
            </div>
            <div class="cart_shopping">
              <button onclick="CartAddShopping(<?php echo $product["id"]; ?>,<?php echo $product["quality"]; ?>)">Thêm vào giỏ hàng</button>
            </div>
          </div>
          <?php else: ?>
              <div class="product__shopping">
                  <div class="cart_shopping1">
                      <button><a style="color: #fff;font-size: 15px;" href="tel:0846842286"><i class="fa fa-mobile-phone"></i> Liên hệ</a></button>
                  </div>
              </div>
          <?php endif; ?>
        </form>
      </div>
      <div class="product__detail__right">
          <ul>
            <li><i class="fa fa-check"></i> Cam kết sản phẩm chính hãng</li>
            <li><i class="fa fa-check"></i> Vận chuyển toàn quốc với hóa đơn từ 90k</li>
            <li><i class="fa fa-check"></i> Đặt hàng nhanh 084.684.2286</li>
            <li><i class="fa fa-check"></i> Hotline: 19002631 nhánh 507</li>
            <li><i class="fa fa-check"></i> Email: cskh@sammishop.com.</li>
          </ul>
      </div>
      <div style="clear: both"></div>
  </div>
  <div class="row">
    <div class="product__content">
      <div class="title__content">
        Thông tin sản phẩm
      </div>
      <div class="content__detail">
          <?php echo $product['content']; ?>
      </div>
    </div>
  </div>
</div>
