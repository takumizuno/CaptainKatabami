<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>非会員用ページ</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
		<!-- メニュー -->
		<div id="menu">
			<div class="container">
				<!-- ページタイトル -->
				<div id="page-title">
					<h2>非会員用ページ</h2>
				</div>
			</div>
		</div>
		<!-- コンテンツ -->
		<div id="nonUser" class="container">
			<table class="list">
				<tr>
				<th>商品番号</th>
				<th>商品</th>
				<th>在庫数</th>
				<!-- HOW ABOUT PRODUCT DETAILS?NEED A NEW PAGE?? -->
				<th><a href="">【詳細】</a>
				<th><a href="./nonUserCart.jsp">【カートに入れる】</a></th>
				</tr>
				<tr>
				<th>商品番号</th>
				<th>商品</th>
				<th>在庫数</th>
				<th><a href="">【詳細】</a>
				<th><a href="./nonUserCart.jsp">【カートに入れる】</a></th>
				</tr>
		</table>
		</div>
		<a href="<%=request.getContextPath()%>/view/topPage.jsp">[トップページに戻る]</a>
		<!-- フッター -->
		<%@ include file="/common/footer.jsp" %>
	</div>
</body>
</html>