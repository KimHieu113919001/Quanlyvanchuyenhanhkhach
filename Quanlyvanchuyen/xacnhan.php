<?php
   
   $id= $_GET['vtbdid'];

   $conn=mysqli_connect('localhost','root','','quanlyvanchuyenhk'); 
 
   $sql= "UPDATE `chiphichuyendi` SET `trangthai`='1' WHERE vtbd_id='$id'";
    //echo $sql;
   $result=mysqli_multi_query($conn,$sql);
   if($result){
       header("Location: chiphichuyendi.php");
   }else{
         echo "Not freed";
   }
   
?>