<!DOCTYPE html>
<html lang="en">
<title>Select Your Area</title>
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
                            <li><a href = "ss.php"><strong>Hola! <?php echo "$fname";?>  &nbsp| &nbsp </strong></a>
								
	
						<a href="logout.php"><strong>Logout</strong></a></li>
						<li></li>
                        </ul>
					
                    </nav>
					<a href = "cart.php"><img class="cart2" src = "images/cart1.png" >		</a>
					
                </div>
               </div>
			   </div>

		</header>
				
	<div class="bg1">
			
				
                <div class="main1">
					
				<form name="f1" action = "restaurants.php" method="post" class="margin1">
				<select id="city" name="City" onChange="validate()" required>
					<p>
					<option value = "city">---CITY---</option> 
					
					<option value = "Chennai">Chennai</option> 
					<option value = "Jaipur">Jaipur</option>
					<option value = "Delhi">Delhi</option> 
					
				<input type = "text" id="fname" name="location" placeholder="Enter Your Location" required>
				<input class="buto2" type = "submit" value = "GO">
				</p>
				</form>
            </div>
			
        </div>
    
	
    <script type="text/javascript"> Cufon.now(); </script>
	

	<script src="js/jquery-3.2.1.js"></script>
		<script src="js/jquery-ui.js"></script>
	<script>
	
	$("#fname").autocomplete({source: []});
	</script>
	<script>
	
	
	function validate()
{
	
	
 var ddl = document.getElementById("city");
 var selectedValue = ddl.options[ddl.selectedIndex].value;
 
    if (selectedValue == "city")
   {
    alert("Please select a city");
   }
   else if(selectedValue == "Chennai")
   {
	   $("#fname").autocomplete({source: ["Kelambakkam","Tambaram","T-Nagar"]});
   }
   else if(selectedValue == "Jaipur")
   {
	  $("#fname").autocomplete({source: ["Vidhyadhar nagar","Vaishali nagar","Mansarovar"]});
   }
   else
   {
	   $("#fname").autocomplete({source: ["CP","Malviya Nagar","Vasant Vihar"]});
   }
   
}
	</script>
</body><?php }?>
</html>
