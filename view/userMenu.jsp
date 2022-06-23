<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>会員ホームページ</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>会員用ホームページ</h2>
</div>
</div>
</div>
<div id="User" class="container">
<table class="list">
				<tr>
				<th>商品番号</th>
				<th>商品</th>
				<th>在庫数</th>
				<th><a href="">【詳細】</a>
				<th><a href="./userCart.jsp">【カートに入れる】</a></th>
				</tr>
				<tr>
				<th>商品番号</th>
				<th>商品</th>
				<th>在庫数</th>
				<th><a href="">【詳細】</a>
				<th><a href="./userCart.jsp">【カートに入れる】</a></th>
				</tr>
		</table>

<p><a href="./orderHistory.jsp">注文履歴</a></p>
<p><a href="./userUpdate.jsp">会員情報変更</a></p>
</div>

<a href="./login.jsp">[ログアウト]</a>

<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>