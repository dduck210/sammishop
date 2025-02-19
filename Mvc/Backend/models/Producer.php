<?php
class Producer extends Model{
    public $name;
    public $avatar;
    public $status;
    public $hotproducer;
    public $created_at;
    public $updated_at;
// lấy ra danh sách danh mục
    public function getAll(){
        $sql_select="select * from producers";
        $obj_select_all=$this->connection->prepare($sql_select);
        $obj_select_all->execute();
        $categories=$obj_select_all->fetchAll(PDO::FETCH_ASSOC);
        return $categories;
    }
// lấy ra tên danh mục
    public function getProducer($name){
        $sql_select='select name from producers where `name`=:name';
        $obj_select_one=$this->connection->prepare($sql_select);
        $obj_select=[ ':name' => $name ];
        $obj_select_one->execute($obj_select);
        $category_name=$obj_select_one->fetch(PDO::FETCH_ASSOC);
        return $category_name;
    }
// thêm danh mục sản phẩm
    public function insert(){
        $sql_insert="Insert into producers(`name`,`avatar`,`status`,`hotproducer`)
        VALUES (:name,:avatar,:status,:hotproducer)";
        $obj_insert=$this->connection->prepare($sql_insert);
        $arr_insert=[
            ':name' => $this->name,
            ':avatar' => $this->avatar,
            ':status' => $this->status,
            ':hotproducer' => $this->hotproducer,
        ];
        return $obj_insert->execute($arr_insert);
    }
//    chi tiết của danh mục
    public function getProducerId($id){
        $select_one="select * from producers where id=$id";
        $obj_select=$this->connection->prepare($select_one);
        $obj_select->execute();
        return $obj_select->fetch(PDO::FETCH_ASSOC);
    }
//    lấy ra ảnh sản phẩm
    public function images($id)
    {
        $obj_delete_img=$this->connection->prepare("select avatar from producers where id=$id");
        $obj_delete_img->execute();
        $result=$obj_delete_img->fetch(PDO::FETCH_ASSOC);
        if($result["avatar"] != "" && file_exists("assets/uploads/producers/".$result["avatar"]))
        {
            unlink("assets/uploads/producers/".$result["avatar"]);
        }
    }
//    chỉnh sửa danh mục
    public function update($id){
        $sql_update="Update producers set `name`=:name,`status`=:status,`avatar`=:avatar,`hotproducer`=:hotproducer,`updated_at`=:updated_at where id=$id";
        $obj_update=$this->connection->prepare($sql_update);
        $arr_update=[
            ':name'=> $this->name,
            ":status" => $this->status,
            ":avatar" => $this->avatar,
            ":updated_at" => $this->updated_at,
            ":hotproducer" => $this->hotproducer
        ];
        return $obj_update->execute($arr_update);

    }
    public function delete($id)
    {
        $obj_delete = $this->connection->prepare("DELETE FROM categories WHERE id = $id");
        $is_delete = $obj_delete->execute();
//        $obj_delete_product = $this->connection->prepare("DELETE FROM products WHERE producer_id = $id");
//        $obj_delete_product->execute();
        return $is_delete;
    }
}