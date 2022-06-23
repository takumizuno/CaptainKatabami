<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>注文履歴</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp"%>
<!-- メニュー -->
<div id="menu">
<div class="container">
<!-- ページタイトル -->
<div id="page-title">
<h2>注文履歴</h2>
</div>
</div>
</div>
<!-- コンテンツ -->
<div id="main" class="container">
<!-- 会員の個人情報ここで表示する -->
<p>氏名</p>
<p>ID:</p>
<p>メール</p>

	<!--  -->
<table>
  <thead>
    <tr>
      <th>注文番号</th>
      <th>日時</th>
      <th>商品名</th>
	  <th>数量</th>
	  <th>備考欄</th>
    </tr>
   </thead>
   <tbody>
     <tr>
       <td>0001</td>
       <td>2022/06/17</td>
       <td>Uniform1</td>
	   <td>4</td>
	   <td>XXXXXLサイズ</td>
	   <td>
     </tr>
     <tr>
       <td>0033</td>
       <td>2022/05/01</td>
       <td>Uniform 2</td>
	   <td>1</td>
	   <td>エクスプレス郵送でお願い致します。</td>
     </tr>

  </tbody>
</table>


<a href="./topPage.jsp">[トップページに戻る]</a>

<!-- フッター -->
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>
<html>