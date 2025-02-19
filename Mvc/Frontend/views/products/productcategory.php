
<div class="banner-right filter_data" style="margin-bottom: 50px">
  <div class="container">
    <div class="banner__product">
      <ul>
        <li><a href="index.php"> Trang chủ</a></li>
        <li>/</li>
        <li class="active">Danh mục : <?php echo $category["name"]; ?><a href=""></a></li>
      </ul>
    </div>
  </div>
    <?php if (!empty($products)):?>
  <div style="width: 100%">
      <div class="product" style="border: none !important;">
          <?php foreach ($products as $product):
              $product_title = $product['title'];
              $product_slug = Helper::getSlug($product_title);
              $product_id = $product['id'];
              $product_link = "chi-tiet-san-pham/$product_slug/$product_id";
              ?>
              <div class="hot-product1">
                  <div class="product_img">
                      <a href="<?php echo $product_link; ?>">
                          <?php if (!empty($product['avatar'])): ?>
                          <img src="Assets/uploads/products/<?php echo $product['avatar']; ?>" alt=""></a>
                      <?php endif; ?>
                      <?php if ($product['discount'] > 0): ?>
                          <div class="price_sale"><?php echo $product['discount']; ?>% <span class="sale_lable"></span></div>
                      <?php endif; ?>
                      <div class="product_cart">
                          <div class="product_detail line_left"><a href="them-vao-gio-hang/<?php echo $product["id"]; ?>"><i
                                          class="fa fa-shopping-cart"></i>&nbsp; Thêm vào giỏ</a></div>
                          <div class="product_detail"><a href="<?php echo $product_link; ?>"><i class="fa fa-eye"></i>&nbsp; Xem chi
                                  tiết</div>
                          </a>
                          <div style="clear: both"></div>
                      </div>
                  </div>
                  <div>
                      <a href="<?php echo $product_link; ?>"><h2><?php echo $product['title']; ?></h2></a>
                      <?php if ($product['discount'] > 0): ?>
                          <p><span
                                      class="price"><?php echo number_format($product["price"] - ($product["price"] * ($product["discount"] / 100))); ?>
                                  ₫</span> &nbsp <span
                                      class="price-label"><?php echo number_format($product["price"]); ?> ₫</span>
                          </p>
                      <?php else: ?>
                          <p>&nbsp;<span class="price-label"><?php echo number_format($product["price"]); ?> ₫</span>
                          </p>
                      <?php endif; ?>
                  </div>
              </div>
          <?php endforeach; else: ?>
      </div>
      <div style="text-align: center;margin: 40px auto">Danh mục này không có sản phẩm nào !!!</div>
      <?php endif; ?>
  </div>
</div>

