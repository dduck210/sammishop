<div class="banner__product">
    <div class="container">
        <div class="" style="margin: 0px -15px !important;padding-left: 10px">
            <ul>
                <li><a href="index.php"> Trang chủ</a></li>
                <li>/</li>
                <?php
                $category_id=$new['category_id'];
                $category_name=$new["category_name"];
                $category_slug=Helper::getSlug($category_name);
                $category_link="danh-sach-blogs/$category_slug/$category_id";
                ?>
                <li><a href="<?php echo $category_link; ?>">Danh mục : <?php echo $category_name; ?></a></li>
                <li>/</li>
                <li class="active"><?php  echo $new['name'];?></li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-9 detail__news">
           <h3><?php echo $new['name']; ?></h3>
            <p class="datetime">
               <i class="fa fa-clock-o"></i> <?php echo date('d/m/Y - H:i:s', strtotime($new['created_at'])); ?>
            </p>
            <div class="detail__summary"><?php  echo $new['summary'];?></div>
            <?php if(!empty($new['avatar'])): ?>
                <div class="detail__news__img">
                    <img src="Assets/Uploads/news/<?php echo $new['avatar']; ?>" alt="">
                </div>
            <?php endif; ?>

            <div class="detail__news_content">SẢN PHẨM:
              <?php echo $new['content']; ?></div>
        </div>
        <div class="col-sm-3">
            <?php
                require_once 'Mvc/frontend/controllers/NewsController.php';
                $news_controller=new NewsController();
                $news_controller->NewsHot();
            ?>
            <div style="margin-top: 20px;">
                <img width="100%" style="border-radius: 3px;" src="Assets/frontend/images/blog-sidebar (1).webp" alt="">
            </div>
        </div>
    </div>
</div>

