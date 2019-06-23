<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>租车页面</title>
<link href="${ctx}/resource/common/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/resource/common/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctx}/resource/common/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="${ctx}/resource/common/css/product.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="${ctx}/resource/common/css/jquery.datetimepicker.css"   >
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<script type="text/javascript" src="${ctx}/resource/common/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/resource/common/js/easing.js"></script>
  <script src="${ctx}/resource/common/js/jquery.datetimepicker.js"></script>
				<!-- <script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script> -->
<!--slider-script-->
		<script src="${ctx}/resource/common/js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
</script>
</head>
<body>
<%@ include file="/common/menu.jsp" %>
		<!---->
		<div class="container">
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<!-- start product_slider -->
				    <div class="flexslider">
							        <!-- FlexSlider -->
										<script src="${ctx}/resource/common/js/imagezoom.js"></script>
										  <script defer src="${ctx}/resource/common/js/jquery.flexslider.js"></script>
										<link rel="stylesheet" href="${ctx}/resource/common/css/flexslider.css" type="text/css" media="screen" />
										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  });
										});
										</script>
									<!-- //FlexSlider-->

							  <ul class="slides">
								<li data-thumb="${car.carImage}">
									<div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="${car.carImage}">
									 <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="${car.carImage }">
								   <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="${car.carImage}">
								   <div class="thumb-image"> <img src="${car.carImage }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							  </ul>
							<div class="clearfix"></div>
					</div>
				<!-- end product_slider -->
					</div>	
					<div class="col-md-7 single-top-in">
					<form id="cartForm" action="${ctx}/rent_exRentCar.do" method="post" id="hh" >
						<input type="hidden" name="carId" value="${car.id }"/>
						<div class="single-para">
						    <h3>类型：<c:if test="${car.flag==1}"><span style="color: red;">商家租车</span></c:if><c:if test="${car.flag==2}"><span style="color: red;">个人租车</span></c:if></h3>
						    <p>汽车编号：&nbsp;&nbsp;${car.id}</p>
							<h4>车名：&nbsp;&nbsp;${car.carType}</h4>
							<h4>汽车价格：&nbsp;&nbsp;￥${car.carPrice}</h4>
<!-- 							<h4>汽车价格区间： -->
<!-- 							<select name="a" id="a" onchange="change(this);"> -->
<!-- 							   <option value ="">请选择</option> -->
<!-- 							  <option value ="100">5万以下</option> -->
<!-- 							  <option value ="200">5万-10万</option> -->
<!-- 							  </select>  </h4> -->
							<div class="para-grid">
								<span  class="add-to">日租价格：&nbsp;￥${car.dailyPrice}
							 </span>
							 <button type="submit" class="hvr-shutter-in-vertical cart-to" id="save" style="margin-left: 90px;">确认租车</button>
								<div class="clearfix"></div>
							 </div>
                           <h4>汽车品牌 ：&nbsp;&nbsp;${car.carCategory.cname}</h4>
                           <h4>车牌号 ：&nbsp;&nbsp;${car.carNumber}</h4>
                           <h4>汽油型号 ：&nbsp;&nbsp;${car.carOilType}</h4>
                           <h4>行驶里程 ：&nbsp;&nbsp;${car.distance}</h4>
                             <h4><c:if test="${car.flag==2}">租车联系人：<span style="color: red;">${car.user.realName}</span>
                            &nbsp;手机号码：<span style="color: red;">${car.user.phone}</span>
                           </c:if></h4>
                           <h4>租车时间 ：<input type="text" name="rentTime" id="rentTime" value="${rentTime}"/></h4>
                           <br/>
                           <h4>还车时间 ：<input type="text" name="returnTime" id="returnTime" value="${returnTime}"/></h4>
						   <h4>取车方式 ：<input type="radio" name="status" value="1"/>车主送车
						     <input type="radio" name="status" value="2"/>自己取车
						   </h4>
						   <div> 
				</div>		
						</div>
					</form>
					</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>
		<!---->
<%@ include file="/common/footer.jsp" %>	
</body>
<script type="text/javascript">

//加载日期插件
$('#rentTime').datetimepicker({
	timepicker:false,
	format:'Y-m-d',
	formatDate:'Y-m-d',
	lang:'ch',
});

//加载日期插件
$('#returnTime').datetimepicker({
	timepicker:false,
	format:'Y-m-d',
	formatDate:'Y-m-d',
	lang:'ch',
});

function change(ele)
{
  console.log(ele.selectedIndex);
  console.log($(ele).select())
  $("#dailyPrice").val($(ele).find(':selected').val())

 
}
</script>
</html>