<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList,bean.OrderAdminItem"%>
<%@page import="util.MoneyFormat"%>

<%
	ArrayList<OrderAdminItem> order_list = (ArrayList<OrderAdminItem>) request.getAttribute("order_list");
	MoneyFormat format = new MoneyFormat();
%>
<html>
<head>
<meta charset="UTF-8">
<title>受注管理一覧</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
	<!--  	<%@ include file="../common/header.jsp"%>-->
<div id="menu">
<div class="container">
<div id="page-title">
<h2>受注管理一覧</h2>
</div>
</div>
</div>
<div id="main" class="container">
<table class="list-table">
	<thead>
		<tr>
			<th>受注番号</th>
			<th>購入者</th>
			<th>購入日付</th>
			<th>入金状況</th>
			<th>発送状況</th>
		</tr>
	</thead>
	<tbody>
		<%
				if (order_list != null) {
				for (OrderAdminItem orderAdminItem : order_list) {
					String shipping = "";
					if (orderAdminItem.getShipping().equals("1")) {
						shipping = "未発送";
					} else if (orderAdminItem.getShipping().equals("2")) {
						shipping = "発送済み";
					}else {
						shipping = "エラー";
					}

					String payment = "";
					if (orderAdminItem.getPayment().equals("1")) {
						payment = "未入金";
					} else if (orderAdminItem.getPayment().equals("2")) {
						payment = "入金済み";
					} else {
						payment = "エラー";
					}

		%>
		<tr>
				<td><%=orderAdminItem.getOrderid()%></td>
				<td><%=orderAdminItem.getUsername() %></td>
				<td><%=orderAdminItem.getDate() %></td>
				<td><%=shipping %></td>
				<td><%=payment %></td>
				<td>
					<a href="<%=request.getContextPath()%>/orderDetails?orderid=<%=orderAdminItem.getOrderid()%>">詳細</a>
					<a href="<%=request.getContextPath()%>/view/orderUpdate.jsp?orderid=<%=orderAdminItem.getOrderid()%>">更新</a>
				</td>
		<tr>
		<%
				}
		}
		%>


	</tbody>


</table>
<a href="./adminMenu.jsp">[管理者ページに戻る]</a>
</div>
		<!--  <%@ include file="/common/footer.jsp" %>-->
</div>
</body>
</html>