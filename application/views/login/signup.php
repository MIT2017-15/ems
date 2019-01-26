<h2><?= $title; ?></h2>

<div class="text-danger">
<?php echo validation_errors(); ?>
</div>

<?php echo form_open('login/signup'); ?>
<div class="form-group row">
    <label for="name" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="name" placeholder="name" name="name">
    </div>
  </div>
  <div class="form-group row">
    <label for="username" class="col-sm-2 col-form-label">User name</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="username" placeholder="user name" name="username">
    </div>
  </div>
  <div class="form-group row">
    <label for="contact" class="col-sm-2 col-form-label">Contact number</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="contact" placeholder="0774564564" name="contact">
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="email" placeholder="abc@example.com" name="email">
    </div>
  </div>
  <div class="form-group row">
    <label for="password" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" placeholder="Password" name="password">
    </div>
  </div>
  <button type="submit" class="btn btn-success">Save User</button>
</form>