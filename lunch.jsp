<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<link rel = "stylesheet" type = "text/css" href = "css/style.css">
	</head>
	<body>
		<jsp:include page = "layout/header.jsp"></jsp:include>
		<jsp:include page = "layout/nav.jsp"></jsp:include>
		<div id = "section">
			<% 
	Document doc = Jsoup.connect("http://www.schoolinfo.go.kr/ei/ss/Pneiss_b01_s0.do?GS_CD=S130000359").get();

	Elements posts = doc.body().getElementsByClass("owl-carousel owl-theme owl-loaded owl-drag");
	
	int i=0;
    for(Element e : posts.select("li:not(.align_center)")){
    //td �Ӽ� ��Ұ����� �ݺ��ؼ� ���(td�Ӽ� ������ŭ), :not�� ���� align_center class�� td ��Ҵ� ���� (�˸� �κ�)
      out.println(e.text());   
      out.println("|");	//�������� ������ ����
      i++;
      if(i==2){
        out.println("<br>"); //���������� ���ڿ��� �ٵ���־���.
        i=0;
      }

     }

%>
		</div>
		<jsp:include page = "layout/footer.jsp"></jsp:include>
	</body>
</html>