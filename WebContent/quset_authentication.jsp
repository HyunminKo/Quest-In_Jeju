<%@ page contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"
language="java" %>
<%

	System.out.println(request.getParameter("item_id"));
%>


<html lang="ko">
  <head>
    <title>퀘스트 인증</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="static/css/quest_authentication.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script
      type="text/javascript"
      src="http://code.jquery.com/jquery-2.1.0.min.js"
    ></script>
  </head>

  <body>
    <%@include file="header.html"%>

    <div class="container text-center">
      <div class="panel panel-default" id="outer-panel">
        <div class="panel-heading">
          <h3 class="panel-title">임의로넣기</h3>
        </div>
        <div class="panel-body" id="inner-panel">
          <div class="panel panel-default" id="user-location">
            <a id="user-location-confirm-btn" onclick="getLocation()"
              >현재 위치 확인하기</a
            >
          </div>
          <div class="panel panel-default" id="image-upload">
            <img id="image-print" src="#" />
            <div id="image-upload-text">
              <p>장소 이름이 나온 사진을 올려주세요</p>
            </div>
          </div>
          <div class="form-group" id="outer-camera">
            <label for="exampleInputFile">촬영 또는 앨범에서 선택하기</label>
            <input type="file" id="exampleInputFile" />
          </div>
        </div>
        <div class="form-group" id="authentication_submit">
          <label for="submit-btn">완료</label>
          <!--input type="submit" id="submit-btn"-->
        </div>
      </div>
    </div>
  </body>

  <script type="text/javascript">
    $(function() {
      $("#exampleInputFile").on("change", function() {
        readURL(this);
      });
    });

    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $("#image-print").attr("src", e.target.result);
          $("#image-print").show();
          $("#image-upload-text").hide();
          $("#inner-camera").show();
          $("#outer-camera").show();
        };

        reader.readAsDataURL(input.files[0]);
      }
    }
  </script>

  <script src="static/js/user_location.js"></script>
</html>
