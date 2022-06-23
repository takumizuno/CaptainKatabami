<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>商品詳細更新</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
		<!-- メニュー -->
		<div id="menu">
			<div class="container">


				</div>
		</div>
		<!-- コンテンツ -->
		<div id="main" class="container">
			<table>
				<tr>
					<th>変更前</th>
				</tr>
				<tr>
					<td>商品番号:</td>
					<td>0001</td>
				</tr>
				<tr>
					<td>商品名:</td>
					<td>0001</td>
				</tr>
				<tr>
					<td>価格:</td>
					<td>0001</td>
				</tr>
				<tr>
					<td>在庫数:</td>
					<td>0001</td>
				</tr>
				<tr>
					<td>商品画像:</td>
					<td>0001</td>
				</tr>
			</table>

			<table>
				<tr>
					<th>変更後</th>
				</tr>
				<tr>
					<td>商品番号:</td>
					<td><input type="text" id="productNo" name="productNo"></td>
				</tr>
				<tr>
					<td>商品名:</td>
					<td><input type="text" id="productName" name="productName"></tr>
				</tr>
				<tr>
					<td>価格:</td>
					<td><input type="text" id="Price" name="Price"></tr>
				</tr>
				<tr>
					<td>在庫数:</td>
					<td><input type="text" id="stock" name="stock"></td>
				</tr>
				<tr>
					<td>商品画像:</td>
					<td><input type="text" id="productImage" name="productImage"></td>
				</tr>
			</table>

		<p><input type="submit" value="【登録】"></p>
		<a href="./productList.jsp">商品管理ページに戻る</a>
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