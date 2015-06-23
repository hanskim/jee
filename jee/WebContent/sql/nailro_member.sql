create table MEMBER(
   name varchar2(50),  -- 회원 이름--
   id varchar2(50),    -- 회원아이디--
   pass varchar2(50),  --회원 패스워드--
   age number, -- 회원나이--
   cellPhone varchar2(50), --회원 핸드폰 번호--
   telNo varchar2(50),  --회원 핸드폰 번호--
   gender varchar2(50),   -- 회원성별--
   email varchar2(50),    --회원이메일--
    
    --이상 회원가입 <I> 필요 변수--
    memo varchar2(50),     --회원 탈퇴, 가입 메세지 입력--
    --이상 메세지 보내기 <I> 필요 변수--
    rank  varchar2(50),    --회원 등급코드--
    rankName varchar2(50)    -- 회원 등급명--
    --이상 게시판 후기 필요한 변수 ( + memberId+ memberPasswordl)--
);
commit;










