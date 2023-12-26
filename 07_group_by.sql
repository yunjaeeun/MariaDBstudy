-- 조회의 6가지 절을 모두 활용한 예제
-- 1. select: group by 절에서 group을 묶는 조건으로 활용한 컬럼만 조회
--			  또는 그룹 함수를 통해 조회한다.

-- 2. from: 테이블 또는 join을 활용한 result set을 작성한다.

-- 3. where: from절의 각 행마다 적용될 조건을 작성한다.

-- 4. group by: where절까지 만족하는 행들에 대해 그룹이 될 컬럼을 작성한다.

-- 5. having: 그룹별로 적용할 조건을 group by에서 작성한 컬럼
-- 		  또는 그룹 함수를 통해 조회한다.
			  
-- 6. order by: 제일 마지막에 해석되며 select의 결과(result set)의 순번, 별칭, 컬럼면
--           등으로 오름차순 또는 내림차순 한다.

SELECT
		 category_code -- 그룹을 묶은 컬럽을 제외함
	  , COUNT(*) -- 모든 행 갯수 세기(그룹 함수만 가능)
	  , COUNT(category_code) -- category_code가 null이 아닌 행만 갯수 세기
	  , SUM(menu_price) 
	  , AVG(menu_price)
  FROM tbl_menu
 WHERE category_code IS NOT NULL
 GROUP BY category_code
 HAVING SUM(menu_price) >= 24000 -- 그룹의 합계가 24000 이상
 ORDER BY 2;
 
 -- ------------------------------------------------
 -- 메뉴가 없는 카테고리까지 셀껀지 구분해서 count 해보기
SELECT
		 COUNT(*)
	  , COUNT(a.menu_name) -- 컬럼명을 적으면 조회 결과의 컬럼명이 null이 아닌것만 카운트
  FROM tbl_menu a
 RIGHT JOIN tble_category b ON (a.category_code = b.category_code);

-- -----------------------
-- 함수의 종류
-- 단일행 함수: NVL 또는 IFNULL과 같이 단일 행마다 적용되어 행의 갯수만큼 결과가 나오는 경우
-- 그룹 함수: COUNT, SUM, AVG와 같이 그룹마다 적용되어 그룹의 갯수만큼 결과가 나오는 경우
--            (단, GROUP BY절이 없는 조회는 그룹 함수의 결과가 단일행(행 하나)이다.)


