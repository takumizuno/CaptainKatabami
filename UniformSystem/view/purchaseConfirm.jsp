<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>購入確認</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>購入確認ページ</h2>
</div>
</div>
</div>
<div id="main" class="container">


<p>氏名</p>
<p>メール</p>
<p>住所</p>
<p>商品名</p>
<p>数量</p>
<p>合計金額</p>


<p>備考欄<br>

<p><input type="submit" onclick="location.href='./purchaseConfirmed.jsp'" value="購入する"></p>

</div>

<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>