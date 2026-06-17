/*
DataFrame students
+-------------+--------+
| Column Name | Type   |
+-------------+--------+
| student_id  | int    |
| name        | object |
| age         | int    |
+-------------+--------+

Write a solution to select the name and age of the student with student_id = 101.

Example 1:
Input:
+------------+---------+-----+
| student_id | name    | age |
+------------+---------+-----+
| 101        | Ulysses | 13  |
| 53         | William | 10  |
| 128        | Henry   | 6   |
| 3          | Henry   | 11  |
+------------+---------+-----+
Output:
+---------+-----+
| name    | age |
+---------+-----+
| Ulysses | 13  |
+---------+-----+
*/

create table LeetCodeStudents(
    stu_id int not null primary key,
    stu_name varchar not null,
    age int not null
);

insert into LeetCodeStudents(stu_id, stu_name, age)
values (101 , 'Ulysses' , 13);

insert into LeetCodeStudents(stu_id, stu_name, age)
values (53 , 'William' , 10);

insert into LeetCodeStudents(stu_id, stu_name, age)
values (128 , 'Henry' , 6);

insert into LeetCodeStudents(stu_id, stu_name, age)
values (3 , 'Henry' , 11);


select stu_name , age from LeetCodeStudents where stu_id = 101;