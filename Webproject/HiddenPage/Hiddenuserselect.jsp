<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="project.*" %>
    <%request.setCharacterEncoding("euc-kr");%>
    
   <jsp:useBean id="hidden" class="project.HiddenbeanDTO"  scope="session"/>
   <jsp:setProperty property="*" name="hidden"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����˻� ����������~</title>
</head>
<body>
	<%
  	int result = HiddenbeanDAO.getHiddenbeanDAO().selectSomae(hidden);
	if(result > 0){
		%>
			<form action="Hiddensee.jsp" method="post">
			<select name="somaelist" style='width:150px'>
		<%
		for(int i = 0 ; i < result ; i++){
			%>

				<option value='<%=hidden.getArr().get(i) %>'><%=hidden.getArr().get(i) %></option>
			<%
		}
		%>
		</select>
		<input type="submit" value="Ȯ��">
		</form>
		<%
	}else{
	%>
		<script type="text/javascript">
		alert("Ȯ�� �� �� �ִ� �����Ͱ� �����ϴ�.");
		history.back();
		</script>
		<%
		} %>
</body>

</html>