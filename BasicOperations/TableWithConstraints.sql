create table students(
    id int not null primary key ,
    Name varchar(50) not null ,
    Gender char not null ,
    DOB date not null
);

-- checking the info of the table :

select
    column_name,
    data_type

from
    information_schema.columns

where
    table_name = 'students'