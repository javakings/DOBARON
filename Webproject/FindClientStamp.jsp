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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>���ȿ�����::����</title>
<link href="/inc/text_style.css" rel="stylesheet">
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-image:url("/img/bImgTop.jpg");
	background-repeat:repeat-x;
	margin: 0;
	padding: 0;
	color: #000;
	height:100%;
}

/* ~~ ���/�±� ���ñ� ~~ */
ul, ol, dl { /* ���������� �ٸ��Ƿ� ����� �е��� ������ 0���� �����ϴ� ���� ���� �����ϴ�. �ϰ����� ����, ���⿡�� �Ǵ� �����ϰ� �ִ� ��� �׸�(LI, DT, DD)���� ���ϴ� ũ�⸦ ������ �� �ֽ��ϴ�. ���� ��ü���� ���ñ⸦ ���� �ʴ� �� ���⿡�� ������ �۾��� .nav ��Ͽ� ��ܽ����� ǥ�õ˴ϴ�. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* ���� ������ �����ϸ� ���Ե� div���� ������ �̽��������Ǵ� ������ ������ �� �ֽ��ϴ�. ������ �Ʒ��� ������ �̾����� ��ҿ��� �� ������ �����մϴ�. */
	padding-right: 15px;
	padding-left: 15px; /* div�� ���� �߰��ϴ� ��� div ���� �ִ� ����� ���鿡 �е��� �߰��ϸ� ���� �� ������ ���ŵ˴ϴ�. ���� �е��� �ִ� ��ø�� div�� ��ü �޼���� ����� ���� �ֽ��ϴ�. */
}
a img { /* �� ���ñ�� ��ũ�� �ѷ����� �̹��� �ֺ��� �ִ� �Ϻ� �������� ǥ�õ� �Ķ��� �⺻ �׵θ��� �����մϴ�. */
	border: none;
}

/* ~~ ����Ʈ ��ũ�� ��Ÿ�ϸ��� Ŀ�� ���� ȿ���� �����ϴ� ���ñ� �׷��� �����Ͽ� �� ������� ���� �־�� �մϴ�. ~~ */
a:link {
	color:#414958;
	text-decoration: underline; /* �ſ� ��Ư�ϰ� ���̵��� ��ũ�� ��Ÿ���� �����ϴ� ��츦 �����ϰ�� �ð������� ������ �ĺ��ǵ��� ������ �����ϴ� ���� ���� �����ϴ�. */
}
a:visited {
	color: #4E5869;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* �� ���ñ� �׷��� ���콺�� ����ϴ� ����� ������ Ŀ�� ���� ȯ���� Ű���� Ž���⿡ �����մϴ�. */
	text-decoration: none;
}

/* ~~ �� �����̳ʴ� ����� ������ ���� �����ϴ� �ٸ� ��� div�� �ѷ��Դϴ�. ~~ */
.container {

	width: 100%;
	max-width: 100%;/* ���� ����Ϳ��� �� ���̾ƿ��� ����ġ�� �о����� ���� �����ϱ� ���� max-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	min-width: 800px;/* �� ���̾ƿ��� ����ġ�� �������� ���� �����ϱ� ���� min-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� ���̵� ������ �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	
	/*margin: 0 auto;  ���� �ڵ� ��, ������ ����, ���̾ƿ� ��� ����. .container�� ���� 100%�� �����ϴ� ��쿡�� �ʿ����� �ʽ��ϴ�. */
}

/* ~~�Ӹ��ۿ��� ���� �������� �ʽ��ϴ�. ���̾ƿ��� ��ü ���� Ȯ��˴ϴ�. ����� ��ü �ΰ�� ��ü�Ǿ�� �ϴ� �̹��� �ڸ� ǥ���ڸ� �����մϴ�.~~ */
.header {
 	height:100px;
	vertical-align:middle;
}

