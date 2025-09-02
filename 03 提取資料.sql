USE world;
show tables;
describe  `country`;

CREATE TABLE `new_table` AS /* 將創建的表格變成新的 table*/
select region,
       sum(population) as total_population,
       avg(lifeexpectancy) as mean_lifeexpectancy , 
       count(`name`) as country_count
from `country`
where GNPOld is not null AND ( GNP is not null OR population >10000) /* where 不能搭配聚合函數 ex.sum,count */
group by region
having  sum(population) > 50000000 /* having 能搭配聚合函數 ex.sum,count */
order by mean_lifeexpectancy desc; /* desc 倒排*/

alter table `new_table` add primary key (`region`); /*設定region為主鍵*/
describe new_table;


