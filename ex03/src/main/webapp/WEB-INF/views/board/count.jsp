<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재 리플업데이트 개수는:<span id="abc"></span>(매5초마다 갱신)

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
updateData();

function updateData(){
    $.ajax({
      url: "/replies/count",
      type: "get",
      cache : false,
      success: function(data){ 
       $('#abc').html(data);
      }
    });
  setTimeout("updateData()", 5000); // 5초 단위로 갱신 처리
}



</script>
</body>
</html>