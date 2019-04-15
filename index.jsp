<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Croma-The Best E-Commerce Site</title>
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
<link href="css/style.css?version=4" rel='stylesheet' type='text/css' />
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
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="index.jsp">Croma<span>The Best E-Commerce Site</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<li><a href="login.html" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
					<li><a href="register.html" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					<li><a href="guestlogin.html" ><i class="fa fa-file-text-o" aria-hidden="true"></i>Order History</a></li>
				</ul>	
			</div>
			
			<div class="header-ri">

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
							<li class=" active"><a href="index.jsp" class="hyper "><span><font color="black">Home</font></span></a></li>	
							
							<li class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span><font color="black"> Mobiles <b class="caret"></b></font></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Mi </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Realme </a></li>
												<li><a href="guestlogin.html"> <i class="fa fa-angle-right" aria-hidden="true"></i> OPPO </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Apple </a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Samsung </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Lenovo </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> LG </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Nokia </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Vivo </a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Asus </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Honor </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Motorola  </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Infinix </a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="guestlogin.html"><img src="images/mobile.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
							
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span><font color="black"> Television<b class="caret"></b></font></span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Mi </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Thomson </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Samsung </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Micromax </a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"> <i class="fa fa-angle-right" aria-hidden="true"></i> Official Andriod TVs </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> LG </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Sony </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Vu </a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Smart & Ultra HD </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>ONIDA</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Panasonic</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Blaupunkt</a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="guestlogin.html"><img src="images/tv.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							<li class="dropdown">
							
								<a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span><font color="black"> Furniture <b class="caret"></b></font></span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Beds </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Sofa </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Dining Table & sets </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Office Chairs </a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"> <i class="fa fa-angle-right" aria-hidden="true"></i> Chairs </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Bean Bags </a></li>
												<li><a href="guestlogin.htmlp"><i class="fa fa-angle-right" aria-hidden="true"></i> Mattresses </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Drawers </a></li>
										
											</ul>
											
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Shoe Racks </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tables</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Kids Furniture</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Wardrobes</a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="guestlogin.html"><img src="images/furniture.jpg" class="img-responsive" alt=""></a>
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
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Entrance Exam </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Academic </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Indian Writing </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Biographies</a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
											
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Business </a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Indian language</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Children</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Non=Fiction </a></li>
										
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Cricket</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Badminton</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Cycling</a></li>
												<li><a href="guestlogin.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Swimming </a></li>
										
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="guestlogin.html"><img src="images/book.jpg" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							<li><a href="guestlogin.html" class="hyper"> <span><font color="black"> My Profile </font></span></a></li>
							<li><a href="contact.html" class="hyper"><span><font color="black">Contact Us</font></span></a></li>
						</ul>
					</div>
					</nav>
					<div class="cart" >
					
						<a href="guestlogin.html"><span class="fa fa-shopping-cart my-cart-icon"><span class=""></span></span></a>
					</div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!---->
<div style="width: 100%; height: 400px;", data-vide-bg="video/videoplaybackapple", data-vide-options="resizing: false">
</div>

    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/jquery.vide.min.js"></script>

