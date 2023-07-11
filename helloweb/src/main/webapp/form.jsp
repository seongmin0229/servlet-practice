<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join.jsp" method="post">
		<label>이메일 : </label>
		<input type="text" name="email">
		<br><br>
		<label>비밀번호</label>
		<input type="password" name="pw">
		<br><br>
		<label>생년</label>
		<select name="birthyear">
			<option value="2000">2000년</option>
			<option value="2001">2001년</option>
			<option value="2002">2002년</option>
		</select>
		<br><br>
		<label>성별</label>
		여자<input type="radio" name="gender" value="femail" checked="checked">
		남자<input type="radio" name="gender" value="mail">
		<br><br>
		<label>자기소개</label>
		<textarea name="profile"></textarea>
		<br><br>
		<label>취미</label>
		<input type="checkbox" name="hobby" value="coding"> 코딩
		<input type="checkbox" name="hobby" value="drinking"> 술먹기
		<input type="checkbox" name="hobby" value="cooking"> 요리
		<input type="checkbox" name="hobby" value="swimming"> 수영
		<br><br>
		<input type="submit" value="회원가입" >
	</form>
</body>
</html>