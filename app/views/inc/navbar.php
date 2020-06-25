 <!--Navbar-->
 <nav class="navbar navbar-expand-md bg-dark navbar-dark ">
    <a class="navbar-brand" href="<?php echo URLROOT; ?> "><?php echo SITENAME; ?>
 <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link btn btn-warning btn-lg btn-block" href="<?php echo URLROOT; ?>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/pages/menu">Menu</a>
        </li>

        


        <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/users/register">Register</a>
        </li> 

        
          
        

        <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/users/login">login</a>
        </li>
          

             <?php if(isset($_SESSION['user_id'])) : ?> <!-- wrapp in another one of these for admin_id and go to Feedback and Approved messages controller to add !ifadmin logged in to constructer -->
        <li class="nav-item">
        <a class="nav-link" href="#'>Welcome <?php echo $_SESSION['user_name']; ?></a> 
        </li>
          
                
      
      <li class="nav-item">
        <a class="nav-link" href="<?php echo URLROOT; ?>/posts">Forum</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/users/logout">Logout</a>
        </li>
        
        <?php endif; ?> 
        <?php if(isset($_SESSION['user_admin'])) : ?> <!-- wrapp in another one of these for admin_id and go to Feedback and Approved messages controller to add !ifadmin logged in to constructer -->
        

        <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/pages/feedbackRating">Feedback</a>
        </li>

       

        <li class="nav-item">
          <a class="nav-link" href="<?php echo URLROOT; ?>/pages/messages">Approved messages</a>
        </li>
        
        <?php endif; ?> 
      </ul>
    </div>
  </nav>
  <br>
  <!--END Navbar-->