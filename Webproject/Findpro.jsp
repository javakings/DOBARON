<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); 
    String kind = (String)session.getAttribute("kind");
    if(kind == null){
    	response.sendRedirect("../index.jsp");
    }
    if(kind.equals("somae")){  
    }else if(kind.equals("admin")){
    }else{
    	response.sendRedirect("../index.jsp");
    }
    %>
    <jsp:useBean id="client" class="project.Clientgum" scope="session"/>
    <jsp:setProperty property="*" name="client"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>:::::������:::::</title>
</head>
<body>
<%
	
	if(client.gum())//���̺� �˻��ϴ� ���� ����Ÿ���� //  boolean
	{	//���� ��ü�� �ѱ涧 �������������� ��� �����һ� �������� NULL�̴� �׷��� �����带 �̿��ϸ� �״��������������� �̿밡��
		
		%>
		<jsp:forward page="Printstamp.jsp"></jsp:forward>
		<%
		
		//������ ���		
	}else{
		 %>
		 <script type="text/javascript">
		 if(confirm("ȸ�������Ͻðڽ��ϱ�?")){
			 <%	//����� �̹� ���� �Ҹ� ���̵�� �α����� ���¾� ���� ���̺� ã���ʿ�� ����!!!!!!!!!!!!!!!!!
				//InPut �ȿ� �������� ���̵� �Է¹޾Ƽ� ���̺�� �ٷ� �ѱ��
				
				//ȸ������ ��Ű�� �޼��� ���ϰ� �Ҹ� �Ͽ� ���̺� �Ѵ� ���ڱ� �����س���
				//�ٽ� ��ȣ�Է����� ���ư��� �޼���
			 %>
			 location.replace("NewClient.jsp");
		 }else{
			 history.back();
		 }
		 </script>
		<%
	}
%>
</body>
</html>