select * from notice;

drop table notice;

create table notice(
   no serial primary key, 
   title varchar(200) not null,
   content varchar(1000),
   resdate date default current_date
);


insert into notice values (default,
						   '페이스북 로그인 불가에 따른 대체 로그인 이용 방법 안내',   
						   '안녕하세요! WEEK입니다.<br><br>
						   페이스북 로그인 보안정책 변경에 따라 현재 수정 중에 있습니다.<br>
						   임시적으로 페이스북 로그인 아이드를 확인해서 사이트 이용할 수 있는 방법을 안내해 드립니다.<br>
						   "WEEK 페이스북 계정 찾기" 버튼을 클릭하여 서비스를 이용해 주시기 바랍니다.<br><br>
						   빠른 시일 내에 페이스북 로그인도 정상적으로 이용 하실 수 있도록 노력하겠습니다.<br><br>
						   감사합니다.'
						   ,default);
insert into notice values (default,
						   'ios 앱 업데이트 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   ios 기기에서 버전 업데이트 되었습니다.<br>
						   App Store에서 앱을 업데이트 하시고<br>
						   더욱 편리해진 ebook을 만나보세요.<br><br>
						   감사합니다.'
						   , default);
insert into notice values (default,
						   'WEEK STORE 사이트 서비스 점검 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   안정적인 서비스 제공을 위한 시스템 점검을 실시합니다.<br>
						   점검 작업이 진행되는 동안 지연이 발생할 수 있는 점 양해 부탁드리며,<br>
						   보다 나은 서비스 제공을 위해 노력하는 WEEK가 되겠습니다.<br><br>
						   [서비스 점검 일시]<br>2023년 08월 25일 00:00 ~ 06:00 (6시간)'
						   , default);
insert into notice values (default,
						   '2023년 WEEK 중학 뉴런 참고서',
						   '전 과목 기본 개념을 완벽하게 잡아주고,<br>
						   수준별 콘텐츠 제공을 통한<br>개인 맞춤형 교육 환경을 실현한<br>
						   WEEK 중학 뉴런!<br><br>학교가 달라도, 교과서가 달라도,<br>
						   뉴런 하나로 내신 완성!<br><br>이제 뉴런도 골라보자!'
						   , default);
insert into notice values (default,
						   'WEEK <교과프로그램> 강사 모집',
						   'WEEK <교과프로그램>에 출연할 선생님을 공개 모집합니다.<br>
						   제출 서류가 양식에 맞지 않거나 일부라도 누락된 경우, <br>삼사대상에서 제외합니다.<br>
						   보다 나은 미래와 더 큰 교육을 꿈 꾸는 선생님들의 많은 응모 바랍니다.<br><br>
						   감사합니다.'
						   , default);
insert into notice values (default,
						   '고교 강의 앱 일부 영역 비노출 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   2023학년도 대학수학능력시험을 앞두고 원활한 서비스 제공을 위해<br>
						   고교 강의 강좌 추천 영역이 비노출 됩니다.<br>
						   검색을 통해서 이용해주세요.<br><br>
						   감사합니다.'
						   , default);
insert into notice values (default,
						   'WEEK 개인정보처리방침 변경 사전 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   WEEK 인터넷 서비스를 이용해주셔서 감사 드리며,<br>
						   개인정보처리방침 변경에 관해 안내 말씀 드립니다.<br>
						   WEEK는 고객 여러분의 개인정보를 무엇보다 소중하게 처리하고 있으며,<br>
						   어떤 사안보다 우선하여 안전하게 관리하고 있습니다.<br><br>
						   고객 여러분께서는 새롭게 바뀐 개인정보처리방침의 변경사항을 확인하시어 서비스 이용에 참고하시기 바랍니다.<br><br>
						   감사합니다.'
						   , default);
insert into notice values (default, 
						   '일부 콘텐츠 서비스 종료 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   WEEK에서 제공되었던 일부 콘텐츠 서비스가 종료됨을 안내드립니다.<br>
						   2023년 9월 1일부터 서비스가 종료되오니 학습에 참고해 주시기 바랍니다.<br><br>
						   감사합니다.'
						   , default);
