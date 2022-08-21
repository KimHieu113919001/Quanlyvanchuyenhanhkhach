<?php
   
   $id= $_GET['busid'];

   $connection=mysqli_connect('localhost','root','','quanlyvanchuyenhk');
   $sql="DELETE FROM vehicle WHERE veh_id='$id'";
   $result=mysqli_query($connection,$sql);
   if(mysqli_query($connection,$sql)){
       header("Location: admin_phuongtien.php");
   }else{
         echo "Not deleted";
   }
   
?>