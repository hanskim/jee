
-- 데이블 생성 (DDL) --
create table MEMBER(
MEMBER varchar2(10) primary key,    --간편 추가시 , 하지만 나중에 추가하는 게 더 안전 
PASSWORD varchar2(10) unique,      --유니크는 더미값 처리 시 위험해서 가급적 쓰지 마라--
NAME varchar2(20) not null,
EMAIL varchar2(80) ,            -- 디폴트  : null 허용
constraint member_pk primary key(member),      
constraint member_fk_address foreign key(addressid) references ADDRESS(addressid)  -- 포린키 설정법--
   
);

create table ADDRESS(
address varchar2(10),
constraint address_pk_primary key(addressid)

)


-- 프라이머리 키 추가 ( 이미 테이블이 생성되었을 때) --

alter table member
add constraint member_pk primary key(id) ;


-- primary key 삭제
alter table member2
drop primary key ;


-- pk 문 조회 --

select table_name, constraint_name, constraint_type
from user_constraints
where table_name ='member2';



commit;

-- 테이블 삭제  (DDL) --
drop table MEMBER ; commit ;


-- 데이터 삽입 (1) (DML) --

insert into member(member,password, name, email)      -- 괄호를 생락해도 되는데 변수 순서대로 정확히 맞춰야 함--
values('hong','hong','홍길동','hong@naver.com');  commit ;-- String타입(literal) 이 등장한 것은 java 객체 개념의 등장하는 20년 후..--

-- 데이터 삽입 (2) (DML)--
insert into member
values('hong2','hong2','홍길동2','hong2@naver.com');  commit ;


-- 데이터 조회 (DML) --

select * from member ;


-- 데이터 조회(where절 사용) --
select * from  member where member ='hong';


-- 데이터 삽입 (2) --
insert into member
values('hong3','hong2','홍길동2','hong2@naver.com');  commit ;

-- 데이터 삽입 (2)  null 값(=email) 있는경우--
insert into member(member,password,name)
values('hong3','hong2','홍길동2');  commit ;

-- 두가지 조건을 가지고 검색 --
select * from member
where name= '홍길동' and email='hong@naver.com';

-- 같지 않음 검색  -> mySql에서만 먹힌다. --

select * from member
where email <> '' ;       --  sql  <> = 자바에서의  !=   --


-- null 인경우 --
select * from member
where email is null;

-- not null 인경우 --
select * from member
where email is not null;

-- 조건 검색  like  -- 

select * from member
where name like '홍%';

select * from member
where name like '%길%' ;


-- 정렬  --
select * from member
where name like '%길%' order by name asc ;   -- 오름차순 --

select * from member
where name like '%길%' order by name desc ;   -- 내름차순 --


-- 내장된 함수(sql은 속성과 메소드가 같이 있는게 아니라서 함수라고 한다.) --  

select count(*) from member ;   

-- 인스턴스 (row) 수량을 표시
-- 파라미터 자리에  * 은 전체갯수를 리턴 --
--   * (아스타리드)는 모든 프로그래밍의 공통적인 마크, Everything  --


-- 중복 정렬 --
select * from member
order by name asc , member asc ;

-- 데이터 수정 --
update member 
set name ='최길동'  
where member='hong3' and email is null;    


update  member
set member= 'hong2' , and email='choi'
where email is null;


-- 데이터 삭제 --
-- 테이블 삭제 (자바의 클래스 삭제)  :  drop   
-- 데이터 삭제 (자바의 인스턴스 삭제) 행  : row  : delete



delete from member
where email is 'choi@naver.com' ; 
commit;

-- 테이블 종류 보기 --
select * from tab where tabtype=upper('table');

--테이블 상세내역 보기 --
desc member2;

create table MEMBER( ) ; 


-- 컬럼을 추가하는 명령어 --

alter table member2
add age number; commit;

--컬럼 삭제하는 구문 --
alter table member2
drop column age; commit;

--컬럼의 유형을 변경하는 구문 --
alter table member2
modify age varchar2(10); commit;

desc member2;

--컬럼의 이름을 변경하는 구문 --
ALTER TABLE PLAYER
rename column member to memberID ;













