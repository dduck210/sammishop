<?php if(!empty($news)): ?>
<div class="container" style="padding-bottom: 30px">
    <div class="row beauty1">
        <div class="title">Beauty tips/review</div>
        <div class=" beauty">
             <?php  foreach ($news as $new):
                    $new_id=$new["id"];
                    $new_slug=Helper::getSlug($new['name']);
                    $new_link="blogs/$new_slug/$new_id";
                 ?>
                <div class="Beautytips">
                    <div><a href="<?php echo $new_link; ?>"><img src="Assets/uploads/news/<?php echo $new["avatar"]; ?>" alt=""></a></div>
                    <div>
                        <h2><a href="<?php echo $new_link; ?>"><?php echo $new['name']; ?></a></h2>
                        <div class="clock"><i class="fa fa-clock-o"></i> <?php echo date('d/m/Y', strtotime($new['created_at'])); ?> lúc <?php echo date('H:i', strtotime($new['created_at'])); ?>   </div>
                        <div class="news_summary">
                            <?php echo $new['summary']; ?>
                        </div>
                        <div class="contine">
                            <a href="<?php echo $new_link; ?>">
                                xem thêm <i class="fa fa-chevron-right"></i><i class="fa fa-chevron-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?php endif; ?>
