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

CREATE 
    