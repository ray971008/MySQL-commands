USE cmdev;
show tables;

/* 選擇兩張表中 同欄位 相同條件的資料 */
select empno,ename,e.deptno,d.dname
from emp as e  , dept as d 
where e.deptno = d.deptno;

/* 相同欄位的對應關係 合併 (交集)*/
select empno,ename,e.deptno,d.dname
from emp as e 
join dept as d 
on e.deptno = d.deptno;


/* left join ... on ... */
/*相同欄位合併資料 (取出左表所有資料，沒有匹配的右表資料顯示null) */
select empno,ename,e.deptno,d.dname
from emp as e 
left join dept as d 
on e.deptno = d.deptno;

/* right join ... on ... */
/*相同欄位合併資料 (取出右表所有資料，沒有匹配的左表資料顯示null) */
select empno,ename,e.deptno,d.dname
from emp as e 
right join dept as d 
on e.deptno = d.deptno;


/* 兩筆查詢資料縱向合併*/
USE world;
select region,`name`,population
from country
where region = 'Southeast Asia' and population<2000000
union
select region,`name`,population
from country
where region = 'Eastern Asia' and population < 1000000;


