-- 숫자형 함수

select abs(1), abs(-1);
select mod(234,10), 234 % 10;
select floor(1.2345) , floor(-1.2345);
select ceiling(1.2345), ceiling(-1.2345);
select round(-1.23), round(-1.58), round(1.58);
select pow(2,3) , power(2,-3);
select sign(-10), sign(10), sign(0);

SELECT GREATEST(2,0),GREATEST(4.0,3.0,5.0),GREATEST("B","A","C"); 


