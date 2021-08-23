<?php
    $connection= mysqli_connect('localhost','root','','Taxi Booking & Management System');
    session_start();

    $msg="";
    
    if(isset($_POST['submit'])){
        $name=$_POST['name'];
        $type=$_POST['type'];
        $req_date=$_POST['req_date'];
        $destination=$_POST['destination'];
        $pickup=$_POST['pickup'];
        $reason=$_POST['reason'];
        $email=$_POST['email'];
        $mobile=$_POST['mobile'];
        $username= $_POST['username'];
        
        $insert_query="INSERT INTO `booking`(`booking_id`, `name`,`username` , `type`, `req_date`, `destination`, `pickup_point`, `reasons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`) VALUES ('','$name','$username','$type','$req_date','$destination','$pickup','$reason','$email','$mobile','','','','')"; 
        echo $name;
        
        
        
        
        $res= mysqli_query($connection,$insert_query);
        
         if($res==true){
            $msg= "<script language='javascript'>
                                       swal(
                                            'Success!',
                                            'Registration Completed!',
                                            'success'
                                            );
				          </script>";
            
        }
        else{
            die('unsuccessful' .mysqli_error($connection));
        }
        
        
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
    
    
    
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    
   
     <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>
<body>
    <?php echo $msg;
    ?>
    
    <script>
    
        var timer = setTimeout(function() {
            window.location='booking.php'
        }, 1000);
    </script>

</body>
</html>