/* ~~ ���̾ƿ� �����Դϴ�. ~~ 

1) �е��� div�� ���� ��/�Ǵ� �Ʒ��ʿ��� ��ġ�˴ϴ�. �� div�� ���Ե� ����� ��� ���鿡 �е��� �ֽ��ϴ�. �̸� ���� "���� �� ����"���� ���ܵ˴ϴ�. div ��ü�� ���� �е� �Ǵ� �׵θ��� �߰��ϸ� *��ü* ���� ����� ���� ������ ���� �߰��˴ϴ�. div ���� ��ҿ��� �е��� �����ϰ�, �����ο� �ʿ��� �е��� ���� ���� ���·� ���ο� �� ��° div�� ��ġ�� ���� �ֽ��ϴ�.

*/
.content {
	
	height:100%;
	width:100%;
	padding: 0px 0;
}

/* ~~ �׷�ȭ�� �� ���ñ�� .content ���� ������ ����� �����մϴ�. ~~ */
.content ul, .content ol { 
	padding: 0 15px 15px 40px; /* �� �е��� �Ӹ����� ������ �е��� ���� �ܶ� ��Ģ�� �̷����մϴ�. �е��� ��Ͽ��� �ٸ� ��ҵ� ������ ���� �Ʒ��ʰ� �鿩���� ������ ���� ���ʿ� ��ġ�Ǿ����ϴ�. �е��� ���ϴ� ��� ������ �� �ֽ��ϴ�. */
}

/* ~~ �ٴڱ� ~~ */
.footer {
	height:100%;
	padding: 0px 0;
	background-color: #6F7D94;
	height:auto;
}

/* ~~ ��Ÿ �ε�/Ŭ���� ����� ~~ */
.fltrt {  /* �� Ŭ������ ���������� ������ ��Ҹ� �ε�ȭ�ϴ� �� ���� �� �ֽ��ϴ�. �ε�ȭ�� ��Ҵ� ���������� ���� �ִ� �ٸ� ����� ���ʿ� ��ġ�Ǿ�� �մϴ�. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* �� Ŭ������ ���������� ���� ��Ҹ� �ε�ȭ�ϴ� �� ���� �� �ֽ��ϴ�. �ε�ȭ�� ��Ҵ� ���������� ���� �ִ� �ٸ� ����� ���ʿ� ��ġ�Ǿ�� �մϴ�. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* #container���� #footer�� ���ŵǰų� ������ ��� <br /> �� Ŭ������ ������ �ε� div(#container ��) �ڿ� ���� ���� ��ҷ� �� div�� ��ġ�� �� �ֽ��ϴ�. */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->
A:link {text-decoration:none}
A:visited {text-decoration:none}
A:hover {text-decoration:none}
</style>

<script type="text/javascript">


function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}



</script>
</head>

<body>

<div class="container" style="filter:alpha(opacity=100)" align="center">

	<div style="height:80px;"></div>
  <div class="header" style="filter: alpha(opacity=100); font-family: Tahoma, Geneva, sans-serif; font-size: small; color: #FFF;">
  	
  		<h1 align="center" >
        	<a href="../index.jsp"> <font color="#BBBBBB">PonCoo</font></a>&nbsp;&nbsp;&nbsp;
            <a href="/coupon/FindClientStamp.jsp"><font color="#66FFCC">�����Է�</font></a>&nbsp;&nbsp;&nbsp;
           	<a href="/couboard/shopBoard.jsp"><font color="#BBBBBB">�Խ���</font></a>&nbsp;&nbsp;&nbsp;
            <a href="/selectSomae/couponList.jsp"><font color="#BBBBBB">����������ȸ</font></a>&nbsp;&nbsp;&nbsp;
            <a href="/selectSomae/couponList.jsp"><font color="#BBBBBB">SMS�޼���</font></a>&nbsp;&nbsp;&nbsp;
        </h1> 
        
	
  </div>
  
  
  	<div class="content" align="center" >
   
   		<iframe src="FindClientStamp-ori.jsp" align="top" width="1010px" height="300px" scrolling="no" frameborder="0"></iframe>
        
    <!-- end .content -->
  	</div>
  	<div class="footer" align="center">
 
		<iframe src="../footer.jsp" width="100%" height="80px" frameborder="0" scrolling="no" ></iframe>
    
  	<!-- end . footer-->
  	</div>
  	<!-- end . container -->
</div>
</body>
</html>
