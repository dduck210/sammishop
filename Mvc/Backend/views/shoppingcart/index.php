<section class="content-header" style="margin-bottom: 15px;">
  <h1>
    Danh sách đơn hàng
    <small>SammiShop</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="index.php?area=backend"><i class="fa fa-home"></i> Trang Chủ</a></li>
    <li class="active"> <i class="fa fa-address-book"></i> Danh sách đơn hàng</li>
  </ol>
</section>
<div style="margin: 10px 250px">
  <input style="padding: 22px 12px !important;" type="text" id="search_shopping" name="search_shopping" class="form-control" placeholder="Nhập họ tên hoặc SĐT đơn hàng cần tìm kiếm  .......">
</div>

<div align="right" style="margin:0px 0px 15px 0px;">
  <a class="btn btn-success" onclick="return confirm('Bạn có chắc chắn muốn xác nhận toàn bộ ?')" href="index.php?area=backend&controller=ShoppingCart&action=send_statusAll"><i class="fa fa-check"></i> Xác nhận toàn bộ đơn hàng</a>
</div>

<?php
?>
<div class="box box-danger" id="order">

  <table class="table table-bordered">
    <thead>
      <tr class="table-active">
        <th scope="col">Mã ĐH</th>
        <th style="width: 10%;" scope="col">Tên người nhận</th>
        <th style="width: 17%;" scope="col">Địa chỉ</th>
        <th style="width: 15%;" scope="col">Email</th>
        <th style="width: 10%;" scope="col">Số điện thoai</th>
        <th style="width: 12%;" scope="col">Trạng thái đơn hàng</th>
        <th style="width: 12%;" scope="col">Phương thức thanh toán</th>
        <th style="width:8%;" scope="col">Ngày tạo</th>
        <th style="width: 10%;" scope="col">Người giao hàng</th>
        <th style="text-align: center;width: 10%;">Chi tiết ĐH</th>
      </tr>
    </thead>
    <tbody>

      <?php if (!empty($carts)) : ?>

        <?php
        foreach ($carts as $cart) :
        ?>
          <tr>
            <td><?php echo $cart["id"]; ?></td>
            <td><?php echo $cart["fullname"]; ?></td>
            <td><?php echo $cart["address"]; ?></td>
            <td><?php echo $cart["email"]; ?></td>
            <td><?php echo $cart["phone"]; ?></td>
            <td>
              <?php
              if ($cart["status"] == 0) {
                echo "<i style='color: red' class='fa fa-retweet'></i> <span style='color:red'> Đang xử lý</span>";
              } elseif ($cart["status"] == 1) {
                echo "<i style='color: #0bb827' class='fa fa-check'></i> <span style='color: #0bb827'>Đã xác nhận thành công, đang giao hàng</span>";
              } elseif ($cart["status"] == 3) {
                echo "<i style='color: red' class='fa fa-check'></i> <span style='color:red'> Đơn hàng đã bị hủy</span>";
              } elseif ($cart["status"] == 4) {
                echo "<i style='color: blue' class='fa fa-check'></i> <span style='color: blue'> Giao hàng thành công</span>";
              }

              ?>
            </td>
            <td>
              <?php
              if ($cart["payment_status"] == 0) {
                echo "<span style='color:#ff9d28'>Thanh toán tại nhà </span>";
              }
              if ($cart["payment_status"] == 1) {
                echo "<span style='color:green'>Đã thanh toán</span>";
              }
              ?>
            </td>
            <td><?php echo date('d/m/Y', strtotime($cart["created_at"])); ?></td>
            <td>
              <select name="delivery_user_id" id="delivery_user_id_<?php echo $cart["id"]; ?>">
                <option value="">Chọn người giao hàng</option>
                <?php foreach ($deliveryUsers as $user) : ?>
                  <option value="<?php echo $user['id']; ?>" <?php echo ($user['id'] == $cart['delivery_user_id']) ? 'selected' : ''; ?>>
                    <?php echo $user['fullname']; ?>
                  </option>
                <?php endforeach; ?>
              </select>
              <button class="btn btn-primary update-delivery-user" style="margin:10px 0px 0px 0px;" data-order-id="<?php echo $cart["id"]; ?>">Cập nhật</button>
            </td>
            <td style="text-align: center">
              <a href="index.php?area=backend&controller=ShoppingCart&action=detail&id=<?php echo $cart["id"]; ?>"><i class="fa fa-eye"></i></a>&nbsp;&nbsp;
              <?php if ($cart["status"] == 0) : ?>
                <a onclick="return confirm('Bạn có chắc chắn muốn hủy đơn hàng này không ?')" href="index.php?area=backend&controller=ShoppingCart&action=delete&id=<?php echo $cart["id"]; ?>"><i class="fa fa-trash"></i></a>
              <?php endif; ?>
            </td>

          </tr>
        <?php endforeach; ?>
      <?php else : ?>
        <tr>
          <td colspan="9">Không có đơn hàng nào !!!</td>
        </tr>
      <?php endif; ?>
  </table>

  <div align="center">
    <ul class='pagination text-center' id="pagination_order">
      <?php if ($numPage == 1) {
        return '';
      }
      ?>
      <?php if ($page > 1) :
        $prev_page = $page - 1;
      ?>
        <li class="page-item" id="<?php echo $prev_page; ?>">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
          </a>
        </li>
      <?php endif; ?>
      <?php for ($i = 1; $i <= $numPage; $i++) :
        if ($i == $page) : ?>
          <li class="page-item active" id="<?php echo $i ?>">
            <a class="page-link active" href="#"><?php echo $i; ?></a>
          </li>
        <?php else : ?>
          <li class="page-item" id="<?php echo $i ?>">
            <a class="page-link " href="#"><?php echo $i ?></a>
          </li>
      <?php endif;
      endfor; ?>
      <?php if ($page < $numPage) :
        $next_page = $page + 1;
      ?>
        <li class="page-item" id="<?php echo $next_page; ?>">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&raquo;</span>
          </a>
        </li>
      <?php endif; ?>
  </div>
  <script>
    $(document).ready(function() {
      function loadTableOder(page, query = "") {
        $.ajax({
          url: "index.php?area=backend&controller=ShoppingCart&action=search",
          type: "POST",
          data: {
            page: page,
            query: query
          },
          success: function(data) {
            $("#order").html(data);
          }
        });
      }
      $(document).on("click", "#pagination_order li", function(e) {
        e.preventDefault();
        var page_id = $(this).attr("id");
        var query = $("#search_shopping").val();
        loadTableOder(page_id, query);
      });
      $("#search_shopping").keyup(function() {
        var query = $("#search_shopping").val();
        var page_id = $(this).attr("id");
        loadTableOder(page_id, query);
      })
    });
    
    $(document).on("click", ".update-delivery-user", function() {
      var orderId = $(this).data("order-id");
      var selectedUserId = $("#delivery_user_id_" + orderId).val();

      // Gửi dữ liệu cập nhật thông qua AJAX
      $.ajax({
        url: "index.php?area=backend&controller=ShoppingCart&action=updateDeliveryUser",
        type: "POST",
        data: {
          order_id: orderId,
          delivery_user_id: selectedUserId
        },
        success: function(data) {
          // Xử lý kết quả cập nhật (hiển thị thông báo, ...)
          // Tải lại trang hoặc làm gì đó theo yêu cầu của bạn
          location.reload(); // Tải lại trang để cập nhật dữ liệu
        }
      });
    });
  </script>