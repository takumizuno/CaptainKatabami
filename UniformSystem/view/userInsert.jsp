<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>新規会員登録</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
		<!-- メニュー -->
		<div id="menu">
			<div class="container">
				<!-- ページタイトル -->
				<div id="page-title">
					<h2>新規会員登録</h2>
				</div>
			</div>
		</div>
		<!-- コンテンツ -->
		<div id="main" class="container">
			<p>
				<label for="name">氏名</label> <input type="text" id="name"
					name="name">
			</p>
			<p>
				<label for="name">住所</label> <input type="text" id="address"
					name="address">
			</p>

			<p>
				メール<input type="email" placeholder="uniform11@example.com">
			</p>
			<div>
				<label for="ID">ID:</label> <input type="text" id="username"
					name="username">
			</div>
			<div>
				<label for="password">Password (4 四文字以上):</label> <input
					type="password" id="pass" name="password" 　　minlength="4" required>
			</div>
			<input type="submit" onclick="location.href='./memberPage.html'"
				value="登録">
		</div>

		<a href="<%=request.getContextPath()%>/view/topPage.jsp">[トップページに戻る]</a>
		<!-- フッター -->
		<%@ include file="/common/footer.jsp"%>
	</div>
</body>
</html>
<html>