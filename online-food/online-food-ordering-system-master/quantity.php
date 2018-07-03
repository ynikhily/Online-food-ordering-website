<?php 
session_start();
if($_SESSION['name']=="")
{
?>
<script>
var c=confirm("login to order");
if(c==true)
{
<?php header("Location:login.html"); ?>
}
</script>
<?php
}
else
{
?>
<?php 

$un=$_SESSION['name'];
$name=$_GET['name'];
$size=$_GET['size'];
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("restraunt", $con);

$sql="UPDATE `order` SET `quantity`=`quantity`+1 WHERE uname = '". $un ."' and item = '". $name ."' and size = '" .$size. "' ";
if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
  else
  {
	   header("Location:cart.php");
  }


 } ?>