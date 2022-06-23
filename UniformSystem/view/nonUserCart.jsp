<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>新規会員登録</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>非会員用カート</h2>
</div>
</div>
</div>

<div id="main" class="container">
<table class="list-table">
<!-- 個人情報の入力を促す -->
<tr>個人情報
<th>氏名</th>
<th>メール</th>
<th>住所</th>
</tr>
</table>
</div>

<div id="main" class="container">
<table class="list-table">
<tr>購入したい商品一覧
<th>商品名</th>
<th>数量</th>
<th>金額</th>
</tr>
</table>
</div>

<p>合計金額</p>
<p>備考欄<br>
<textarea name="example" cols="50" rows="10"></textarea></p>
<p><p><input type="submit" onclick="location.href='./purchaseConfirm.jsp'" value="購入する"></p></p>

</ul>
</div>
<!-- フッター -->
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>
<html>