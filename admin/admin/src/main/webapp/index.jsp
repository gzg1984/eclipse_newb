<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/admin/ace_head.jsp"%>
<title>管理后台</title>
</head>
<body class="no-skin">
	<%@ include file="/common/admin/nav.jsp"%>
	<div class="main-container" id="main-container">
		<jsp:include page="/admin/getMenu.do" flush="true">
			<jsp:param name="menuName" value="home" />
		</jsp:include>
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><a href="/admin/index.do">首页</a></li>
				</ul>
			</div>
			<div class="page-conten t">
					<h2 class="text-center">欢迎登录管理后台</h2>
			</div>
		</div>
	</div>
	<%@ include file="/common/admin/script.jsp"%>
</body>
</html>