<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%request.setCharacterEncoding("euc-kr"); %>
   <%@page import="project.HiddenbeanDAO"%>
   <jsp:useBean id="hidden" class="project.HiddenbeanDTO"  scope="session"/>
   <jsp:setProperty property="*" name="hidden"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� ���� ����</title>
</head>
<body>
<%
	int result = HiddenbeanDAO.getHiddenbeanDAO().selectSomaeUser(hidden);
	
	int cnt = result % 10;
	int hanjan = result / 10;
	
	out.println(hanjan+"��\n"+cnt+"�� �ֽ��ϴ�.");

%>

<form action="Hiddenindex.jsp">
<input type="submit" value="����ȭ������">
<input type="button" value="�ٸ�����Ȯ��" onclick="location.href='Hiddenuserselect.jsp'">
</form>
</body>
</html>