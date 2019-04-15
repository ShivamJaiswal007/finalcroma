<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Croma</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->
<%
{
	String pnumber="";
	String prname="";
	String prprice="";
	String uname="";
	int pquantity=0;
	int pramount=0;
String s650=(String)session.getAttribute("Eml");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st4=con.createStatement();
ResultSet rs1=st4.executeQuery("select * from shoppingcart where email='"+s650+"' ");
while(rs1.next())
{
         pnumber = rs1.getString(1);
         prname = rs1.getString(2);
         prprice = rs1.getString(3);
		 pquantity = rs1.getInt(4);
		 pramount = rs1.getInt(5);
		 uname= rs1.getString(6);
Statement st2=con.createStatement();
st2.executeUpdate("insert into orderhistory(productnumber,productname,price,quantity,amount,uname,email) values('"+pnumber+"','"+prname+"','"+prprice+"','"+pquantity+"','"+pramount+"','"+uname+"','"+s650+"')");
st2.close();
}
Statement st=con.createStatement();
st.executeUpdate("delete from shoppingcart where email='"+s650+"' ");
st.close();
con.close();
}
%>
</head>
<body>


  <!---->
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Payment Status</h3>
		<h4><a href="#">Home</a><label>/</label>Payment Status</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- typography -->
<div class="typrography">
	 <div class="container">
	 <h2>Your Payment is Successful</h2>
		</br></br>
		<div class="grid_3 grid_5 wow fadeInRight animated" data-wow-delay=".5s">
			  <h3 class="t-button">
				<a href="orderhistory.jsp"><span class="label label-success">View your Order History</span></a>
			  </h3>
			  
	      </div>
	</div>
</div>

  
</body>
</html>