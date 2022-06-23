<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>トップページ</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
		<div id="menu">
			<div class="container">

				<div id="page-title">
					<h2>MENU</h2>
				</div>
			</div>
		</div>
		<!-- ã³ã³ãã³ã -->
		<div id="common" class="container">
			<p>
				<a href="<%=request.getContextPath()%>/view/login.jsp">ログイン</a>
			</p>
			<p>
				<a href="<%=request.getContextPath()%>/view/userInsert.jsp">新規会員登録</a>
			</p>
			<p>
				<a href="<%=request.getContextPath()%>/view/nonUserMenu.jsp  ">ログインせずに商品を購入</a>
			</p>
		</div>
</div>

<%@ include file="/common/footer.jsp" %>
</body>
</html>
<html>