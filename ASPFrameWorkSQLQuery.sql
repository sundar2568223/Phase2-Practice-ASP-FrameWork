create database Rain_School
use Rain_School
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
)

insert into Classes values (1,'1st'),(2,'2nd')

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes (class_id)
)
insert into Subject values (1,'Science',2),(2,'Mathematics',1) 

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class_id INT,
    subject_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes (class_id),
    FOREIGN KEY (subject_id) REFERENCES Subject (subject_id)
)

insert into Student values (1,'Anudeep',2,1),(2,'Yednesh',1,2)

select *from Classes
select * from Student
select *from Subject

drop table Classes
drop table Subject
drop table Student
