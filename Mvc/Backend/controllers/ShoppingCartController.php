<?php
require_once "Mvc/Backend/Models/ShoppingCart.php";
class ShoppingCartController extends Controller
{

  // Thêm hàm để cập nhật người giao hàng cho đơn hàng
  public function updateDeliveryUser()
  {
    if (isset($_POST['order_id']) && isset($_POST['delivery_user_id'])) {
      $order_model = new ShoppingCart();
      $orderId = $_POST['order_id'];
      $deliveryUserId = $_POST['delivery_user_id'];
      $isUpdated = $order_model->updateDeliveryUser($orderId, $deliveryUserId);
      if ($isUpdated) {
        $_SESSION['success'] = 'Đã cập nhật người giao hàng thành công.';
      } else {
        $_SESSION['error'] = 'Cập nhật người giao hàng thất bại.';
      }
    } else {
      $_SESSION['error'] = 'Thiếu thông tin cập nhật.';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }

  public function index()
  {
    $pageSize = 2;
    $page = "";
    if (isset($_POST["page"]) && is_numeric($_POST["page"])) {
      $page = $_POST["page"];
    } else {
      $page = 1;
    }
    $order_model = new ShoppingCart();
    $countOrder = $order_model->countTotal();
    $numPage = ceil($countOrder / $pageSize);
    $carts = $order_model->listOrder($pageSize, $page);
    $deliveryUsers = $order_model->getDeliveryUsersList();
    $this->content = $this->render("Mvc/backend/views/shoppingcart/index.php", [
      "carts" => $carts,
      "numPage" => $numPage,
      "page" => $page,
      "deliveryUsers" => $deliveryUsers
    ]);
    require_once "Mvc/backend/views/layouts/main.php";
  }
  public function search()
  {
    $pageSize = 2;
    $page = "";
    if (isset($_POST["page"]) && is_numeric($_POST["page"])) {
      $page = $_POST["page"];
    } else {
      $page = 1;
    }
    $order_model = new ShoppingCart();
    if (isset($_POST["query"]) && $_POST["query"] != "") {
      $search = $_POST["query"];
      $countOrder = $order_model->countorderSearch($search);
      $numPage = ceil($countOrder / $pageSize);
      $carts = $order_model->orderSearch($search, $pageSize, $page);
      $deliveryUsers = $order_model->getDeliveryUsersList();

      $this->content = $this->render("Mvc/backend/views/shoppingcart/search.php", [
        "carts" => $carts,
        "numPage" => $numPage,
        "page" => $page,
        "deliveryUsers" => $deliveryUsers

      ]);
      echo $this->content;
    } else {
      $countOrder = $order_model->countTotal();
      $numPage = ceil($countOrder / $pageSize);
      $carts = $order_model->listOrder($pageSize, $page);
      $this->content = $this->render(
        "Mvc/backend/views/shoppingcart/search.php",
        [
          "carts" => $carts,
          "numPage" => $numPage,
          "page" => $page
        ]
      );
      echo $this->content;
    }
  }
  public function detail()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order = $order_model->order($id);
    $products = $order_model->listProduct($id);
    $this->content = $this->render("Mvc/backend/views/shoppingcart/detail.php", [
      "products" => $products,
      "order" => $order

    ]);
    require_once 'Mvc/backend/views/layouts/main.php';
  }
  public function send_payment()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentPaymentOrder($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đã thanh toán đơn hàng';
    } else {
      $_SESSION['error'] = 'Thanh toán thất bại';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
  public function send_status()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentStatusOrder($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đã xác nhân đơn hàng';
    } else {
      $_SESSION['error'] = 'Đơn hàng có vấn đề';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
  public function send_statusAll()
  {
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->sentStatusAll();
    if ($is_update) {
      $_SESSION['success'] = 'Đã xác nhân đơn hàng';
    } else {
      $_SESSION['error'] = 'Có đơn hàng gặp vấn đề';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
  public function delete()
  {
    if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
      $_SESSION['error'] = 'ID không hợp lệ';
      header('Location: index.php?area=backendcontroller=ShoppingCart');
      exit();
    }
    $id = $_GET["id"];
    $order_model = new ShoppingCart();
    $order_model->updated_at = date('Y-m-d H:i:s');
    $is_update = $order_model->delete_Oder($id);
    if ($is_update) {
      $_SESSION['success'] = 'Đã hàng đã được hủy';
    } else {
      $_SESSION['error'] = 'Đơn hàng có vấn đề';
    }
    header('Location: index.php?area=backend&controller=ShoppingCart');
    exit();
  }
}
