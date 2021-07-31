create database company_Management
use company_Management
GO

Create table Department
(
DepartmentID varchar(50) primary key,
Dept_Name varchar(50),
LocationID  varchar(50),
EmployeeNo int,



);




create table PostalCode
(
PostalCode varchar(50) primary key,
city varchar(50)
);






create table Employee
(
EmployeeID varchar(50) primary key,

FirstName varchar(50),
Initials varchar(50),
LastName varchar(50),
designation varchar(50),
salary money,
Street varchar(50),
PostalCode varchar(50),
DepartmentID varchar(50),
foreign key(PostalCode) references PostalCode(PostalCode),
foreign key(DepartmentID) references Department(DepartmentID)

);

select*from Employee


create table project 
(
ProjectID varchar (50) primary key,
Project_name varchar(50),
DepartmentId  varchar(50),
foreign key(DepartmentID) references Department(DepartmentID )


);


create table workson
(
EmployeeID varchar(50),
ProjectID varchar(50),
hours varchar(50),

foreign key(EmployeeID) references Employee(EmployeeID),

foreign key(ProjectID) references Project(ProjectID ),
primary key(EmployeeID,ProjectID)
);

create table worksfor
(
EmployeeID varchar(50),
DepartmentId  varchar(50),
startDate varchar(50),

foreign key(EmployeeID) references Employee(EmployeeID),

foreign key(DepartmentId ) references Department(DepartmentId ),
primary key(EmployeeID,DepartmentId)
);


/*drop table department 
drop table Employee 

drop table PostalCode
drop table worksfor
drop table project
drop table workson */
select * from Department
select* from PostalCode
select* from Employee
select* from project
select* from workson
select* from worksfor

insert into Department
values
 
 ('1&2-PD' , 'Production', 'YUKO LEATHER GOODS LTD' , 200),
  ('3-R&D', 'Research and Development',   'YUKO LEATHER GOODS LTD',  80),
  ('4-M&S', 'Marketing', 'YUKO LEATHER GOODS LTD',  80),
  ('5-HR','Human Resources Management','YUKO LEATHER GOODS LTD', 70),
 ('6-AF','Accouting & Finance','YUKO LEATHER GOODS LTD', 60);
 








 select*from Department
 

 insert into PostalCode
 values
('1206','Dhaka'),
('1209','Dhaka'),
('1213', 'Dhaka'),
('1232','Dhaka'),
('1310','Dhaka'),
('1219','Dhaka'),
('1211','Dhaka'),
('1207','Dhaka'),
('1225','Dhaka'),
('1222','Dhaka'),
('1223','Dhaka'),
('1212','Dhaka'),
('4321','Chittagong'),
('4211','Chittagong'),
('3543','Chittagong'),
('3831','Chittagong'),
('7210','Khulna'),
('7032','Khulna'),
('7222','Khulna'),
('7620','Khulna'),
('6422','Rajshahi'),
('6650','Rajshahi'),
('6680','Rajshahi'),
('6330','Rajshahi');


select*from PostalCode

insert into employee
values
('P1', 'Anisul', 'AI' , 'Islam', 'Production Manager', 70000, 'Dhanmondi-15','1209' ,'1&2-PD'),
('P2', 'Ruhul', 'RA','Alam', 'Assistant Plant Manager',45000, 'Dhanmondi-07','1209', '1&2-PD'),
('P3', 'Shariar', 'SI', 'Istam','Production engineers',55000, 'Gulshan-01','1213', '1&2-PD'),
('P4','Anisur','AR','Rahman','Production engineer',55000,'Banani-11','1219','1&2-PD'),
('P5','Lara','LH','Hasan','Worker',20000,'Bangra-11','3543','1&2-PD'),
('P6','Tonni','TP','Paul','Worker',20000,'Arpara-11','7620','1&2-PD'),
('P7','Mariam','MM','Mim','Worker',20000,'Gandaria-33','1206','1&2-PD'),
('P8','Friha','FR','Rini','Worker',20000,'Amin road-12','4211','1&2-PD'),
('P9','Monisha','MR','Roy','Worker',20000,'Arpara-08','7620','1&2-PD'),
('RD1','Afsana','AA','Ahmed', 'Scientist',100000, 'Gulsan-02','1310','3-R&D'),
('RD2','Kawser','KI','Islam','Scientist',100000,'Khilgaon-01','1213','3-R&D'),
('RD3','Saib','SA','Ali','Engineer',70000,'Rajshahi sadar-09','6650','3-R&D'),
('MS1','Hasan','HA','Ali','Coordinator',50000,'Alamdanga-11','7210','4-M&S'),
('MS2','Tonmoy','TR','Rahman','Sales & Marketing Executive',55000,'Amin road-12','4211','4-M&S'),
('MS3','Anika','AB','Binte','Senior Executive',65000,'Banwarinagar-04','6650','4-M&S'),
('HR1','Tonnima','TA','Akter','Officer',45000,'Abutorab-07','4321','5-HR'),
('HR2','Tuba','TM','Mullick','HR Executive',50000,'Andulbaria-07','7222','5-HR'),
('AF1','Yesmin','YS','Sarowar','Assistant Officer',50000,'Abdulpur-01','6422','6-AF'),
('AF2','Anik','AK','Khandokar','Regional Accountant',30000,'Alaiarpur-44','3831','6-AF'),
('AF3','Sreejoy','SH','Howlader','Senior Manager',60000,'Bholahat-33','6330','6-AF');







