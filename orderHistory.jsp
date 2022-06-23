<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*,bean.OrderItem"%>

<%
	ArrayList<OrderItem> order_list = (ArrayList<OrderItem>) request.getAttribute("order_list");
%>

<html>
<head>
<title>注文履歴</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<!-- ヘッダー -->
		<%@include file="/common/header.jsp"%>
		<!-- ページタイトル -->
		<div id="page-title">
			<h2>注文履歴</h2>
		</div>
		<div id="main" class="container">
			<table class="list-table">
				<tr>
					<th>商品名</th>
					<th>金額</th>
					<th>購入日</th>
					<th>入金状況</th>
					<th>発送状況</th>
				</tr>

				<%
					if (order_list != null) {
						for (OrderItem order : order_list) {
				%>
				<tr>
					<td><%=order.get()%></td>
					<td><%=order.get()%></td>
					<td><%=order.get()%></td>
					<td><%=order.get()%></td>
					<td><%=order.get()%></td>
				</tr>
				<%
					}
					}
				%>
			</table>
		</div>
		<!-- 戻る -->
		<div id="menu">
			<div class="container">
				<div id="">
					<ul>
						<li><a href="<%=request.getContextPath()%>/view/userMenu.jsp">[メニューに戻る]</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- フッター -->
		<%@include file="/common/footer.jsp"%>
	</div>
</body>
</html>