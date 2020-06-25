<?php require APPROOT . '/views/inc/header.php'; ?>
  <h1><?php echo $data['title']; ?></h1>
  <p><?php echo $data['description']; ?></p>

<?php require APPROOT . '/views/inc/footer.php'; ?>

  <div class="container-fluid float-right">
    <!--Logo-->

    <img src="../../images/CaptureLogoCoffeeCode.PNG" class="Logo" alt="Logo on display">
  </div>
  <!--END Logo-->




  <div class="myFont">
    <header>
      <h1> Code Cafe</h1>
    </header>
  </div>

  <!--Form for forum message-->
  <div class="container myFont2">
    <h2>Write you messages here

    </h2>
    <h4>Pending approval</h4>
    <form action="/action_page.php">
      <div class="form-group">
        <label for="name">Email name here</label>
        <input type="text" class="form-control" id="name" placeholder="Enter email" name="name">
      </div>
      <div class="form-group">
        <label for="message">Write your message here</label>
        <input type="text" class="form-control" id="message" placeholder="Enter message" name="message">
      </div>
      <div class="form-group form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" name="remember"> Remember me
        </label>
      </div>
      <button type="submit" class="btn btn-warning">Submit</button>
    </form>
  </div>
  <!--END Forum message-->

  
