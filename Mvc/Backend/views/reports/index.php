
<!--  <div class="row">-->
<!---->
<!--    <div class="col-sm-9"></div>-->
<!--    <div class="col-sm-3">-->
<!--      <a href="" class="btn btn-success">Doanh thu theo tháng</a>-->
<!--    </div>-->
<!--  </div>-->
  <section class="content-header" style="margin-bottom: 15px;">
      <ol class="breadcrumb">
          <li><a href="index.php?area=backend"><i class="fa fa-home"></i> Trang Chủ</a></li>
          <li class="active"> <i class="fa fa-address-book"></i> Thống kê - báo cáo</li>
      </ol>
  </section>
<div class="row" style="margin: 100px 0px 20px 0px; ">
    <div class="col-sm-4"></div>
    <div class="col-sm-2" style="text-align: center">
        <a  href="index.php?area=backend&controller=report&action=SellingProduct" class="btn btn-success">Danh sách sản phẩm
            bán chạy</a>
    </div>
    <div class="col-sm-2" style="text-align: center">
        <a href="index.php?area=backend&controller=report&action=ProductNoData" class="btn btn-success">Danh sách sản phẩm
            không bán được</a>
    </div>
    <div class="col-sm-4"></div>
</div>
  <h3 style="text-align: center"> Thống kê doanh thu theo ngày tháng</h3>

  <div style="width: 500px;margin: 20px auto">
      <form action="" method="POST" id="report_money">
          <div class="col-sm-6 form-group">
              <lable for="ngayBatDau">Ngày bắt đầu :</lable>
              <input type="date" class="form-control" id="ngayBatDau" name="ngayBatDau">
          </div>
          <div class="col-sm-6 form-group">
              <lable for="ngayKetThuc">Ngày kết thúc :</lable>
              <input type="date" class="form-control" id="ngayKetThuc" name="ngayKetThuc">
          </div>
          <div class="col-sm-12 form-group">
              <input  type="submit" value="Tra cứu" name="submit" class="btn btn-success form-control">
          </div>
      </form>
      <br>
      <h4 style="text-align: center;margin-top: 20px;"> Doanh thu từ :</h4>
      <h4  style="text-align: center;margin-top: 20px;font-weight: bold"><?php  echo date($ngaybatdau); ?> <i class="fa fa-arrow-right"></i> ngày <?php echo $ngayketthuc; ?> là :</h4>
      <h2 style="text-align: center"><?php echo number_format($sumprice); ?> VNĐ</h2>
  </div>



