<!doctype html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Sammi Shop</title>
  <base href="<?php echo $_SERVER['SCRIPT_NAME']; ?>" />
  <link rel="stylesheet" href="Assets/frontend/css/bootstrap.min.css">
  <link rel="stylesheet" href="Assets/frontend/icon/icon.css">
  <link rel="stylesheet" href="Assets/frontend/css/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://theme.hstatic.net/1000246282/1000726217/14/favicon.png?v=223">
</head>
<body>
<?php require_once 'Mvc/Frontend/views/layouts/header.php'; ?>

      <?php  if(isset($_SESSION['success'])): ?>
        <div style="margin-top: 20px" class="container alert alert-success alert-dismissible "role="alert">
            <?php echo "<i class='fa fa-check'></i>" . $_SESSION["success"];
            unset($_SESSION["success"]); ?>
        </div>
      <?php endif;?>
      <?php  if(isset($_SESSION['error'])): ?>
        <div style="margin-top: 20px"class="container alert alert-danger alert-dismissible"role="alert">
            <?php echo "<i class='fa fa-times'></i>" .$_SESSION["error"];
            unset($_SESSION["error"]); ?>
        </div>
      <?php endif;?>
<?php echo $this->content; ?>
<?php require_once "Mvc/Frontend/views/layouts/footer.php"; ?>
</body>
<script src="Assets/frontend/js/bootstrap.min.js"></script>
<script src="Assets/frontend/js/jquery-3.5.1.min.js"></script>
<script src="Assets/Backend/js/jquery.validate.min.js"></script>
<script src="Assets/Backend/js/additional-methods.min.js"></script>
<script>
  $('#dialog1').modal('show')
</script>
<script>
  function changeImage(id) {
    // lấy giá trị của thuộc tính src
    var srcImg = document.getElementById(id).getAttribute("src")
    //
    // tác động vào thuộc tính src của thẻ html co id=img-main
    document.getElementById("img-main").setAttribute("src", srcImg);
  }
  $('input.input-qty').each(function() {
    var $this = $(this),
      qty = $this.parent().find('.is-form'),
      min = Number($this.attr('min')),
      max = Number($this.attr('max'))
    if (min == 0) {
      var start = 0
    }
    else start = min
    $(qty).on('click', function() {
      if ($(this).hasClass('minus')) {
        if (start > min) start += -1
      }
      else if ($(this).hasClass('plus')) {
        var x = Number($this.val()) + 1
        if (x <= max) start += 1
      }
      $this.attr('value', start)
    })
  });
  function CartAddShopping(id,quality) {
    var numerCart=$("#numCart").val();
      if(numerCart > quality){
          alert("Sản phẩm này chỉ còn "+quality+ "sản phẩm");
      }
      else{
            $.ajax({
            url: "index.php?area=frontend&controller=cart&action=add",
            type: "POST",
            data: {
            'number' : numerCart,
            'id' : id
            },
            success: function (data) {
            location.replace("gio-hang-cua-ban");
            }
            });
  }
  };
  $("#login_frontend").validate({
      rules:  {
          email :{
              required: true,
              email: true
          },
          password: {
              required: true,
          },
      },
      messages :
          {
              email :{
                  required: " *Email không được để trống",
                  email: " *Tên đăng nhâp phải đúng định dạng là Email"
              },

              password: {
                  required: " * Mật khẩu không được để trống",
              },
          }
  });
  $("#shopping_pay").validate({

      rules:  {
          fullname : "required",
          email :{
              required: true,
              email: true
          },
          phone :
              {
                  required : true,
                  number: true,
              },
          address: {
              required: true,
          },
      },
      messages :
          {
              fullname : " * Họ tên không được để trống",
              email :{
                  required: " * Email không được để trống",
                  email: " * Phải đúng định dạng là Email"
              },
              phone :
                  {
                      required: " * Số điện thoại không được để trống",
                      number: "* Phải nhập số không được nhập chữ hay ký tự đăc biệt",
                  },
              address: {
                  required: " * Địa chỉ nhận hàng không được để trống",
              },
          }
  });
  $("#register_frontend").validate({
      rules:  {
          fullname : "required",
          email :{
              required: true,
              email: true
          },
          phone :
              {
                  required : true,
                  number: true,
                  maxlength:10,
                  minlength:10
              },
          password: {
              required: true,
              minlength: 5
          },
      },
      messages :
          {
              fullname : " * Họ tên không được để trống",
              email :{
                  required: " * Email không được để trống",
                  email: " * Phải đúng định dạng là Email"
              },
              phone :
                  {
                      required : " * Số điện thoại không được để trống",
                      number: "* Phải nhập số không được nhập chữ hay ký tự đăc biệt",
                      minlength: " * Số điện thoại phải có ít nhất 10 số",
                      maxlength :" * Số điện thoại không được quá 10 số",
                  },
              password: {
                  required: " * Mật khẩu không được để trống",
                  minlength: " * Mật khẩu phải có ít nhất 5 ký tự",
              },
          }
  });
  $("#product__search").keyup(function () {
      let name=$(this).val();
      let search = $.trim(name);
      if(search != '')
      {
          $(".result__product").css("display","block");
          $(".result__product").css("height","300px");
          $(".result__product").css("padding-top","10px");
          $(".result__product").css("overflow","auto");
          $.ajax({
              url :"index.php?area=frontend&controller=product&action=searchProductName",
              method: "POST",
              data : {
                  search : search
              },
              dataType: "text",
              success:function (data) {
                  console.log(data);
                  $(".result__product").html(data);
              }
          });
      }
      else
      {
          $(".result__product").css("display","none");
      }
  });

</script>
</html>
