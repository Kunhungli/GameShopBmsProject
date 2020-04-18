<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	img {
		width: 300px;
		height: 200px;
	}
</style>
</head>
<body>
<form action="product.new" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" >
<table>
	<tr>
		<td>Name
		<td><input type="text" name="pName">
	<tr>
		<td>Price
		<td><input type="text" name="price">
	<tr>
		<td>tag
		<td><input type="text" name="tag">
	<tr>
		<td>file
		<td><img id="Preview" src="defaultImg.jpg">
		    <input id="file" type="file" name="file" hidden="true">
	<tr>
		<td>uplTime
		<td><input type="text" name="uplTime">
	<tr>
		<td>dwlTime
		<td><input type="text" name="dwlTime">
	<tr>
	    <td colspan="2"><input type="submit" value="Upload"> Press here to upload the file!	
</table> 
</form>

<script type="text/javascript">
	$('#file').change(function() {
	  var file = $('#file')[0].files[0];
	  var reader = new FileReader;
	  reader.onload = function(e) {
	    $('#Preview').attr('src', e.target.result);
	  };
	  reader.readAsDataURL(file);
	});

	$("#Preview").click(function(){
			$("#file").click();
		})
</script>
</body>
</html>