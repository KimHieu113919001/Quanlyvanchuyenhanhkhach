<?php
   
   $giave=$_POST['giave'];


   $connection=mysqli_connect('localhost','root','','quanlyvanchuyenhk');

   if (isset($_POST['suagia'])){
   $sql="UPDATE giave SET giave='$giave' WHERE giave_id='$_GET[giaid]'";
   
   mysqli_query($connection,$sql);
   

   if(mysqli_query($connection,$sql)){
      header("Location: admin_tuyen.php".$giave_id); 
   }else{
        echo "Not inserted";
   }
}
?>