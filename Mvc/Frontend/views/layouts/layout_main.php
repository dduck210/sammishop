<!doctype html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Sammi Shop</title>
  <base href="<?php echo $_SERVER['SCRIPT_NAME']; ?>"/>
  <link rel="stylesheet" href="Assets/frontend/css/bootstrap.min.css">
  <link rel="stylesheet" href="Assets/frontend/icon/icon.css">
  <link rel="stylesheet" href="Assets/frontend/css/style.css">
</head>
<body>
<?php require_once 'Mvc/Frontend/views/layouts/header.php'; ?>
<input type="hidden" value="<?php echo isset($_GET['id']) ? $_GET['id'] : ""  ?>" name="getid" class="get_id">
<?php if (isset($_SESSION['success'])): ?>
  <div style="margin-top: 20px" class="container alert alert-success alert-dismissible " role="alert">
    <?php echo "<i class='fa fa-check'></i>" . $_SESSION["success"];
    unset($_SESSION["success"]); ?>
  </div>
<?php endif; ?>
<?php if (isset($_SESSION['error'])): ?>
  <div style="margin-top: 20px" class="container alert alert-danger alert-dismissible" role="alert">
    <?php echo "<i class='fa fa-times'></i>" . $_SESSION["error"];
    unset($_SESSION["error"]); ?>
  </div>
<?php endif; ?>

<div class="slider">
  <div class="container">
    <div class="row">
      <div class="banner-left">
        <?php require_once 'Mvc/frontend/controllers/CategoryController.php';
        $category_controller = new CategoryController();
        $category_controller->getCategoryProduct();
        ?>
        <?php require_once 'Mvc/frontend/controllers/ProducerController.php';
        $producer_controller = new ProducerController();
        $producer_controller->ProducerProduct();
        ?>
      </div>
      <?php echo $this->content; ?>

    </div>
  </div>
</div>
<?php require_once "Mvc/Frontend/views/layouts/footer.php"; ?>
</body>

<script src="Assets/frontend/js/bootstrap.min.js"></script>
<script src="Assets/frontend/js/jquery-3.5.1.min.js"></script>
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

    $('input.input-qty').each(function () {
        var $this = $(this),
            qty = $this.parent().find('.is-form'),
            min = Number($this.attr('min')),
            max = Number($this.attr('max'))
        if (min == 0) {
            var start = 0
        }
        else start = min
        $(qty).on('click', function () {
            if ($(this).hasClass('minus')) {
                if (start > min) start += -1
            }
            else if ($(this).hasClass('plus')) {
                var x = Number($this.val()) + 1
                if (x <= max) start += 1
            }
            $this.attr('value', start)
        })
    })

    function CartAddShopping(id,quality) {
        var numerCart = $("#numCart").val();
        if(numerCart > quality){
            alert("Sản phẩm này chỉ còn "+quality+ "sản phẩm");
        }
        else{
            $.ajax({
                url: "index.php?area=frontend&controller=cart&action=add",
                type: "POST",
                data: {
                    'number': numerCart,
                    'id': id
                },
                success: function (data) {
                    location.replace("gio-hang-cua-ban");
                }
            });
        }
    }
    $(document).ready(function() {

        filter_data();

        function filter_data() {
            // $('.filter_data').html('<div id="loading" style="" ></div>');
            var id = $('.get_id').val();
            var price = get_filter('price');
            var brand = get_filter('brand');
            if (price && brand) {
                $.ajax({
                    url: "index.php?area=frontend&controller=Product&action=searchProduct",
                    method: "POST",
                    data: {
                        id: id,
                        price: price,
                        brand: brand,
                    },
                    success: function (data) {
                        $('.filter_data').html(data);
                    }
                });
            }
        }

        function get_filter(class_name) {
            var filter = [];
            $('.' + class_name + ':checked').each(function () {
                filter.push($(this).val());
            });
            return filter;
        }

        $('.common_selector').click(function () {
            filter_data();
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
    });

</script>
</html>

