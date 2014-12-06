<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base target="_blank" />
<title><s:text name="titleLab" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/project_detail.css" />
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.parse.min.js"></script>
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
	<!-- 居中内容框 -->
	<div id="main">
		<!-- 页眉logo、导航栏 -->
		<div id="header">
			<div id="top">
				<div id="language">
					<a href="showProject?targetProjectId=<s:property value='targetProjectId'/>&request_locale=en" target="_self"><img
						src="image/us.png" alt="English" title="English" /></a> <a
						href="showProject?targetProjectId=<s:property value='targetProjectId'/>&request_locale=zh_CN" target="_self"><img
						src="image/cn.png" alt="中文" title="中文" /></a> <a
						href="showProject?targetProjectId=<s:property value='targetProjectId'/>&request_locale=ja_JP" target="_self"><img
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
					<li><a class="radius" href="api" target="_self">API</a></li>
					<li><a class="radius" href="master" target="_self">Master
							Info</a></li>
				</ul>
			</div>
		</div>

		<!-- 页面内容 -->
		<div id="content">
			<s:if test='#session.isMaster'>
				<a href="projectManager" target="_self"><div id="edit">编辑模式</div></a>
			</s:if>
			<div id="projectInfo">
				<div id="projectTitle">
					<h1>
						<s:property value="title" />
					</h1>
					<hr />
				</div>
				<div id="snapshot">
					<img id="snapshotImg" src="<s:property value='snapshotAddr' />" />
				</div>
				<div id="infoList">
					<table>
						<tr>
							<td><s:text name="platform" /></td>
							<td><s:property value='type' /></td>
						</tr>
						<tr>
							<td><s:text name="releaseDate" /></td>
							<td><s:property value='releaseDateForShowing' /></td>
						</tr>
						<tr>
							<td><s:text name="updatingDate" /></td>
							<td><s:property value='updatingDate' /></td>
						</tr>
						<tr>
							<td><s:text name="version" /></td>
							<td><s:property value='version' /></td>
						</tr>
						<tr id="buttonRow">
							<td colspan="2"><s:if test="! downloadAddr.isEmpty()">
									<a id="downloadLink" href="/downloadProject?targetProjectId=<s:property value='targetProjectId'/>" target="_self"><img
										src="image/download_button.png" /></a>
								</s:if>
								<s:if test="! sourceLinkAddr.isEmpty()">
									<a id="sourceLink" href="<s:property value='sourceLinkAddr' />"><img
										src="image/source_button.png" /></a>
								</s:if></td>
						</tr>
						<%--
							<tr>
								<td><s:text name="price" /> ：</td>
								<td><s:property value='priceForShowing' /> RMB</td>
							</tr>
							<tr>
								<td></td>
								<td><a id="buyLink" href="<s:property value='downloadAddr' />"><img src="image/download_button.png"/></a><a id="donateLink" href="<s:property value='sourceAddr' />"><img src="image/source_button.png"/></a></td>
							</tr>
							--%>
					</table>
				</div>
			</div>
			<div id="introduction">
				<s:property value="introduction" escape="false" />
			</div>
			<script type="text/javascript">
				uParse('#introduction', {
					rootPath : '/ueditor/'
				});
			</script>
		</div>
		<jsp:include page="footer.jsp" />
		<!-- 备用浮动页脚 -->
		<div id="footer"></div>
	</div>
</body>
</html>
