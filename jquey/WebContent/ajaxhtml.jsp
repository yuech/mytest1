<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
$.ajax({
	url: "toHtml",   //要提交的URL路径
	type: "post",
	data:{method:'toHtml',id:1},
	dataType:"html",
	success:function(data){
		$("#toHtml").html(data);
	},
	error:function(d) {     //请求失败后要执行的代码
        //alert("用户名验证时出现错误，请稍后再试或与管理员联系！"+d);
	console.log(d);
    }
});
</script>
</head>
<body>
	<div id="toHtml">
	
	</div>
</body>
</html>