<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用ホームページ</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>管理者用ホームページ</h2>
</div>
</div>
</div>
<div id="admin" class="container">

<p><a href="<%=request.getContextPath()%>/view/productList.jsp">商品管理</a></p>
<p><a href="<%=request.getContextPath()%>/view/orderList.jsp ">受注管理一覧</a></p>
</div>

<a href="./login.jsp">[ログアウト]</a>

<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>