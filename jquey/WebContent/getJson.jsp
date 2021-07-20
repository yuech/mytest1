<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<div id="stulist">
		这是ajax加载数据
	</div>
	<div>
		这是同步加载数据:
		${list[0].name}
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		initList();
	});
	function initList(){
		$.getJSON("getJSON?method=list","",function(data){
			console.log(data);
			var mytable = $("<table border=1><tr><td>å§å</td><td>å¹´é¾</td></tr>");
			for(var i=0;i<data.length;i++){
				mytable.append("<tr><td>"+data[i].name+"</td><td>"+data[i].age+"</td></tr>");
			}
			mytable.append("</table>");
			$("#stulist").html(mytable);
		});
	}
</script>
</html>
