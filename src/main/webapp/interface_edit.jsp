<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base target="_self" />
<title><s:text name="titleInterface" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/interface_edit.css" />
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
	<!-- 居中内容框 -->
	<div id="main">
		<!-- 页眉logo、导航栏 -->
		<div id="header">
			<div id="top">
				<div id="language">
					<a href="?request_locale=en_US" target="_self"><img
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
					<li><a class="currentTab radius" href="#" target="_self">Interface</a>
					</li>
					<li><a class="radius" href="master" target="_self">Master
							Info</a></li>
				</ul>
			</div>
		</div>

		<!-- 页面内容 -->
		<div id="content">
			<s:if test='#session.isMaster'>
				<a href="interface">
					<div id="edit">退出编辑</div>
			</s:if>
			</a>
			<div id="addInterface">
				<form action="lab/edit/addInterface" method="post">
					<table>
						<tr>
							<td>用途描述：</td>
							<td><input type="text" class="text" /></td>
						</tr>
						<tr>
							<td>接口形式：</td>
							<td><input type="text" class="text" /></td>
						</tr>
						<tr>
							<td>请求格式：</td>
							<td><textarea rows="5"></textarea></td>
						</tr>
						<tr>
							<td>响应格式：</td>
							<td><textarea rows="5"></textarea></td>
						</tr>
					</table>
					<button type="submit" id="submit" title="Add Interface">
						<img src="image/add.png" />
					</button>
				</form>
			</div>
			<div id="interfaceList">
				<h1>
					<s:text name="interfaceList" />
				</h1>
				<ol>
					<div class="delete">
						<a href="interface/edit/delete" title="delete"><img
							src="image/garbage.png" /></a>
					</div>
					<li><a href="#interfaceA">
							<p class="explanation">获取ID</p>
							<p class="entity">getId?scope=all</p>
					</a></li>
					<div class="delete">
						<a href="interface/edit/delete" title="delete"><img
							src="image/garbage.png" /></a>
					</div>
					<li><a href="#interfaceB">
							<p class="explanation">接口2很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长中华人民共和国很长很长</p>
							<p class="entity">getId?scope=all</p>
					</a></li>
					<div class="delete">
						<a href="interface/edit/delete" title="delete"><img
							src="image/garbage.png" /></a>
					</div>
					<li><a href="#interfaceC">接口3</a></li>
				</ol>
			</div>
			<div id="dictionaryList">
				<h1>
					<s:text name="interfaceDictionary" />
				</h1>
				<ol>
					<li><a name="interfaceA">
							<p class="explanation">获取ID</p>
							<p class="entity">getId?scope=all</p>
					</a>
						<div class="dictionaryTableDiv">
							<table>
								<tr>
									<td>请求</td>
									<td><p>scope：范围</p>
										<p>其他参数</p></td>
								</tr>
								<tr>
									<td>响应</td>
									<td><p>id：id列表</p>
										<p>其他参数</p></td>
								</tr>
							</table>
						</div></li>
					<li><a name="interfaceB">
							<p class="explanation">获取IID</p>
							<p class="entity">getId?scope=all</p>
					</a>
						<div class="dictionaryTableDiv">
							<table>
								<tr>
									<td>请求</td>
									<td><p>scope：范围</p>
										<p>其他参数</p></td>
								</tr>
								<tr>
									<td>响应</td>
									<td><p>id：id列表</p>
										<p>其他参数</p></td>
								</tr>
							</table>
						</div></li>
					<li><a name="interfaceC">
							<p class="explanation">获取IIID</p>
							<p class="entity">getId?scope=all</p>
					</a>
						<div class="dictionaryTableDiv">
							<table>
								<tr>
									<td>请求</td>
									<td><p>scope：范围</p>
										<p>其他参数</p></td>
								</tr>
								<tr>
									<td>响应</td>
									<td><p>id：id列表</p>
										<p>其他参数</p></td>
								</tr>
							</table>
						</div></li>
					<li><a name="interfaceD">
							<p class="explanation">获取IIID</p>
							<p class="entity">getId?scope=all</p>
					</a>
						<div class="dictionaryTableDiv">
							<table>
								<tr>
									<td>请求</td>
									<td><p>scope：范围</p>
										<p>其他参数</p></td>
								</tr>
								<tr>
									<td>响应</td>
									<td><p>id：id列表</p>
										<p>其他参数</p></td>
								</tr>
							</table>
						</div></li>
					<li><a name="interfaceE">
							<p class="explanation">获取IIID</p>
							<p class="entity">getId?scope=all</p>
					</a>
						<div class="dictionaryTableDiv">
							<table>
								<tr>
									<td>请求</td>
									<td><p>scope：范围</p>
										<p>其他参数</p></td>
								</tr>
								<tr>
									<td>响应</td>
									<td><p>id：id列表</p>
										<p>其他参数</p></td>
								</tr>
							</table>
						</div></li>
				</ol>
			</div>
		</div>

		<!-- 备用浮动页脚 -->
		<div id="footer"></div>
	</div>
</body>
</html>
