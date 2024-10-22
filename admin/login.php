<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
 <?php require_once('inc/header.php') ?>
<body class="hold-transition login-page">
  <script>
    start_loader()
  </script>
  <style>
    body{
      background-image: url("<?php echo validate_image($_settings->info('cover')) ?>");
      background-size:cover;
      background-repeat:no-repeat;
      backdrop-filter: contrast(1);
    }
    #page-title{
      text-shadow: 6 px 4 px 7 px black;
      font-size: 3.5 em;
      /*color: #fff4f4 !important;*/
      color:#fff !important;
      text-shadow: #333;
      text-decoration: none;
      background-color: #8080801c;
    }
  
      
        
     
    #page-title {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px #000000;
        }

        
        .login-box {
            width: 400px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .card-primary {
            border-top: 3px solid #ffb900;
        }

        .card-body {
            padding: 20px;
        }

        .login-box-msg {
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .form-control {
            border-radius: 5px;
        }

        .input-group-text {
            background-color: #ffb900;
            color: #fff;
            border: none;
            border-radius: 5px;
        }

        .input-group-text i {
            font-size: 20px;
        }

        .btn-primary {
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            border: none;
            border-radius: 25px;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            transition: all 0.3s ease;
            color: #fff;
            cursor: pointer;
        }

        .btn-primary:hover {
            background: linear-gradient(to right, #ff4b2b, #ffb900);
        }

        .btn-primary:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        .btn-primary:active {
            transform: scale(0.98);
        }

        .fas.fa-user,
        .fas.fa-lock {
            color:#ff416c;
        }

        .col-8 a {
            color: #ffb900;
            text-decoration: none;
            font-size: 14px;
        }
       
    </style>
   <img style="text-align: center;height:150px;width:150px;" src="logo.png"> 
  <h1 class=" px-4 py-5"  id="page-title"><b><?php echo $_settings->info('name') ?></b></h1>
<!-- <div class="login-box"> -->
  <!-- /.login-logo -->
  <!-- <div class="card card-primary my-2">
    <div class="card-body">
      <p class="login-box-msg">Please enter your credentials</p>
      <form id="login-frm" action="" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="username" autofocus placeholder="Username">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control"  name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <a href="<?php #echo base_url ?>">Go to Website</a>
          </div> -->
          <!-- /.col -->
          <!-- <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div> -->
          <!-- /.col -->
        <!-- </div>
      </form> -->
      <!-- /.social-auth-links -->

      <!-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p> -->
      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>

<!-- /.login-box -->

    <div class="login-box">
        <div class="card card-primary my-2">
            <div class="card-body">
              
              <h3 style="color:#000000;text-align:center;">LOGIN</h3>
                <p class="login-box-msg">Please enter your credentials</p>
                <form id="login-frm" action="" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="username" autofocus placeholder="Username">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" placeholder="Password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <a href="<?php echo base_url ?>">Go to Website</a>
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<script>
  $(document).ready(function(){
    end_loader();
  })
</script>
</body>
</html>