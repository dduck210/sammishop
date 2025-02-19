<div class="title__news_right"><i class="fa fa-bars"></i>BÀI VIẾT MỚI</div>
<div style="padding: 0px 5px;background-color: #fff">
    <?php if(!empty($news)): ?>
    <?php foreach ($news as $new):
    $news_title = $new['name'];
    $new_slug = Helper::getSlug($news_title);
    $new_id = $new['id'];
    $news_link = "blogs/$new_slug/$new_id";
            ?>
    <div class="news__category1">
        <a target="_blank" href="<?php echo $news_link; ?>">
            <?php if(!empty($new['avatar'])): ?>
            <div class="news__left1">
                <img src="Assets/Uploads/news/<?php echo $new['avatar'] ?>" alt="">
            </div>
            <?php endif; ?>
            <div class="news__content1">
                <h3><?php echo $news_title; ?></h3>
                <p class="news__datetime"><i class="fa fa-clock-o"></i> <?php echo date('d/m/Y - H:i:s', strtotime($new['created_at'])); ?></p>
            </div>
            <div style="clear: both"></div>
        </a>
    </div>
   <?php endforeach; ?>
    <?php endif; ?>
</div>
