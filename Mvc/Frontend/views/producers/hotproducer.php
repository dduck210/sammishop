<div class="background" style="padding-top: 10px">
    <?php if (!empty($producers)): ?>
      <div class="container ">
        <div class="row thuonghieu1">
          <div class="title">Thương hiệu</div>
          <div class="thuonghieu">
            <ul>
                <?php foreach ($producers as $producer):
                    $producer_id = $producer["id"];
                    $producer_name = $producer["name"];
                    $producer_slug = Helper::getSlug($producer_name);
                    $producer_link = "san-pham-thuong-hieu/$producer_slug/$producer_id"
                    ?>
                  <li><a href="#"><img
                              src="Assets/uploads/producers/<?php echo $producer["avatar"]; ?>" alt=""></a></li>
                <?php endforeach; ?>
            </ul>
          </div>
        </div>
      </div>
    <?php endif; ?>
  <div class="container">
    <div class="row">
      <div class="banner-bottom">
        <div class="banner-bottom1">
          <a href=""><img src="Assets/frontend/images/banner-bottom-1.webp" alt=""></a>
        </div>
        <div class="banner-bottom2">
          <a href=""><img src="Assets/frontend/images/banner-bottom-2.webp" alt=""></a>
        </div>
      </div>
    </div>
  </div>
    <?php require_once 'Mvc/frontend/controllers/NewsController.php';
    $news_controller=new NewsController();
    $news_controller->hotNews();
    ?>
</div>
