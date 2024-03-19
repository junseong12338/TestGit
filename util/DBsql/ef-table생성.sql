--유저 테이블 시퀀스
CREATE SEQUENCE SEQ_EF_USER_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

--유저 테이블 생성
CREATE TABLE EF_USER(
    USER_IDX NUMBER PRIMARY KEY,
    USER_GRADE NUMBER NOT NULL,
    USER_EMAIL VARCHAR2(100) NOT NULL,
    USER_NAME VARCHAR2(100) NOT NULL,
    USER_PW VARCHAR2(100) NOT NULL,
    USER_IMG VARCHAR2(100),
    USER_STATUS NUMBER NOT NULL,
    USER_CONTENT VARCHAR2(1000),
    USER_ADDR VARCHAR2(100),
    USER_POINT NUMBER NOT NULL
   );
   
   -- 유저 테이블 코멘트
    COMMENT ON TABLE EF_USER IS '유저';
    COMMENT ON COLUMN EF_USER.USER_IDX IS '유저 시퀀스 번호';
    COMMENT ON COLUMN EF_USER.USER_GRADE IS '유저 계층';
    COMMENT ON COLUMN EF_USER.USER_EMAIL IS '유저 이메일';
    COMMENT ON COLUMN EF_USER.USER_NAME IS '유저 이름';
    COMMENT ON COLUMN EF_USER.USER_PW IS '유저 비밀번호';
    COMMENT ON COLUMN EF_USER.USER_IMG IS '유저 이미지(섬네일)';
    COMMENT ON COLUMN EF_USER.USER_STATUS IS '유저 상태(정지여부)';
    COMMENT ON COLUMN EF_USER.USER_CONTENT IS '유저 자기소개';
    COMMENT ON COLUMN EF_USER.USER_ADDR IS '유저 주소';
    COMMENT ON COLUMN EF_USER.USER_POINT IS '유저 보유 포인트';
    
    
--펀딩 프로젝트 시퀀스
CREATE SEQUENCE SEQ_EF_PROJECT_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;
    
-- 프로젝트 테이블 생성

CREATE TABLE EF_PROJECT(
    PROJECT_IDX NUMBER PRIMARY KEY,
    USER_IDX NUMBER NOT NULL,
    PROJECT_TITLE VARCHAR2(100) NOT NULL,
    PROJECT_CONTENT CLOB NOT NULL,
    PROJECT_STATUS NUMBER NOT NULL,
    PROJECT_IMG VARCHAR2(100),
    PROJECT_START DATE NOT NULL,
    PROJECT_END DATE NOT NULL,
    PROJECT_TARGET NUMBER NOT NULL
);

--프로젝트 테이블 코멘트 생성
COMMENT ON TABLE EF_PROJECT IS '펀딩 프로젝트';    
COMMENT ON COLUMN EF_PROJECT.PROJECT_IDX IS '프로젝트 번호';
COMMENT ON COLUMN EF_PROJECT.USER_IDX IS '프로젝트 작성자 번호';
COMMENT ON COLUMN EF_PROJECT.PROJECT_TITLE IS '프로젝트 제목';
COMMENT ON COLUMN EF_PROJECT.PROJECT_CONTENT IS '프로젝트 내용';
COMMENT ON COLUMN EF_PROJECT.PROJECT_STATUS IS '프로젝트 상태(정지여부)';
COMMENT ON COLUMN EF_PROJECT.PROJECT_IMG IS '프로젝트 이미지';
COMMENT ON COLUMN EF_PROJECT.PROJECT_START IS '프로젝트 시작날짜';
COMMENT ON COLUMN EF_PROJECT.PROJECT_END IS '프로젝트 종료날짜';
COMMENT ON COLUMN EF_PROJECT.PROJECT_TARGET IS '프로젝트 목표금액';

--홈페이지 공지사항 시퀀스 생성
CREATE SEQUENCE SEQ_EF_ADMIN_NOTICE_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

