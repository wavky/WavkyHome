<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base target="_self" />
<title><s:text name="titleLab" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/project_add.css" />
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
<script type="text/javascript" charset="utf-8" src="js/common.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
	<!-- 居中内容框 -->
	<div id="main">
		<!-- 页眉logo、导航栏 -->
		<div id="header">
			<div id="top">
				<div id="language">
					<a href="/projectManager?request_locale=en_US" target="_self"><img
						src="image/us.png" alt="English" title="English" /></a> <a
						href="projectManager?request_locale=zh_CN" target="_self"><img
						src="image/cn.png" alt="中文" title="中文" /></a> <a
						href="projectManager?request_locale=ja_JP" target="_self"><img
						src="image/jp.png" alt="日本語" title="日本語" /></a>
				</div>
				<div id="visitor">
					<a href="http://info.flagcounter.com/eqvj"><img
						src="http://s03.flagcounter.com/count2/eqvj/bg_B2A36A/txt_000000/border_B2A36A/columns_5/maxflags_5/viewers_3/labels_0/pageviews_0/flags_0/"
						alt="vistor" /></a>
				</div>
			</div>
			<div class="logo" id="logoDIV">
				<img src="image/logo_lab.png" />
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
					<li><a class="currentTab radius" href="#" target="_self">Lab</a>
					</li>
					<li><a class="radius" href="api" target="_self">API</a></li>
					<li><a class="radius" href="master" target="_self">Master
							Info</a></li>
				</ul>
			</div>
		</div>

		<!-- 页面内容 -->
		<div id="content">
			<s:if test='#session.isMaster'>
				<a href="lab">
					<div id="edit">退出编辑</div>
				</a>
			</s:if>
			<div id="addProject">
				<s:fielderror />
				<s:form action="saveProject" enctype="multipart/form-data"
					method="post" theme="simple" validate="true">
					<s:hidden name="targetProjectId" />
					<table>
						<tr>
							<td>类型：</td>
							<td><s:radio list="%{{'Android','Web','Window','Tool'}}"
									name="type" cssClass="typeRadio" /></td>
						</tr>
						<tr>
							<td>标题：</td>
							<td><s:textfield name="title" cssClass="text" /></td>
						</tr>
						<tr>
							<td>预览图 (267x150)：</td>
							<td><s:file name="snapshot" /></td>
						</tr>
						<tr>
							<td>链接 (Web类型)：</td>
							<td><s:textfield name="webLinkAddr" cssClass="text" /></td>
						</tr>
						<tr>
							<td colspan="2"><hr /></td>
						</tr>
						<tr>
							<td>发布日期：</td>
							<td><s:textfield name="releaseDateForEditing" type="date"
									cssClass="text" /></td>
						</tr>
						<tr>
							<td>GitHub源码：</td>
							<td><s:textfield name="sourceLinkAddr" cssClass="text" /></td>
						</tr>
						<tr>
							<td>文件上传：</td>
							<td><s:file name="projectFile" /></td>
						</tr>
						<tr>
							<td>版本号：</td>
							<td><s:textfield name="version" cssClass="text" /></td>
						</tr>
						<tr>
							<td>售价：</td>
							<td><s:textfield type="number" name="price" cssClass="text" />
								RMB</td>
						</tr>
					</table>
					<div id="ueditorDiv">
						<script id="editor" name="introduction" type="text/plain"
							style="width:100%;height:400px;"><s:property value="introduction" escape="false" /></script>
					</div>
					<script type="text/javascript">
						//实例化编辑器
						//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
						var ue = UE.getEditor('editor');
						//ue.ready(function() {
						//var introduction = '<s:property value="introduction" escape="false" />';
						//ue.setContent(introduction);
						//});
					</script>
					<div id="buttonDiv">
						<button type="submit" id="submit">
							<img src="image/submit_green.png" />
						</button>
						<a href="/projectManager" id="cancel"><img
							src="image/cancel_red.png" /></a>
					</div>
				</s:form>
			</div>
		</div>

		<!-- 备用浮动页脚 -->
		<div id="footer"></div>
	</div>
</body>
</html>
