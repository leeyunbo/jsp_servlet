<!-- 주소록 수정/삭제 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.DAO.*, board.DO.*"%>
<jsp:useBean id="ab" scope="request" class="board.DO.AddrBook"/>
<!DOCTYPE html>
<html>
<head>
<script>
	function delcheck() {
		result = confirm("정말로 삭제하시겠습니까?");
		if(result) {
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else {
			return;
		}
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>주소록:수정화면</h2>
<hr>
<a href=addrbook_control.jsp/action=list>[주소록 목록 보기]</a><p>
<form name=form1 method=post action=addrbook_control.jsp>
<table border="1">
<tr>
	<th>이름</th>
	<td><input type=text name=ab_name value="<%=ab.getAb_name()%>"></td>
</tr>
<tr>
	<th>email</th>
	<td><input type=text name=ab_email value="<%=ab.getAb_email()%>"></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type=text name=ab_tel value="<%=ab.getAb_tel()%>"></td>
</tr>
<tr>
	<th>생일</th>
	<td><input type=date name=ab_birth value="<%=ab.getAb_birth()%>"></td>
</tr>
<tr>
	<th>회사</th>
	<td><input type=text name=ab_comdept maxlength="20" value="<%=ab.getAb_comdept()%>"></td>
</tr>
<tr>
	<th>메모</th>
	<td><input type=text name=ab_memo value="<%=ab.getAb_memo()%>"></td>
</tr>
<tr>
	<td colspan=2 align=center><input type=submit value="저장"><input type=reset value="취소"><input type="button" value="삭제" onClick="delcheck()"></td>
</tr>
</table>


</form>
</div>
</body>
</html>