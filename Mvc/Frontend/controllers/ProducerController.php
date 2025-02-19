<?php
require_once 'Mvc/frontend/models/Producer.php';
class ProducerController extends Controller{
    public function hotProducer(){
        $producer_model=new Producer();
        $producers=$producer_model->hotProducer();
        $this->content=$this->render("Mvc/frontend/views/producers/hotproducer.php",["producers" => $producers]);
        echo $this->content;
    }
  public function ProducerProduct(){
    $producer_model=new Producer();
    $producers=$producer_model->ProducerProduct();
    $this->content=$this->render("Mvc/frontend/views/producers/producerProduct.php",["producers" => $producers]);
    echo $this->content;
  }
}