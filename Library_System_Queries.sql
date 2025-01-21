use [Library Managment System]


--Creating tables: 

create table Members (
id int primary key,
Member_name varchar(10) not null,
)
 
create table Member_Phone (
Member_ID int,
foreign key (Member_ID) references Members(id)
)

alter table Member_Phone 
add phone int not null;

create table Author (
id int primary key,
Author_Name varchar(10) ,
Nationality varchar(10)
)

create table Borrow (
id int primary key,
Borrow_Date date not null,
Return_Date date not null,
Member_ID int,
foreign key (Member_ID) references Members(id) 
)

create table Book (
id int primary key,
Book_Name varchar(10) not null,
Author_ID int,
Borrow_ID int,
foreign key (Author_ID) references Author(id),
foreign key (Borrow_ID) references Borrow(id)
)

create table Member_Borrow (
Member_ID int,
Borrow_ID int,
foreign key (Member_ID) references Members(id),
foreign key (Borrow_ID) references Borrow(id)
)

create table Borrow_Fine(
id int primary key,
amount decimal not null,
Member_id int, 
Borrow_id int,
foreign key (Member_id) references Members(id),
foreign key (Borrow_id) references Borrow(id)
)

--Inserting data

insert into Members
values (221, 'Khalifa')

insert into Members
values (211, 'Omar')

insert into Author
values (829, 'Zakir', 'Indian')


insert into Borrow
values(29, '2025-01-01' , '2025-01-29', 221)


--Retrieving data using SELECT

select * from Members

select Author_Name from Author
