<?php
   
   $id= $_GET['id'];
   $idtaixe= $_GET['idtaixe'];
   $idxe= $_GET['idxe'];

   $conn=mysqli_connect('localhost','root','','quanlyvanchuyenhk'); 
 
   $sql= "UPDATE `bookingyc` SET `tinhtrangxe`='0' WHERE bookingyc_id='$id'"; 
   $sql1= "UPDATE `driver` SET `trangthaitx`='0' WHERE driverid='$idtaixe'"; 
   $sql2= "UPDATE `vehicle` SET `trangthaix`='0' WHERE veh_id='$idxe'"; 
 
   $result=mysqli_multi_query($conn,$sql);
   $result1=mysqli_multi_query($conn,$sql1);
   $result2=mysqli_multi_query($conn,$sql2);
   
   if( $result && $result1 && $result2){
       header("Location: chiphichuyendi.php");
   }else{
         echo "Not freed";
   }

   
?>