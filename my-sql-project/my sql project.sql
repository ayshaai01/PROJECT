show databases;
use ay_customer_tbl;
select * from ay_customer_tbl;
insert into ay_customer_tbl (s_no,name,age,phone_no,location,qualification) values(1,'geetha',25,9198456723,'trichy','BE'),(2,'priya',27,8762435628,'salem','Bsc'),(3,'keerthi',26,8124823036,'madurai','Bcom'),(4,'lalitha',28,9423658435,'ramnad', NULL);
delimiter $$
create procedure s1()
begin
select * from ay_customer_tbl;
end $$
delimiter ;
call s1();
describe ay_customer_tbl;
use  ay_customer_tbl;
call s1();
use ai_aysha;
show tables;
select * from ay_customer_tbl;
create table ay_student_tbl(id_no int, roll_no long, name varchar(20),Date_of_birth date,age int,gender varchar(10));
alter table ay_student_tbl modify column id_no int not null primary key;
select * from ay_student_tbl;
insert into ay_student_tbl(id_no,roll_no,name,date_of_birth,age,gender)values(1,1001,'kavitha','2000-12-3',25,'female'),(2,1002,'mythili','2000-10-8',15,'female'),(3,1003,'priyanka','2000-11-6',25,'female'),(4,1004,'vignesh','2000-5-25',25,'male'),(6,1009,'santhosh','2000-9-29',25,'male'); 
insert into ay_student_tbl values(5,1006,'farana','2000-8-15',25,'female');
alter table ay_student_tbl add column email_id varchar(500);
update ay_student_tbl set email_id ='kavi88@gmail.com'where id_no =1;
update ay_student_tbl set email_id ='vickygood20@gmail.com'where name ='vignesh';
update ay_student_tbl set email_id ='mythangel11@gmail.com'where roll_no = 1002;
update ay_student_tbl set email_id ='priya55@gmail.com'where Date_of_birth ='2000-11-06';
update ay_student_tbl set gender =
case id_no
when 1 then 'male'
when 2 then 'male'
when 3 then 'male'
when 5 then 'male'
end,

age =
case id_no
when 1 then 20
when 2 then 23
when 3 then 21
when 5 then 22
end
where id_no in(1,2,3,5);  
create table ay_furniture_list(s_no int primary key, name varchar(60), size char,colour varchar(50),quandity int,location varchar(50));
select *from ay_furniture_list;   
insert into ay_furniture_list(s_no,name,size,colour,quandity,location)values(1,'bed','xl','brown',50, 'trichy'),(2,'dressing table','l','pink',60,'trichy'),(3,'washing machine','xxl','white',40,'trichy'),(4,'refridgerator','xxxl','red',63,'trichy');
alter table ay_furniture_list modify size varchar(50);
delimiter **
create procedure a1()
begin
select *from ay_furniture_list;
end **
delimiter;
call a1();
show datbases;
use ai_aysha;
create table ad_user_reg
(user_id int not null primary key auto_increment,
f_name varchar(70),
m_name varchar(50),
l_name varchar(50),
dob date,
phone_no long,
user_name varchar(10) not null unique,
password varchar(18) not null);
select * from ad_user_reg;
insert into ad_user_reg (f_name,m_name,l_name,dob,phone_no,user_name,password)values('aysha','sithika','liyakath','1988-01-11',8123455647,'shabeen','shabbu@88'),('hajeera','sithika','liyakath','1992-11-16',8123455456,'humera','humer@92'),('irfana','sithika','liyakath','1994-11-29',9791755647,'irfa','irfu@94'),('seyd','jakeriya','liyakath','1996-11-14',9345655647,'ramees','ramees@96'),('mohamed','mahdi','nazril islam','2007-2-25',8123455647,'mahdi','babbu@07'),('mohamed','mahrus','nazrul islam','2011-12-15',9816055647,'mahru','mahru11');
update ad_user_reg set l_name='nazrul islam' where user_id = 5; 
rename table ad_user_reg to ad_usr_reg;
rename table ad_usr_reg to ad_user_reg;
create table ad_user_login

