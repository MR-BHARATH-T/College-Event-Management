<style>
  .navbar {
    background: rgb(248,97,97);
background: radial-gradient(circle, rgba(248,97,97,1) 37%, rgba(246,161,42,1) 100%); /* Replace with your desired background color */
  }

  .navbar .navbar-brand {
    color: #ffffff; /* Optional: Change the text color of the navbar brand */
  }

  .navbar .nav-link {
    color: #ffffff !important; /* Optional: Change the text color of the navbar links */
  }

  .navbar .nav-link:hover {
    color: #ffffff !important; /* Optional: Change the text color of the navbar links on hover */
  }
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg">
            <div class="container px-4 px-lg-5 ">
                <button class="navbar-toggler btn btn-sm" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <a class="navbar-brand" href="./">
                <img src="<?php echo validate_image($_settings->info('logo')) ?>" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                <?php echo $_settings->info('short_name') ?>
                </a>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link text-white" aria-current="page" href="./">Home</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=blogs">Blogs</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=departments">Departments</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=events">Events</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=reports">Reports</a></li>
                        <!-- <li class="nav-item"><a class="nav-link text-white" href="./?p=reports/view_report">Reports</a></li> -->
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=about">About</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./?p=contact_us">Contact</a></li>
                    </ul>
                </div>
                <div>
                  <a href="./admin" class="text-decoration-none text-reset" style="color:#ffffff !important;"  ><b>Admin Panel</b></a>
                </div>
            </div>
        </nav>
<script>
  $(function(){
    $('#login-btn').click(function(){
      uni_modal("","login.php")
    })
    $('#navbarResponsive').on('show.bs.collapse', function () {
        $('#mainNav').addClass('navbar-shrink')
    })
    $('#navbarResponsive').on('hidden.bs.collapse', function () {
        if($('body').offset.top == 0)
          $('#mainNav').removeClass('navbar-shrink')
    })
  })

  $('#search-form').submit(function(e){
    e.preventDefault()
     var sTxt = $('[name="search"]').val()
     if(sTxt != '')
      location.href = './?p=products&search='+sTxt;
  })
</script>