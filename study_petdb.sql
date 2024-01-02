-- 테스트 데이터 삽입
SELECT
		 *
  FROM member;
  
  
INSERT
  INTO member
 VALUES
(
  'yunjaeeun', 'swcamp', '윤재은', '광주광역시', 010-1234-5678, 'N'
, 'yun@naver.com', '마제소바남', 2024-01-01
);

-- 전화번호, 가입날짜 수정
UPDATE member
   SET member_call = '010-1234-5678'
     , member_day = '2024.01.01'
 WHERE member_id = 'yunjaeeun';
 
-- multi insert 시도
INSERT 
  INTO member 
VALUES
(
  'chosubin', 'swcamp1', '조수빈', '서울특별시', '010-1111-1111', 'N'
, 'cho@naver.com', '사랑과전쟁', '2024.01.02'
),
(
  'seoseungyeop', 'swcamp2', '서승엽', '서울특별시', '010-2222-2222', 'N'
, 'seo@naver.com', '신림동주민', '2024.01.03'
),
(
  'kimjaehyeon', 'swcamp3', '김재현', '도봉산', '010-3333-3333', 'N'
, 'kim@naver.com', '해리포터조아', '2024.01.04'
),
(
  'backdonghyeon', 'swcamp4', '백동현', '남양주시', '010-4444-4444', 'N'
, 'back@naver.com', '운동조아', '2024.01.05'
),
(
  'leedeubora', 'swcamp5', '이드보라', '서울특별시', '010-5555-5555', 'N'
, 'lee@naver.com', '마틸다조아', '2024.01.06'
);

SELECT
		 *
  FROM member
 ORDER BY 1 desc;

SELECT
		 *
  FROM type;
  
INSERT
  INTO type
 VALUES
  (1, '식당')
, (2, '카페')
, (3, '숙박')
, (4, '병원');

SELECT * FROM information;

INSERT
  INTO information
VALUES
  (
   '1', '애견식당', '서울특별시', '010-7777-7777', 'N', '2024.01.01', 1, 'yunjaeeun'
  );
  
SELECT
		 a.Type_code
	  , b.Type_info
	  , a.Member_ID
  FROM information a
  JOIN type b ON (a.Type_code = b.Type_code);  
  
-- -----------
-- 식당 추가 정보 기입
INSERT
  INTO information
VALUES
  (
   '2', '츄르국밥', '서울특별시', '010-7777-7777', 'N', '2024.01.01', 1, 'yunjaeeun'
  )
, (
   '3', '고양이카페', '서울특별시', '010-3508-5859', 'N', '2024.01.02', 2, 'kimjaehyeon'
  )
, (
   '4', '잘자요 숙박', '부천시', '010-1417-7787', 'N', '2024.01.02', 3, 'leedeubora'
  )
, (
   '5', '허준병원', '남양주시', '010-7734-3667', 'N', '2024.01.02', 4, 'backdonghyeon'
  )
, (
   '6', '개껌뼈다귀해장국','광주광역시','010-7414-5798', 'N', '2024.01.02', 1, 'yunjaeeun'
  );  
  
  SELECT * FROM information;