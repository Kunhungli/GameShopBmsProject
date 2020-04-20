<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	#tab2 tr td {
		border: 1px solid black;
	}
	.pImg {
		width: 400px;
		height: 300px;
	}
</style>
</head>
<body>
<div id="testImg"></div>
<table id="tab2"></table>
<button onClick=btnClick()>Click</button>
<script type="text/javascript">
		$.ajax({
			url: "product.all/json",
			type: "GET",
			dataType: "json",
			success(jdata){
				let txt = "<tr>" + 
								"<td>Id" + 
								"<td>Name" + 
								"<td>Price" + 
								"<td>Stock" + 
								"<td>Tag" + 
								"<td>Img" +
								"<td>uplTime" + 
								"<td>dwlTime";
				let count = jdata.length;
				for(let i=0;i<count;i++){
					txt += "<tr>" +
							    "<td>" + jdata[i].productId +
								"<td>" + jdata[i].productName + 
								"<td>" + jdata[i].price + 
								"<td>" + jdata[i].stock + 
								"<td>" + jdata[i].tag + 
								"<td>" + "<img class='pImg' src='data:image/jpeg;base64," + jdata[i].productImage + "'>" +
								"<td>" + jdata[i].uploadTime + 
								"<td>" + jdata[i].downTime;
					document.getElementById('tab2').innerHTML = txt;
				}
			}
		})


</script>
</body>
</html>