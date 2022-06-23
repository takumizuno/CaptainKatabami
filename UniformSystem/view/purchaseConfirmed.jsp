<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>購入確認</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>購入確定ページ</h2>
</div>
</div>
</div>
<div id="main" class="container">

<ul>
<p>ご購入ありがとうございました。</p>
<p>またのご利用、心よりお待ちしております。</p>
<small>ご記入されたメールに注文確定メールをお送り致しました。
ご確認のほどよろしくお願い致します。</small>

</ul>


<a href="./topPage.jsp">[トップページに戻る]</a>
</div>

<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>