<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<s:i18n name="master">
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="keywords" content="Wavky, Wavky Wand, WavkyHome" />
<meta http-equiv="cache-control" content="must-revalidate" />
<base target="_blank" />
<title><s:text name="titleMaster" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/master_info.css" />
<script type="text/javascript" charset="utf-8" src="js/common.js"></script>
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
	</head>
	<body>
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
						<li><a class="radius" href="api" target="_self">API</a>
						</li>
						<li><a class="currentTab radius" href="#" target="_self">Master
								Info</a></li>
					</ul>
				</div>
			</div>

			<!-- 页面内容 -->
			<div id="content">
				<s:if test='#session.isMaster'>
					<a href="updateAccount" target="_self"><div id="edit">修改密码</div></a>
				</s:if>
				<div id="personalInfo">
					<div id="masterHead">
						<img src="image/head.jpg" />
					</div>
					<div id="infoList">
						<table>
							<tr>
								<td><s:text name="roleName" /> ：</td>
								<td><s:text name="wavky" /></td>
							</tr>
							<tr>
								<td><s:text name="EXP" /> ：</td>
								<td>LV.25</td>
							</tr>
							<tr>
								<td><s:text name="mail" /> ：</td>
								<td><a href="mailto:master@wavky.com" target="_self">master@wavky.com</a></td>
							</tr>
							<tr>
								<td>GitHub：</td>
								<td><a href="https://github.com/wavky">wavky</a></td>
							</tr>
							<tr>
								<td><s:text name="blog" /> ：</td>
								<td><a href="http://www.cnblogs.com/wavky/">wavky</a></td>
							</tr>
							<tr>
								<td><s:text name="producer" /> ：</td>
								<td><a href="http://www.bnuz.edu.cn/"> <s:text
											name="university" />
								</a></td>
							</tr>
						</table>
					</div>
				</div>
				<div id="abilityInfo">
					<table id="platforms">
						<caption>
							<h1>
								<s:text name="skill" />
							</h1>
						</caption>
						<tr>
							<td id="android"><h2>Android</h2>
								<div>
									<s:text name="androidIntroduction" />
									<hr />
									<ul>
										<li><s:text name="androidListItem1" /></li>
										<li><s:text name="androidListItem2" /></li>
										<li><s:text name="androidListItem3" /></li>
									</ul>
								</div></td>
							<td id="javaee"><h2>JaveEE</h2>
								<div>
									<s:text name="javaEEIntroduction" />
									<hr />
									<ul>
										<li><s:text name="javaEEListItem1" /></li>
										<li><s:text name="javaEEListItem2" /></li>
										<li><s:text name="javaEEListItem3" /></li>
									</ul>
								</div></td>
							<td id="swing"><h2>Swing</h2>
								<div>
									<s:text name="swingIntroduction" />
									<hr />
									<ul>
										<li><s:text name="swingListItem1" /></li>
										<li><s:text name="swingListItem2" /></li>
										<li><s:text name="swingListItem3" /></li>
									</ul>
								</div></td>
						</tr>
					</table>
					<div id="java">
						<h1>
							<s:text name="javaTitle" />
						</h1>
						<ul>
							<li><s:text name="javaListItem1" /></li>
							<li><s:text name="javaListItem2" /></li>
							<li><s:text name="javaListItem3" /></li>
						</ul>
						<p>
							<s:text name="javaSubTitle" />
						</p>
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp" />
			<!-- 备用浮动页脚 -->
			<div id="footer"></div>
		</div>
	</body>
</s:i18n>
</html>
