use vegeTable;

create table user_on (				
u_name	varchar(50),			-- 유저이름(암호화)
u_tel	char(11),			-- 전화번호(암호화)
u_email	varchar(50)	 primary key, 		-- 이메일
u_pwd	varchar(50)	 not null,		-- 비밀번호
u_nick	varchar(10)	 not null,		-- 닉네임
u_point	int default 0,	-- 포인트
u_lvl	char(1)	,		-- 비건단계
u_addr	varchar(50),			-- 주소(암호화)
u_joinDate	datetime	default now(),	-- 가입일(인증일)
u_auth	char(1)	default 'N',	-- 계정상태(인증필요A,활성화B,비활성화C)
u_offDate date			-- 계정 비활성화 일자
);	

drop table user_on;

select * from user_on;

insert into user_on (u_name, u_tel, u_email, u_pwd, u_nick, u_lvl, u_addr) values('jaeski', '01090212662', 'kohjs511@gmail.com', '1111', 'jaeski', 1, '금천구 시흥대로');

create table user_off (				
u_name	varchar(50)	 not null,		-- 유저이름(암호화)
u_tel	char(11)	 not null,		-- 전화번호(암호화)
u_email	varchar(50)	primary key,		-- 이메일
u_pwd	varchar(50)	 not null,		-- 비밀번호
u_nick	varchar(10)	 not null,		-- 닉네임
u_point	int,		-- 포인트
u_lvl	char(1)	,		-- 비건단계
u_addr	varchar(50)	,		-- 주소(암호화)
u_joinDate	datetime default now(),	-- 가입일
u_auth	char(1)	default 'N',	-- 이메일 인증여부
u_offDate	datetime	default now()	-- 비활성화일
);			

drop table user_off;				

create table client_on (				
c_name	varchar(50)	,		-- 유저이름(암호화)
c_tel	char(11)	,		-- 휴대전화(암호화)
c_email	varchar(50)	primary key,		-- 이메일
c_pwd	varchar(50)	not null,		-- 비밀번호
regiNum	char(10)	not null,		-- 사업자등록번호
certify	char(10)	not null,		-- 영업허가번호
c_point	int		 default 0,	-- 포인트
c_joinDate	datetime	default now(),	-- 가입일
c_auth	char(1)	default 'N',	-- 계정상태(인증필요A,활성화B,비활성화C)
c_offDate	datetime	default now()	-- 비활성화일
);		

drop table client_on;

create table client_off (				
c_name	varchar(50)	,		-- 유저이름(암호화)
c_tel	char(11)	,		-- 휴대전화(암호화)
c_email	varchar(50)	primary key,		-- 이메일
c_pwd	varchar(50)	not null,		-- 비밀번호
regiNum	char(10)	not null,		-- 사업자등록번호
certify	char(10)	not null,		-- 영업허가번호
c_point	int default 0,	-- 포인트
c_joinDate	datetime	default now(),	-- 가입일
c_auth	char(1)	default 'N'	not null,	-- 계정상태(인증필요A,활성화B,비활성화C)
c_offDate	datetime	default now()	-- 비활성화일
);		

drop table client_off;				

create table resto (				
vegan	char(1)	default 'N',	-- 비건/논비건
c_email	varchar(50)	not null,		-- 사업자 이메일주소
resto_name	varchar(50)	not null,		-- 식당이름
resto_addr	varchar(50)	not null,		-- 식당주소
resto_tel	varchar(20)	not null,		-- 전화번호
resto_time	char(8)	not null,		-- 영업시간
resto_break	char(8)	not null,		-- 브레이크타임
resto_detail	varchar(500)	not null,		-- 상세정보
imageFileName	varchar(100),			-- 이미지파일(이미지파일명 변환 필요)
avg_rate	decimal(2,1)	default 0,		-- 평점
resto_no	int	primary key,		-- 식당등록번호
deposit	int	not null,		-- 예약포인트
resto_info varchar(100), -- 식당정보 
regDate	datetime default now(),	-- 식당 등록일
resto_auth	char(1)	default 'N'	not null,	-- 식당 신청 승인 여부
authDate	datetime	default now()	-- 승인 일자
);

drop table resto;

insert into user_on (u_name, u_tel, u_email, u_pwd, u_nick, u_lvl, u_addr) values('jaeski', '01090212662', 'kohjs511@gmail.com', '1111', 'jaeski', 1, '금천구 시흥대로');
insert into resto (c_email, resto_name, resto_addr, resto_tel, resto_time, resto_break, resto_detail, imageFileName, resto_no, deposit, resto_info) 
values ('abs@abc.com', '남미플랜트랩', '서울특별시 서초구', '0212341234', 11002100, 15001730, '비건식당입니다.', '남미플랜트럅', 1, 15000, '비건식당입니당당');

insert into resto (c_email, resto_name, resto_addr, resto_tel, resto_time, resto_break, resto_detail, imageFileName, resto_no, deposit, resto_info) 
values ('123@123.com', '더빈마켓', '서울특별시 금천구', '0212341234', 11002100, 15001730, '테스트2.', '더빈마켓', 2, 15000, '더빈마켓입니당');

