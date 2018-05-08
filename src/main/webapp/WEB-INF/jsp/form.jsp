<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>表单</title>
	</head>
	<body>
		<form action="insert" method="post" enctype="multipart/form-data" >
			<input type="file" name="img" />
			<input type="text" name="pictureTitle" value="这是图片标题~">
			<input type="text" name="remark" value="这是图片详情~">
			<input type="submit" value="提交"/>
		</form>
		<form action="userImage" method="post" enctype="multipart/form-data" >
			<input type="file" name="img" />
			<input type="submit" value="提交"/>
		</form>
	</body>
</html>
