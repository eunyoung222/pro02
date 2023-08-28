sselect * from notice;

drop table notice;

create table exam1(no INTEGER, name varchar(50));

create table notice(
	no serial primary key, 
	title varchar(200) not null,
	content varchar(1000),
	resdate ｄａｔｅ default current_date
);


insert into notice values (default, '페이스북 로그인 불가에 따른 대체 로그인 이용 방법 안내',
'안녕하세요! WEEK입니다.<br><br>페이스북 로그인 보안정책 변경에 따라 현재 수정 중에 있습니다.<br>임시적으로 페이스북 로그인 아이드를 확인해서 사이트 이용할 수 있는 방법을 안내해 드립니다.<br>"WEEK 페이스북 계정 찾기" 버튼을 클릭하여 서비스를 이용해 주시기 바랍니다.<br><br>
빠른 시일 내에 페이스북 로그인도 정상적으로 이용 하실 수 있도록 노력하겠습니다.<br><br>감사합니다.', default);
insert into notice values (default, 'ios 앱 업데이트 안내',
'안녕하세요! WEEK입니다.<br><br>ios 기기에서 버전 업데이트 되었습니다.<br>App Store에서 앱을 업데이트 하시고<br>더욱 편리해진 ebook을 만나보세요.<br>감사합니다.', default);
insert into notice values (default, 'WEEK STORE 사이트 서비스 점검 안내',
'안녕하세요! WEEK입니다.<br><br>안정적인 서비스 제공을 위한 시스템 점검을 실시합니다.<br>점검 작업이 진행되는 동안 지연이 발생할 수 있는 점 양해 부탁드리며,<br>보다 나은 서비스 제공을 위해 노력하는 WEEK가 되겠습니다.<br>[서비스 점검 일시]<br>2023년 08월 25일 00:00 ~ 06:00 (6시간)', default);
insert into notice values (default, '2023년 WEEK 중학 뉴런 참고서',
'전 과목 기본 개념을 완벽하게 잡아주고,<br>수준별 콘텐츠 제공을 통한<br>개인 맞춤형 교육 환경을 실현한<br>WEEK 중학 뉴런!<br><br>학교가 달라도, 교과서가 달라도,<br>뉴런 하나로 내신 완성!<br><br>이제 뉴런도 골라보자!', default);
insert into notice values (default, 'WEEK <교과프로그램> 강사 모집',
'WEEK <교과프로그램>에 출연할 선생님을 공개 모집합니다.<br>제출 서류가 양식에 맞지 않거나 일부라도 누락된 경우, <br>삼사대상에서 제외합니다.<br>보다 나은 미래와 더 큰 교육을 꿈 꾸는 선생님들의 많은 응모 바랍니다.<br><br>감사합니다.', default);
insert into notice values (default, '고교 강의 앱 일부 영역 비노출 안내',
'안녕하세요! WEEK입니다.<br><br>2023학년도 대학수학능력시험을 앞두고 원활한 서비스 제공을 위해<br>고교 강의 강좌 추천 영역이 비노출 됩니다.<br>검색을 통해서 이용해주세요.<br><br>감사합니다.', default);
insert into notice values (default, 'WEEK 개인정보처리방침 변경 사전 안내',
'안녕하세요! WEEK입니다.<br>WEEK 인터넷 서비스를 이용해주셔서 감사 드리며,<br>개인정보처리방침 변경에 관해 안내 말씀 드립니다.<br>WEEK는 고객 여러분의 개인정보를 무엇보다 소중하게 처리하고 있으며,<br>어떤 사안보다 우선하여 안전하게 관리하고 있습니다.<br><br>고객 여러분께서는 새롭게 바뀐 개인정보처리방침의 변경사항을 확인하시어 서비스 이용에 참고하시기 바랍니다.<br><br>감사합니다.', default);
insert into notice values (default, '일부 콘텐츠 서비스 종료 안내',
'안녕하세요! WEEK입니다.<br>WEEK에서 제공되었던 일부 콘텐츠 서비스가 종료됨을 안내드립니다.<br>2023년 9월 1일부터 서비스가 종료되오니 학습에 참고해 주시기 바랍니다.<br><br>감사합니다.', default);
insert into notice values (default, 'WEEK 커리큘럼 대공개!',
'안녕하세요! WEEK입니다.<br>믿고 따라가는 WEEK만의 고등 커리큘럼이 드디어 공개 되었습니다.<br><br>[고3]<br>연계 교재를 기반으로한 필수 커리큘럼과 등급별 커리큘럼으로 구성하였습니다.<br>핵심 교재와 핵심 강좌! 기출특강 시리즈를 기대해주세요!<br><br>[고1/2]<br>수시에 커다란 비중을 차지하고 있는 내신 점수 확보를 위해 학교시험 대비 강좌를 증설하였습니다!<br>학습 수준에 따라 나에게 맞는 커리큘럼을 선택하세요!<br><br>감사합니다.', default);
insert into notice values (default, '공지사항10',
'공지사항글10의 내용입니다.', default, default);
insert into notice values (default, '임시글11',
'임시글11의 내용입니다.', default, default);
insert into notice values (default, '더미글12',
'더미글12의 내용입니다.', default, default);

select * from notice;
select * from custom;

create table custom(id varchar(20) primary key,
pw varchar(300) not null, name varchar(100) not null,
point integer default 0, grade varchar(4) default 'F',
tel varchar(11) not null, email varchar(100) not null,
birth date not null,
regdate timestamp default current_timestamp);


insert into custom values('admin','1234','관리자',default,
default,'01012341234','admin@chunjae.com','2023-08-17',
default);
insert into custom values('kim','1004','김현경',default,
default,'01010041004','kim@chunjae.com','1999-02-08',
default);
insert into custom values('shin','7979','신예은',default,
default,'01079797979','shin@gmail.com','2000-12-31',
default);




