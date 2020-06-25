<?php
include(APPROOT . '/helpers/helperfunctions.php');

class ApprovedMessages extends Controller
{
  public function __construct()
  {
    if(!admin())  
    {
        //using redirect helper function 
        redirect('users/login');
    }

      $this->rest = $this->model('ApprovedMessage');
  }

}
?>
 