<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>会員情報変更</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<!-- ヘッダー -->
<header>
<div class="container">
<h1>キャプテンカタバミ</h1>
</div>
</header>
<!-- メニュー -->
<div id="menu">
<div class="container">
<!-- ページタイトル -->
<div id="page-title">
<h2>会員情報変更</h2>
</div>
</div>
</div>
<!-- コンテンツ -->
<div id="main" class="container">
<!-- 会員個人情報をここで表示する -->
<p>変更前</p>
<p>氏名</p>
<p>住所</p>
<p>メール</p>
<p>ID:</p>
<p>Password</p>

<p>変更後</p>
<!-- 新個人情報の入力 -->
<table class="list">
				<tr>
					<td>氏名:<input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>住所:<input type="text" id="address" name="address"></td>
				</tr>
				<tr>
					<td>メール:<input type="text" id="email" name="email"></td>
				</tr>
				<tr>
					<td>ID:<input type="text" id="ID" name="ID"></td>
				</tr>
				<tr>
					<td>password：<input type="text" id="password" name="password"></td>
				</tr>
			</table>
<!-- 登録ボタン押して、サーブレットに投げる -->
<input type="submit" value="登録">
</div>

<a href="./topPage.jsp">[トップページに戻る]</a>
<!-- フッター -->
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>
<html>