<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>商品登録</title>
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
					<h2>商品登録</h2>
				<table class="list">
				<tr>
				<td>商品番号:<input type="text" id="productId" name="productId"></td>
				</tr>

				<tr>
				<td>商品名:<input type="text" id="productName" name="productName"></td>
				</tr>

				<tr>
				<td>在庫数:<input type="text" id="Stock" name="Stock"></td>
				</tr>

				<tr>
				<td>価格：<input type="text" id="Price" name="Price"></td>
				</tr>

				<tr>
				<td>商品図:<input type="text" id="productImage" name="productImage"></td>
				</tr>
		</table>
		<p><input type="submit" value="【登録】"></p>
		<a href="./productList.jsp">商品管理ページに戻る</a>
				</div>
			</div>
		</div>
		<!-- コンテンツ -->
		<div id="main" class="container">

		</div>
		<!-- フッター -->
		<footer>
			<div class="container">
				<h4></h4>
			</div>
		</footer>
	</div>
</body>
</html>