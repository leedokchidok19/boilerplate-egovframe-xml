<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석부</title>
</head>
<body>

<h1>Hi</h1>

<section>

	<div class="user">
		<h3>인원 추가</h3>
		<form action="#">
			<input type="text" id="insertUser" name="abName" placeholder="이름을 입력 해주세요."/>
		</form>
	</div>

</section>

<div>${attendaceBookList}</div>

</body>
</html>