insert into resto (c_email, resto_name, resto_addr, resto_tel, resto_time, resto_break, resto_detail, imageFileName, resto_no, deposit, resto_info) 
values ('123@123.com', '포비네오두막', '서울특별시 금천구', '0212341234', 11002100, 15001730, '테스트2.', '포비네오두막', 3, 15000, '포비네오두막');

create table reserv (				
u_email	varchar(50)	 not null,		-- 유저 이메일주소
reserv_no	 int	 primary key,		-- 예약번호
resto_no	 int	 not null,		-- 식당등록번호
reserv_date	 datetime	default now(),	-- 예약날짜
reserv_sched	 datetime	 not null,		-- 예약일정
reserv_member	 int	 not null,		-- 예약인원
reserv_deposit	 int	 not null,		-- 예약포인트
reserv_condition	 char(1)	 not null,		-- 예약상태
reserv_change	 datetime	default now()	-- 상태변경일자			
);				

drop table reserv;

create table resto_scrap (				
u_email	varchar(50)	 not null,		-- 유저 이메일주소
resto_no	 int	 not null,		-- 식당등록번호
resto_scrap_date	 datetime		default now()	-- 스크랩일자		
);				

drop table resto_scrap;

create table review (				
resto_no int not null,		-- 식당등록번호
u_email	varchar(50) not null,		-- 유저 이메일주소
review_content varchar(200) not null,		-- 리뷰 컨텐츠
review_date	 datetime default now(),	-- 리뷰일자
imageFileName varchar(100),	-- 이미지파일명
rate decimal(2,1) default 0,		-- 평점
review_show	char(1)		default 'y'	-- 게시여부				
);			

drop table review;

create table community (				
c_category	 varchar(50) not null,		-- 카테고리
u_email	varchar(50)	 not null,		-- 유저 이메일주소
c_articleNo	 int	 primary key,		-- 글번호
c_title	 varchar(50)	 not null,		-- 제목
c_writeDate	 datetime default now(),	-- 작성일자
c_content	 varchar(500) not null,		-- 내용
imageFileName	 varchar(50)		,	-- 이미지파일명(파일명 변환 필요)
c_views	 int default 0,	-- 조회수
c_scraps	 int default 0,	-- 스크랩수
c_show	 char(1) default 'Y',	-- 게시여부
heart	int default 0,	-- 하트수
search_type	varchar(50) default '',	-- 검색필터
keyword	varchar(50) default '',	-- 검색키워드
reply_cnt	int default 0	-- 댓글수				
);	-- 글 게시, 삭제, 비공개, 강제집행, 강제집행2(총 5가지 기능 고려)	

drop table community;

create table com_scrap (				
u_email	varchar(50)	 not null,		-- 유저 이메일주소
articleNo int not null,		-- 글번호
com_scrap_date datetime default now(),	-- 스크랩일자
scrap_show char(1) default 'y'	-- 게시여부				
);						

drop table com_scrap;

create table reply (				
u_email	varchar(50)	 not null,		-- 유저 이메일주소
reply_comment int not null,		-- 댓글번호
reply_date datetime default now(),	-- 댓글작성시간
articleNo int not null,		-- 게시글 번호
reply_show char(1) default 'y'	-- 게시여부				
);		

drop table reply;

create table card_pay (				
email	varchar(50)	 not null,		-- 유저 이메일주소
card_no	char(16)	 not null,		-- 카드번호
card_valid	char(4)	not null,		-- 유효기간 MMYY
card_month	int	 not null,		-- 할부개월
card_pwd	varchar(50)	not null,		--  신용카드 비밀번호 앞 2자리
card_regiNum	varchar(50)	not null,		-- 주민등록번호 앞  6자리 또는 법인카드는 사업자등록번호 10자리
point_detail	int	primary key,		-- 포인트 충전 거래번호
card_price	int	not null,		-- 승인금액
card_time	datetime		default now()	-- 결제시간
);		

drop table card_pay;		

create table point (				
u_email	varchar(50)	 not null,		-- 유저 이메일주소
point_change int not null,		-- 포인트 변화값
point_rest int not null,		-- 남은포인트
point_history char(1)	not null,		-- 포인트 변동내역
point_detail int			-- 포인트 충전 거래번호
);		

drop table point;

create table event (				
e_no	 int	primary key,		-- 글번호
e_title	 varchar(50)	 not null,		-- 제목
e_date	 datetime default now(),	-- 작성일자
e_content	 varchar(500)	 not null,		-- 내용
imageFileName	 varchar(50)	 not null,		-- 이미지파일명
e_start	 datetime not null,		-- 시작기간
e_end	 datetime not null,		-- 종료기간
e_views	 int default 0	-- 조회수
);		

drop table event;							

create table reserv_history (				
reserv_no	int	not null,		-- 예약번호
reserv_condition	char(1)	not null,		-- 예약상태
reserv_change	datetime	default now()	not null	-- 상태변경일자			
);				

drop table reserv_history;		

select * from resto;				


