USE sql_tutorial;
CREATE TABLE `student` (
`student_id` INT auto_increment, /* auto_increment 自動加1 */
`name` VARCHAR(20) not null,
`major` VARCHAR(20) not null,
PRIMARY KEY(`student_id`)
);

insert into `student` values(1,'小白','歷史'); /* insert into 為加入觀察值*/
insert into  `student` values(2,'小綠',null);
select * from `student`;
insert into  `student`(`name`,`major`) values ('小紅','數學');
select * from `student`;
