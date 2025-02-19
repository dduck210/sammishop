<?php
require_once 'Mvc/frontend/models/Category.php';
class CategoryController extends Controller{
    public function getCategoryProduct(){
        $category_model=new Category();
        $categories=$category_model->getCategoryProduct();
        $this->content=$this->render("MVc/frontend/views/categories/menu.php",["categories" => $categories]);
        echo $this->content;
    }
    public function CategoryHot(){
        $category_model=new Category();
        $categories=$category_model->hotCategory();
        $this->content=$this->render("MVc/frontend/views/categories/hotproduct.php",["categories" => $categories]);
        echo $this->content;
    }
    public function CategoryNews(){
        $category_model=new Category();
        $categories=$category_model->categoryNews();
        $this->content=$this->render("MVc/frontend/views/categories/category_news.php",["categories" => $categories]);
        echo $this->content;
    }


}
