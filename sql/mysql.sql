create database class default charset 'utf8mb4';
use class;
create table users(
	id varchar(50) primary key,
	name varchar(100),
	password varchar(100),
	role varchar(20),
	class varchar(200)
);

create table courses(
	id integer auto_increment primary key,
	subject varchar(100),
	subject_no varchar(100),
	teacher_id varchar(50)
);

create table course_students(
	course_id integer,
	student_id varchar(50),
	create_at timestamp
);

create table assignments(
	id integer auto_increment primary key,
	title varchar(200),
	attachment varchar(200),
	create_at timestamp,
	course_id integer
);

create table assignment_records(
	id integer auto_increment primary key,
	assignment_id integer,
	student_id varchar(50),
	creater_at timestamp,
	attachment varchar(200),
	score float
);