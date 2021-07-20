<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#name").blur(function(){
			var name = this.value;
			if (name == null || name == "") {
				$("#nameDiv").html("用户名不能为空！");
			} else{
				$.ajax({
					url: "userServlet",   //要提交的URL路径
					type: "post",
					data:"uname="+name,
					dataType:"json",
					success:callBack,
					error:function(d) {     //请求失败后要执行的代码
	                    //alert("用户名验证时出现错误，请稍后再试或与管理员联系！"+d);
					console.log(d);
	                }
				});
				//响应成功时的回调函数
				function callBack(data) {
					console.log(data);
					
				}
			}
		})
	})
</script>
</head>
<body>
	<form action="" id="form1">
		<table>
			<tr>
				<td>用 户 名：</td>
				<td><input type="text" name="name" id="name" />&nbsp;<font color="#c00fff">*</font></td>
				<td>
					<div id="nameDiv" style="display: inline"></div></td>
			</tr>
		</table>
	</form>
</body>
</html>