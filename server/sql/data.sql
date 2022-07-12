create table teacher(
     teacher_id serial not null primary key,
     teacher text 
);


create table student(
    student_id serial not null primary key,
    student_name text,
    teacher_id int not null,
    foreign key (teacher_id)references teacher(teacher_id)

);

create table homework(
    homework_id serial not null primary key,
    questions int not null,
    topic text,
    teacher_id int not null,
    foreign key (teacher_id)references teacher(teacher_id)

);

create table game(
   id serial not null primary key,
   student_id int not null,
   teacher_id int not null,
   homework_id int not null,
   Attempt_1 int not null,
   Attempt_2 int not null,
   Attempt_3 int not null,
   foreign key (student_id)references student(student_id),
   foreign key (teacher_id)references teacher(teacher_id),
   foreign key (homework_id)references homework(homework_id)   
)
