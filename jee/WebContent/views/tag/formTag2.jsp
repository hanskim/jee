<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼 태그 2</title>
</head>
<body>
	<form action="">
	<fieldset>
	<legend>체크박스와 라디오버튼</legend>
	[ 문제 :어벤져스케릭터를 모두 고르시오 ]<br />
	
	<input type="checkbox" name ="avengers" value="iron"  checked="checked"/>아이언맨
	<input type="checkbox" name ="avengers" value="hulk"  />헐크
	<input type="checkbox" name ="avengers" value="captineAmerica"  />캡틴아메리카
	<input type="checkbox" name ="avengers" value="ulverine"  />울버린
	<input type="checkbox" name ="avengers" value="hanskim"  />김한식<br />
	
	[성별을 선택하시오]<br />
	<input type="radio" name ="gender" value="male" checked="checked"/>남자
	<input type="radio" name ="gender" value="female" />여자<br />
	
	[거주지를 선택하시오]
	<select name="city" id="city" size="1">
	 <option value="Seoul">서울</option>
	 <option value="SuWon">수원</option>
	 <option value="Ansan">안산</option>
	 <option value="PyngTak">평택</option>
	 <option value="Guro">구로</option>
	</select><br />
	<input type="submit" value="전송" />
	<input type="reset" value="취소" />
	
	
	</fieldset>
	
	</form>
	
</body>
</html>