-- 홈페이지 공지사항 테이블 생성
CREATE TABLE EF_ADMIN_NOTICE(
    AD_NOTICE_IDX NUMBER PRIMARY KEY,
    AD_NOTICE_TITLE VARCHAR2(100) NOT NULL,
    AD_NOTICE_CONTENT CLOB NOT NULL,
    AD_NOTICE_IMG VARCHAR2(100)
);

--홈페이지 공지사항 코멘트 
COMMENT ON TABLE EF_ADMIN_NOTICE IS '홈페이지 공지사항';
COMMENT ON COLUMN EF_ADMIN_NOTICE.AD_NOTICE_IDX IS '공지사항 번호'; 
COMMENT ON COLUMN EF_ADMIN_NOTICE.AD_NOTICE_TITLE IS '공지사항 제목';
COMMENT ON COLUMN EF_ADMIN_NOTICE.AD_NOTICE_CONTENT IS '공지사항 내용';
COMMENT ON COLUMN EF_ADMIN_NOTICE.AD_NOTICE_IMG IS '공지사항 이미지';

-- 알림 시퀀스 생성
CREATE SEQUENCE SEQ_EF_ALERT_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;


-- 알림 테이블 생성
CREATE TABLE EF_ALERT(
    ALERT_IDX NUMBER PRIMARY KEY,
    USER_IDX NUMBER NOT NULL,
    ALERT_CONTENT CLOB NOT NULL
);

-- 알림 테이블 코멘트
COMMENT ON TABLE EF_ALERT IS '알림 테이블';
COMMENT ON COLUMN EF_ALERT.ALERT_IDX IS '알림 시퀀스 번호';
COMMENT ON COLUMN EF_ALERT.ALERT_IDX IS '유저 번호';
COMMENT ON COLUMN EF_ALERT.ALERT_IDX IS '알림 내용';

-- 문의 시퀀스 생성
CREATE SEQUENCE SEQ_EF_CS_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

-- 문의 테이블 생성
CREATE TABLE EF_CS(
    CS_IDX NUMBER PRIMARY KEY,
    USER_IDX NUMBER NOT NULL,
    CS_TITLE VARCHAR2(100) NOT NULL,
    CS_CONTENT CLOB NOT NULL
);

--문의 테이블 코멘트
COMMENT ON TABLE EF_CS IS '문의 테이블';
COMMENT ON COLUMN EF_CS.CS_IDX IS '문의 번호';
COMMENT ON COLUMN EF_CS.USER_IDX IS '유저 번호';
COMMENT ON COLUMN EF_CS.CS_TITLE IS '문의 제목';
COMMENT ON COLUMN EF_CS.CS_CONTENT IS '문의 내용';

-- 좋아요 테이블 생성
CREATE TABLE EF_LIKE(
    USER_IDX NUMBER,
    PROJECT_IDX NUMBER,
    CONSTRAINT EF_LIKE_PK PRIMARY KEY(USER_IDX, PROJECT_IDX)
);

--좋아요 테이블 코멘트
COMMENT ON TABLE EF_LIKE IS '좋아요 테이블(유저번호, 프로젝트번호 이중키)';
COMMENT ON COLUMN EF_LIKE.USER_IDX IS '유저 번호';
COMMENT ON COLUMN EF_LIKE.PROJECT_IDX IS '프로젝트 번호';

-- 후원 테이블 생성
CREATE TABLE EF_DONATION(
    USER_IDX NUMBER,
    PROJECT_IDX NUMBER,
    DONATION_MONEY NUMBER NOT NULL,
    CONSTRAINT EF_DONATION_PK PRIMARY KEY(USER_IDX, PROJECT_IDX)
);

