<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>入金済確認ページ</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>


<p>入金状況を入金済みに変更しました。</p>
<p>購入者にメールを送信しました。</p>
<br>
<a href="./orderList.jsp">[受注管理一覧に戻る]</a>

<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>