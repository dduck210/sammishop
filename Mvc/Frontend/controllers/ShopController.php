<?php
class ShopController extends Controller{
  public function index(){
    $this->content=$this->render('Mvc/frontend/views/shop/index.php');
    require_once 'Mvc/frontend/views/layouts/main.php';
  }
}