--후원 테이블 코멘트
COMMENT ON TABLE EF_LIKE IS '후원 테이블(유저번호, 프로젝트번호 이중키)';
COMMENT ON COLUMN EF_LIKE.USER_IDX IS '유저 번호';
COMMENT ON COLUMN EF_LIKE.PROJECT_IDX IS '프로젝트 번호';
COMMENT ON COLUMN EF_LIKE.DONATION_MONEY IS '후원 금액';

--프로젝트 공지 시퀀스 생성
CREATE SEQUENCE SEQ_EF_NOTICE_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

--프로젝트 공지 테이블 생성
CREATE TABLE EF_NOTICE(
    NOTICE_IDX NUMBER PRIMARY KEY,
    PROJECT_IDX NUMBER,
    NOTICE_TITLE VARCHAR2(100),
    NOTICE_CONTENT CLOB,
    NOTICE_IMG VARCHAR2(100)
);

--프로젝트 공지 코멘트
COMMENT ON TABLE EF_NOTICE IS '프로젝트 공지 테이블';
COMMENT ON COLUMN EF_NOTICE.NOTICE_IDX IS '프로젝트 공지 번호';
COMMENT ON COLUMN EF_NOTICE.PROJECT_IDX IS '프로젝트 번호';
COMMENT ON COLUMN EF_NOTICE.NOTICE_TITLE IS '프로젝트 공지 제목';
COMMENT ON COLUMN EF_NOTICE.NOTICE_CONTENT IS '프로젝트 공지 내용';
COMMENT ON COLUMN EF_NOTICE.NOTICE_IMG IS '프로젝트 공지 이미지';

--리뷰 시퀀스 생성
CREATE SEQUENCE SEQ_EF_REVIEW_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

--리뷰 테이블 생성
CREATE TABLE EF_REVIEW(
    REVIEW_IDX NUMBER PRIMARY KEY,
    PROJECT_IDX NUMBER NOT NULL,
    USER_IDX NUMBER NOT NULL,
    REVIEW_CONTENT CLOB
);

--리뷰 테이블 코멘트
COMMENT ON TABLE EF_REVIEW IS '리뷰 테이블';
COMMENT ON COLUMN EF_REVIEW.REVIEW_IDX IS '리뷰 번호';
COMMENT ON COLUMN EF_REVIEW.PROJECT_IDX IS '프로젝트 번호';
COMMENT ON COLUMN EF_REVIEW.USER_IDX IS '유저 번호';
COMMENT ON COLUMN EF_REVIEW.REVIEW_CONTENT IS '리뷰 내용';

--카테고리 테이블 생성
CREATE TABLE EF_CATEGORY(
    PROJECT_IDX NUMBER,
    CATEGORY_IDX NUMBER,
    CONSTRAINT EF_CATEGORY_PK PRIMARY KEY(PROJECT_IDX, CATEGORY_IDX)
);

--카테고리 테이블 코멘트
COMMENT ON TABLE EF_CATEGORY IS '카테고리 테이블(프로젝트번호, 카테고리번호 이중키)';
COMMENT ON COLUMN EF_CATEGORY.PROJECT_IDX IS '프로젝트 번호';
COMMENT ON COLUMN EF_CATEGORY.CATEGORY_IDX IS '카테고리 번호';

--카테고리 이름 시퀀스 생성
CREATE SEQUENCE SEQ_EF_CATEGORY_IDX
INCREMENT BY 1
MAXVALUE 99999999
MINVALUE 1
NOCACHE;

--카테고리 이름 테이블 생성
CREATE TABLE EF_CATEGORY_NAME(
    CATEGORY_IDX NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(50)
);

--카테고리 이름 테이블 코멘트
COMMENT ON TABLE EF_CATEGORY_NAME IS '카테고리 이름 테이블';
COMMENT ON COLUMN EF_CATEGORY_NAME.CATEGORY_IDX IS '카테고리 번호';
COMMENT ON COLUMN EF_CATEGORY_NAME.CATEGORY_NAME IS '카테고리 이름';

COMMIT;
ROLLBACK;