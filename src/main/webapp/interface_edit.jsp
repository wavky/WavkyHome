<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="0" />
<base target="_self" />
<title><s:text name="titleInterface" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/interface_edit.css" />
<script type="text/javascript" charset="utf-8" src="js/common.js"></script>
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.parse.min.js"></script>
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
				<a href="api">
					<div id="edit">退出编辑</div>
				</a>
			</s:if>
			<div id="addInterface">
				<s:form action="addInterface" method="post" theme="simple">
					<table>
						<tr>
							<td>用途描述：</td>
							<td><s:textfield name="description" cssClass="text" /></td>
						</tr>
						<tr>
							<td>接口形式：</td>
							<td><s:textfield name="interfaceBody" cssClass="text" /></td>
						</tr>
						<tr>
							<td>请求格式：</td>
							<td>
								<div class="ueditorDiv text">
									<script id="requestEditor" name="interfaceRequest" type="text/plain"
										style="width:100%;height:120px;"><s:property value="interfaceRequest" escape="false" /></script>
								</div>
							</td>
						</tr>
						<tr>
							<td>响应格式：</td>
							<td>
								<div class="ueditorDiv text">
									<script id="responseEditor" name="interfaceResponse" type="text/plain"
										style="width:100%;height:120px;"><s:property value="interfaceResponse" escape="false" /></script>
								</div>
							</td>
						</tr>
					</table>
					<script type="text/javascript">
						//实例化编辑器
						//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
						var requestUE = UE.getEditor('requestEditor',{
						    toolbars: [['fullscreen', 'source', '|', 'cleardoc', 'drafts', '|',
						                'bold', 'italic', 'underline', 'strikethrough', 
						                'removeformat', 'formatmatch', 'autotypeset', 'pasteplain', '|',
						                'insertorderedlist', 'insertunorderedlist', 'indent', 'insertcode', '|',
						                'touppercase', 'tolowercase', '|',
						                'link', 'unlink', 'anchor', '|', 'forecolor', 'backcolor', 'background']]});
						var responseUE = UE.getEditor('responseEditor',{
						    toolbars: [['fullscreen', 'source', '|', 'cleardoc', 'drafts', '|',
						                'bold', 'italic', 'underline', 'strikethrough', 
						                'removeformat', 'formatmatch', 'autotypeset', 'pasteplain', '|',
						                'insertorderedlist', 'insertunorderedlist', 'indent', 'insertcode', '|',
						                'touppercase', 'tolowercase', '|',
						                'link', 'unlink', 'anchor', '|', 'forecolor', 'background']]});
						
						//ue.ready(function() {
							//var introduction = '<s:property value="introduction" escape="false" />';
							//ue.setContent(introduction);
						//});
					</script>
					<button type="submit" id="submit" title="Add Interface">
						<img src="image/add.png" />
					</button>
				</s:form>
			</div>
			<div id="interfaceList">
				<h1>
					<s:text name="interfaceList" />
				</h1>
				<ol>
					<s:iterator value="interfaceList">
						<div class="delete">
							<a
								href="deleteInterface?deleteInterfaceId=<s:property value='id' />"
								title="delete"><img src="image/garbage.png" /></a>
						</div>
						<li><a href="#interface<s:property value='id' />">
								<p class="description">
									<s:property value='description' />
								</p>
								<p class="body">
									<s:property value='body' />
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
					<s:iterator value="interfaceList">
						<li><a name="interface<s:property value='id' />">
								<p class="description">
									<s:property value='description' />
								</p>
								<p class="body">
									<a href="<s:property value='body' />" target="_blank"> <s:property
											value='body' /></a>
								</p>
						</a>
							<div class="dictionaryTableDiv">
								<table>
									<tr>
										<td>REQUEST</td>
										<td><div class="requestUEDiv">
												<s:property value='request' escape="false" />
											</div></td>
									</tr>
									<tr>
										<td>RESPONSE</td>
										<td><div class="responseUEDiv">
												<s:property value='response' escape="false" />
											</div></td>
									</tr>
								</table>
							</div></li>
					</s:iterator>
				</ol>
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