<!--content-->
<!--content-->
<div class="content-top ">
	<div class="container ">
		<div class="spec ">
			<h3>Special Offers</h3>
			<div class="ser-t">
				<b></b>
				<span><i></i></span>
				<b class="line"></b>
			</div>
		</div>
			<div class="tab-head ">
				<nav class="nav-sidebar">
					<ul class="nav tabs ">
					  <li class="active"><a href="#tab1" data-toggle="tab">Mobiles</a></li>
					  <li class=""><a href="#tab2" data-toggle="tab">Television</a></li> 
					  <li class=""><a href="#tab3" data-toggle="tab">Furniture</a></li>  
					  <li class=""><a href="#tab4" data-toggle="tab">Books and Sports</a></li>
					</ul>
				</nav>
				<div class=" tab-content tab-content-t ">
					<div class="tab-pane active text-style" id="tab1">
						<div class=" con-w3l">
						<%
{
	int sr=1;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from pmobile");
while(rs.next())
{
         String pname = rs.getString("pname");
         String pprice = rs.getString("pprice");
         String pmanufacturer = rs.getString("pmanufacturer");
%>
							<div class="col-md-3 pro-1">
							
								<div class="col-m">
								<div data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="images/Mobile/<%=sr%>.jpeg" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div>
									</div>
									<div class="mid-1">
										<div class="women">
											<h6><a href="guestlogin.html"><%out.print(pname);%></a></h6>							
											<p >Price:&nbsp;<%out.print(pprice);%></p>
										    <p >Manufacturer:&nbsp;<%out.print(pmanufacturer);%></p>
										</div>
									</div>
								</div>
							</div>
		<%sr=sr+1;					}
st.close();
con.close();
}%>
							
							<div class="clearfix"></div>
						 </div>
					</div>
					<div class="tab-pane  text-style" id="tab2">
						<div class=" con-w3l">
						
							<%
{
	int sr=1;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from ptelevision");
while(rs.next())
{
         String pname = rs.getString("pname");
         String pprice = rs.getString("pprice");
         String pmanufacturer = rs.getString("pmanufacturer");
%>
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="images/Television/<%=sr%>.png" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="guestlogin.html"><%out.print(pname);%></a></h6>							
											<p >Price:&nbsp;<%out.print(pprice);%></p>
										    <p >Manufacturer:&nbsp;<%out.print(pmanufacturer);%></p>
										</div>
									</div>
								</div>
							</div>
						<%sr=sr+1;					}
st.close();
con.close();
}%>
							
							
							
							<div class="clearfix"></div>
						 </div>		  
					</div>
					<div class="tab-pane  text-style" id="tab3">
						<div class=" con-w3l">
						<%
{
	int sr=1;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from pfurniture");
while(rs.next())
{
         String pname = rs.getString("pname");
         String pprice = rs.getString("pprice");
         String pmanufacturer = rs.getString("pmanufacturer");
%>
				<div class=" con-w3l agileinf">
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="images/Furniture/<%=sr%>.png" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="guestlogin.html"><%out.print(pname);%></a></h6>							
											<p >Price:&nbsp;<%out.print(pprice);%></p>
										    <p >Manufacturer:&nbsp;<%out.print(pmanufacturer);%></p>
										</div>
									</div>
								</div>
							</div>
<%sr=sr+1;					}
st.close();
con.close();
}%>
							
							
							
							<div class="clearfix"></div>
						 </div>		  
					</div>
					</div>
					<div class="tab-pane text-style" id="tab4">
							<div class=" con-w3l">
							
							<%
{
	int sr=1;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from psb");
while(rs.next())
{
         String pname = rs.getString("pname");
         String pprice = rs.getString("pprice");
         String pmanufacturer = rs.getString("pmanufacturer");
%>
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="images/BS/<%=sr%>.png" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="guestlogin.html"><%out.print(pname);%></a></h6>							
											<p >Price:&nbsp;<%out.print(pprice);%></p>
										    <p >Manufacturer:&nbsp;<%out.print(pmanufacturer);%></p>
										</div>
									</div>
								</div>
							</div>
<%sr=sr+1;					}
st.close();
con.close();
}%>
							
							
							
							<div class="clearfix"></div>
						 </div>
					</div>
				</div>
			</div>
		
	</div>
	</div>
	</div>


<!--footer-->
<div class="footer">
	<div class="container">
			<div class="footer-bottom">
				<h2 ><a href="index.jsp">Croma<span>The Best E-Commerce Site</span></a></h2>
				<p class="fo-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-home" aria-hidden="true"></i>Gorakhpur</p>
					</div>
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-phone" aria-hidden="true"></i>0551-220016</p>	
					</div>
					<div class="col-md-4 fo-grid1">
						<p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>contact@croma.co.in</a></p>
					</div>
					<div class="clearfix"></div>
					
					</div>
			</div>
		<div class="copy-right">
			<p> &copy; 2019 Croma. All Rights Reserved | Design by Team Arrow</p>
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