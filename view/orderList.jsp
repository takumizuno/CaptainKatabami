<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>受注管理一覧</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>受注管理一覧</h2>
</div>
</div>
</div>
<div id="main" class="container">
<table class="list-table">

<tr>
<th>注文番号</th>
<th>氏名</th>
<th>購入商品</th>
<th>数量</th>
<th>日付</th>
<th>---</th>
<th>入金状況</th>
<th>発送状況</th>
<th>詳細</th>
<th>更新</th>
</tr>

<tr>
<td>0001</td>
<td>神田　研修</td>
<td>Uniform1</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>未入金</td>
<td>未発送</td>
<td><input type="submit" onclick="location.href='./orderDetails.jsp'" value="詳細"></td>
<td><input type="submit" onclick="location.href='./orderUpdate.jsp'" value="更新"></td>
</tr>

<tr>
<td>0002</td>
<td>神田　学校</td>
<td>Uniform2</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>未入金</td>
<td>未発送</td>
<td><input type="submit" onclick="location.href='./orderDetails.jsp'" value="詳細"></td>
<td><input type="submit" onclick="location.href='./orderUpdate.jsp'" value="更新"></td>
</tr>

<tr>
<td>0003</td>
<td>神田　大学</td>
<td>Uniform3</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>未入金</td>
<td>未発送</td>
<td><input type="submit" onclick="location.href='./orderDetails.jsp'" value="詳細"></td>
<td><input type="submit" onclick="location.href='./orderUpdate.jsp'" value="更新"></td>
</tr>

</table>
<a href="./adminMenu.jsp">[管理者ページに戻る]</a>
</div>
		<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>