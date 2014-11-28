<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="refresh" content="3;url='/master'" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta http-equiv="cache-control" content="must-revalidate" />
<base target="_self" />
<title>Hello, world of Website!</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/image_page.css" />
<script type="text/javascript" charset="utf-8" src="js/common.js"></script>
<script type="text/javascript" charset="utf-8" src="js/fullscreenImg.js"></script>
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
	<div>
		<a href="master"> <img id="img" src="image/welcome.jpg"
			title="<s:text name='salutatory' />"
			alt="Welcome page, click to entry :)" /></a>
	</div>
	<script type="text/javascript">
		setFullScreen("img");
	</script>
</body>
</html>