-- 명시적 형변환
SELECT AVG(menu_price) FROM tbl_menu;
SELECT CAST(AVG(menu_price) AS UNSIGNED INTEGER) 
    AS '가격평균'  -- 소수점에서 반올림해 정수까지 변환
  FROM tbl_menu;
SELECT CAST(AVG(menu_price) AS FLOAT) -- 소수점 이하 한자리까지 변환
    AS '가격평균'
  FROM tbl_menu;
SELECT CAST(AVG(menu_price) AS DOUBLE) -- 소수점 이하 12자리까지 변환
    AS '가격평균'
  FROM tbl_menu;
 
-- 문자 -> 날짜
-- 23년 12월 27일을 date형으로 변환 
SELECT CAST('2023$12$27' AS DATE);
SELECT CONVERT('2023/12/27', DATE);
SELECT CONVERT('2023-12-27', DATE);
SELECT CONVERT('2023.12.27', DATE);

-- 숫자 -> 문자
SELECT CONCAT(CAST(1000 AS CHAR), '원');


-- 암시적 형변환
-- 연산자 사용 시 자동 형변환이 되는데 주의해야 한다.
SELECT 1 + '2'; -- '2'가 숫자 2로 변환
SELECT '1' + '2';

SELECT '안녕' + '하세요';
SELECT 5 > '반가워'; -- true의 의미인 1이 반환된다





