<?php
   
   $id= $_GET['driverid'];

   $connection=mysqli_connect('localhost','root','','quanlyvanchuyenhk');
   $sql="DELETE FROM driver WHERE driverid='$id'";
   $result=mysqli_query($connection,$sql);
   if(mysqli_query($connection,$sql)){
       header("Location: admin_taixe.php");
   }else{
         echo "Not deleted";
   }
   
?>