<div class="banner__product">
    <div class="container">
        <div class="" style="margin: 0px -15px !important;padding-left: 10px">
            <ul>
                <li><a href="index.php"> Trang chủ</a></li>
                <li>/</li>
                <li class="active"> <?php echo $category['name']; ?></li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-9" style="margin: 5px 0px">
            <?php if(!empty($news)): ?>
            <?php  foreach ($news as $new):
            $new_id=$new["id"];
            $new_slug=Helper::getSlug($new['name']);
            $new_link="blogs/$new_slug/$new_id";
            ?>
            <div class="news__category">
                <a target="_blank" href="<?php echo $new_link; ?>">
                    <div class="news__left">
                        <img src="Assets/Uploads/news/<?php echo $new['avatar']; ?>" alt="">
                    </div>
                    <div class="news__content">
                        <h3><?php echo $new['name']; ?></h3>
                        <p class="news__datetime"><i class="fa fa-clock-o"></i> <?php echo date('d/m/Y', strtotime($new['created_at'])); ?> lúc <?php echo date('H:i', strtotime($new['created_at'])); ?>  </p>

                        <div class="news__summary">
                            <?php  echo $new['summary'];?>
                        </div>
                    </div>
                    <div style="clear: both"></div>
                </a>
            </div>
            <?php endforeach; else: ?>
            <div style="text-align: center">Danh mục này chưa có tin tức nào !!!</div>
            <?php endif; ?>

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

