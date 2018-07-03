<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/reset.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"> 
    <link rel="stylesheet" href="css/d.css">
    <link rel="stylesheet" type="text/css" href="css/regcss.css">
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
<body id="page6" class="ssbg">
    <?php
					
$con = mysql_connect("localhost","root","");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("restraunt", $con);

$nm=$_SESSION['name'];

$sql="select *from restraunt.customer where uname='". $nm 	."'";
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
                            <li><a href = "ss.php"><strong>Welcome! <?php echo "$fname";?>, &nbsp &nbsp </strong></a>
								
							<a href="logout.php"><strong>Logout</strong></a></li>
                        </ul>
                    </nav>
					<a href = "cart.php"><img class="cart2" src = "images/cart1.png" >		</a>
                </div>
               </div>
			   </div>
		</header>
		
<?php 
$sql="select *from restraunt.customer where uname='".$nm."'";
$sql1="select password from user where username='".$nm."'";
if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
$result=mysql_query($sql,$con);
$result1=mysql_query($sql1,$con);

while($row = mysql_fetch_array($result))
  {
$cname=$row['cname'];
$uname=$row['uname'];
$mail=$row['email'];
$mob = $row['mobile'];
$hn=$row['house_no']; 
$st=$row['street'];
$ar=$row['area'];
?>
    <div class="makichu"  id="det">
    <p class="infode">DETAILS</p>
    </div>
    
        
    <div class="makichu" id="makichu">
	<table>
		<tr>
			<td class="credentials">Name: </td>
			<td class="credentials details" id="aone"><?php echo $cname; ?></td>
			<!--<td><button type="submit" id="bone">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">Username: </td>
			<td class="credentials details" id="atwo"><?php echo $uname; ?></td>
			<!--<td><button type="submit" id="btwo">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">E-Mail: </td>
			<td class="credentials details" id="athree"><?php echo $mail; ?></td>
			<!--<td><button type="submit" id="bthree">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">Mobile:  </td>
			<td class="credentials details" id="afour"><?php echo $mob; ?></td>
			<!--<td><button type="submit" id="bfour">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">House No:  </td>
			<td class="credentials details" id="afour"><?php echo $hn; ?></td>
			<!--<td><button type="submit" id="bfour">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">Street:  </td>
			<td class="credentials details" id="afour"><?php echo $st; ?></td>
			<!--<td><button type="submit" id="bfour">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
		<tr>
			<td class="credentials">Area:  </td>
			<td colspan="2" class="credentials details" id="afour"><?php echo $ar; }?></td>
			<!--<td><button type="submit" id="bfour">EDIT</button></td>
			<td><p class="tbox"><input type="textbox"></p></td>-->
		</tr>
	</table>
	<hr>
	<p class="infedo"><button id="changeone" type="submit">EDIT</button></p>
	</div>
	
	<div class="makichd"  id="ted">
    <p class="infode">UPDATE INFORMATION</p>
    </div>
	<div class="makichd" id="makichd">
	<form action="update.php" method = "post">
		<table style="width: 100%">
			<tr>
			<td><p class="ssip">NAME: </p></td>
			<td><p class="ssip"><input type="text" name = "cnam" required></p></td>
			</tr>
			
			<td><p class="ssip">E-Mail: </p></td>
			<td><p class="ssip"><input type="text" name = "mail" required></p></td>
			</tr>
			<tr>
			<td><p class="ssip">MOBILE: </p></td>
			<td><p class="ssip"><input type="text" name = "mobile" required></p></td>
			</tr>
			<tr>
			<td><p class="ssip">HOUSE NO: </p></td>
			<td><p class="ssip"><input type="text" name = "house_no" required></p></td>
			</tr>
			<tr>
			<td><p class="ssip">STREET: </p></td>
			<td><p class="ssip"><input type="text" name = "st" required></p></td>
			</tr>
			<tr>
			<td><p class="ssip">AREA: </p></td>
			<td><p class="ssip"><input type="text" name = "area" required></p></td>
			</tr>
		</table>
		<hr>
		<p class="infedo"><button id="changetwo" type="submit">UPDATE</button></p>
	</form>
	
	
<script type="text/javascript"> Cufon.now();</script>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
	$("#fname").autocomplete({source: []});
	$("#changeone").click(function() {
		//
	});
	$("#ted").hide();
	$("#makichd").hide();
	$("#changeone").click(function() {
		$("#det").hide();
		$("#makichu").hide();
		$("#ted").show();
		$("#makichd").show();
	});
	$("#changetwo").click(function() {
		$("#ted").hide();
		$("#makichd").hide();
		$("#det").show();
		$("#makichu").show();
	});
</script>

</body><?php }?>
</html>