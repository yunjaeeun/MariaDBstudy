DESC tbl_menu;
INSERT
  INTO tbl_menu
(
  menu_code
, menu_name
, menu_price
, category_code
, orderable_status
)
VALUES
(
  NULL
, '바나나해장국'
, 8500
, 4
, 'Y'
);

SELECT * FROM tbl_menu order BY 1 desc;

-- ---------------------
-- update
UPDATE tbl_menu
   SET menu_name = '딸기 해장국'
 WHERE menu_code = 22;

-- ------------------------
REPLACE
  INTO tbl_menu
(
  menu_code
, menu_name
, menu_price
, category_code
, orderable_status
)
VALUES
(
  17
, '아샷추매운탕'
, 9000
, 4
, 'N'
);

SELECT
       category_code
  FROM tbl_menu;
 GROUP BY category_code;

SELECT
		 avg(menu_price) AS mp
	  , category_code
  FROM tbl_menu
GROUP BY category_code;
-- ----------------------------
SELECT
		 AVG(menu_price)
	  , category_code
  FROM tbl_menu
 GROUP BY category_code
HAVING AVG(menu_price) >= ALL (SELECT AVG(menu_price)
									  		FROM tbl_menu
									 	  GROUP BY category_code);
									 	  
SELECT
		 menu_price
	  , category_code
  FROM tbl_menu
 GROUP BY category_code
HAVING AVG(menu_price) = (SELECT MAX(mp)  -- 별칭을 설정해주는 이유는 안에서 나오는  값이 menu_price가 아난 AVG 함수로 계산되어진 값이 나오기 때문에 출력이 불가능함
							   FROM (SELECT AVG(menu_price) AS mp
							   		  FROM tbl_menu
							   		 GROUP BY category_code) a);


