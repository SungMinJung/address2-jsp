<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="kpu.club.domain.AddrVO, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주소록 리스트</title>
<link rel="stylesheet" href="resources/address.css" type="text/css"></link>
<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet"></link>
<style>
body{
		background-image:url('resources/list.gif');
		
	bakcground-attachment:fixed;
	background-position:bottom left;
	background-color:#FFEBCD;
	background-repeat:no-repeat;
	background-size: 35% 70%;
}

</style>
</head>
<body>
<header>Study Club AddressBook List</header>
<hr>
<div align=center>
<a href="club_main.html">메인 페이지로 이동</a>
	<table>
		<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td></tr>
		<%
			List<AddrVO> addrList=(List<AddrVO>)request.getAttribute("addressList");
			for(AddrVO vo: addrList){
				
			
		%>
		<tr>
		<td><%=vo.getUsername() %></td>
		<td><%=vo.getTel() %></td>
		<td><%=vo.getEmail() %></td>
		<td><%=vo.getSex() %></td>
		</tr>
		<%} %>
	</table>
</div>
</body>
</html>