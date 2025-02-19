<?php if(!empty($producers)):?>
<div style="margin: 30px 0px;">
  <div class="menu-trai">
    <ul style="padding: 20px 0px 10px 0px" class="">
      <?php foreach ($producers as $producer): ?>
       <label class="producers"> <?php echo $producer['name']; ?>
        <input type="checkbox" value="<?php echo $producer['id']; ?>" name="producer[]" class="common_selector brand">
        <span class="w3docs"></span>
            </label>
      <?php endforeach; ?>
    </ul>
  </div>
    <div class="menu-trai" style="margin-top: 15px;">
        <ul style="padding: 10px 0px 10px 0px" class="">
            <label class="producers"> Dưới 100.000đ
                    <input type="checkbox" value="0" name="price[]"  class="common_selector price">
                    <span class="w3docs"></span>
                </label>
          <label class="producers"> Từ 100.000đ - 300.000đ
                    <input type="checkbox" value="1" name="price[]"  class="common_selector price">
                    <span class="w3docs"></span>
                </label>
           <label class="producers"> Từ 300.000đ - 500.000đ
                    <input type="checkbox" value="2" name="price[]"  class="common_selector price">
                    <span class="w3docs"></span>
                </label>
            <label class="producers"> Từ 500.000đ - 1000.000đ
                    <input type="checkbox" value="3" name="price[]"  class="common_selector price">
                    <span class="w3docs"></span>
                </label>
           <label class="producers"> Trên 1.000.000đ
                    <input type="checkbox" value="4" name="price[]"  class="common_selector price">
                    <span class="w3docs"></span>
                </label>

        </ul>
    </div>
</div>
<?php endif; ?>
