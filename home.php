<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background:rgba(0, 0, 0);
            /* background: rgb(255,138,138);
            background: linear-gradient(90deg, rgba(255,138,138,1) 37%, rgba(252,176,69,1) 100%); */
        }

        .carousel-item img {
            object-fit: cover;
            height: 400px;
        }

        .carousel-control-prev,
        .carousel-control-next {
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 50%;
            width: 45px;
            height: 45px;
            top: 50%;
            transform: translateY(-50%);
        }

        .carousel-control-prev:hover,
        .carousel-control-next:hover {
            background-color: #ffb900;
        }

        .carousel-indicators button {
            background-color: #ffb900;
        }

        .card:hover {
            transform: scale(1.05);
            transition: transform 0.3s ease;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: #ffb900;
            border-color: #ffb900;
        }

        .btn-primary:hover {
            background-color: #ff9f00;
            border-color: #ff9f00;
        }
    </style>
</head>

<body>
    <!-- <div class="container-fluid mt-4">
        <?php 
        // Connect to database
        $conn = new mysqli("localhost", "root", "", "cwms_db");
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Fetch banner images
        $files = array();
        $fopen = scandir(base_app.'uploads/banner');
        foreach($fopen as $fname){
            if(in_array($fname,array('.','..')))
                continue;
            $files[] = validate_image('uploads/banner/'.$fname);
        }
        ?>
        <div id="tourCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2500">
            <div class="carousel-inner h-100">
                <?php foreach($files as $k => $img): ?>
                <div class="carousel-item h-100 <?php echo $k == 0? 'active': '' ?>">
                    <img class="d-block w-100 h-100" style="object-fit:contain" src="<?php echo $img ?>" alt="">
                </div>
                <?php endforeach; ?>
            </div>
            <a class="carousel-control-prev" href="#tourCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#tourCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </div> -->


  <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="3000">
      <img src="uploads/main_cover1.jpeg" class="d-block w-100" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
       
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="uploads/main_cover2.jpeg" class="d-block w-100" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
       
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="uploads/main_cover3.jpeg" class="d-block w-100" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
        
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="uploads/main_cover4.jpeg" class="d-block w-100" alt="Fourth slide">
      <div class="carousel-caption d-none d-md-block">
        
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



    <div class="container">
        <div class="row mt-4" style="text-align: center;">
            <h2 style="font-weight: bold; color: white;" >Upcoming Events</h2>
            <div class="row">
            <?php
// Assuming archived events are older ones, modify the query as per your logic
$sql = "SELECT e.title, e.e_date, e.short_description, e.content_path, e.invite, e.image, u.department as dept 
        FROM event e 
        INNER JOIN users u ON e.user_id = u.id 
        WHERE e.e_date >= NOW() and e.delete_flag='0'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
?>
<div class="col-md-4">
    <div class="card p-3 mb-3">
        <h5 class="card-title"><b><center><?php echo $row['title']; ?></center></b></h5>
        <img src="<?php echo $row['image']; ?>" class="img-top d-block w-100" style="height: 200px; object-fit: cover;">
        <p class="card-text"><?php echo $row['short_description']; ?></p>
        
        <p class="card-text"><b><center>Date: <?php echo date("d-m-Y", strtotime($row['e_date'])); ?></center></b></p>
        <p class="card-text"><b><center>Department: <?php echo $row['dept']; ?></center></b></p>
        <a href="<?php echo $row['content_path']; ?>" class="btn btn-primary">Details</a>
        <a href="<?php echo $row['invite']; ?>" class="btn btn-secondary mt-2">View Invite</a>
    </div>
</div>
<?php
    }
} else {
    echo "<p>No upcoming events.</p>";
}
?>
            </div>
        </div>

        <div class="row mt-4"  style="text-align: center;">
            <h2 style="font-weight: bold; color: white;"   >Archived Events</h2>
            <div class="row">
            <?php
// Assuming archived events are older ones, modify the query as per your logic
$sql = "SELECT e.title, e.e_date, e.short_description, e.content_path, e.invite, e.image, u.department as dept 
        FROM event e 
        INNER JOIN users u ON e.user_id = u.id 
        WHERE e.e_date < NOW() and e.delete_flag='0'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
?>
<div class="col-md-4">
    <div class="card p-3 mb-3">
        <h5 class="card-title"><b><center><?php echo $row['title']; ?></center></b></h5>
        <img src="<?php echo $row['image']; ?>" class="img-top d-block w-100" style="height: 200px; object-fit: cover;">
        <p class="card-text"><?php echo $row['short_description']; ?></p>
        
        <p class="card-text"><b><center>Date: <?php echo date("d-m-Y", strtotime($row['e_date'])); ?></center></b></p>
        <p class="card-text"><b><center>Department: <?php echo $row['dept']; ?></center></b></p>
        <a href="<?php echo $row['content_path']; ?>" class="btn btn-primary">Details</a>
        <a href="<?php echo $row['invite']; ?>" class="btn btn-secondary mt-2">View Invite</a>
    </div>
</div>
<?php
    }
} else {
    echo "<p>No archived events.</p>";
}
?>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    
</body>

</html>
