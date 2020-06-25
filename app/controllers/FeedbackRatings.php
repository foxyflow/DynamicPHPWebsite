<?php
include(APPROOT . '/helpers/helperfunctions.php');

class FeedbackRatings extends Controller
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