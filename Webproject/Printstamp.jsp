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
    <jsp:useBean id="client" class="project.Clientgum" scope="session" />
    <jsp:setProperty property="*" name="client"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Stamp �� ���ô�.</title>
</head>

<script>if(top!=self) top.location=this.location;</script>

<body>

<div align="center">

<%

int tmp,hanjan,cnt;
	tmp=client.prin((String)session.getAttribute("id"));//������ ���� �� ������ �޾��ش�
	hanjan=tmp/10;//�������� ���� �����̰�
	cnt=tmp%10;//������ ���� �� ���� �޾��ְ�
	client.jointime((String)session.getAttribute("id"));
	if(tmp!= -1){
		 client.setCnt(cnt);//ȭ�鿡�� ���� ������ ����ָ� ���� �������� ��ȣ��������
		 client.setHanjan(hanjan);//�� ��ü�� ���󰡱� ������ scope�� session���� ����ְ�
		 							//���������������� �������� ���ܰ� �������� ����
		%>
		<script type="text/javascript">
		location.replace("../pon/mponcoo<%=cnt%>.jsp");//���� ���� ������ ��� ������ ȣ��
		</script>
		
		<%
		
	}else{//���ܷ� �Ѿ���� ����-->ó��
		%>
		<script type="text/javascript">
		alert("�߸��� �����Դϴ�.");
		location.replace("FindClientStamp.jsp");//���� ��� ȭ������ ������
		</script>
		<%
	}
		%>
	</div>
</body>
</html>