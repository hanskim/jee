<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>폼 생성</title>
    </head>
    <body>
    <div>
    
    폼에 데이터를 입력한 후 전송 버튼을 클릭하세요
    
    <form action="viewParameter.jsp" method="GET">
    이름 : <input type="text" name ="name" size ="10" /> <br />
    주소 : <input type="text" name ="address" size ="30" /> <br />
    좋아하는 동물<br />
    <input type="checkbox" name ="pet" value ="dog" />강아지 <br />
    <input type="checkbox" name ="pet" value ="cat" />고양이 <br />
    <input type="checkbox" name ="pet" value ="pig" />돼지 <br />
    <input type="submit" value ="전송" /> <br />
    
    </form>
    
	
    </div>
    </body>
    </html>