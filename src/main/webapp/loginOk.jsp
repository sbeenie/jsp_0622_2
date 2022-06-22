<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
	
		if(mid.equals("tiger") && mpw.equals("12345")){
			
			Cookie cookie_id = new Cookie("memberId", "mid");
			Cookie cookie_pw = new Cookie("memberPw", "mpw");
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			out.print("안녕하세요. " + mid + "님 로그인하셨습니다.<br>");
			out.print("쿠키가 생성되었습니다.");

		} else{
			response.sendRedirect("login.jsp");
		}
	%>
	<br>
	<a href="cookieCheck.jsp">쿠키 정보 확인하기</a>
</body>
</html>