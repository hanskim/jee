/**
 * @Date  : 2015.06.18
 * @Author : hanskim
 * @Stroy : 회원 가입시 동의 체크
 */

var searchID= function(url){
	    window.open(
					url,
					"searchID",
					"scrollbars,toolbar=no, location=no, directories=no,status=no, menubar=yes, width=600,top=200,left=400 ");
	/* 해당 줄바꿈 하면 에러남... 반드시 한 줄로 처리 */
}

var searchPass = function(url) {
	window.open(
			         url ,
					"searchPass",
					"scrollbars,toolbar=no,location=no,directories=no,status=no, menubar=yes, width=600,top=200,left=400 ");
	/* 해당 줄바꿈 하면 에러남... 반드시 한 줄로 처리 */
}
 

var agreeChk = function(){    
	
	/*var 를 안붙이면 agreeChk은 static , 붙이면 인스턴스변수*/
    /* 함수 내부에 있으면 지역변수*  자바스크립트에서는 static 쓰지 마라..*/
	
   var req = document.form.req.checked;  
   
   /*윈도우 = 오브젝트 /   document   = 최상위 타입 /form = form태그의 이름 
    *  req = input 태그의 이름 / checked  체크상태   */
   
   var num = 0;
   if(req == true){
    num = 1;
   }
   if(num==1){
    document.form.submit();
   }else{
    alert("개인정보 약관에 동의하셔야 합니다.");
   }
  }
