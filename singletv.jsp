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
<link href="css/bootstrap.css?version=2" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css?version=20" rel='stylesheet' type='text/css' />
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
<%
{
String s500=request.getParameter("value");
String u51="";
String u52="";
String u53="";
String u54="";
String u55="";
String u56="";
String u57="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from ptelevision where priority='"+s500+"' ");
while(rs.next())
{
u51=rs.getString("pname");
u52=rs.getString("pnumber");
u53=rs.getString("pquantity");
u54=rs.getString("pmanufacturer");
u55=rs.getString("pprice");
u56=rs.getString("pdetails");
u57=rs.getString("priority");
}
session.setAttribute("Pname",u51);
session.setAttribute("Pnumber",u52);
session.setAttribute("Pquantity",u53);
session.setAttribute("Pmanufacturer",u54);
session.setAttribute("Pprice",u55);
session.setAttribute("Pdetails",u56);
session.setAttribute("Priority",u57);
st.close();
con.close();
}
%>
<body>

<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="#">Croma<span>The Best E-Commerce Site</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					
					<li><a href="orderhistory.jsp" ><i class="fa fa-file-text-o" aria-hidden="true"></i>Order History</a></li>
				
				</ul>	
			</div>
			
			
		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li ><a href="#" class="hyper "><span>Home</span></a></li>	
							
							<li  class="dropdown">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Mobiles<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Mi</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Realme</a></li>
												<li><a href="mobiles.jsp"> <i class="fa fa-angle-right" aria-hidden="true"></i>OPPO</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Apple</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Samsung</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Lenovo</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>LG</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Nokia</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Vivo</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Asus</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Honor</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Motorola</a></li>
												<li><a href="mobiles.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Infinix</a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="mobiles.jsp"><img src="images/mobile.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
							
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span> Television <b class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Mi </a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Thomson</a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Samsung</a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Micromax</a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="television.jsp"> <i class="fa fa-angle-right" aria-hidden="true"></i>Official Andriod TVs </a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>LG</a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Sony</a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Vu</a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Smart & Ultra HD </a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>ONIDA </a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Panasonic </a></li>
												<li><a href="television.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Blaupunkt </a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="television.jsp"><img src="images/tv.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span>Furniture<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Beds</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Sofa</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Dining Table & sets</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Office Chairs</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Chairs</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Bean Bags</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Mattresses</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Drawers</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Shoe Racks</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Tables</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Kids Furniture</a></li>
												<li><a href="furniture.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Wardrobes </a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="furniture.jsp"><img src="images/furniture.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span><font color="black"> Sports & Books <b class="caret"></b></font></span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Entrance Exam </a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Academic </a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Indian Writing </a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Biographies</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Business </a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Indian language</a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Children</a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i> Non=Fiction </a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Cricket</a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Badminton</a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Cycling</a></li>
												<li><a href="book.jsp"><i class="fa fa-angle-right" aria-hidden="true"></i>Swimming </a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="book.jsp"><img src="images/book.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							<li><a href="profile.jsp" class="hyper"> <span>My Profile</span></a></li>
							<li><a href="contact.html" class="hyper"><span>Contact Us</span></a></li>
						</ul>
					</div>
					</nav>
					 <div class="cart" >
					
						<a href="viewcart.jsp"><span class="fa fa-shopping-cart my-cart-icon"><span class=""></span></span></a>
					</div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Product Info</h3>
		<h4><a href="#">Home</a><label>/</label>Product</h4>
		<div class="clearfix"> </div>
	</div>
</div>
		<div class="single">
			<div class="container">
						<div class="single-top-main">
	   		<div class="col-md-5 single-top">
	   		<div class="single-w3agile">
							
<div id="picture-frame">
			<img src="images/Television/<%=session.getAttribute("Priority")%>.png" data-src="images/Television/<%=session.getAttribute("Priority")%>.png" alt="" class="img-responsive"/>
		</div>
										<script src="js/jquery.zoomtoo.js"></script>
								<script>
			$(function() {
				$("#picture-frame").zoomToo({
					magnify: 2
				});
			});
		</script>
		
		
		
			</div>
			</div>
			<div class="col-md-7 single-top-left ">
								<div class="single-right">
				<h2><%String s501=(String)session.getAttribute("Pname");
										out.println(s501);%></h2>
				
					
				 <div class="pr-single">
				  <p class="reduced">Product No:<%String s504=(String)session.getAttribute("Pnumber");
										out.println(s504);%></br>Price:<%String s502=(String)session.getAttribute("Pprice");
										out.println(s502);%></p>
				</div>
				<div class="block block-w3">
					Product Manufacturer:<%String s505=(String)session.getAttribute("Pmanufacturer");
										out.println(s505);%>
				</div>
				<div class="block block-w3">
					Product left in Stock:<%String s506=(String)session.getAttribute("Pquantity");
										out.println(s506);%>
				</div>
				<p class="in-pa"> <%String s503=(String)session.getAttribute("Pdetails");
										out.println(s503);%> </p>
			   	
				
					<div class="add add-3"><a href="cart.jsp">
										   <button class="btn btn-danger my-cart-btn my-cart-b" >Add to Cart</button>
										</a>
										</div>
				
				 
			   
			<div class="clearfix"> </div>
			</div>
		 

			</div>
		   <div class="clearfix"> </div>
	   </div>	
				 
				
	</div>
</div>
		<!---->

<!--footer-->
<div class="footer">
	<div class="container">
		<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2 ><a href="#">Croma<span>The Best E-Commerce Site</span></a></h2>
				<p class="fo-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
				
				<div class=" address">
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-home" aria-hidden="true"></i>Gorakhpur</p>
					</div>
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-phone" aria-hidden="true"></i>0551-220016</p>	
					</div>
					<div class="col-md-4 fo-grid1">
						<p><a href="mailto:contact@croma.co.in"><i class="fa fa-envelope-o" aria-hidden="true"></i>contact@croma.co.in</a></p>
					</div>
					<div class="clearfix"></div>
					
					</div>
			</div>
		<div class="copy-right">
			<p> &copy; 2019 Croma. All Rights Reserved | Design by Team Arrow</a></p>
		</div>
	</div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>

</body>
</html>