<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base target="_blank" />
<title>
<s:text name="titleMaster" />
</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/master_info.css" />
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
<!-- 居中内容框 -->
<div id="main">
	<!-- 页眉logo、导航栏 -->
	<div id="header">
		<div id="top">
			<div id="language">
				<a href="?request_locale=en_US" target="_self"><img src="image/us.png" alt="English" title="English"/></a>
				<a href="?request_locale=zh_CN" target="_self"><img src="image/cn.png" alt="中文" title="中文"/></a>
				<a href="?request_locale=ja_JP" target="_self"><img src="image/jp.png" alt="日本語" title="日本語"/></a>
			</div>
			<div id="visitor">
				<a href="http://info.flagcounter.com/eqvj"><img src="http://s03.flagcounter.com/count2/eqvj/bg_B2A36A/txt_000000/border_B2A36A/columns_5/maxflags_5/viewers_3/labels_0/pageviews_0/flags_0/" alt="vistor" /></a>
			</div>
		</div>
		<div class="logo" id="logoDIV">
			<img src="image/logo.png" />
		</div>
		<div class="navigation" id="navigationDIV">
			<ul id="navigationLIST">
				<li>
					<a class="radius" href="index" target="_self">Home</a>
				</li>
				<li>
					<a class="radius" href="lab" target="_self">Lab</a>
				</li>
				<li>
					<a class="radius" href="interface" target="_self">Interface</a>
				</li>
				<li>
					<a class="currentTab radius" href="#" target="_self">Master Info</a>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 页面内容 -->
	<div id="content">
		<div id="personalInfo">
			<div id="masterHead"><img src="image/head.jpg"/></div>
			<div id="infoList">
				<table>
					<tr>
						<td><s:text name="roleName" />
							：</td>
						<td><s:text name="wavky" /></td>
					</tr>
					<tr>
						<td><s:text name="EXP" />
							：</td>
						<td>LV.25</td>
					</tr>
					<tr>
						<td><s:text name="mail" />
							：</td>
						<td>wavky@foxmail.com</td>
					</tr>
					<tr>
						<td>GitHub：</td>
						<td><a href="https://github.com/wavky">wavky</a></td>
					</tr>
					<tr>
						<td><s:text name="blog" />
							：</td>
						<td><a href="http://www.cnblogs.com/wavky/">wavky</a></td>
					</tr>
					<tr>
						<td><s:text name="producer" />
							：</td>
						<td><a href="http://www.bnuz.edu.cn/">
								<s:text name="university" />
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
						<div>中国市场占有率 80% 以上、使用人群分布最广、最具发展前景的开放式移动平台，我们在这样一个全球最大型的开放平台上自由开发创造，把最新最酷的创意第一时间送达每一个目标客户群！
							<hr />
							<ul>
								<li>无需授权，敢想敢做，无限制创新</li>
								<li>使用人群最广，产品尝鲜零障碍</li>
								<li>设备种类最纷繁，让创意延伸至世界每个角落</li>
							</ul>
						</div></td>
					<td id="javaee"><h2>JaveEE</h2>
						<div>当前全球最流行的企业级中大型动态网站技术平台，伴随现代互联网共同成长的17年发展史，互联网擎天柱的霸主地位无可撼动，我们站在巨人的肩膀上实现您的宏图伟愿！
							<hr />
							<ul>
								<li>最流行、最悠久，稳定、高效、安全的最强证明</li>
								<li>自由开放零授权，以最廉价的成本实现最宏大的梦想</li>
								<li>不间断在线服务，为移动、桌面应用提供最坚实的支持</li>
							</ul>
						</div></td>
					<td id="swing"><h2>Swing</h2>
						<div>基于Java的高性能跨平台GUI解决方案，快速构建多系统兼容的稳定桌面应用程序，Windows、Mac、Linux全系列平台同步部署，一致的操作体验，我们为您想得更多，做得更全！
							<hr />
							<ul>
								<li>跨平台兼容，任意硬件任意操作系统，部署、运行、升级，一步完成</li>
								<li>虚拟机隔离运行，稳定、安全、不作恶，不危害系统和其他应用程序</li>
								<li>无需授权，即开发即使用，随意分享，终身正版</li>
							</ul>
						</div></td>
				</tr>
			</table>
			<div id="java">
				<h1>专注Java</h1>
				<ul>
					<li>手机平板</li>
					<li>网站</li>
					<li>PC桌面</li>
				</ul>
				<p>一站式全平台解决方案</p>
			</div>
		</div>
	</div>
	<!-- 备用浮动页脚 -->
	<div id="footer">
	</div>
</div>
</body>
</html>
