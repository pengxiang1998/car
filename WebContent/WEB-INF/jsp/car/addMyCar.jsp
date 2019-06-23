<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="../../../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布我要出租的车</title>
<link href="${ctx}/resource/common/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/resource/common/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctx}/resource/common/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!--//fonts-->
<script type="text/javascript" src="${ctx}/resource/common/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/resource/common/js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
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
</head>
<body>
<%@ include file="/common/menu.jsp" %>
<div class="container">
<form action="car_exMyAdd.do" method="post" class="definewidth m20" id="hh" enctype="multipart/form-data">
	<div class="account">
			<h2 class="account-in">我的发布</h2>
				<div> 
					<span>汽车型号</span>
					<input type="text" name="carType" id="carType" value="${car.carType}"/>
				</div>
				<div>
				<span>汽车品牌</span>
				<select name="carCategory.id" >
                   <c:forEach  items="${carCatList}" var="cl" varStatus="l">
                   <option value="${cl.id }">${cl.cname }</option>
                  </c:forEach>
                 </select>
				</div>
				<div> 
					<span>车牌号&nbsp;</span>
					<input type="text" name="carNumber" id="carNumber" value="${car.carNumber}"/>
				</div>		
				<div> 
					<span>汽油型号</span>
					<input type="text" name="carOilType" id="carOilType" value="${car.carOilType}"/>
				</div>	
				<div> 
					<span>汽车价格</span>
					<input type="text" name="carPrice" id="carPrice" value="${car.carPrice}"/>
				</div>	
				<div> 
					<span>价格区间</span>
					  <select name="a" id="a" onchange="change(this);">
					   <option value ="">请选择</option>
					  <option value ="100">5万以下</option>
					  <option value ="200">5万-10万</option>
					  </select>
				</div>	
				<div> 
					<span>日租价格</span>
					<input type="text" name="dailyPrice" id="dailyPrice" value="${car.dailyPrice}"/>
				</div>		
				<div> 
					<span>行驶里程</span>
					<input type="text" name="distance" id="distance" value="${car.distance}"/>
				</div>	
			    <div> 
					<span>图片&nbsp;&nbsp;</span>
					<input type="file" name="file" id="" value="${car.carImage}"/ style="display: inline;">
				</div>	
				<div> 
					<span>是否推荐</span>
					<input type="radio" name="isRecommend" value="1"/>是
					 <input type="radio" name="isRecommend" value="0"/>否
				</div>	
				<div> 
					<span>是否优惠</span>
					<input type="radio" name="isDiscount" value="1"/>是
					 <input type="radio" name="isDiscount" value="0"/>否
				</div>			
			 <input type="submit" value="保存" style="margin-left: 129px;"/> 
		</div>
	</form>
	</div>
 <div class="footer" style="position: fixed;bottom: 0px;width: 100%">
		<p class="footer-class">Copyright &copy; 2016.Company name All rights reserved.</p>
		<script type="text/javascript">
					$(document).ready(function() {
						$().UItoTop({ easingType: 'easeOutQuart' });
						
					});
				</script>
			<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>	
</body>
 <script>
 
	 //跳转到修改密码页面
	 function updatePassWord(){
		 location.href='${ctx}/user_updatePassWord.do';    
	 }
	 
	//修改个人信息
	 function updateMyInfo(){
		 location.href='${ctx}/user_updateMyInfo.do';      
	 }
 
	 function change(ele)
	    {
	      console.log(ele.selectedIndex);
	      console.log($(ele).select())
	      $("#dailyPrice").val($(ele).find(':selected').val())
	    }
   
	</script>
</html>