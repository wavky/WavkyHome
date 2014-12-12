<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta http-equiv="cache-control" content="max-age=60" />
<base target="_self" />
<title><s:text name="titleInterface" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/interface.css" />
<script type="text/javascript" charset="utf-8" src="js/common.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.parse.min.js"></script>
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
	<a name="top" id="anchorTop"/>
	<!-- 居中内容框 -->
	<div id="main">
		<!-- 页眉logo、导航栏 -->
		<div id="header">
			<div id="top">
				<div id="language">
					<a href="?request_locale=en" target="_self"><img
						src="image/us.png" alt="English" title="English" /></a> <a
						href="?request_locale=zh_CN" target="_self"><img
						src="image/cn.png" alt="中文" title="中文" /></a> <a
						href="?request_locale=ja_JP" target="_self"><img
						src="image/jp.png" alt="日本語" title="日本語" /></a>
				</div>
				<div id="visitor">
					<a href="http://info.flagcounter.com/eqvj"><img
						src="http://s03.flagcounter.com/count2/eqvj/bg_B2A36A/txt_000000/border_B2A36A/columns_5/maxflags_5/viewers_3/labels_0/pageviews_0/flags_0/"
						alt="vistor" /></a>
				</div>
			</div>
			<div class="logo" id="logoDIV">
				<img src="image/logo.png" />
				<s:if test='#session.isMaster'>
					<a href="logout" target="_self" title="exit"><img
						src="image/logout.png" /></a>
				</s:if>
				<s:else>
					<a href="login" target="_self" title="console"><img
						src="image/login.png" /></a>
				</s:else>
			</div>
			<div class="navigation" id="navigationDIV">
				<ul id="navigationLIST">
					<li><a class="radius" href="index" target="_self">Home</a></li>
					<li><a class="radius" href="lab" target="_self">Lab</a></li>
					<li><a class="currentTab radius" href="#" target="_self">API</a>
					</li>
					<li><a class="radius" href="master" target="_self">Master
							Info</a></li>
				</ul>
			</div>
		</div>

		<!-- 页面内容 -->
		<div id="content">
			<s:if test='#session.isMaster'>
				<a href="interfaceManager"><div id="edit">编辑模式</div></a>
			</s:if>
			<div id="interfaceList">
				<h1>
					<s:text name="interfaceList" />
				</h1>
				<ol>
					<s:iterator value="interfaceList">
						<li><a href="#interface<s:property value='id' />">
								<p class="description">
									<s:property value='description' />
								</p>
								<p class="url">
									<s:property value='url' />
								</p>
						</a></li>
					</s:iterator>
				</ol>
			</div>
			<div id="dictionaryList">
				<h1>
					<s:text name="interfaceDictionary" />
				</h1>
				<ol>
					<s:iterator value="interfaceList" id="interface">
						<li><a name="interface<s:property value='id' />">
								<p class="description">
									<s:property value='description' />
								</p>
								<p class="url">
									URL格式： ： <span class="url"><s:property value='url' /></span>
								</p>
						</a>
							<div class="dictionaryTableDiv">
								<table>
									<tr>
										<td>REQUEST</td>
										<td><div class="requestUEDiv">
												<s:property value='#interface.request' escape="false" />
											</div></td>
									</tr>
									<tr>
										<td>RESPONSE</td>
										<td><div class="responseUEDiv">
												<s:property value='#interface.response' escape="false" />
											</div></td>
									</tr>
								</table>
							</div></li>
					</s:iterator>
				</ol>
			</div>
			<div id="gotoTop">
				<a href="#top" title="top">
					<img src="image/top.png" />
				</a>
			</div>
		</div>
		<script type="text/javascript">
			uParse('.requestUEDiv', {
				rootPath : '/ueditor/'
			});
			uParse('.responseUEDiv', {
				rootPath : '/ueditor/'
			});
		</script>
		<jsp:include page="footer.jsp" />
		<!-- 备用浮动页脚 -->
		<div id="footer"></div>
	</div>
</body>
</html>
