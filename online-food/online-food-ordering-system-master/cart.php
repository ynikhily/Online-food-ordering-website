<!DOCTYPE html>
<html lang="en">
<title> My cart</title>
<head>
    
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/reset.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"> 
    <link rel="stylesheet" href="css/c.css">
	<link rel="stylesheet" href="js/jquery-ui.theme.css" type="text/css">
	<link rel="stylesheet" href="js/jquery-ui.structure.css" type="text/css">
	<link rel="stylesheet" href="js/jquery-ui.css" type="text/css">
	<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script> 
    <script src="js/Dynalight_400.font.js" type="text/javascript"></script>
    <script src="js/FF-cash.js" type="text/javascript"></script>  
	
	
    <?php 
session_start();
if(empty($_SESSION['name']))
{
header("Location:login.html");
}
else
{
?>
</head>
<body id="page6">
    <?php
					
$con = mysql_connect("localhost","root","");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("restraunt", $con);

$nm=$_SESSION['name'];

$sql="select *from restraunt.customer where uname='".$nm."'";
if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
  
 $result=mysql_query($sql,$con);
while($row = mysql_fetch_array($result))
  {
$cname=explode(" ", $row['cname']);
  
$fname = $cname[0];

  }
?>

	

	 <header>
    	<div id="top" class="row-top">
        
			<div class="margin1">
            	<div class="wrapper">
                	<h1><a href="user.php">FoodOnDemand</a></h1>
                    <nav>
                        <ul class="menu">
                            <li><a href="ss.php"><strong>Welcome! <?php echo "$fname";?>, &nbsp &nbsp </strong></a>
								
							<a href="logout.php"><strong>Logout</strong></a></li>
                        </ul>
                    </nav>
                </div>
               </div>
			   </div>
		</header>
	  <div class="bg3">
	  
	  
		
		<table class="cart">
		<tr><th colspan='6'>
		<p class="headd">My Cart</p>
		</th></tr>
		<?php

$sql1="select *from restraunt.order where uname='". $nm . "' && status='0'";
if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
  $counter=0;
  $total=0;
 $result1=mysql_query($sql1,$con);
 if($result1 === FALSE) { 
    echo mysql_error();
}
if(mysql_num_rows($result1)==0)
{
?>
<tr><td class="c1" rowspan="5" colspan="6">No item in Your Cart!</td></tr>
<?php

}
else{
	
while($row1 = mysql_fetch_array($result1))
  {	
	$rd = $row1['r_id'];
	$i_name = $row1['item'];
	$price=$row1['price'];
	$size=$row1['size'];
	$quantity=$row1['quantity'];
	$counter ++;
	$total = $total + $price * $quantity;
	$url = "quantity.php?name=". $i_name ."&size=". $size ." ";
	$url1 = "qmin.php?name=". $i_name ."&size=". $size ." ";
?>		<tr>
		<td class="c1"><?php echo("$counter") ?></td>
		<td class = "img1"><img src = "images/<?php echo("$i_name")?>.png" width="120" height = "120"></td>
		<td class="f1"><?php echo("$i_name")?></td>
		<td class="f1"><?php echo("$size")?></td>
	
		<td class="f1"><a href = <?php echo "$url1" ?>><img class="b-" src = "images/b+.png"></a><?php echo("$quantity")?><a href = <?php echo "$url" ?>><img class="b-1" src = "images/b-.png"></a></td>
		<td class="price2"><p><?php echo "$price"?></p></td>
		
		
		
		</tr>
  <?php } ?>
   <?php } ?>
		</table>
		
<br>
		<div>
		
		<div class="cart1">
		<p class="s">Summary &nbsp </p>
		<p>
		<table class="sum1">
		<tr>
		<td>Items</td>
		<td>-</td>
		<td><font color=><?php echo "$counter" ?></td>
		</tr>
		
		
		<tr>
		<td>Total</td>
		<td>-</td>
		<td>Rs. <?php echo "$total" ?></td>
		</tr>
		
		
		<tr>
		<td>CGST(2.5%)</td>
		<td>-</td>
		<td><font color=>Rs. 
		<?php $cgst = 0.025* $total; 
		echo "$cgst" ?></td>
		</tr>
		
		<tr>
		<td>SGST(2.5%)</td>
		<td>-</td>
		<td><font color=>Rs. 
		<?php $sgst = 0.025* $total; 
		echo "$sgst" ?>
		</td>
		</tr>
		
		
		</table>
		</p>
		<p class = "s"></p>
		
		<p align = "right" style = "margin-right:9px">Total - <?php $total1 = $total + $cgst + $sgst; 
		echo "$total1"?>
		
		
	</div>

	
 <button onclick="location.href='user.php'" class = "buto">Add More</button>

 <form action = ac.php>
<button onclick="location.href='ac.php'" type="submit" class = "buto1">Checkout</button>
</form>
 </div>
 </div>
    <script type="text/javascript"> Cufon.now(); </script>
	


</body><?php }?>
</html>
