<?php

// Headers
//header('Access-Control-Allow-Origin: *');
//header('Content-Type: application/json');
//header('Access-Control-Allow-Methods: POST');
//header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');

include(APPROOT . '/helpers/helperfunctions.php');

class Menus extends Controller
{
  public function __construct()
  {
      $this->rest = $this->model('Menu');
  }

  //public function index()
  //{
   // $data = [
   //     'title' => "No param given..." 
   // ];

  //  $this->view('api/index', $data);
  //}

  //Match the functions below to your requiredments
  public function menu()
  {

   // echo $this->rest->ShowMenu(); //add model function
        echo json_encode(["MSG" => $this->rest->menu(), "CODE" => 200]); //Added
  }

  public function single() {
      $data = json_decode(file_get_contents("php://input"), true);
      $id = myTryParse($_GET['url']); // get id number for single record
      echo $this->rest->displaySingleRecord($id);
  }

  public function add()
  {
      $data = json_decode(file_get_contents("php://input"), true);

      if($this->rest->add_function(params)) {
          echo json_encode(array("Message" => "Output changes"));
      } else {
          echo json_encode(array("Message" => "No Data"));
      }
  }

  public function update()
  {

      $data = json_decode(file_get_contents("php://input"), true);

      //params, must include ID (not a string)
      if($this->rest->udpate_function("id", "other params"))
      {
          echo json_encode(array("Message" => "Output changes"));
      } else
      {
          echo json_encode(array("Message" => "No Changes"));
      }
  }

  public function delete()
  {

      $data = json_decode(file_get_contents("php://input"), true);

      //must include ID (not a string)
      if($this->rest->remove_function("id"))
      {
          echo json_encode(array("Message" => "Output changes"));
      }
       else
      {
          echo json_encode(array("Message" => "No Changes"));
      }
  }
}