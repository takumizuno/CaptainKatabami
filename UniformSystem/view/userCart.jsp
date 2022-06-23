<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>会員用カート</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>会員用カート</h2>
</div>
</div>
</div>

<div id="main" class="container">
<!-- 会員の個人情報を取得してここで表示する -->


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
<p><input type="submit" onclick="どっかのサイト" value="購入"></p>

</ul>
</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>