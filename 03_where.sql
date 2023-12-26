-- orderable_status = 'N'인 행들 조회하기
-- 주문 불가능한 메뉴 조회(메뉴명, 메뉴코드)
SELECT
		 menu_name
	  , menu_code
-- 	  , orderable_status
  FROM tbl_menu
 WHERE orderable_status = 'N';
 
 -- DESC를 통한 컬럼명 빠르게 확인
 DESC tbl_menu;
 
-- ----------------------
-- '기타' 카테고리에 해당하지 않는 메뉴를 조회하시오.
-- 1) '기타' 카테고리의 번호 파악하기
-- SELECT * FROM tbl_category;
 SELECT * FROM tbl_category WHERE category_name = '기타'; -- '10번' 임을 알아냄
 
-- 2) 해당 번호를 가지지 않는 메뉴 조회
--  SELECT * FROM tbl_menu;
SELECT * FROM tbl_menu WHERE ctbl_menu
SELECT * FROM tbl_menu WHERE category_code != 10;

-- --------------------------------------
-- 가격이 10000원 이상인 메뉴 조회
SELECT
		 * 
  FROM tbl_menu
 WHERE menu_price >= 10000;

-- 10000원 미만의 메뉴 조회
SELECT
		 *
  FROM tbl_menu
 WHERE menu_price < 10000;

-- 10000원 이상  12000원 이하 메뉴 조회
SELECT
		 *
  FROM tbl_menu 
 WHERE menu_price >= 10000 
 	AND menu_price <= 12000; -- 둘 다 해당이 되는걸 고를때는 and 둘 다 고를때는 or



-- 논리 연산자(= 참과 거짓의 연산)
--사랑스러운 조카가 타고싶은 롤러 코스터는 7세 이상, 100cm 이상만 가능
-- (AND, 둘 다 만족, 이면서, 그리고, 동시에)
SELECT
  FROM nephew
 WHERE age >=7
   AND height >= 100;
   
-- 내 친구는 콜라도 좋아하고 사이다도 상관 없다.(콜라 또는 사이다)
-- (OR, 둘 중에 아무거나, 이거나, 또는)
SELECT
  FROM friend
 WHERE beverage = 'coke'
    OR beverage = 'sprite';


 	
 	
 	
 	