<?php

include(APPROOT . '/helpers/helperfunctions.php');

class Pages extends Controller
{

    public function __construct() 
    {
      // if(isLoggedIn())
      // {
       //  redirect('posts');
      // }
    }
    
    public function index()
    {
         
        
        
            
             // variables for data or model functions go here:
            //EG $title = $this->pages->title();
           // add data or variables to the array using key-value pairs
           $data = [
             'title'=> "Welcome to Code Cafe",
             'description' => 'A place to use your computer and eat'];
         
           // call your view 
           $this->view('pages/index', $data);
    }
  

  
      public function menu()
        {
          $data = [
            'title' => 'Menu page',
            'description' => 'Coffee is fresh and cheap. No V drinks allowed.'
            
          ];
            $this->view('pages/menu', $data);
            
        }

        public function forum()
        {
          $data = ['title' => 'Forum Page', 'description' => 'Write your messages here'];
          $this->view('pages/forum', $data);
        }
      
        public function login()
        {
          $data = ['title' => 'Login Page!', 'description' => 'Login here, with user email and at least 6 character password'];
          $this->view('users/login', $data);
        
        }
         public function register()
        {
          //$title = $this->pages->title();
          $data = ['title' => 'Register to write messages','description' => 'Once approved, they will display'];
          $this->view('users/register', $data);
     
        }


          







 }


 
