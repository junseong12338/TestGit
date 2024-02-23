<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <script src="../../../resources/js/summernote-lite.js"></script>
    <script src="../../../resources/js/summernote-ko-KR.js"></script>

    <link rel="stylesheet" href="../../../resources/css/summernote-lite.css" />

    <script>
      $(document).ready(function () {
        $("#summernote").summernote({
          height: 300, // 에디터 높이
          minHeight: null, // 최소 높이
          maxHeight: null, // 최대 높이
          focus: true, // 에디터 로딩후 포커스를 맞출지 여부
          lang: "ko-KR", // 한글 설정
          placeholder: "최대 2048자까지 쓸 수 있습니다", //placeholder 설정
        });
      });
    </script>
  </head>
  <body>
    <form method="post">
      <textarea id="summernote" name="editordata"></textarea>
    </form>
  </body>
</html>
