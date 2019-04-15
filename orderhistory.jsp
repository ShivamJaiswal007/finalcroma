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

</head>
<body>


  <!---->
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Order History</h3>
		<h4><a href="#">Home</a><label>/</label>Order History</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- typography -->
<div class="typrography">
	 <div class="container">
		<section id="tables">
          <div class="bs-docs-example">
            <table class="table table-hover">
              <thead>
                <tr>
				  <th>S.No</th>
				  <th>Product Number</th>
                  <th>Product Name</th>
                  <th>Price</th>
                  <th>Quantity</th>
                  <th>Total Amount</th>
                </tr>
              </thead>
              <tbody>
			  <%
{
int sr=1;
String a101=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st4=con.createStatement();
ResultSet rs1=st4.executeQuery("select * from orderhistory where email='"+a101+"' ");

	while(rs1.next())
	{
         String pnumber = rs1.getString(1);
         String prname = rs1.getString(2);
         String prprice = rs1.getString(3);
		 int pquantity = rs1.getInt(4);
		 int pramount = rs1.getInt(5);
%>
                <tr>
                  <td><%out.print(sr);%></td>
                  <td><%out.print(pnumber);%></td>
				  <td><%out.print(prname);%></td>
				  <td><%out.print(prprice);%></td>
                  <td><%out.print(pquantity);%></td>
                  <td><%out.print(pramount);%></td>
                </tr>
	<%
	sr=sr+1;
}
st4.close();
con.close();
}
%>
              </tbody>
            </table>
          </div>
		</section>
		</br></br>
		<div class="grid_3 grid_5 wow fadeInRight animated" data-wow-delay=".5s">
			  <h3 class="t-button">
				<a href="dashboardre.jsp"><span class="label label-success">Click Here to go to Homepage</span></a>
			  </h3>
			  
	      </div>
	</div>
</div>

  
</body>
</html>