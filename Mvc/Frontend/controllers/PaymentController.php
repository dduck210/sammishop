<?php
require_once 'Mvc/frontend/models/Order.php';
require_once 'Mvc/frontend/models/OrderDetail.php';
require_once 'Mvc/frontend/models/Product.php';
//nhúng các file liên quan đén thư viện phpmailler để gửi mail
class PaymentController extends Controller
{
    public  function index()
    {
        if(isset($_POST["submit"]))
        {
            $fullname=$_POST["fullname"];
            $address=$_POST["address"];
            $phone=$_POST["phone"];
            $note=$_POST["note"];
            $email=$_POST["email"];
            $user_id=$_POST["user_id"];
            $status=$_POST["status"];
            if(empty($this->error))
            {
                $order_model=new Order();
                $order_model->fullname=$fullname;
                $order_model->address=$address;
                $order_model->phone=$phone;
                $order_model->note=$note;
                $order_model->user_id=$user_id;
                $order_model->email=$email;
                $order_model->status=$status;
                $total_cart=0;
                $total_discount=0;
                $total=0;
                $total_product=0;
                foreach ($_SESSION["cart"] as $cart)
                {
                    $total_item_discount=($cart["price"] * ($cart["discount"]/100)) * $cart["quanlity"] ;
                    $total_item=($cart["price"] * $cart["quanlity"]);
                    $total_product=$total_item-$total_item_discount;
                    $total_cart += $total_item;
                    $total_discount += $total_item_discount;
                    $total +=$total_product;
                }
                $order_model->price_total=$total;
                $order_model->payment_status=0;
                $order_id=$order_model->insert();
                $_SESSION["order"] =[
                    "id" => $order_id,
                    "price_total" => $total,
                    "fullname" => $fullname,
                    "email" => $email,
                    "address" => $address,
                    "phone" => $phone,
                ];

                if($order_id > 0)
                {
                    $order_detail_model=new OrderDetail();
                    $order_detail_model->order_id=$order_id;
                    $product_model=new Product();
                    foreach ($_SESSION["cart"] as $key=>$cart)
//                        lưu thông tin vào bảng order_detail{
                    {
                        $order_detail_model->product_id=$key;
                        $order_detail_model->quanlity=$cart["quanlity"];
                        $is_insert=$order_detail_model->insert();
                        $product=$product_model->detailProduct($key);
                        if($product['id'] == $key){
                            $total_quality=0;
                            $total_quality=(int)+($product['quality']) - (int)+($cart["quanlity"]);
                            $product_model->quality=$total_quality;
                            $product_model->UpdateQuality($key);
                        }
                    }
                    unset($_SESSION["cart"]);
                    $url_redirect=$_SERVER["SCRIPT_NAME"]."/".'cam-on';
                    header("location: $url_redirect");
                    exit();
                }
            }
        }
        $this->content=$this->render("Mvc/frontend/views/payments/index.php");
        require_once 'Mvc/frontend/views/layouts/main.php';
    }
    public function thank()
    {
        $this->content=$this->render("Mvc/frontend/views/payments/thank.php");
        require_once 'Mvc/frontend/views/layouts/main.php';
    }
}

?>
