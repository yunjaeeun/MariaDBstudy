SELECT
		 emp_name
	  , salary
	  , bonus
	  , nvl (null,0)
	  , salary * bonus -- 보너스를 적용한 급여(계산 불가)
	  , salary * nvl(bonus,0) -- 보너스를 적용한 급여(보너스 안받는 사람도 계산 가능)
	  , salary * IFNULL(bonus, 0)
	  , salary * 12 + salary * nvl(bonus,0) * 12 -- 연봉(보너스를 적용한)
	  , salary * 12 *( 1 + nvl(bonus, 0))
  FROM employee;