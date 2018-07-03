<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("restraunt", $con);

$sql="INSERT INTO customer
VALUES
('$_POST[cnam]','$_POST[uname]','$_POST[mail]','$_POST[house_no]','$_POST[street]','$_POST[area]','$_POST[mobile]')";

$sql1="INSERT INTO user(type,username,password) VALUES(2,'$_POST[uname]','$_POST[password]')";
if (!mysql_query($sql,$con)||!mysql_query($sql1,$con))

  {
  die('Error: ' . mysql_error());
  }

else
{	session_start();
			$_SESSION['name']=$_POST[uname];
			$_SESSION['type']=2;
		header("Location: user.php");
	
}
mysql_close($con);
?>