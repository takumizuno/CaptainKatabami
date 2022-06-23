<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList,bean.Book,util.MyFormat" %>

<%
	ArrayList<Book> book_list = (ArrayList<Book>) request.getAttribute("book_list");
	MyFormat format = new MyFormat();
%>

<html>
	<head>
		<title>書籍一覧</title>
		<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/style.css">
	</head>

	<body>
		<div id="wrap">
			<%@ include file="/common/header.jsp" %>

			<div id="menu">
				<div class="container">
					<div id="nav">
						<ul>
							<li><a href ="<%=request.getContextPath()%>/view/menu.jsp" >[メニュー]</a></li>
							<li><a href ="<%=request.getContextPath()%>/view/insert.jsp">[書籍登録]</a></li>
						</ul>
					</div>
					<div id="page_title">
						<h2>書籍一覧</h2>
					</div>
				</div>
			</div>

			<div id="main" class="container">

				<form class="inline-block" action="<%=request.getContextPath()%>/search" >
		 			ISBN <input type="text"  name="isbn">
					TITLE <input type="text" name="title">
					価格 <input type="text" name="price">
					<input type="submit" value="検索">
				</form>
				<form class="inline-block" action="<%=request.getContextPath()%>/list" >
					<input type="submit" value="全件表示">
				</form>

				<table class="list-table">
					<thead>
						<tr>
							<th>ISBN</th>
							<th>TITLE</th>
							<th>価格</th>
							<th>変更 / 削除 / カートに入れる</th>
						</tr>
					</thead>
					<tbody>
						<%
						if (book_list != null) {
							for (Book book : book_list) {
						%>
						<tr>
							<td><a href="<%=request.getContextPath()%>/detail?isbn=<%=book.getIsbn()%>&cmd=detail"><%=book.getIsbn() %></a></td>
							<td><%=book.getTitle() %></td>
							<td><%=format.moneyFormat(book.getPrice())%></td>
							<td>
								<a href="<%=request.getContextPath()%>/detail?isbn=<%=book.getIsbn()%>&cmd=update">変更</a>
								&nbsp;&nbsp;
								<a href="<%=request.getContextPath()%>/delete?isbn=<%=book.getIsbn()%>">削除</a>
								&nbsp;&nbsp;
								<a href="<%=request.getContextPath()%>/insertIntoCart?isbn=<%=book.getIsbn()%>">カートに入れる</a>
							</td>

						</tr>
						<%
							}
						}
						%>
					</tbody>
				</table>
			</div>

			<%@ include file="/common/footer.jsp" %>

		</div>
	</body>
</html>