(login_id int not null primary key,
user_name varchar(10) not null,
new_password varchar(18),
user_id int not null,
foreign key(user_id) references ad_user_reg (user_id));
select * from ad_user_login;
alter table ad_user_login add column password varchar(18) not null after user_name;
insert into ad_user_login(login_id,user_name,password,new_password,user_id) values(1001,'trichy','trichy88', 'tri',2),(1002,'madurai','madurai88', 'mad',1),(1003,'salem','salem88', 'sal',6),(1004,'ramnad','ramnad88', 'ram',5),(1005,'chennai','chennai88', 'che',4),(1006,'tirupur','tirupur88', 'tiru',3);
create table ad_user_order
(order_id int not null primary key,
product_name varchar(100) not null,
product_price double not null,
product_qnty int not null,
del_address varchar(255) not null,
user_id int not null,
login_id int not null,
created_by varchar(200),
modified_by varchar(200),
created_on date,
modified_on date,
foreign key (user_id) references ad_user_reg(user_id),
foreign key (login_id) references ad_user_login(login_id));
select * from ad_user_order;
alter table ad_user_reg
add column created_by varchar(50),
add column modified_by varchar(50),
add column created_on date,
add column modified_on date; 
select *from ad_user_reg;
alter table ad_user_login
add column created_by varchar(50),
add column modified_by varchar(50),
add column created_on date,
add column modified_on date; 
select * from ad_user_order;
describe ad_user_order;
insert into ad_user_order (order_id,product_name,product_price,product_qnty,del_address,user_id,login_id) values(101,'laptop',38000,1,'HA 284/206 ANNA NAGAR NAVALPATTU TRICHY',2,1003),(102,'mobile',24000,2,'no 1 kadar palli vasal street ramnad',1,1001),(103,'headphone',1000,1,'no 2 abdul kalam street salem',3,1002),(104,'pendrive',400,2,'no 55 vivekanadar street chennai',4,1005),(105,'hard disk',20000,1,'no 40 periyar street tripur',5,1004),(106,'key board',1500,1,'no 5 nachiyar koil uriyur trichy',6,1006);
select * from ad_user_reg join ad_user_login on ad_user_reg.user_id = ad_user_login.user_id right join ad_user_order on ad_user_login.user_id;
select * from ad_user_reg h1,ad_user_login h2;
select * from ad_user_reg h1 left join ad_user_login h2 on h1.user_id = h2.user_id;
select * from ad_user_reg h1 right join ad_user_login h2 on h1.user_id = h2.user_id;
select * from ad_user_reg h1 inner join ad_user_login h2 on h1.user_id = h2.user_id;
delimiter &&
create procedure r1()
begin
select * from ad_user_reg ;
end &&
delimiter ;
call r1();
delimiter **
create procedure l1()
begin
select * from ad_user_login;
end **
delimiter ;
delimiter ##
create procedure o1()
begin
select * from ad_user_order;
end ##
delimiter ;
call o1();
use ai_aysha;
create table ai_batch_personaldetails
(SNO int not null,
Name varchar(50) not null,
DOB date not null,
Aadhar_Number long,
Biometric_ID long,
primary_Contact_No long,
Secondary_Contact_No long,	
WhatsApp_No long,
User_name varchar(60) not null,
Password varchar(60) not null,

UG_Subject varchar(60) not null,
PG_Subject varchar(60), 
Year_of_Passing int,
AI_Batch_Email varchar(200) not null,	
Email varchar(200) not null,
Address_District varchar(250) not null,	
Father_NameHusband_Name varchar(70),	
Mother_Name varchar(60) not null);
use ai_batch_personaldetails;
alter table ai_batch_personaldetails modify column SNO int not null primary key;	


