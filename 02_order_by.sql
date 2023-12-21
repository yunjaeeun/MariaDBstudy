-- 오름차순
SELECT
	    menu_code
	  , menu_name
	  , menu_price
	FROM tbl_menu
--  ORDER BY menu_price ASC; -- order by <= 마지막에 실행 됨 ascending: 오름차순, descending: 내림차순 기본적으론 오름차순임 
 ORDER BY menu_price;
 
-- 내림차순
SELECT
		 menu_code
	  , menu_name
	  , menu_price
  FROM tbl_menu
 ORDER BY menu_price DESC;
 
-- 컬럼의 순번을 활용한 정렬(실제 테이블의 순서가 아닌 조회할 때의 컴럼 순서 기준)
SELECT
		 menu_price  -- 1번째
	  , menu_name   -- 2번째
  FROM tbl_menu
 ORDER BY 1 ASC;   -- 1 <=첫번째 부터 

-- 별칭을 활용한 정렬
SELECT
		 menu_price AS 'mp'
	  , menu_code AS 'mc'
	  , menu_name AS 'mn'
  FROM tbl_menu
 ORDER BY mp DESC;  -- 별칭으로 정렬할 때는 별칭 명에 single quatation(')을 붙이면 안된다.

-- 컬럼의 복수개로 정렬
SELECT
		 menu_price
	  , menu_name
  FROM tbl_menu
 ORDER BY 1 DESC, 2 ASC;   -- '가격'으로 내림차순 후 같은 가격일 시, '메뉴 이름'을 오름차순으로 조회

-- -------------------------------------------
-- field
SELECT FIELD('a', 'b', 'z', 'a'); -- 2번째 이후 인자 중에 1번쨰 인자의 값이 위치하는 값이 나옴(=3)

-- table에서 조회 시 field 활용
SELECT
		 FIELD(orderable_status, 'N', 'Y')
	  , orderable_status
	  , menu_name
  FROM tbl_menu;
  
-- field를 활용한 order by
SELECT
		 menu_name
	  , orderable_status
  FROM tbl_menu;
 ORDER BY FIELD(orderabla_status, 'N', 'Y') DESC;

-- ---------------------------------------------
-- null 값에 대한 정렬
-- 1) 오름차순 시: null 값이 먼저 나옴
SELECT
		 *
  FROM tbl_category
 ORDER BY ref_category_code DESC;
 
-- 2) 내림차순 시: null 값이 나중에  나옴
 select
 		 *
   FROM tbl_category
 ORDER BY ref_category_code DESC;
 
-- 3) 오름차순에서 null이 나중에 나오도록 바꿈
SELECT
		 *
  FROM tbl_category
 ORDER BY -ref_category_code DESC; -- DESC를 통해 null을 나중에 보냄 => - 로 null이 아닌 값을 ASC로 바꿈 

-- 4) 내림차순에서 null이 처음에 오도록 바꿈
SELECT
		 *
  FROM tbl_category
 ORDER BY -ref_category_code ASC;  -- ASC를 통해 null 을 처음으로 보낸 => - 로 null이 아닌 값을 DESC로 바꿈
 



