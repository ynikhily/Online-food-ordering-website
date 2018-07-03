<!DOCTYPE html>
<html lang="en">
<title>Restaurant Nearby</title>
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
                            <li><a href = "ss.php"><strong>Hello! <?php echo "$fname";?>  &nbsp| &nbsp </strong></a>
								
	
						<a href="logout.php"><strong>Logout</strong></a></li>
						<li></li>
                        </ul>
					
                    </nav>
					<a href = "cart.php"><img class="cart2" src = "images/cart1.png" >		</a>
					
                </div>
               </div>
			   </div>
			   <?php
			$city = $_POST["City"];
			$area = $_POST["location"];
						
			
			?>
			
       <div class="bg1">
		<div class="tb" align="center">	
			<div class="ul"  align="left">	
				<p class="fo1"><img class="i1" src="images/gps.png" height="45" width = "35">  &nbsp <?php echo("$area") ?>,&nbsp <?php echo("$city") ?>
				<a href="user.php">
				<button class="b1">Change Location</button>
				</a>
				</p>
				</div>
			
			<br>
		<div>
		<p style = "font-size:25px;color:white;font-weight:bold;">
			<?php
			$sq2="select *from restraunt.restraunt where r_city='$city' and r_area='$area'";
			
			  
			 $result12=mysql_query($sq2,$con);
			
					if(mysql_num_rows($result12)==0){
					echo("0 Results Found");
					 }
				?>
				</p>
		</div>
			<?php
			
			$sql1="select *from restraunt.restraunt where r_city='$city' and r_area='$area'";
			if (!mysql_query($sql1,$con))
			  {
			  die('Error: ' . mysql_error());
			  }
			 $counter = 0;
			$result1=mysql_query($sql1,$con);
			while($row1 = mysql_fetch_array($result1)){
				$name=$row1['r_name'];
				$id = $row1['r_id'];
				$no = $row1['Contact no.'];
				$city=$row1['r_city'];
				$street=$row1['r_street'];
				$area=$row1['r_area'];
				$counter ++;
				$rating = $row1['rating'];
			?>
		<a style="text-decoration:none" href = "<?php echo("$name")?>-<?php echo("$area")?>.php?id=<?php echo("$id") ?>">
		
		<table class="d1">
		
		<tr>
		<td rowspan = 3 class="c1"><?php echo("$counter") ?></td>
		<td rowspan = 3 ><img src = "images/<?php echo("$name")?>.png" width="80" height = "80"></td>
		<td colspan = 3 class="f1"><?php echo("$name")?></td>
		<td rowspan = 3 style = "color:teal;weight:bold"><p class="r1">&nbsp <br>RATING<br><?php echo("$rating")?>
		</tr>
		
		<tr>
		
		<td colspan = 3><?php echo("$street")?>,<?php echo("$area")?>,<?php echo("$city")?></td>
		</tr>
		<tr>
		
		<td colspan = 3><?php echo("$no")?>	</td>
		</tr>
		
		
		</table>
		
		<br>
			<?php } ?>
		</div>
		</div>
    </header>
	
	
	<!--==============================footer=================================-->
    <footer>
        <div class="main">
        	<div class="aligncenter">
            	
            </div>
        </div>
    </footer>
	
    <script type="text/javascript"> Cufon.now(); </script>
	

</body><?php }?>
</html>
