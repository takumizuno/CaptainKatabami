<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Admin注文詳細</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<div id="menu">
<div class="container">
<div id="page-title">
<h2>注文詳細</h2>
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
</tr>

<tr>
<td>0001</td>
<td>神田　研修</td>
<td>Uniform1</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>
<select name="example">
<option value="未入金">未入金</option>
<option value="入金済み">入金済み</option>
</select>
</td>
<td>
<select name="example2">
<option value="未発送">未発送</option>
<option value="発送準備">発送準備</option>
<option value="発送済み">発送済み</option>
</select>
</td>
</tr>

<tr>
<td>0002</td>
<td>神田　学校</td>
<td>Uniform2</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>
<select name="example">
<option value="未入金">未入金</option>
<option value="入金済み">入金済み</option>
</select>
</td>
<td>
<select name="example2">
<option value="未発送">未発送</option>
<option value="発送準備">発送準備</option>
<option value="発送済み">発送済み</option>
</select>
</td>
</tr>

<tr>
<td>0003</td>
<td>神田　大学</td>
<td>Uniform3</td>
<td>1</td>
<td>2022/06/21</td>
<th>---</th>
<td>
<select name="example">
<option value="未入金">未入金</option>
<option value="入金済み">入金済み</option>
</select>
</td>
<td>
<select name="example2">
<option value="未発送">未発送</option>
<option value="発送準備">発送準備</option>
<option value="発送済み">発送済み</option>
</select>
</td>
</tr>
</table>

<button name="button">変更確定</button>


</div>
<a href="./orderList.jsp">[受注管理一覧に戻る]</a>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>