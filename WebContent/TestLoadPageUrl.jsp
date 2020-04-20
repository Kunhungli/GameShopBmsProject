<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div id="main"></div>
<button id="btn">btn</button>
<script type="text/javascript">
$("#btn").click(function(){
	$("#main").load("TestLoadPage.jsp");
})
	
</script>
</body>
</html>