<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
		<div id="menu">
			<div class="container">
				<div id="page-title">
					<h2>ログイン</h2>
				</div>
			</div>
		</div>
		<div id="common" class="container">
			<ul>
				<form action="" method="POST">
					<p>
						ID:<input type="text" name="id">
					</p>
					<p>
						password:<input type="text" name="password">
					</p>
					<input type="submit" value="ログイン">
				</form>
			</ul>

		<a href="<%=request.getContextPath()%>/view/topPage.jsp">[トップページに戻る]</a>
		</div>
			<%@ include file="/common/footer.jsp" %>
	</div>
</body>
</html>