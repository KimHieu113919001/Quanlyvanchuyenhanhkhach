<?php
   
   $id= $_GET['id'];

   $conn=mysqli_connect('localhost','root','','quanlyvanchuyenhk'); 

   $sql="DELETE FROM `booking` WHERE booking_id='$id'";
    echo $sql;
   $result=mysqli_query($conn,$sql);
   if(mysqli_query($conn,$sql)){
       header("Location: admin_dondatxe.php");
   }else{
         echo "Not deleted";
   }
   
?>
