<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>���ȿ�����::����</title>
<link href="/inc/text_style.css" rel="stylesheet">
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-image:url("/img/bimg.jpg");
	background-repeat:repeat-x;
	margin: 0;
	padding: 0;
	color: #000;
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
	width: 80%;
	max-width: 1000px;/* ���� ����Ϳ��� �� ���̾ƿ��� ����ġ�� �о����� ���� �����ϱ� ���� max-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	min-width: 1000px;/* �� ���̾ƿ��� ����ġ�� �������� ���� �����ϱ� ���� min-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� ���̵� ������ �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	
	margin: 0 auto; /* ���� �ڵ� ��, ������ ����, ���̾ƿ� ��� ����. .container�� ���� 100%�� �����ϴ� ��쿡�� �ʿ����� �ʽ��ϴ�. */
}

/* ~~�Ӹ��ۿ��� ���� �������� �ʽ��ϴ�. ���̾ƿ��� ��ü ���� Ȯ��˴ϴ�. ����� ��ü �ΰ�� ��ü�Ǿ�� �ϴ� �̹��� �ڸ� ǥ���ڸ� �����մϴ�.~~ */
.header {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-image:url("/img/bImgTop2.gif");
	background-repeat:repeat-x;
	padding: 0;
	color: #000;
	vertical-align:bottom; /* */ 
    bottom: 100; /*ž�޴� ��ġ�� �����ϴ� �� */
    position:fixed; /*� ������� �Ҳ��� �����ϴ� �� fixed�� ��ũ�Ѱ� ������� ���� */
	height:200px;
	width:100%;
	min-width:1100px;


}
.headerin {
	
	max-width: 1000px;/* ���� ����Ϳ��� �� ���̾ƿ��� ����ġ�� �о����� ���� �����ϱ� ���� max-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	min-width: 1000px;/* �� ���̾ƿ��� ����ġ�� �������� ���� �����ϱ� ���� min-width�� ����� �� �ֽ��ϴ�. �� �Ӽ��� ����ϸ� ���̵� ������ �� ���̸� ���� ���� ���� �� �ֽ��ϴ�. IE6������ �� ������ ������� �ʽ��ϴ�. */
	height:800px;
	width:1000px;
	padding: 10px 0;
	margin: 0 auto;
	
	
}
.topmenu {
	
	
	padding: 0px 0;
}
.toplogo {
	float:left;
	width:220px;	
}
.topmenu1 {
	height:40px;
	width:100%;	
}
.topmenu2 {
	height:50px;
	width:100%;	
}
.topmenu3 {
	width:100%;	
}

/* ~~ ���̾ƿ� �����Դϴ�. ~~ 

1) �е��� div�� ���� ��/�Ǵ� �Ʒ��ʿ��� ��ġ�˴ϴ�. �� div�� ���Ե� ����� ��� ���鿡 �е��� �ֽ��ϴ�. �̸� ���� "���� �� ����"���� ���ܵ˴ϴ�. div ��ü�� ���� �е� �Ǵ� �׵θ��� �߰��ϸ� *��ü* ���� ����� ���� ������ ���� �߰��˴ϴ�. div ���� ��ҿ��� �е��� �����ϰ�, �����ο� �ʿ��� �е��� ���� ���� ���·� ���ο� �� ��° div�� ��ġ�� ���� �ֽ��ϴ�.

*/
.content {
	
	height:800px;
	width:1000px;
	padding: 10px 0;
	background-image:url("/img/main.png");


}

/* ~~ �׷�ȭ�� �� ���ñ�� .content ���� ������ ����� �����մϴ�. ~~ */
.content ul, .content ol { 
	padding: 0 15px 15px 40px; /* �� �е��� �Ӹ����� ������ �е��� ���� �ܶ� ��Ģ�� �̷����մϴ�. �е��� ��Ͽ��� �ٸ� ��ҵ� ������ ���� �Ʒ��ʰ� �鿩���� ������ ���� ���ʿ� ��ġ�Ǿ����ϴ�. �е��� ���ϴ� ��� ������ �� �ֽ��ϴ�. */
}

/* ~~ �ٴڱ� ~~ */
.alim {
    padding: 6px 0;
	background-color:#EAEAEA;
}
.foothead {
	padding: 10px 0;
}
	
