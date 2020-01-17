<!--  주소록 목록  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="java.util.*,board.DO.*,board.DAO.*" %>
<jsp:useBean id="dbList" scope="request" class="java.util.ArrayList"/>
<!DOCTYPE html>
<html>
<head>
<script>
	function check(ab_id) {
		pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
		document.location.href="addrbook_control.jsp?action=edit&ab_id="+ab_id+"&upasswd="+pwd;
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>주소록 :목록화면</h2>
<hr>
<a href=addrbook_form.jsp>[주소록 등록]</a><p>
<form>
<table border="1">
	<tr>
		<th>번호</th><th>이름</th><th>전화번호</th><th>생일</th><th>회사</th><th>메모</th>
	</tr>
	<%
		for(AddrBook ab : (ArrayList<AddrBook>)dbList) {
	%>
	<tr>
		<td><a href="javascript:check(<%=ab.getAb_id()%>)"><%=ab.getAb_id()%></a></td>
		<td><%=ab.getAb_name() %></td>
		<td><%=ab.getAb_tel() %></td>
		<td><%=ab.getAb_birth()  %></td>
		<td><%=ab.getAb_comdept() %></td>
		<td><%=ab.getAb_memo() %></td>
	</tr>
	<%
		}
	%>
</table>
</form>
</div>
</body>
</html>