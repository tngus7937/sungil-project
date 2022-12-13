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
    //td 속성 요소값들을 반복해서 출력(td속성 갯수만큼), :not을 통해 align_center class의 td 요소는 제외 (알림 부분)
      out.println(e.text());   
      out.println("|");	//복잡해져 구분을 위함
      i++;
      if(i==2){
        out.println("<br>"); //마찬가지로 문자열을 다듬어주었다.
        i=0;
      }

     }

%>
		</div>
		<jsp:include page = "layout/footer.jsp"></jsp:include>
	</body>
</html>