SELECT
		 menu_name
	  , b.category_name
  FROM tbl_menu a
  JOIN tbl_category b ON (a.category_code = b.category_code)
 WHERE menu_price >= 10000;
 
 -- 메뉴 가격이 10000원 이상인 메뉴 이름과 카테고리 이름 출력


SELECT
		 menu_name
	  , menu_price
	  , category_name
	  
  FROM tbl_menu a
  JOIN tbl_category b ON (a.category_code = b.category_code)
 WHERE menu_price >= 8000
 ORDER BY a.menu_price DESC;


-- 이름에 마늘이 들어가지 않는 메뉴중 가격이 8000원 이상인 것의 메뉴 이름 , 가격 ,카테고리 이름