<?php
   
   $id= $_GET['tid'];

   $conn=mysqli_connect('localhost','root','','quanlyvanchuyenhk'); 

   $sql="DELETE FROM `schedule` WHERE scheduleid='$id'";
    echo $sql;
   $result=mysqli_query($conn,$sql);
   if(mysqli_query($conn,$sql)){
       header("Location: admin_tuyen.php");
   }else{
         echo "Not deleted";
   }
   
?>
