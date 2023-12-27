-- 1. 문자열 관련 함수
-- ascii(아스키 코드), char(숫자)
SELECT ASCII('a'), CHAR(97);

-- bit_length(문자열), char_length(문자열), length(문자열)
-- 영어, 숫자, 특수기호 제외 한 문자당 3바이트 할당
SELECT
		 BIT_LENGTH('한글')
	  , CHAR_LENGTH('한글')
	  , LENGTH('한글');

-- concat(문자열1, 문자열2, ...), concat_ws(구분자, 문자열1, 문자열2)
SELECT CONCAT('nice', 'to', 'meet', 'you');
SELECT CONCAT_WS(' ', 'nice', 'to', 'meet', 'you');
SELECT CONCAT(CAST(menu_price AS CHAR), ' 원') FROM tbl_menu;

-- elt(위치, 문자열1, 문자열2, ...), field(찾을 문자열, 문자열1, 문자열2, ...)
-- find_in_set(찾을 문자열, 문자열 리스트), insert(기준 문자열, 부분 문자열),
-- locate(부분 문자열, 기준 문자열)
SELECT
		 ELT(2, '축구', '야구', '농구')
	  , FIELD('축구', '야구', '농구', '축구')
	  , FIND_IN_SET('축구', '야구,농구,축구')
	  , INSTR('축구농구야구', '농구')
	  , LOCATE('야구', '축구농구야구'); -- instr과 locate는 서로 인자가  반대

SELECT INSERT('나와라 피카츄!', 5, 3, '꼬부기');
SELECT LEFT('hello world!', 5), RIGHT('nice shot!', 5);
SELECT LOWER('hello world!'), UPPER('hello world!');
SELECT LPAD('왼쪽', 10, '#'), RPAD('오른쪽', 10, '#');
SELECT LTRIM('        왼쪽'), RTRIM('오른쪽         ');
SELECT TRIM('                mariadb      ')
	  , TRIM(BOTH'@' FROM'@@@@ mariadb@@@@')
	  , TRIM(LEADING '@' FROM'@@@@mariadb@@@@') -- LTRIM
	  , TRIM(TRAILING '@' FROM'@@@@mariadb@@@@') -- RTRIM
	  
-- 2. 숫자 관련 함수

-- 3. 날짜 및 시간 관련 함수








