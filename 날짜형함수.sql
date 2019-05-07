-- 날짜형 함수

select curdate(), current_date;
select curtime(), current_time;

select now(), sysdate(), current_timestamp;

select now(), sleep(2), now(); -- 앞 뒤 똑같은 쿼리가 실행되기 전에 계산함 

select sysdate() , sleep(2), sysdate(); -- 쿼리가 진행되면서 함수가 호출됨

-- where 절에서 _date> sysdate  vs  now 에서 차이가 있다 sysdate는 데이터를 뽑아낼때 1시간 걸리면 달라질수 있다 그래서 now를 많이 씀

select date_format(curdate(), '%W %M %Y');

select date_format(now(), '%Y년 %c월 %d일 %h시 %i분 %s초') as 오늘;

SELECT concat(first_name, ' ', last_name) AS name,               
       PERIOD_DIFF( DATE_FORMAT(CURDATE(), '%Y%m'),  
                    DATE_FORMAT(hire_date, '%Y%m') ) as 근무개월
  FROM employees;
  
  
select first_name, hire_date, date_add(hire_date,interval 5 MONTH) as 5개월더함 from employees;


select cast(now() as date); -- 원래 시간까지 나오는데 date만 나옴!

select cast(1-2 as unsigned);

select cast(cast(1-2 as unsigned) as signed);


