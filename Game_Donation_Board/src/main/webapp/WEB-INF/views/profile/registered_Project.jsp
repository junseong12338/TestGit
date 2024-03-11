<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>EZ Funding</title>
    
    <link rel="stylesheet" href="resources/css/sponsorshipdetails.css">
    <link rel="stylesheet" href="resources/css/menu.css">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/fontawesome.css">
    <link rel="stylesheet" href="resources/css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="resources/css/owl.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  
  <%@ include file= "/WEB-INF/views/board/menu.jsp" %>
  
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">
            <div class="row">
                <div class="col-3g-8">
                    <h4><em>내가 등록한</em> 프로젝트</h4><br>
                    
            <!-- <p class="section-description" id="history-count">0건의 내역이 있습니다.</p><br> -->
         	
         	<c:forEach var="dto" items="${projectList}">
         	<c:set var="list_useridx" scope="request" value="${dto.user_idx}"/>
         	<c:set var="email_useridx" scope="request" value="${user_email.user_idx}"/>
         	<c:if test= "${list_useridx eq email_useridx}">
         	<div>
        		<h5>${dto.project_title}</h5> <!-- 프로젝트 제목 표시 -->
        	<div>${dto.project_content}</div>
        	
        		<img src="${dto.project_img}">
    		</div>
    		</c:if>
         	</c:forEach>
    </div>
        </div>
        </div>
    </div>
  </div>
  </div>
  
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2036 <a href="#">Cyborg Gaming</a> Company. All rights reserved. 
          
          <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a>  Distributed By <a href="https://themewagon.com" target="_blank" >ThemeWagon</a></p>
        </div>
      </div>
    </div>
  </footer>
  <script src="resources/js/menu.js"></script>
  <script src="resources/jquery/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/isotope.min.js"></script>
  <script src="resources/js/owl-carousel.js"></script>
  <script src="resources/js/tabs.js"></script>
  <script src="resources/js/popup.js"></script>
  <script src="resources/js/custom.js"></script>
  
</body>
</html>