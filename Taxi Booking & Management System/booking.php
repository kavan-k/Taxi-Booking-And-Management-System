<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    $connection= mysqli_connect('localhost','root','','Taxi Booking & Management System');


    $username= $_SESSION['username'];
    //echo $username;
    
    $query= "SELECT  `first_name`, `last_name`, `email` FROM `user` WHERE username='$username'";
    $result= mysqli_query($connection,$query);
    
    $row= mysqli_fetch_assoc($result);
    //$name= $row['first_name']." ". $row['last_name'];
   // echo $name;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/wickedpicker.min.css">
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/wickedpicker.min.js"></script>
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="style.css">
</head>
<style>
    .navbar-fixed-top.scrolled {
   background-color: ghostwhite;
  transition: background-color 200ms linear;
}    
</style>

<body>
    <?php include 'navbar.php'; ?>
    <br>
    <div class="container">
        <div class="row">
            <div class="page-header">
                <h1 style="text-align:center;">Booking</h1>
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <form class="animated bounce" action="bookingaction.php" method="post">
                   
                    <div class="input-group">
                      <span class="input-group-addon"><b>Name</b></span>
                      <input id="name" type="text" class="form-control" name="name" value="<?php echo $row['first_name']." ". $row['last_name']; ?>"  required>
                    </div>
                    <br>
                    <div class="input-group">
                      <span class="input-group-addon"><b>Taxi Type</b></span> &nbsp;
                      <label><input type="radio" name="type" value="suv">SUV</label> &nbsp;
                      <label><input type="radio" name="type" value="sedan">Sedan</label>
                    </div>
                    <br>
                    <div class="input-group">
                      <span class="input-group-addon"><b>Date</b></span>
                      <input id="req_date" type="text" class="form-control" name="req_date" placeholder="Select the Day taxi is needed" required>
                    </div>
                    
                    <script>
                      $( function() {
                        $( "#req_date" ).datepicker();
                      } ); 
                    </script> 
                    <br>
                    <script>
                      $( function() {
                        $( "#return_date" ).datepicker();
                        $( "#return_time" ).wickedpicker();
                      } );
                    </script>
                    <div class="input-group">
                      <span class="input-group-addon"><b>Destination</b></span>
                      <input id="destination" type="text" class="form-control" name="destination" placeholder="Destination" required>
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Pickup Point</b></span>
                      <input id="pickup" type="text" class="form-control" name="pickup" placeholder="pickup">
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Reason for booking</b></span>
                      <input id="reason" type="text" class="form-control" name="reason" placeholder="Reason of booking the vehicle">
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Email</b></span>
                      <input id="email" type="email" class="form-control" name="email" value="<?php echo $row['email']; ?>" required>
                    </div>
                    <br>
                    
                    <div class="input-group">
                      <span class="input-group-addon"><b>Mobile</b></span>
                      <input id="mobile" type="text" class="form-control" name="mobile" placeholder="Mobile No" required>
                    </div>
                    <br>
                    
                    <input type="hidden" name="username" value="<?php echo $username; ?>">
                    
                    <div class="input-group">
                        <input type="submit" name="submit" class="btn btn-success">
                    </div>
                     
                    
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    
<script>
    $(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $a= $(".navbar-fixed-top");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $a.height());
  });
}); 
    
</script>  
</body>
</html>