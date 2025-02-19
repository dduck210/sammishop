<div class="sanphammoi">
  <div class="container ">
    <div class="row">
      <div class="title">Sản phẩm mới</div>
      <div class="col-lg-12 col-md-12 Restock" style="border: 1px solid #dadada; margin: 15px 0px" >
          <?php if (!empty($products)):
              foreach ($products as $product):
                  $product_title = $product['title'];
                  $product_slug = Helper::getSlug($product_title);
                  $product_id = $product['id'];
                  $product_link = "chi-tiet-san-pham/$product_slug/$product_id";
                  ?>
                <div class="hot-product">
                  <div class="border">
                    <div class="product_img">
                      <a href="<?php echo $product_link; ?>">
                          <?php if (!empty($product['avatar'])): ?>
                        <img src="Assets/uploads/products/<?php echo $product['avatar']; ?>" alt=""></a>
                        <?php endif; ?>
                        <?php if ($product['discount'] > 0): ?>
                          <div class="price_sale"><?php echo $product['discount']; ?>% <span class="sale_lable"></span>
                          </div>
                        <?php endif; ?>
                      <div class="product_cart">
                        <div class="product_detail line_left"><a href="them-vao-gio-hang/<?php echo $product["id"];?>"><i class="fa fa-shopping-cart"></i>&nbsp; Thêm
                            vào giỏ</a></div>
                        <div class="product_detail"><a href="<?php echo $product_link; ?>"><i class="fa fa-eye"></i>&nbsp;
                            Xem chi tiết</div>
                        </a>
                        <div style="clear: both"></div>
                      </div>
                    </div>
                    <div>
                      <a href="<?php echo $product_link; ?>"><h2><?php echo $product['title']; ?></h2></a>
                        <?php if($product['discount'] > 0): ?>
                          <p><span style="margin-left:5px;text-decoration: line-through !important;color: grey" class="price"><?php echo number_format($product["price"]-($product["price"]*($product["discount"]/100))); ?> ₫</span>
                            &nbsp <span style="color: #dc1c4c;font-weight: bold" class="price-label"><?php echo number_format($product["price"]); ?> ₫</span>
                          </p>
                        <?php else: ?>
                          <p>&nbsp;<span style="margin-left:5px;color: #dc1c4c;font-weight: bold" class="price-label" class="price-label"><?php echo  number_format($product["price"]); ?> ₫</span>
                          </p>
                        <?php endif; ?>
                    </div>
                  </div>
                </div>
              <?php endforeach; else: ?>
        <div style="text-align: center">Không có sản phảm nào hot !!!</div>
        <?php endif; ?>
      </div>
    </div>
  </div>
</div>
</div>
