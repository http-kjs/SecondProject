<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		  <div class="button-container">
			<a href="../store/store_detail.do?wfno=${ wfno }"><button class="bordered-button">스토리</button></a>
	        <a href="../store/store_news.do?wfno=${ wfno }"><button class="bordered-button">새소식</button></a>
	        <a href="../store/store_community.do?wfno=${ wfno }"><button class="bordered-button">커뮤니티</button></a>
	        <a href="../store/store_sup.do?wfno=${ wfno }"><button class="bordered-button">서포터</button></a>
	        <a href="../store/store_refundpolicy.do?wfno=${ wfno }"><button class="bordered-button">환불 정책</button></a>
		  </div>
	</div>
</body>
</html>