select * from ai_batch_personaldetails;
alter table ai_batch_personaldetails drop column AI_Batch_Email;
create database ai_aysha;
show databases;
alter table ai_batch_personaldetails add column UG varchar(40) after password,
add column PG varchar(40) after UG_Subject;
use  ai_batch_personaldetails;
insert into ai_batch_personaldetails (SNO,Name,DOB,Aadhar_Number,Biometric_ID,primary_Contact_No,Secondary_Contact_No,WhatsApp_No,User_name,Password,UG,UG_Subject,PG,PG_Subject,Year_of_Passing,Email,Address_District,Father_NameHusband_Name,Mother_Name) values
(1,	'Abdul Rahman', '2001-5-1',669092087983,92087983,9952630126,6369696359,9952630126,	'TI2023M-C01E438','	Password@123','BSC','Computer science',	'NIL','NIL',2022,'abdulrahman001007@gmail.com',	'No 3/1-76 Indra street, Keela ambikaburam Trichy-04Trichy',	'Badhusha',	'Noorjahan'),
(2,'Arun T','2002-7-7',	341246643302,46643302,8525880306,6382506148,8525880306,'"PU2023M-C01E488
"',	'Password@123',	'BSC',	'Computer science',	'NIL',	'NIL',2023,	'arunaathi41@gmail.com','3/4 Thirupur ,Thirupur (po),Kulathur(tk),Senaiyakuti,Pudukkottai (Dt), 622502 pudukottai','Tamil selvam','Suppu laxmi'),

(3,	'Aysha sithika L',	'1998-11-1',784654756225,54756225,8124823036,8610353074,8124823036,	'"TI2023F-C01E78D"','Password@123','12','Computer science',
	'NIL','NIL',2005,'aslamshabeen@gmail.com','LIGII,2801, BISMILLAH MANZIL,Anna nagar,phase 2 Navalpattu, Trichy -26 Trichy','Nazrul Islam(Husband)',
	'Amthul jabeen'),
(4,	'Bhavani R','2002-03-10',935775705642,75705642,	6380185097,9659871377,6380185097,'"Pu2023F-C01E44D"','Password@123','BSC','Computer science','NIL',	'NIL',	2023,		'bb464490@gmail.com',	'Melakkottai Kovilur (p), Alangudi Tk Pudukkottai (dt) Pudukkottai','C.Ramachandran',
	'R.Thenmozhi'),

(5,	'Fathima M','2002-1-12',622631324614,31324614,	6374041818,	9791676433,	6374041818,'"TI2023F-C01E43B"','Password@123','B.Com',	'Commerce','NIL','NIL',	2024,'Ray0488faths@gmail.com','5/249, 20th cross, vasancity, vayalur road, trichy-620102 Trichy','Mohamed Ibrahim','Saira banu'),

(6,	'Ghouse bi S',	'1989-4-8',818393990050,93990050,9994286043,7708475065,9994286043,'"TI2023F-C01E46D"','Password@123','B.A.','English','NIL','NIL',	2010,'happydhillu@gmail.com',	'MIG 49, Phase 1, Anna nagar,TNUDP, trichy-620026 Trichy','Juber khan. B(Husband)','Zarina Begum'),

(7,'Gnanagowsalya K','2003-2-4',418718821662,18821662,	7094373123,	9965452410,	7094373123,	'"TI2023F-C01E474"','Password@123',	'Bsc', 	'Computer science',
	'NIL',	'NIL',	2023,		'kowsalyakannan29@gmail.com',	'26/1, College road,Sri Ram theatre near, Musiri,Trichy(Dt) Trichy',	'Kannan.A','Sundhari.K'),

(8,'Hajeera Sithika L',	'1992-11-6',430341868981,41868981,8056447098,9751471799,8056447098,	'"TI2023F-C01E796"','Password@123','BA','English','NIL','NIL',	2013,'hajeerasithka2021@gmail.com','3, murugesan street, M.K. kottai, trichy Trichy','Syed Azarudeen','Amthul jabeen'),

(9,'HARIHARAN A','2001-11-06',304765424440,65424440,9363649175,9363649175,9363649175,'"PE2023M-C01E437"','Password@123','BE	','EEE','NIL','NIL',
2023,'hariharananbu2001@gmail.com',	'2/225 North st keelapuliyur po Kunnam tk Perambalur dt 621115 Perambalur','ANBALAGAN D','Anjalai A'),

(10,'Jayalakshmi R','1997-6-2',	432445616668,45616668,9500628375,6385632493,6385632493,	'"TI2023F-C01E444"','Password@123','BCA','Computer application',
	'MCA','Computer Application',2019,'jasperjeevi@gmail.com','28-A, bharathiyar Street, west ambigapuram, trichy-4 Trichy',	'Ravikumar','Geetha'),
(11,'Jothika J','2003-8-1',	693941180387,	41180387,	9585607631,	9843412199,	9585607631,	'"TI2023F-C01E555"','Password@123',	'BSC','Mathematics','NIL',	'NIL',	2023,'jothikajagan8@gmail.com','H/5, Housing Unit, Parvathipuram, Musiri, Trichy DT. Trichy','Jegatharatchagan K',	'Manjula J'),

(12,'Kalaiarasan A','1987-7-29',447595386464,95386464,9600330846,9994057344,9600330846,'"TI2023M-C01E78B"',	'Password@123','B.com','Commerce','NIL','NIL',	2009,'Kalai29.7@gmail.com','2/337 navalpattu burma colony oft po trichy 16 Trichy','K.Ayyavoo','A.Vasanthi'),

(13,'Kayalvizhi M',	'1998-09-13',7339221973,9698821473,	7339221973,222222222,2222222,	'TI2023F-C01E475','Password@123','BE','Mechanical engineering','NIL','NIL',2020,'mk	kayalmahe123@gmail.com',	'Door No: 2/125A, Koothur colony, Koothur post, mannachanallur Tk, Trichy - 621216 Trichy','Mahendhran .N','Vijayaragini .M'),

(14,'Komaladevi. S','2003-09-7',460205744637,05744637,8940898862,7904257743,8940898862,	'"PU2023F-C01E466"','Password@123','BSC','Computer science','NIL',	'NIL',2023,	'komaladevi2003@gmail.com',	'Gandharvakkottai pudukottai Pudukottai','M. Subramaniyan',	'Kalaiselvi. S'),

(15,'LAVANYA M','2001-6-2',629731226643,31226643,7904460924,8248554770,7904460924,'"TI2023F-C01EA43"',	'Password@123',	'BSC', 	'Mathematics',	'NIL','NIL',2021,'mlavanyam37@gmail.com','"33/66 Kamala Nehru Nagar, EB Road" Trichy','Aravind samy R','Avadaiyammal'),
(16,'Narayanan S','1999-06-14',	282903912214,03912214,9361015928,8122648085,9361015928,	'TI2023M-C01E78C','Password@123','BA','History','NIL','NIL',2019,'Naveenkds82@gmail.com','3/141 Sivan kovil street allithurai somarampettai post trichy 620102 Trichy','Sivaprakasam','Sumathi'),
(17,'Prasanth P','2000-07-27',	983315540255,15540255,9361216766,9626922317,6361216766,'"PU2023M-C01E445"',	'Password@123',	'BE',	'ECE',	'NIL',	'NIL',	2022,		'aryanprasanth163@gmail.com',	'No 105, Maruthampatti, Vilapatti(post), Ilupur (Taluk), Pudukkottai-622504 Pudukkottai',	'Palanisamy M',	'Ponnazhagu P'),
(18,'Priya S','2002-5-3',920343048388,43048388,	9626940557,	9626940557,	8508332712,	'"TI2023F-C01EC0E"',	'Password@123',	'B.SC',	'Physics',	'NIL',	'NIL',	2023,		'lakshmipriya5522@gmail.com','10Mettu street,Wouraiyur Trichy-3 Trichy','SenthilKumar M','Elangiyam S'),

(19,	'Punithavathi D',	'1997-2-5',76257812667,	78126673,	6369782863,	9715451286,	6369782863,	'"TI2023F-C01E8C2"',	'Password@123',	'B.Com','Commerce',	'NIL',	'NIL',	2025,	'Punithavathid1997@gmail.com',		'2/275,NPS colony,OFT Main Road, HAPF Town, Suriyur Post, Trichy-620025 Trichy',	'V. Devaraj','D. Santhamani'),

(20,'Raghul S',	'2000-7-6',	871736862600,	36862600,	7010107069,	8680827179,456342,	'"TI2023M-C01E4E6"',	'Password@123',	'BE',	'MECHANICAL ENGINEERING',	'NIL',	'NIL',2015,	'Nrockstarraghul55@gmail.com',	'3/443 mgr rajaveethi Vs colony Kattur Trichy 620019 Trichy',	'Senthil Kumar p',	'Sumathi S'),

(21,'Roobankumar  K','1992-2-11',	612231264958,	31264958,	7904255453,	9486645960,	7904255453,	'TI2023M-C01E8CB',	'Password@123',	'BE',	'ECE',	'NIL',	'NIL',	2015,		'vroobank92@gmail.com','L1, chandradhayam, Shankar abodes, near krt motors, chennai trunk road, Thiruvanaikovil, trichy Trichy',	'Kumaravel',	'Valli'),
(22,	'Sangari S',	'1998-9-1',	360158896738,58896738,	9787264394,	9751721397,	9787264394,	'"TH2023F-C01E43E"',	'Password@123',	'BE',	'ECE','NIL'	,'NIL',	2019,	'sangarisaminathan@gmail.com',	'1/44, Agraharam, North budalur, Thanjavur (Dt), 613602 Thanjavur',	'Saminathan M',	'Latha S'),
(23,	'Santhiya S',	'2003-9-4',	842296226066,	96226066,8940937523,	9842021095,	8940937522,	'"TI2023F-C01E43D"',	'Password@123',	'Bsc','Information technology',	'NIL',	'NIL',	2023,		'santhiyasakthivel37@gmail.com',	'No 57,3rd street gandhinagar, college road musiri, trichy(dt) Trichy',	'Sakthivel.T',	'Chitra S'),

(24,'Saranya N','1994-07-24',	971123726105,	23726105,	8248879007,	9585031787,	8248879007,	'"TI2023F-C01EA19"',	'Password@123',	'BE',	'CSE',	'NIL',	'NIL',	2015,		'saranyanarayananai01@gmail.com',	'No3a Balaji Avenue 1st cross, Old karur road, Melachinthamani Trichy 620002 Trichy',	'S.Narayanan',	'A.Marikkannu'),

(25,'Saravanan M','2003-05-20',	385868916470,	68916470,	8838011266,	7603972485,	8838011266,	'"TH2023M-C01E44A"',	'Password@123',	'BSC',	'Computer Science',	'NIL',	'NIL',	2023,	'saravanasaro1435@gmail.com',	'1/88, Vallabramankadu, Sornakadu (Post), Peravurani(Taluk), Thanjavur (District)-614804 Thanjavur',	'Malaiyarasan V','Ganamani M'),

(26,'Snega D',	'2003-05-04',	546307861816,	07861816,	9047648856,	8072885475,	9047648856,	'"TI2023F-C01E446"',	'Password@123',	'BSC',	'IT',	'NIL',	'NIL',	2023,		'Stdsnega.it@cauverycollege.ac.in',	'1-130 / A perumal Kovil street, Reddi mangudi, Trichy Trichy',	'R.Durai raj',
	'D.Bhuvaneswari'),

(27,'Srinidhi S',	'2001-12-19',	733557069525,	57069525,	9360728585,	9500868943,	9360728585,	'"TI2023F-C01EA34"',	'Password@123',	'BSC',	'IT',	'NIL',	'NIL',	2023,	'Srinidhisrinidhi233@gmail.com',	'45/B East street, melur, srirangam Trichy',	'Sundarrajan B','Shanthi. S'),

(28,'Tamil V',	'2003-09-05',	277289901567,	89901567,	7904761471,	7904761471,	7904761471,	'"TI2023F-C01EA44"','Password@123',	'BSC',	'IT',	'NIL',	'NIL',	2023,	'venktesantamil@gmail.com',	'45/B East street, Melur, Srirangam, Trichy Trichy',	'Venktesan B','Lalitha V'),

(29,'Vinu Andrews S',	'1999-11-24',	543353698598,	53698598,	8428908488,456123	,8428908488,	'TI2023M-C01F2A8',	'Password@123',	'Bba',	'business administration',	'MBA',	'Safety',	2022,		'vinuandrews10@gmail.com',	'66, muslim street varaganeri Trichy Trichy',	'Selvaraj A',	'Mercy s'),

(30,'Yogarajan K',	'2001-1-12',241602457541,	02457541,	6379275571,	8056724735,	6379275571,	'"TH2023M-C01E455"',	'Password@123',	'BCA',
	'Computer Application',	'NIL',	'NIL',	2022,	'yogiraja2001@gmail.com',	'44,agraharam,north Budalur, Budalur, Thanjavur (dt).Pincode:613602',  	'M.Kaliyamoorthy','K.Uma maheswari');
    create table AI_SYSTEM_INFO
    (SNO int not null,
	Name varchar(60),
	System_no int not null primary key,
	ERROR varchar(200),
	OS_Name varchar(250),
	RAM	varchar(50),
    PROCESSOR varchar(250),
	Mouse_Condition varchar(100),
	Keyboard_Condition varchar(100));
    alter table AI_SYSTEM_INFO add column ID_DETAILS int not null unique;
    select * from  AI_SYSTEM_INFO;
    insert into AI_SYSTEM_INFO (SNO,Name,System_no,ERROR,OS_Name,RAM,PROCESSOR,Mouse_Condition,Keyboard_Condition,ID_DETAILS) values
    (13,'Kayalvizhi M',1,'visual C++2019','Windows 7 Ultimate','4.00 GB','INTEL CORE i3','Working','working',1),	
(22,'Sangari S',2,'Working','windows 8.1 pro','2.00 GB','INTEL Pentium','working','Working',2),	
(10	,'Jayalakshmi R',	3,	'working',	'windows 8.1 pro'	,'4.00 GB'	,'INTEL CORE i3','working'	,'working',3	),
(5,	'Fathima M',	4,	'visual C++ 2019',	'windows 7 ultimate', 	'2.00GB','Intel Core  i3',	'working',	'working',4),	
(15,	'LAVANYA M', 	5,	'visual C++ 2019',	'Windows 7 Ultimate',	'4.00 GB',		'Intel Core i3',	'Working'	,'Working',5),	
(24,	'Saranya N',	6,	'not supported by this processor type',	'Windows 7 Professional',	'2.00 GB',		'INTEL CORE i3',	'Working',	'Working',
6),	
(4,	'Bhavani R',	8,	'working','windows 10 pro',	'4.00 GB','Intel Core i3',	'working',	'working',7),	
(19,	'Punithavathi D',9,'visual C++ 2019',	'windows 8.1 pro',	'2.00 GB',		'Intel Core 2 Duo',	'working',	'working',8),	
(26,	'Snega D',	10,	'working',	'windows 10 pro',	'4.00 GB',		'intel core i','working',	'working',9),	
(28,'Tamil V',11,'visual C++2019','windows 8.1','4.00 GB','	INTEL CORE i3',	'working'	,'working',10	),
(27,'Srinidhi S',12,'visual C++2019','windows 8.1',	'2.00 GB','INTEL CORE i3','working','working',11),	
(23,'Santhiya S',13,'not supported by this processor type',	'windows 10 pro',	'4.00 GB','Intel Core 2 Duo','working',	'Working',12),	
(7,	'Gnanagowsalya K',	14,	'working',	'windows 10 ProN',	'8.00 GB',		'INTEL CORE i5',	'working',	'working',13),	
(11,	'Jothika J',	15,	'working',	'Windows 8.1 Pro',	'4.00 GB',		'INTEL CORE i3',	'working',	'working',14),	
(8,	'Hajeera Sithika L',	16,	'working',	'windows 8.1',	'2GB',		'Intel Core 2 Duo',	'working',	'working',15),	
(6,	'Ghouse bi S',	18,	'working',	'Windows 8.1 Pro',	'4GB',		'INTEL CORE i3',	 'working',	'working',16),	
(29	,'Vinu Andrews S',	33,	'working',	'windows 8.1',	'2gb',		'Intel Core 2 Duo',	 'working',	'working',17),	
(21,'RoobankumarK',34,'processor not supported',	'windows 7 ultimate',	'2.00GB','intel core 2 duo','working','working',18),	
(3,	'Aysha sithika L',	17,	'WORKING',	'windows 10 pro',	'2GB',		'INTEL CORE i3',	'working',	'working',19),	
(18,'Priya S',23,'not  support by this processer tryp','windows 7 proffessional',	'4.00GP',	'INTEL CORE i3','working','working',20),	
(14,'Komaladevi. S',	7,	'visualc++2019',	'Windows 8.1 Pro',	'4.00  GB',	'Intel Pentium','Working','Working',21),	
(12,'Kalaiarasan A',32,	'working','Windows 8.1 Pro','4.00 GB','	INTEL CORE i3','working','working',22),	
(1,'Abdul Rahman  B',	42,'working','windows 8.1 pro',	'2 Gb',	'Intel Pentium',	'working',	'workimg',23),	
(2,	'Arun T',	43,	'working',	'windows 8.1',	'2.00GB','Intel Core 2 Duo','working','working',24),	
(17,'Prasanth P',35,'C++2019','Windows 10 Pro','2.00 GB','Intel Pentium','Working',	'working',25),	
(30,'Yogarajan K',	36,'Not supported by the processor','windows 10 pro','2 GB RAM','Intel Pentium','working','working',26),	
(25,'Saravanan M',37,'Working',	'Windows 8.1 Pro','4.00 GB','INTEL CORE i3','Working','Working',27),	
(9,	'HARIHARAN A',38,'working','windows 8.1 pro','4.00 GB','INTEL CORE i3',	'working',	'working',28),	
(20,'Raghul S',39,'not supported by the processor','windows 7','2.00 GB','Intel Pentium','Working',	'working',29),	
(16,'Narayanan S',19,'Working','windows 8.1','4.00GB','INTEL CORE i3','working','working',30);	
alter table AI_SYSTEM_INFO add constraint foreign key (ID_DETAILS) references AI_BATCH_PERSONALDETAILS(SNO);
SELECT * FROM ai_batch_personaldetails join ai_system_info on ai_batch_personaldetails.sno=ai_system_info.ID_DETAILS;
select * from ai_batch_personaldetails h1 left join ai_system_info h2 on h1 .sno = h2.ID_DETAILS;
select * from ai_batch_personaldetails h1 right join ai_system_info h2 on h1 .sno = h2.ID_DETAILS;
use ai_aysha;
create table ai_use_delimiter
(s_no int not null primary key auto_increment,
first_name  varchar(70) not null,
middle_name varchar(80),
last_name  varchar(60) not null,
age int,
gender varchar(250));
delimiter $$
create procedure u1()
begin
select * from ai_use_delimiter;
end $$
delimiter ;
delimiter @@

create procedure dl('ai_use_delimiter',

in first_nameparam  varchar(70) ,
in middle_nameparam varchar(80),
in last_nameparam  varchar(60) ,
in ageparam int,
in genderparam varchar(250))
begin
insert into ai_use_delimiter(first_name,middle_name,last_name,age,gender)
values(first_nameparam,middle_nameparam,last_nameparam,ageparam,genderparam);
end @@
delimiter ;
call dl('aysha','sithika','nazrul',34,'female');

CALL U1();
CALL dl('goush','bi','juber',34,'female');
call dl('hajeera','sithika','azar',30,'femle');
delimiter &&
drop procedure if exists aa;&&
create procedure aa(
in tablename varchar(200),
in columnname varchar(70),
in valuechange varchar(60),
in first_name varchar (60),
in first_nameparam varchar(40))
begin
update ai_use_delimiter set last_name = " juber khan" where first_name = "goush";
set @statement =concat('update ', tablename,' set ',columnname,' = \"',valuechange,'\" ' , ' where ',first_name,'= \"',first_nameparam,'\" ');
prepare stmt from @statement;
execute stmt;
end &&
delimiter ;
call aa ('ai_use_delimiter','last_name','juber khan','first_name','goush');
delimiter &&
drop procedure if exists bb;&&
create procedure bb(
in tablename varchar(200),

in s_no varchar(60),

in s_noparam int)
begin

set @statement = concat('delete from ', tablename,' where ',s_no,'=',s_noparam);
prepare stmt from @statement;
execute stmt;
end &&
delimiter ;
call bb('ai_use_delimiter','s_no',1);
call u1();
delimiter !!

create procedure clmd(
in tablename varchar(200),
in columnname varchar (80))
begin

set@statement =concat('alter table ',tablename,' drop column ',columnname);
prepare stmt from @statement;
execute stmt;
end !!
delimiter ;
call clmd('ai_use_delimiter', 'last_name');
delimiter ^^
drop procedure if exists www;^^
create procedure www(

in s_noparam int,
in middle_nameparam varchar (60),
in first_nameparam varchar(40))
begin
update ai_use_delimiter set first_name = first_nameparam ,middle_name = middle_nameparam where s_no = s_noparam;
end ^^
delimiter ;

call www(2,'lailtha','miss');
call u1();
select * from ai_system_info;
select * from ad_user_login;
delimiter @@
drop procedure if exists yyy; @@
create procedure yyy(
in modified_on varchar(200),
in modified_onparam date,
in created_by varchar(100),
in created_byparam varchar(100),
in created_on varchar(200),
in created_onparam date,
in modified_by varchar(100),
in modified_byparam varchar(100),
in login_id varchar(50),
in login_idparam int)
begin

update ad_user_login set created_by = created_byparam, modified_by = modified_byparam,
 creadted_on = creadted_onparam, modified_on = modified_onparam where login_id = login_idparam; 
 end @@
 delimiter ;
use ai_aysha;

call yyy('aysha','hajeera','2024-12-25','2024-12-29',1001);
