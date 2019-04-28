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

<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 >Croma<span>The Best E-Commerce Site</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">

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
							<li ><a href="" class="hyper "><span><b><b></span></a></li>	
				    </div>
					</nav>
				</div>
					
				</div>			
</div>
  <!---->

     <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Profile</h3>
		<h4><a href="dashboardre.jsp">Home</a><label>/</label>Profile</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->
<div class="typrography">
	 <div class="container">
	  <div class="col-md-12">
          <div class="page-header">
            <h3 class="bars">Your Profile</h3>
          </div>
            
            <div class="horizontal-tab">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab" aria-expanded="true">General Information</a></li>
                <li class=""><a href="#tab2" data-toggle="tab" aria-expanded="false">Address</a></li>
                <li class=""><a href="#tab3" data-toggle="tab" aria-expanded="false">Additional Details</a></li>
                <li class=""><a href="#tab4" data-toggle="tab" aria-expanded="false">Extras</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active in" id="tab1">
                  <div class="row">
                    <div class="col-md-12">
                      <p>Username : <%String s100=(String)session.getAttribute("usernamedb");
										out.println(s100);%></br>
					     E-Mail : <%String s101=(String)session.getAttribute("email");
										out.println(s101);%></br>
						 First Name : <%String s102=(String)session.getAttribute("firstname");
										out.println(s102);%></br>
						 Last Name : <%String s103=(String)session.getAttribute("lastname");
										out.println(s103);%></br></p>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="tab2">
                  <div class="row">
                    <div class="col-md-12">
                     <p> Address : <%String s104=(String)session.getAttribute("address");
										out.println(s104);%></br>
					     City : <%String s105=(String)session.getAttribute("city");
										out.println(s105);%></br>
						 Pin Code : <%String s106=(String)session.getAttribute("pin");
						                out.println(s106);%></br>
						 State : <%String s107=(String)session.getAttribute("state");
										out.println(s107);%></br></p>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="tab3">
                  <div class="row">
                    <div class="col-md-12">
                     <p>Username : </br>
					     E-Mail : </br>
						 First Name : </br>
						 Last Name : </br></p>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="tab4">
                  <div class="row">
                    <div class="col-md-12">
                      <p>Username : </br>
					     E-Mail : </br>
						 First Name : </br>
						 Last Name : </br></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <div class="clearfix"></div>
	</div>
</div>
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2 ><a href="">Croma<span>The Best E-Commerce Site</span></a></h2>
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
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {
    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }
    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });
  });
  </script>

</body>
</html>