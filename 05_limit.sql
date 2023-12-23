SELECT * FROM tbl_menu;

-- 1핼부터 5개의 메뉴 행 조회
SELECT
		 *
  FROM tbl_menu
 LIMIT 0, 5;  -- 시작 인덱스, 시작 인덱스부터 조회할 행의 갯수.
              -- 기본적으로 컴퓨터는 10진수를 다룰 때 0 부터 다룸

-- 6행부터 5개의 메뉴 행 조회
SELECT
		 *
  FROM tbl_menu
 LIMIT 5, 5;

-- limit의 offset 생략 시
SELECT
		 *
  FROM tbl_menu;
  
SELECT
		 *
  FROM tbl_menu
-- LIMIT 0, 5; (같은 의미)
 LIMIT 5;
 
-- LIMIT을 자주 쓰진 않지만 이후 TOP-N 분석이나 paging 처리를 할 때 사용된다.