insert into project
values
 ( 'BG', 'Genuine Leather Bags', '3-R&D'),
  ('LW', 'Genuine Leather Wallets' , '3-R&D'),
 ('BT', 'Genuine Leather Belt', '3-R&D'),
 ('AS', 'Genuine Leather Accessories', '3-R&D'),
 ('JT','Genuine Leather Jacket' , '3-R&D');
 
 
 select * from project



insert into worksfor
 values
 ('P1', '1&2-PD', '01-01-2015'),
('P2', '1&2-PD', '02-05-2012'),
('P3', '1&2-PD', '02-05-2012'),
('P4', '1&2-PD', '02-04-2010'),
('P5', '1&2-PD', '02-04-2010'),
('P6', '1&2-PD', '02-05-2010'),
('P7', '1&2-PD', '02-05-2010'),
('P8', '1&2-PD', '02-05-2010'),
('P9', '1&2-PD', '02-05-2010'),
('RD1', '3-R&D','03-01-2013'),
('RD2', '3-R&D','03-02-2013'),
('RD3', '3-R&D','03-01-2014'),
('MS1','4-M&S','01-01-2015'),
('MS2','4-M&S','01-02-2015'),
('MS3','4-M&S','01-01-2015'),
('HR1','5-HR','01-01-2013'),
('HR2','5-HR','01-01-2013'),
('AF1','6-AF','03-03-2012'),
('AF2','6-AF','03-03-2012'),
('AF3','6-AF','03-03-2012');



select * from workson

insert into workson
values

('P1','BG','360 hours'),
('P2','BG','360 hours'),
('P3','BG','360 hours'),
('P4','BG','360 hours'),
('RD1','BG','360 hours'),
('RD2','BG','360 hours'),
('RD3','BG','360 hours'),
('P1','LW','240 hours'),
('P2','LW','240 hours'),
('P3','LW','240 hours'),
('P4','LW','240 hours'),
('RD1','LW','240 hours'),
('RD2','LW','240 hours'),
('RD3','LW','3240 hours'),
('P1','JT','360 hours'),
('P2','JT','360 hours'),
('P3','JT','360 hours'),
('P4','JT','360 hours'),
('RD1','JT','360 hours'),
('RD2','JT','360 hours'),
('RD3','JT','360 hours');





/*query*/

/*1*/
select * from employee where DepartmentID='1&2-PD'


/*2*/
select EmployeeID, initials,designation from employee 


/*3*/
select EmployeeID, salary/12 from employee


/*4*/
select EmployeeID,designation from employee where DepartmentID='5-HR'

union

select EmployeeID,designation from employee where DepartmentID='6-AF'


/*5*/
select EmployeeID from workson where hours<'360 hours';

/*6*/
select * from project ,workson


/*7*/
select  designation,Initials
from employee,workson
where 
workson.EmployeeID=employee.EmployeeID
and 
workson.ProjectID='BG' and salary >90000;


/*8*/
select avg(salary) as avgsal from Employee where DepartmentID='4-M&S';

/*9*/ 
SELECT * FROM Employee
ORDER BY DepartmentID;


/*10*/
select count(employeeid) emp_no  from workson where ProjectID='JT';


/*11*/
select count(*) from Employee

/*12*/
select dept_Name from department where EmployeeNo >60

/*13*/
select   DepartmentID avg(salary) as avgsal from Employee  group by DepartmentID having avg(salary)>30000

/*14*/
select DepartmentID,min(salary) as min_sal from Employee group by DepartmentID

/*15*/
select initials from Employee where Initials like 'A%'

/*16*/
select street,EmployeeID  from Employee ,PostalCode
where  PostalCode.PostalCode= Employee.PostalCode

/*17*/
select ProjectID,EmployeeID from workson where ProjectID='bg' and 
ProjectID not in (select ProjectID from workson where ProjectID='jt'
);


/*18*/
update employee set salary =25000
where salary =20000

select salary from employee where EmployeeID between  'P5' AND 'P9'

select Employeeid from worksfor where startdate ='03-03-2012' 