insert into notice values (default, 
						   'WEEK 커리큘럼 대공개!',
						   '안녕하세요! WEEK입니다.<br><br>
						   믿고 따라가는 WEEK만의 고등 커리큘럼이 드디어 공개 되었습니다.<br><br>
						   [고3]<br>연계 교재를 기반으로한 필수 커리큘럼과 등급별 커리큘럼으로 구성하였습니다.<br>
						   핵심 교재와 핵심 강좌! 기출특강 시리즈를 기대해주세요!<br>
						   [고1/2]<br>수시에 커다란 비중을 차지하고 있는 내신 점수 확보를 위해 학교시험 대비 강좌를 증설하였습니다!<br>
						   학습 수준에 따라 나에게 맞는 커리큘럼을 선택하세요!<br><br>감사합니다.'
						   , default);
insert into notice values (default,
						   '배송비 정책 변경 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   항상 WEEK를 아끼고 사랑해 주시는 고객님께 깊은 감사드립니다.<br>
						   배송비 정책이 변경되어 안내 드립니다.<br>
						   - 적용일시 : 2023년 2월 20일 월요일 오전 08시 ~<br><br>
						   ※ 유의사항<br>
               			   - 적용일시 이후에 주문, 반품신청을 진행할 경우에 변경된 배송비로 적용됩니다.<br> 
						   - 고객 부담 반품 배송비도 2,500원으로 변경됩니다.<br><br>
						   더욱 편리하고 안정적인 서비스를 제공하기 위해 노력하겠습니다.<br>
						   감사합니다.'
						   , default);
insert into notice values (default,
						   '마케팅 정보 수신동의 확인 안내',
						   '안녕하세요! WEEK입니다.<br><br>
						   정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라<br>
						   마케팅 정보 수신에 동의한 경우 동의사실을 매 2년마다 안내해드립니다.<br><br>
						   안내<br>
						   ∙ 별도 의사 표현이 없으실 경우, 동의정보가 2년 자동연장 됩니다.<br>
						   ∙ 회원가입, 주문배송, 약관안내, 회사 주요정책 변경 관련 내용은 수신동의 여부와 관계없이 발송됩니다.<br>
						   ∙ 마케팅 수신 및 정보 제공 동의 관리는 마이>마케팅 수신 및 정보 제공 동의 관리, 고객센터(1544-1900) 또는 매장 안내데스크에서 가능합니다.<br>
						   ∙ 각종 할인혜택과 관심분야의 서비스 메일은 마이>알림신청내역에서 가능합니다.<br><br>
						   교보문고는 고객님께 보다 편리하고, 질 높은 도서 서비스를 제공할 것을 약속드리며,<br>
						   고객정보의 보호 및 엄격한 관리를 위해 최선을 다할 것 입니다.<br><br>
						   앞으로도 고객 여러분께 더욱 만족스러운 서비스를 제공할 수 있도록 노력하겠습니다.<br>
						   감사합니다.' 
						   , default);

select * from event;

drop table event;


create table event(
   no serial primary key, 
   title varchar(200) not null,
   content varchar(1000),
   resdate date default current_date,
   img varchar (1000) null
);

select * from event;

insert into event values (default,
						   'WEEK ebook 구매자 대상 설문조사 이벤트',
						   'ebook 구매자 대상 설문조사에 참여해 주세요!<br> 추첨하여 상품권을 드립니다.<br><br>
						   <span>이벤트 기간 : 23.08.16 ~ 23.09.01</span>' 
						   , default
						   , '/images/ebook.jpg');
insert into event values (default,
						   '9월 모의고사 사전준비 ALL IN ONE 이벤트',
						   '열공 다짐 남기고, WEEK ALL IN ONE 사전 준비 서비스로<br> 시험 대비 확실히 하세요!<br><br>
						   <span>이벤트 기간 : 23.08.18 ~ 23.09.07</span>' 
						   , default
						   ,'/images/Sep.jpg');
insert into event values (default,
						   '8월 출석체크 이벤트',
						   'WEEK와 함께 매일 공부하는 습관 들이기!<br><br>
						   <span>이벤트 기간 : 23.08.01 ~ 23.08.31</span>' 
						   , default
						   , '/images/Aug.jpg');
insert into event values (default,
						   '초고속 수능 성공 패키지 이벤트',
						   '100일 안에 완성하는 실력 상승의 마법!<br> 초고속 수능 성공 패키지 듣고 선물 받아가세요!<br><br>
						   <span>이벤트 기간 : 23.08.01 ~ 23.08.31</span>' 
						   , default
						   , '/images/100.jpg');
