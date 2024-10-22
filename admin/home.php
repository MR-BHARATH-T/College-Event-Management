<h1>Welcome to <?php echo $_settings->info('name') ?></h1>
<hr>
<?php 
// Fetch user data
$user_id = $_settings->userdata('id');
$user_type = $_settings->userdata('type');
$user_query = $conn->query("SELECT type, department FROM users WHERE id = {$user_id}");
$user_data = $user_query->fetch_assoc();
$department_name = $user_data['department'];
$type_name = $user_type == 1 ? 'Admin' : ($user_type == 2 ? 'HOD' : 'Other Faculty');
?>

<p>Department: <?php echo $department_name; ?></p>
<p>User Type: <?php echo $type_name; ?></p>

<?php if($user_type == 1): ?>
<div class="row">
  <div class="col-12 col-sm-4 col-md-4 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-success elevation-1"><i class="fas fa-building"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Total Departments</span>
        <span class="info-box-number">
          <?php 
            $department = $conn->query("SELECT * FROM department_list WHERE delete_flag = 0")->num_rows;
            echo format_num($department);
          ?>
        </span>
      </div>
    </div>
  </div>

  <div class="col-12 col-sm-4 col-md-4 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-light elevation-1"><i class="fas fa-th-list"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Events</span>
        <span class="info-box-number">
          <?php 
            $events = $conn->query("SELECT * FROM event WHERE `status` = 1 AND delete_flag = 0")->num_rows;
            echo format_num($events);
          ?>
        </span>
      </div>
    </div>
  </div>

  <div class="col-12 col-sm-4 col-md-4 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-warning elevation-1"><i class="fas fa-users-cog"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Writers</span>
        <span class="info-box-number">
          <?php 
            $users = $conn->query("SELECT * FROM users WHERE `type` = 2")->num_rows;
            echo format_num($users);
          ?>
        </span>
      </div>
    </div>
  </div>

  <div class="col-12 col-sm-6 col-md-6 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-secondary elevation-1"><i class="fas fa-blog"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Unpublished Reports</span>
        <span class="info-box-number">
          <?php 
            $reports = $conn->query("SELECT * FROM report WHERE `status` = 0 AND delete_flag = 0")->num_rows;
            echo format_num($reports);
          ?>
        </span>
      </div>
    </div>
  </div>

  <div class="col-12 col-sm-6 col-md-6 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-primary elevation-1"><i class="fas fa-blog"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Published Reports</span>
        <span class="info-box-number">
          <?php 
            $reports = $conn->query("SELECT * FROM report WHERE `status` = 1 AND delete_flag = 0")->num_rows;
            echo format_num($reports);
          ?>
        </span>
      </div>
    </div>
  </div>
</div>
<?php else: ?>
<div class="row">
  <div class="col-12 col-sm-6 col-md-6 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-secondary elevation-1"><i class="fas fa-blog"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Unpublished Reports</span>
        <span class="info-box-number">
          <?php 
            $reports = $conn->query("SELECT * FROM report WHERE `status` = 0 AND delete_flag = 0")->num_rows;
            echo format_num($reports);
          ?>
        </span>
      </div>
    </div>
  </div>

  <div class="col-12 col-sm-6 col-md-6 col-sm-12 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-gradient-primary elevation-1"><i class="fas fa-blog"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Published Reports</span>
        <span class="info-box-number">
          <?php 
            $reports = $conn->query("SELECT * FROM report WHERE `status` = 1 AND delete_flag = 0")->num_rows;
            echo format_num($reports);
          ?>
        </span>
      </div>
    </div>
  </div>
</div>
<?php endif; ?>

<div class="container">
  <?php 
    $files = array();
    $fopen = scandir(base_app.'uploads/banner');
    foreach($fopen as $fname){
      if(in_array($fname, array('.', '..')))
        continue;
      $files[] = validate_image('uploads/banner/'.$fname);
    }
  ?>
  <div id="tourCarousel" class="carousel slide" data-ride="carousel" data-interval="2500">
    <div class="carousel-inner h-100">
      <?php foreach($files as $k => $img): ?>
      <div class="carousel-item h-100 <?php echo $k == 0 ? 'active' : '' ?>">
        <img class="d-block w-100 h-100" style="object-fit: contain" src="<?php echo $img ?>" alt="">
      </div>
      <?php endforeach; ?>
    </div>
    <a class="carousel-control-prev" href="#tourCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#tourCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
