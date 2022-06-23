<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>商品管理ページ</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
		<!-- メニュー -->
		<div id="menu">
			<div class="container">
				<!-- ページタイトル -->
				<div id="page-title">
					<h2>商品管理ページ</h2>
				</div>
			</div>
		</div>
		<!-- コンテンツ -->
		<div id="main" class="container">

		<p><a href="<%=request.getContextPath()%>/view/productInsert.jsp">【商品登録はこちらから】</a></p>
		<table class="list">
				<tr>
				<th>商品番号</th>
				<th>商品</th>
				<th>在庫数</th>
				<th>
					<a href="">【削除】</a>
					<p><a href="<%=request.getContextPath()%>/view/productUpdate.jsp">【更新】</a></p>
				</th>
				</tr>
		</table>
<a href="./adminMenu.jsp">[管理者ページに戻る]</a>
		</div>
		<!-- フッター -->
<%@ include file="/common/footer.jsp" %>
	</div>
</body>
</html>