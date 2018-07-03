<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head><body>
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
$un=$_SESSION['name'];
$rd=$_GET['id'];
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("restraunt", $con);

$in = $_POST["in"];
$ip1 = $_POST["ip1"];
$ip2 = $_POST["ip2"];
$ip3 = $_POST["ip3"];

if($_GET["dd"] == 1)
{
	$sql1 = "SELECT uname,item,size FROM `order` WHERE uname = '". $un ."' and item = '". $in ."' and size='R' and status='0' " ;
 $result1=mysql_query($sql1,$con);
 if($result1 === FALSE) { 
    echo mysql_error();
}
if (mysql_num_rows($result1) > 0) {

	$sql2 = "UPDATE `order` SET `quantity`=`quantity`+1 WHERE uname = '". $un ."' and item = '". $in ."' and size='R' and status='0' ";
	 $result5=mysql_query($sql2,$con);
	 if($result5 === FALSE) { 
		echo mysql_error();
	}
	

header('Location: ' . $_SERVER['HTTP_REFERER']);

}
else{
	$sql3= "INSERT INTO `order`(`uname`, `item`, `r_id`, `price`, `size`, `quantity`, `status`) VALUES ('". $un ."','". $in ."','". $rd ."','". $ip1 ."','R',1,0)";
	if (!mysql_query($sql3,$con))
  {
  die('Error: ' . mysql_error());
  }
  else
  {
	  header('Location: ' . $_SERVER['HTTP_REFERER']);
  }
}

}






else if($_GET["dd"] == 2)
{
	$sql1 = "SELECT uname,item,size FROM `order` WHERE uname = '". $un ."' and item = '". $in ."' and size='M' ";
	
 $result1=mysql_query($sql1,$con);
 if($result1 === FALSE) { 
    echo mysql_error();
}
if (mysql_num_rows($result1) > 0) {

	$sql2 = "UPDATE `order` SET `quantity`=`quantity` + 1 WHERE uname = '". $un ."' and item = '". $in ."' and size='M' ";
	  
	 $result5=mysql_query($sql2,$con);
	 if($result5 === FALSE) { 
		echo mysql_error();
	}
	

header('Location: ' . $_SERVER['HTTP_REFERER']);
}
else{
	$sql3= "INSERT INTO `order`(`uname`, `item`, `r_id`, `price`, `size`, `quantity`, `status`) VALUES ('". $un ."','". $in ."','". $rd ."','". $ip2 ."','M',1,0)";
	if (!mysql_query($sql3,$con))
  {
  die('Error: ' . mysql_error());
  }
  else
  {
	  header('Location: ' . $_SERVER['HTTP_REFERER']);
  }
}
}

else if($_GET["dd"] == 3)
{
		$sql1 = "SELECT uname,item,size FROM `order` WHERE uname = '". $un ."' and item = '". $in ."' and size='L' ";
	
 $result1=mysql_query($sql1,$con);
 if($result1 === FALSE) { 
    echo mysql_error();
}
if (mysql_num_rows($result1) > 0) {

	$sql2 = "UPDATE `order` SET `quantity`=`quantity` + 1 WHERE uname = '". $un ."' and item = '". $in ."' and size='L' "; 
	 $result5=mysql_query($sql2,$con);
	 if($result5 === FALSE) { 
		echo mysql_error();
	}
	
header('Location: ' . $_SERVER['HTTP_REFERER']);
}
else{
	$sql3= "INSERT INTO `order`(`uname`, `item`, `r_id`, `price`, `size`, `quantity`, `status`) VALUES ('". $un ."','". $in ."','". $rd ."','". $ip3 ."','L',1,0)";
	if (!mysql_query($sql3,$con))
  {
  die('Error: ' . mysql_error());
  }
  else
  {
	  header('Location: ' . $_SERVER['HTTP_REFERER']);
  }
}
}

}

?>

</body>
</html>