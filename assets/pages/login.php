<div class="login">
  <div class="col-4 bg-white border rounded p-4 shadow-lg" style="height: 500px;">  
  <form method="POST" action="assets/php/actions.php?login" class="d-flex flex-column justify-content-between">
      <div class="d-flex justify-content-center">

        <img class="mb-4" src="./assets/images/logo.png" alt="" height="70">
      </div>
      <h1 class="h5 mb-3 fw-normal">Please sign in</h1>

      <div class="form-floating">
        <input type="text" name="username_email" value="<?=showFormData('username_email')?>" class="form-control rounded-0" placeholder="username/email">
        <label for="floatingInput">username/email</label>
      </div>
      <?=showError('username_email')?>
      <div class="form-floating mt-1">
        <input type="password" name="password" class="form-control rounded-0" id="floatingPassword" placeholder="Password">
        <label for="floatingPassword">password</label>
      </div>
      <?=showError('password')?>
      <?=showError('checkuser')?>

      <div class="mt-3 d-flex justify-content-between align-items-center">
        <button class="btn btn-primary" type="submit">Sign in</button>
        <a href="?signup" class="text-decoration-none">Create New Account</a>


      </div>
    </form>
  </div>
</div>
