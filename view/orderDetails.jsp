<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>注文詳細</title>
<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
<div id="wrap">
		<%@ include file="/common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>注文詳細</h2>
</div>
</div>
</div>
<div id="main" class="container">


<table class="detail-table">
<tr>
<th>注文番号:</th>
<th>0001</th>
<th>名前:</th>
<th>神田　研修</th>
</tr>
<tr>
<th>住所:</th>
<th>000-0000　xxxyyyzzz</th>
</tr>
<tr>
<th>電話番号:</th>
<th>000-0000-0000</th>
</tr>
<tr>
<th>注文内容:</th>
<th>Uniform1</th>
</tr>
</table>

<a href="./orderList.jsp">[受注管理一覧に戻る]</a>


</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>