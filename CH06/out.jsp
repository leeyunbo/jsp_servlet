<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>out 내장 객체의 사용</h2>
<HR>
1. 설정된 버퍼 크기 : <%= out.getBufferSize() %><BR>
2. 남아 있는 버퍼 크기 : <%= out.getRemaining() %><BR>
<% out.flush();  %>
3. flush 후 남아 있는 버퍼 크기 : <%= out.getRemaining() %> <BR>
<% out.clearBuffer();  %>
4. clear 후 남아 있는 버퍼 크기 : <%= out.getRemaining() %> <BR>
<% out.close(); %>
5. close 후 남아 있는 버퍼 크기 : <%= out.getRemaining() %> <BR>
</body>
</html>
