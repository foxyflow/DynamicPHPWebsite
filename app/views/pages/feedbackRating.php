<div class="container myFont2">
    <h2>Feed back

    </h2>
    <h2>Welcome to Feedback</h2>
    <form action="/action_page.php">
      <div class="form-group">
        <label for="name">Name here</label>
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
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
      <!--like rating-->
      <div class="radio-wrapper">
        <input type="radio" id="radio1" name="radiobtn" value="1">
        <label for="radio1">★</label>
        <input type="radio" id="radio2" name="radiobtn" value="2">
        <label for="radio2">★</label>
        <input type="radio" id="radio3" name="radiobtn" value="3">
        <label for="radio3">★</label>
        <input type="radio" id="radio4" name="radiobtn" value="4">
        <label for="radio4">★</label>
        <input type="radio" id="radio5" name="radiobtn" value="5">
        <label for="radio5">★</label>

      </div>
      <!--END like rating-->
       <!-- goes to placeholder page which will be replaced by PHP -->
       <a href="placeHolderEditFile.html" type="submit" class="btn btn-warning">Submit</a>
      <!-- <button type="submit" class="btn btn-warning">Submit</button> -->
    </form>
  </div>