<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <?php
        $boxColorClass = ''; // Biến lưu trữ tên class màu sắc mặc định
        if ($countOrder0 >= 0 && $countOrder0 < 10) {
            $boxColorClass = 'bg-aqua'; // Màu xanh
        } elseif ($countOrder0 >= 10 && $countOrder0 < 50) {
            $boxColorClass = "bg-yellow"; // Màu xanh lá cây
        } elseif ($countOrder0 >= 50) {
            $boxColorClass = 'bg-red'; // Màu đỏ
        }
        ?>
        <div class="small-box <?php echo $boxColorClass; ?>">
            <div class="inner">
                <h3>
                    <?php echo $countOrder0; ?>
                </h3><span></span>
                <p>Đơn hàng đang xử lý</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="index.php?area=backend&controller=ShoppingCart" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>
                    <?php echo $countUser; ?>
                </h3>

                <p>Tài khỏan thành viên</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="index.php?area=backend&controller=User" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3>
                    <?php echo $countProductOut; ?>
                </h3>

                <p>Sản phẩm hết hàng</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="index.php?area=backend&controller=home&action=ProductOut" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
                <h3>
                    <?php echo $countNoUser; ?>
                </h3>
                <p>Đơn hàng KH không có tài khoản</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="index.php?area=backend&action=OrderNoUser" class="small-box-footer">Xem chi tiết <i
                    class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>

<div class="row">
<div class="box-header">
            <h3 class="box-title">Biểu đồ lượng đơn </h3>
        </div>
    <div style="width: 100% !important; height: 500px !important; display: flex; justify-content: center; align-items: center;">
       
        <canvas id="orderChart" style="width: 600px !important; height: 500px;"></canvas>
    </div>
    <div class="col-6"></div>
</div>


<div class="row">
    <div class="col-xs-12">
        <div class="box" style="margin-top: 60px">
            <div class="box-header">
                <h3 class="box-title">Danh sách sản phẩm nổi bật</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <th width="10%">Mã sản phẩm</th>
                            <th width="30%">Tên sản phẩm</th>
                            <th width="20%">Tên danh mục</th>
                            <th width="20%">Ảnh sản phẩm</th>
                            <th width="20%">Số lượng còn lại</th>

                        </tr>
                        <?php foreach (array_slice($products, 0, 5) as $product): ?>
                            <tr>
                                <td style="text-align: center">
                                    <?php echo $product['id']; ?>
                                </td>
                                <td><a style="color: black !important;"
                                        href="index.php?area=backend&controller=product&action=detail&id=<?php echo $product['id']; ?>">
                                        <?php echo $product['title']; ?>
                                    </a></td>
                                <td>
                                    <?php echo $product['category_name']; ?>
                                </td>
                                <td><img width="50" height="50"
                                        src="Assets/Uploads/products/<?php echo $product['avatar']; ?>" alt=""></td>
                                <td><span class="label label-success">
                                        <?php echo $product['quality'] ?> chiếc
                                    </span></td>

                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>

<script>
    // Get the context of the canvas element
    var ctx = document.getElementById('orderChart').getContext('2d');

    // Parse the JSON data
    var months = <?php echo $monthsJson; ?>;
    var orderCounts = <?php echo $orderCountsJson; ?>;

    // Create the chart
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: months,
            datasets: [{
                label: 'Orders per Month',
                data: orderCounts,
                backgroundColor: 'rgba(75, 192, 192, 0.2)', // You can customize the color
                borderColor: 'rgba(75, 192, 192, 1)', // You can customize the color
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>