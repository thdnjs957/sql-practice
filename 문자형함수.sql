-- 문자형 함수


select upper('Seoul'), ucase('seoul');
select lower('Seoul'), lcase('SEOUL');

select upper(first_name) from employees;

select substring('Happy Day',3,2);

SELECT concat( first_name, ' ', last_name ) AS 이름,
         hire_date AS 입사일
    FROM employees
   WHERE substring( hire_date, 1, 4) = '1989';
   
   select lpad('hi',5,'?');
   
   select lpad('1234',10,'*'); -- 오른쪽으로 정렬하고 싶을때
		-- rpad 왼쪽 정렬

   
SELECT emp_no, LPAD( salary, 10, '*')      
  FROM salaries     
 WHERE from_date like '2001-%'       
   AND salary < 70000 ;
   
SELECT concat('---' , LTRIM(' hello '),'---'),
	   concat('---' , RTRIM(' hello '),'---'),
       concat('---' , TRIM(' hello '),'---'),
       concat('---' , TRIM(both 'x' from 'xxxxxHELLOxxxxxx '),'---');
       
   
   
   