.footer {
	padding: 10px 0;
	
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



	
    
   
    
	<div class="header" style="filter: alpha(opacity=100); width: 100%; font-family: Tahoma, Geneva, sans-serif; font-size: larger; color: #000;">
    		
            <div class="headerin" style="filter:alpha(opacity=100)" style="margin:auto">
				
                   <div class="toplogo" align="left">
                     <div align="left"><a href="/index.jsp"><img src="img/logo.gif" width="220" height="90" /></a></div>
                   </div>
                   
                   <div class="topmenu">
                   
        
        					<%if(session.getAttribute("id")==null){        %>
        					<div class="topmenu1" align="right">
			  				  <font color="#979797" size="3">���ȿ� ����::����</font>				  
		  					  </div>
      	  	 
      						<%
					        }else if(session.getAttribute("id")!=null){
					       
					        if(session.getAttribute("kind").equals("somae") || session.getAttribute("kind").equals("client") ||session.getAttribute("kind").equals("domae")){
					        %>
					        <div class="topmenu1" align="right"><font size="2">
					        	��<%=session.getAttribute("id")%>���� ȯ���մϴ�
      
      						<input type="button" name="delete"  value="�α׾ƿ�"  onclick="location.href='logout.jsp'"/>
     
 	   						</font></div>
         					<%
        					}else if(session.getAttribute("kind").equals("admin")){
        				        %>
        				        <div class="topmenu1" align="right"><font size="2">
        			        	���� �� �ڡ��� ȯ���մϴ�
        			      
        			      		<input type="button" name="delete"  value="�α׾ƿ�"  onclick="location.href='logout.jsp'"/>
        			     		</font></div>
        			         	<%
        			        	}
        			        }
        			            %>
                   
          					</div>
                            <div class="topmenu2">
          						<h5 align="right">
            						<a href="/infor.jsp"><font color="#626262">poncoo.com</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            						<a href="/search.jsp"><font color="#626262">Ŀ�����˻�</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            						<a href="/propo.jsp"><font color="#A4042D">Ŀ������õ</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            						<a href="/memberIn.jsp"><font color="#626262">���Խ�û</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            						<a href="/appl.jsp"><font color="#626262">���ùޱ�</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            						<a href="/service.jsp"><font color="#626262">������</font></a>
            					</h5>
        					</div>
        						<%
								if(session.getAttribute("id")==null){
        						%>
                                <div class="topmenu3">
        							<form action="Login2.jsp" method="post">
							<div align="left">
				  				<input type="text" name="id" size="10" value="���̵�" onfocus="this.value='';">
				  				<input type="password" name="pw" size="10" value="��й�ȣ" onfocus="this.value='';">				  
				  				<input type="submit" value="�α���">				  
			  				</div>
      	  							</form>  
                                    </div>
      							<%
								}else if(session.getAttribute("id")!=null){
							        %>
							        <%
							        if(session.getAttribute("kind").equals("somae")){
							        %>
							        	<div align="left">
							        	<input type="button" name="edit" value="��������" onclick="location.href='coupon/FindClientStamp.jsp';"/>
							         	<input type="button" name="edit" value="��������" onclick="location.href='DBgetid.jsp';"/>
										</div>							        
							        <%
							        
							        %>
							        <%}else if(session.getAttribute("kind").equals("admin")){%>
							            <div align="left">
							            <input type="button" name = ""  value="������������" onclick="location.href='/admin/admin.jsp'"/>
							      		</div>
							            
											<%
							     			}
							        }
							     			%>  
            
      <!--topmenu end-->
                      </div>
                   <!--headin end-->
                   </div>
             
             
             
             
             
             
            	
                
                
            
		
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
          <!--header end-->
    
    </div>		

        
        
    	<div class="container" style="filter:alpha(opacity=100)"> 
    
               
            	
                
             
             
             
             
                

     	
        	<div class="content">
       	  </div>
        
        
        	<div class="foothead" align="center">
        		<img src="/img/foothead.png">
        	</div>
        
        
        
        
        
        	<div class="footer">
        
        		<iframe src="/footer.jsp" width="1000" height="100" frameborder="0" scrolling="no"></iframe>
        
        	</div>
        
</div>
			
</body>
</html>
