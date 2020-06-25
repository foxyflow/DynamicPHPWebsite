<?php
include(APPROOT . '/helpers/helperfunctions.php');

class Forums extends Controller
{
  public function __construct()
  {
      $this->rest = $this->model('Forum');
  }

  public function forum()
  {

   // echo $this->rest->show forum(); //add model function
        echo json_encode(["MSG" => $this->rest->menu(), "CODE" => 200]); //Added
  }
  
}