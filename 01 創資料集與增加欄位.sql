SHOW DATABASES;

USE sql_tutorial;
drop table `student`;
CREATE TABLE `student` (
`student_id` INT,
`name` VARCHAR(20),
`major` VARCHAR(20),
PRIMARY KEY(`student_id`)
);

describe `student`;


alter table  `student` ADD gpa DECIMAL(3,2); /* alter talbe 加欄位 */
alter table  `student` DROP COLUMN gpa; /* 刪除欄位 */
