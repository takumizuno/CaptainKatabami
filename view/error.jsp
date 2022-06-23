<%@page contentType="text/html; charset=UTF-8"%>

<%
	String error = (String) request.getAttribute("error");
	if (error == null) {
		error = "";
	}
	String cmd = (String) request.getAttribute("cmd");
	if (cmd == null) {
		cmd = "menu";
	}
%>

<html>
<head>
<title>エラー画面</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="/common/header.jsp"%>

		<div id="menu">
			<div class="container">
				<div id="page_title">
					<h2>■■エラー■■</h2>
				</div>
			</div>
		</div>
<!--  -->
		<div id="common" class="container">

					<p class="error-msg"><%=error%></p>

					<p class="back-link">
						<%
							if (cmd.equals("menu")) {
						%>
						<a href="<%=request.getContextPath()%>/view/menu.jsp">[メニューに戻る]</a>
						<%
							} else {
						%>
						<a href="<%=request.getContextPath()%>/list">[一覧表示に戻る]</a>
						<%
							}
						%>
					</p>
				</div>

			<%@ include file="/common/footer.jsp"%>
		</div>
</body>
</html>

