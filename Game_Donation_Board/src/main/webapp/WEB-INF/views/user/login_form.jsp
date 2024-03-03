<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/css/login.css">
<style type="text/css">
.logo {
    margin-right: 35%; /* 오른쪽 여백을 화면 너비의 5%로 지정 */
    position: relative; /* 로고 위치를 상대적으로 설정 */
    top: -20px; /* 로고를 위로 10px 이동 */
    
}

/* 작은 화면에 대한 스타일 */
@media screen and (max-width: 768px) {

	.container{
		width : 400px;
	}
  .overlay-container {
   display: none; /* 작은 화면에서는 overlay-container 숨김 */
  }

  .form-container {
    width: 100%; /* form-container의 너비를 100%로 설정 */
  }
  
  input[type="text"],
  input[type="email"],
  input[type="password"] {
    width: 50%; /* input 태그의 너비를 조정합니다. */
    /* 필요에 따라 다른 스타일도 추가할 수 있습니다. */
  }
}



</style>

</head>

<body>
<div>


<a href="board_list" class="logo"><img src="resources/assets/images/logo.png" alt=""></a>
<div class="container" id="container">
  <!-- 회원가입 -->
  <div class="form-container sign-up-container">
    <form>
      <h1>Create Account</h1>
      <div class="social-container">
        <a href="#" onclick="location.href='${urlNaver}'" class="social"><img src="resources/img/NaverBtn.png" ></a>
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=abc320a5a43005c6fe87b9f765fda4cb&redirect_uri=http://localhost:9090/board/kakaoLogin&response_type=code">
        	<img src="resources/img/KakaoBtn.png"></a>
      </div>
      <span>or use your email for registration</span>
	    <input type="text" name="user_name" id="user_name"  oninput="checkName(this.form)" placeholder="Name" /><span style='color:red;'id="check_name"></span>
		<input type="email" name="user_email" id="user_email" oninput="checkEmail(this.form)" placeholder="Email" /><span style='color:green;'id="check_email"></span>
		<input type="password" name="user_pw" id="user_pw"  oninput="checkPw(this.form)" placeholder="Password" /><span style='color:red;' id="check_pw"></span>
 
      <button type = "button" onclick="send(this.form)">Sign Up</button>
    </form>
  </div>
  
  <!-- 로그인 -->
  <div class="form-container sign-in-container">
    <form>
      <h1>Sign in</h1>
      <div class="social-container">
        <a href="#" onclick="location.href='${urlNaver}'" class="social"><img src="resources/img/NaverBtn.png" ></a>
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=abc320a5a43005c6fe87b9f765fda4cb&redirect_uri=http://localhost:9090/board/kakaoLogin&response_type=code">
        	<img src="resources/img/KakaoBtn.png"></a>
      </div>
      <span>or use your account</span>
      <input type="email" name="user_email" id="login_email" oninput="LoginCheckEmail(this.form)" placeholder="Email" /><span style='color:red;'id="checklog_email"></span>
      <input type="password"name="user_pw" id="login_pw"  oninput="LoginCheckPw(this.form)" placeholder="Password" /><span style='color:red;' id="checklog_pw"></span>
      <!-- 추가 구현 비밀번호 -->
      <a href="#">Forgot your password?</a>    
        
   	  <button type = "button"onclick="login(this.form)">Sign In</button>
    </form>
  </div>
  
  <!-- 회원가입 / 로그인 사이드바  -->
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Welcome Back!</h1>
        <p>세상에 하나뿐인 특별한 프로젝트를
        발견해보세요!</p>
        <button class="ghost" id="signIn">Sign In</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>이메일로 가입하기</h1>
      	<p>후원을 기다리는 창작자를 만나보세요!</p>
        <button class="ghost" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>
</div>
</body>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="resources/js/httpRequest.js"></script>
<script src="resources/js/login.js"></script>
</html>