insert into event values (default,
						   'WEEK 초등·중등·고등 여름 브랜드전',
						   'WEEK 추천 참고서와 함께 실력 쑥쑥 올라가는 알찬 여름 되세요!<br><br>
						   <span>이벤트 기간 : 23.07.11 ~ 23.08.31</span>' 
						   , default
						   , '/images/summer.jpg');

create table winner(
   no serial primary key, 
   title varchar(200) not null,
   content varchar(1000),
   resdate date default current_date
);
select * from event where no=2

select * from winner;

insert into winner values (default,
						  '[만점왕 단원평가 (2023)] 당첨자 발표',
						  '안녕하세요. 고객님!<br>
						  [만점왕 단원평가 (2023)]에 당첨을 축하드립니다.<br><br>
						  ★당첨자★<br>
						  서*  seo*****<br><br>
						  미 수령시 당첨자 발표일자 기준 3개월 이내로 연락이 없으실 경우,<br>
						  당첨은 자동으로 취소됩니다.<br><br>
						  항상 WEEK를 사랑해 주셔서 감사합니다.
						  ', 
						  default);
insert into winner values (default,
						  '[중학 영어듣기능력평가 완벽대비 (2023)] 당첨자 발표',
						  '안녕하세요. 고객님!<br>
						  [중학 영어듣기능력평가 완벽대비 (2023)]에 당첨을 축하드립니다.<br><br>
						  ★당첨자★<br>
						  한*  han***<br><br>
						  미 수령시 당첨자 발표일자 기준 3개월 이내로 연락이 없으실 경우,<br>
						  당첨은 자동으로 취소됩니다.<br><br>
						  항상 WEEK를 사랑해 주셔서 감사합니다.
						  ', 
						  default);
insert into winner values (default,
						  'WEEK EBOOK 오픈! 리뷰 이벤트 당첨자 발표',
						  '안녕하세요. 고객님!<br>
						  WEEK EBOOK 오픈! 리뷰 이벤트에 당첨을 축하드립니다.<br><br>
						  ★당첨자★<br>
						  *소*  ******yoon<br><br>
						  미 수령시 당첨자 발표일자 기준 3개월 이내로 연락이 없으실 경우,<br>
						  당첨은 자동으로 취소됩니다.<br><br>
						  항상 WEEK를 사랑해 주셔서 감사합니다.
						  ', 
						  default);						  
insert into winner values (default,
						  '[공부머리의 발견] 출간 기념 이벤트 당첨자 발표',
						  '안녕하세요. 고객님!<br>
						  [공부머리의 발견] 출간 기념 이벤트에 당첨을 축하드립니다.<br><br>
						  ★당첨자★<br>
						  *은*  ******young<br><br>
						  미 수령시 당첨자 발표일자 기준 3개월 이내로 연락이 없으실 경우,<br>
						  당첨은 자동으로 취소됩니다.<br><br>
						  항상 WEEK를 사랑해 주셔서 감사합니다.
						  ', 
						  default);


create table custom(
	id varchar(20) primary key,
	pw varchar(300) not null,
	name varchar(100) not null,
	point integer default 0,
	grade varchar(4) default 'F',
	tel varchar(11) not null,
	email varchar(100) not null,
	birth date not null,
	regdate timestamp default current_timestamp
	);
	
select * from custom;

insert into custom values(
	'admin',
	'1234',
	'관리자',
	default,
	default,
	'01012341234',
	'admin@chunjae.com',
	'2023-08-17',
	default);

insert into custom values(
	'han',
	'1234',
	'한선',
	default,
	default,
	'01012341234',
	'han@chunjae.com',
	'2023-08-17',
	default);
	
insert into custom values(
	'seo',
	'1234',
	'서광',
	default,
	default,
	'01012341234',
	'seo@chunjae.com',
	'2023-08-17',
	default);
	
insert into custom values(
	'yoon',
	'1234',
	'이소윤',
	default,
	default,
	'01012341234',
	'yoon@chunjae.com',
	'2023-08-17',
	default);
	
insert into custom values(
	'young',
	'1234',
	'이은영',
	default,
	default,
	'01012341234',
	'young@chunjae.com',
	'2023-08-17',
	default);

update custom set pw='PiaaQ0NRSE2oqCNJjnWMILh7I0NxM41bVTR9vU1Rp60Jy8aFU0UvVRrHZcSHKa2X3xBYxg==' where pw='1234';


commit;