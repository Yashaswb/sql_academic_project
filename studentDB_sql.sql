Create database BUAN_6320;
USE BUAN_6320;
Create table student_details_t(
Student_Id int auto_increment not null primary key,
Student_FirstName varchar(30) not null,
Student_LastName varchar(30),
Student_Address varchar(100),
Student_City varchar(30),
Student_state varchar(30),
Student_PhoneNumber varchar(30),
Student_DateOfBirth date,
Student_Program varchar(30),
email_id varchar (50));

INSERT INTO student_details_t (Student_Id, Student_FirstName, Student_LastName, Student_Address, Student_City, student_State, Student_PhoneNumber, Student_DateOFBirth, Student_Program, email_id) VALUES
	('1', 'Sara', 'Painter', '8254 Jackson Court', 'Laredo', 'Texas', '79432123542', '1995-01-07', 'Graduate', 'plt@gmail.com'),
	('2', 'Katt', 'Winslet', '7233 Fordham Drive', 'Frisco', 'Texas', '76442123542', '1995-02-03', 'Graduate', 'win@gmail.com'),
	('3', 'Rachel', 'Purple', '7977 Fairview Ave.', 'Plano', 'Texas', '76439123542', '1995-03-08', 'Graduate', 'rach@gmail.com'),
	('4', 'Tanya', 'Williams', '1324 Alma', 'Dallas', 'Texas', '76432123542', '1995-04-01', 'Graduate', 'tw@gmail.com'),
	('5', 'Samuel', 'Sam', '1304 Rockhill', 'Mckinney', 'Texas', '76432123543', '1995-01-01', 'Graduate', 'ss@gmail.com'),
	('6', 'Joel', 'George', '9749 Amherst Lane', 'San Antonio', 'Texas', '76432123544', '1995-02-01', 'Graduate', 'jg@gmail.com'),
	('7', 'Nick', 'Peso', '8881 Big Rock Cove Street', 'Houston', 'Texas', '76432123545', '1995-03-01', 'Graduate', 'np@gmail.com'),
	('8', 'Tom', 'Harry', '7315 Bridle Dr.', 'El Paso', 'Texas', '76432123546', '1995-02-01', 'Graduate', 'th@gmail.com'),
	('9', 'Tim', 'Cook', '347 Washington St.', 'Fort Worth', 'Texas', '76432123547', '1995-05-01', 'Graduate', 'tc@gmail.com'),
	('10', 'Perry', 'Joseph', '723 W. Cedar Street', 'Arlington', 'Texas', '76432123548', '1995-06-01', 'Graduate', 'pj@gmail.com'),
	('11', 'Rafferty', 'Levy', '688 SW. Jones St.', 'Austin', 'Texas', '76432123549', '1995-07-01', 'Graduate', 'rl@gmail.com'),
	('12', 'Tre', 'Payne', '8254 Jackson Court', 'Laredo', 'Texas', '76432123550', '1995-08-01', 'Graduate', 'tp@gmail.com'),
	('13', 'Reid', 'Parra', '7233 Fordham Drive', 'Frisco', 'Texas', '76432123551', '1995-09-01', 'Graduate', 'rp@gmail.com'),
	('14', 'Ianis', 'Roy', '7977 Fairview Ave.', 'Plano', 'Texas', '76432123552', '1996-03-01', 'Graduate', 'lr@gmail.com'),
	('15', 'Aneesa', 'Avalos', '1345 Briargrove', 'Carrolton', 'Texas', '76432123553', '1996-08-01', 'UnderGraduate', 'aa@gmail.com'),
	('16', 'Aleeza', 'Bailey', '141 Roberts Street', 'Amarillo', 'Texas', '76432123554', '1996-06-01', 'UnderGraduate', 'ab@gmail.com'),
	('17', 'Reese', 'Ahmad', '7556 Lexington Lane', 'Grand Prairie', 'Texas', '76432123555', '1996-01-01', 'UnderGraduate', 'ra@gmail.com'),
	('18', 'Sameeha', 'Elliott', '918 Gonzales Street', 'Brownsville', 'Texas', '76432123556', '1996-02-01', 'UnderGraduate', 'se@gmail.com'),
	('19', 'Scarlett-Rose', 'Quintana', '749 North Princess Dr.', 'Killeen', 'Texas', '76432123557', '1996-03-01', 'UnderGraduate', 'sq@gmail.com'),
	('20', 'River', 'Hays', '7010 Old Oxford St.', 'Pasadena', 'Texas', '76432123558', '1996-04-01', 'UnderGraduate', 'rh@gmail.com'),
	('21', 'Jasmin', 'Sargent', '367 South Roehampton St.', 'Denton', 'Texas', '76432123559', '1996-05-01', 'UnderGraduate', 'js@gmail.com'),
	('22', 'Bradleigh', 'Huff', '987 High Ridge Street', 'Mesquite city', 'Texas', '76432123560', '1996-06-01', 'UnderGraduate', 'bh@gmail.com'),
	('23', 'Julia', 'Day', '696 Jackson St.', 'McAllen', 'Texas', '76432123561', '1996-07-01', 'UnderGraduate', 'jd@gmail.com'),
	('24', 'Mitchell', 'Weber', '9867 Oklahoma Dr.', 'Waco', 'Texas', '76432123562', '1996-08-01', 'UnderGraduate', 'mw@gmail.com');
use buan_6320;
#drop table course_details_t;
#drop table subjects_t;
create table course_details_t(
Course_Id int  not null auto_increment primary key,
Course_Name varchar(30) not null
);
ALTER TABLE course_details_t AUTO_INCREMENT=1001;
INSERT INTO course_details_t(Course_Name)  VALUES
('Information Technology'),
	('Business Analytics'),
	('Data Science'),
	('Computer Science'),
	('Business Administration'),
	('Finance')
    ,("Software Engineering"),("BioTechnology"),
    ("Supply Chain and Mangement"),("Business Intelligence"),("Electrical Sciences");
    select * from course_details_t;
create table subjects_t(sub_id int auto_increment primary key not null, 
subject_name varchar(50) not null
);
INSERT INTO subjects_t (Subject_Name) VALUES
	('Database  Management Foundation'),
	('Advance Statastics'),
	('Modelling in Business Analytics'),
	('Machine Learning'),
	('Web Analytics'),
	('Data Visualization'),
	('Programming'),
	('Computer Network'),
	('Data Structure'),
	('Artificial Intelligence'),
	('Cloud computing'),
	('BigData'),
	('Business Analytics with R'),
	('Agile Methodologies'),
	('Electronics'),
	('Probability and Statastics'),
	('Biochemistry'),
	('Genetics'),
	('Virology');
#drop table subjects_course_t;
create table subjects_course_t(subCourse_id int auto_increment primary key not null, 
subject_Id int not null,
Course_Id int not null,
FOREIGN KEY (Course_Id) REFERENCES course_details_t(Course_Id),
FOREIGN KEY (Subject_Id) REFERENCES Subjects_t(Sub_Id)
);
INSERT INTO subjects_course_t (Subject_ID,Course_ID) VALUES
	('1', '1001'),
	('1', '1002'),
	('1', '1003'),
	('1', '1004'),
	('1', '1007'),
	('1', '1009'),
	('2', '1001'),
	('2', '1002'),
	('2', '1003'),
	('2', '1004'),
	('2', '1007'),
	('2', '1009'),
	('2', '1005'),
	('2', '1006'),
	('2', '1010'),
	('3', '1001'),
	('3', '1002'),
	('3', '1003'),
	('3', '1004'),
	('3', '1007'),
	('3', '1009'),
	('3', '1005'),
	('3', '1006'),
	('3', '1010'),
	('4', '1001'),
	('4', '1002'),
	('4', '1003'),
	('4', '1004'),
	('4', '1007'),
	('5', '1001'),
	('5', '1002'),
	('5', '1003'),
	('5', '1004'),
	('5', '1005'),
	('5', '1006'),
	('5', '1007'),
	('5', '1008'),
	('5', '1009'),
	('5', '1010'),
	('5', '1011'),
	('6', '1001'),
	('6', '1002'),
	('6', '1003'),
	('6', '1004'),
	('6', '1005'),
	('6', '1006'),
	('6', '1007'),
	('6', '1008'),
	('6', '1009'),
	('6', '1010'),
	('6', '1011'),
	('7', '1001'),
	('7', '1002'),
	('7', '1003'),
	('7', '1004'),
	('7', '1005'),
	('7', '1006'),
	('7', '1007'),
	('7', '1008'),
	('7', '1009'),
	('7', '1010'),
	('7', '1011'),
	('8', '1001'),
	('8', '1004'),
	('8', '1007'),
	('8', '1011'),
	('9', '1001'),
	('9', '1002'),
	('9', '1003'),
	('9', '1004'),
	('9', '1005'),
	('9', '1006'),
	('9', '1007'),
	('9', '1008'),
	('9', '1009'),
	('9', '1010'),
	('9', '1011'),
	('10', '1001'),
	('10', '1002'),
	('10', '1003'),
	('10', '1004'),
	('10', '1005'),
	('10', '1006'),
	('10', '1007'),
	('10', '1008'),
	('10', '1009'),
	('10', '1010'),
	('10', '1011'),
	('11', '1001'),
	('11', '1002'),
	('11', '1003'),
	('11', '1004'),
	('11', '1005'),
	('11', '1006'),
	('11', '1007'),
	('11', '1008'),
	('11', '1009'),
	('11', '1010'),
	('11', '1011'),
	('12', '1001'),
	('12', '1002'),
	('12', '1003'),
	('12', '1004'),
	('12', '1007'),
	('13', '1004'),
	('13', '1001'),
	('13', '1002'),
	('13', '1003'),
	('13', '1004'),
	('13', '1005'),
	('13', '1006'),
	('13', '1007'),
	('13', '1009'),
	('13', '1010'),
	('14', '1004'),
	('14', '1007'),
	('14', '1010'),
	('15', '1004'),
	('15', '1011'),
	('16', '1001'),
	('16', '1002'),
	('16', '1003'),
	('16', '1004'),
	('16', '1005'),
	('16', '1006'),
	('16', '1007'),
	('16', '1008'),
	('16', '1009'),
	('16', '1010'),
	('16', '1011'),
	('17', '1008'),
	('18', '1008'),
	('19', '1008');
select * from subjects_course_t;
#drop table instructor_details_t;
create table instructor_details_t(instructor_id int not null primary key auto_increment,
instructor_name varchar(50) not null,
instructor_email varchar(50) not null,
instructor_address varchar(50));
Insert into instructor_details_t(instructor_name,instructor_email,instructor_address)
values("Srikanth", "SRI134@XYZ.edu","TX"),("Negin","NYX478@XYZ.edu","NY"),
("Syam","SYM5457@XYZ.edu","LA"),("Ranjini","RAN9465@XYZ.edu","FL"),
("Dravid","DRA464@XYZ.edu","SJ"),("Koonjberry","KON7458@XYZ.edu","AR"),
("Rachel Murdy","Rach@hgu.edu","WT"),("Tom Whylen","Tom@hjs.edu","NY"),("Avanthi Sethi","Avant@hjd.edu","NJ"),
("Uppendra","Uppen@ghd.edu","DA"),("Lidong Wu","lidon@fgh.edu","BR"),
("Hemanth Patel", "hem187@ADZ.edu","NL"),("Rohith Sherma","rohi324@YDG.edu","GA"),
("Toptal Key","top637@HYD.edu","RY"),("Bhavani Gupta","Bhav@jhs.edu","BE"),('Shinchan',"shi234@fgh.edu",'NY'),
("Raghavan Fol","Ragh234@HGB.edu","TX"),("Sri Krishna","sri758@ahv.edu","DA"),("Murphy","Mur@ghs.edu","NL"); 
select * from instructor_details_t;
#drop table instructor_subject_t;
create table instructor_subject_t(id int not null primary key auto_increment,instructor_id int not null,
subject_id int not null,
Foreign key(instructor_id) references instructor_details_t(instructor_id),
Foreign key(subject_id) references subjects_t(sub_id));
INSERT INTO instructor_subject_t (Instructor_id, Subject_id) VALUES
	('1', '1'),
	('2', '2'),
	('3', '3'),
	('4', '4'),
	('5', '5'),
	('6', '12'),
	('7', '13'),
	('8', '14'),
	('9', '15'),
	('10', '16'),
	('11', '17'),
	('12', '18'),
	('13', '19'),
	('14', '11'),
	('15', '6'),
	('16', '7'),
	('17', '8'),
	('18', '9'),
	('19', '10');
#Create Degree Type Table
create table degree_type_t(degree_id int not null auto_increment primary key,degree_name varchar(30) not null);
insert into degree_type_t(degree_name) values("Graduate"),("Under Graduate");

#Create Hardware Resource Table
create table  hardware_resources_t(resource_id int not null auto_increment primary key,
resource_name varchar(30) not null);
Insert into hardware_resources_t(resource_name) values("monitor"),("laptop"),("headset"),("keyboard"),("mouse");
select * from hardware_resources_t;


#Create Fee table
create table fee_t(fee_id int not null auto_increment primary key,
fee_Amount varchar(30) not null, Category varchar(30));
Insert into fee_t(fee_Amount,Category)values
("11000$","Scholarship"),("22000$","Without Scholarship");
select * from fee_t;

#Create Pre requisite table

#Create parent/guardaian details
create table parent_details_t(parent_id int not null auto_increment primary key, parent_firstname char(40) not null, parent_lastname char(40) not null, parent_address varchar(50) not null, parent_phonenumber varchar(12) not null,Relationship varchar(40) default "father",Student_Id int not null,
Foreign key(student_id) references student_details_t(student_id));
ALTER TABLE course_details_t AUTO_INCREMENT=1;
INSERT INTO parent_details_t (parent_firstname, parent_lastname, parent_address, Relationship, parent_phonenumber, student_id) VALUES
	('Adelaide', 'Rankin', '"147 Catherine Ave. Houston, TX 77023"', 'Father', '6304539341', '4'),
	('Salim', 'Howe', '"57 River St.,Houston, TX 77074"', 'Father', '6304539342', '5'),
	('Dainton', 'Peel', '"86 West Pennsylvania St,Bryan, TX 77803"', 'Father', '6304539343', '6'),
	('Alyx', 'Curry', '"147 Birchpond Street,Spring, TX 77373"', 'Father', '6304539344', '7'),
	('Donnell', 'Mathis', '"8691 Galvin Rd.,Houston, TX 77088"','Father', '6304539345', '8'),
	('Rickie', 'Keenan', '"86 West Pennsylvania St.,Bryan, TX 77803"', 'Mother', '6304539346', '9'),
	('Hina', 'Ho', '"9100 Pennsylvania Road,Corpus Christi, TX 78415"', 'Mother', '6304539347', '10'),
	('Misty', 'Beil', '"44 Cedar Swamp Ave.,Fort Worth, TX 76110"', 'Mother', '6304539348', '11'),
	('Krystal', 'Haines', '"9876 Orange Street,Texarkana, TX 75501"', 'Mother', '6304539349', '12'),
	('Philip', 'Brett', '"11 Sugar St.,College Station, TX 77840"', 'Father', '6304539350', '13'),
	('Enzo', 'Mccormick', '"8277 Proctor Dr.San Antonio, TX 78216"', 'Father', '6304539351', '14'),
	('Om', 'Cain', '"1 School Road,Baytown, TX 77520"', 'Father', '6304539352', '15'),
	('Rafe', 'Kidd', '"686 Courtland Drive,Spring, TX 77381"', 'Father', '6304539353', '16'),
	('Aniela', 'Andersen', '"7787 Catherine Ave.,Mesquite, TX 75149"', 'Mother', '6304539354', '17'),
	('Nicola', 'Ponce', '"9014 Lafayette Street,Nacogdoches, TX 75961"', 'Mother', '6304539355', '18'),
	('Michalina', 'Foster', '"43 Logan St., Pasadena, TX 77506"', 'Mother', '6304539356', '19'),
	('Vikram', 'Hail', '"12 South Carson Ave., San Antonio, TX 78210"', '', '6304539357', '20'),
	('Karim', 'Parkes', '"7557 Winchester Road, Galveston, TX 77550"', '', '6304539358', '21'),
	('Gia', 'Kennedy', '"36 S. Mechanic St. Round Rock, TX 78681"', 'Mother', '6304539359', '22'),
	('Cavan', 'Lennon', '"400 W. Golf Ave. Houston, TX 77065"', '', '6304539360', '23'),
	('Kenzo', 'Mcloughlin', '"7760 E. Studebaker St.  New Braunfels, TX 78130"', 'Mother', '6304539361', '24'),
	('Ramze', 'Yole', '"10 North  Ave.,San Antonio, TX 78210"', '', '3838827183', '1'),
	('Britney', 'stock', '"1214 Lafayette Street, Nacogdoches, TX 73461"', 'Mother', '3452378954', '2'),
	('Pabuloe', 'smit', '"734 River St.,Colorado, TX 98074"', '', '456782334', '3'),
	('Rachel', 'Murdy', '"1131 Galvin Rd.Houston, TX 75488"', 'Mother', '6452341983', '4');
#Create Library Resources
Create table Library_Resources_t(Library_Resources_Id int not null primary key auto_increment, TextBook_Name varchar(300), Availability int not null);
INSERT INTO Library_Resources_t (TextBook_Name, Availability) VALUES
	('The Hundred-Page Machine Learning Book', '200'),
	('Too Big to Ignore: The Business Case for Big Data', '178'),
	('"Big Data: A Revolution That Will Transform How We Live, Work, and Think"', '435'),
	('Artificial Intelligence: A Guide for Thinking Humans', '64'),
	('Business unIntelligence: Insight and Innovation Beyond Analytics and Big Data', '76'),
	('Creating Value With Social Media Analytics: Managing, Aligning, and Mining Social Media Text, Networks, Actions, Location, Apps, Hyperlinks, Multimedia, & Search Engines Data', '213'),
	('The Quick Python Book', '453'),
	('Developing Analytic Talent: Becoming a Data Scientist', '123'),
	('A Practitioner’s Guide to Business Analytics: Using Data Analysis Tools to Improve Your Organization’s Decision Making and Strategy', '56'),
	('Data Analytics Made Accessible: 2020 Edition', '12'),
	('Data Science for Business: What You Need to Know about Data Mining and Data-Analytic Thinking', '65'),
	('Deep Medicine: How Artificial Intelligence Can Make Healthcare Human Again', '98'),
	("Business Data Science: Combining Machine Learning and Economics to Optimize, Automate, and Accelerate Business Decisions", '12'),
	('Python Tricks: A Buffet of Awesome Python Features', '67'),
	('The Model Thinker: What You Need to Know to Make Data Work for You', '123'),
	('Rebooting AI: Building Artificial Intelligence We Can Trust', '343'),
	('Python for Kids: A Playful Introduction to Programming', '124');
select * from Library_Resources_t;
#Create Software Resource Table
create table software_resources_t(software_resource_id int not null primary key auto_increment, 
software_resource_name varchar(100) not null,Description varchar(200));
INSERT INTO software_resources_t(software_resource_name, Description) VALUES
	('Datacamp', 'To learn courses and do the required certifications if needed'),
	('Coursera', 'To learn courses and do the required certifications if needed'),
	('Alteryx', 'Do the weekly workshops and get a certification'),
	('Udemy', 'To learn courses and do the required certifications if needed'),
	('Kaggle', 'It is for getting the data set'),
	('Edx', 'To learn courses and do the required certifications if needed'),
	('LinkedIn Learning', 'To built networkig with learning'),
	('Teams', 'To communicate'),
	('CodeAcademy', 'To learn and practice coding'),
	('Power BI', 'Visualization tool'),
	('SharePoint', 'To share files securely');
    
#Create resources to student allocation
create table resource_allocation_t(res_alloc_id int not null auto_increment primary key,
hardware_resource_id int,
software_resource_id int,
Library_Resources_Id int,
student_id int,
Foreign key(hardware_resource_id) references hardware_resources_t(resource_id),
Foreign key(software_resource_id) references software_resources_t(software_resource_id),
Foreign key(Library_resources_id) references Library_resources_t(Library_resources_id),
Foreign key(student_id) references student_details_t(student_id));
INSERT INTO resource_allocation_t (hardware_resource_id, Software_Resource_id, Library_Resources_Id, student_id) VALUES
	('3', '1', '16', '2'),
	('4', '5', '17', '3'),
	('5', '2', '2', '4'),
	('1', '4', '8', '5'),
	('2', '3', '3', '6'),
	('1', '6', '4', '7'),
	('2', '7', '5', '8'),
	('4', '8', '6', '9'),
	('3', '9', '7', '10'),
	('5', '10', '14', '11'),
	('1', '11', '9', '12'),
	('4', '4', '10', '13'),
	('2', '7', '11', '14'),
	('3', '3', '12', '15'),
	('5', '5', '1', '16'),
	('1', '6', '8', '1'),
	('4', '7', '3', '17'),
	('2', '8', '4', '20'),
	('1', '9', '5', '18'),
	('2', '10', '7', '22'),
	('4', '6', '14', '21'),
	('3', '7', '9', '19'),
	('5', '10', '12', '24'),
	('3', '9', '11', '23');

select * from subjects_course_t;
select * from subjects_t;
select * from course_details_t;
CREATE TABLE student_reference_t 
(   id int not null primary key auto_increment,
    student_id	int not null,
    resource_id	int,
    degree_id	int not null,
    course_id	int not null,
    fee_id	int not null,
    Parent_id	int not null,
    Foreign key(student_id) references student_details_t(student_id),
    Foreign key(resource_id) references resource_allocation_t(res_alloc_id),
    Foreign key(degree_id) references degree_type_t(degree_id),
    Foreign key(course_id) references course_details_t(course_id),
    Foreign key(fee_id) references fee_t(fee_id),
    Foreign key(parent_id) references parent_details_t(parent_id)
);
INSERT INTO student_reference_t (student_id, resource_id, degree_id, course_id, fee_id, Parent_id) VALUES
	('1', '16', '1', '1001', '1', '22'),
	('2', '1', '2', '1002', '2', '23'),
	('3', '2', '2', '1003', '1', '24'),
	('4', '3', '1', '1004', '1', '1'),
	('5', '4', '2', '1005', '2', '21'),
	('6', '5', '1', '1006', '1', '2'),
	('7', '6', '1', '1007', '2', '3'),
	('8', '7', '2', '1008', '2', '4'),
	('9', '8', '1', '1009', '1', '5'),
	('10', '9', '2', '1005', '1', '6'),
	('11', '10', '2', '1006', '2', '7'),
	('12', '11', '1', '1007', '2', '8'),
	('13', '12', '2', '1008', '1', '9'),
	('14', '13', '1', '1009', '2', '10'),
	('15', '14', '2', '1002', '1', '11'),
	('16', '15', '1', '1003', '2', '12'),
	('17', '17', '1', '1004', '2', '13'),
	('18', '19', '2', '1010', '1', '14'),
	('19', '22', '1', '1011', '2', '15'),
	('20', '18', '2', '1001', '1', '16'),
	('21', '21', '2', '1002', '2', '17'),
	('22', '20', '1', '1003', '2', '18'),
	('23', '24', '2', '1004', '1', '19'),
	('24', '23', '1', '1005', '2', '20');
    
create table student_subjects_t(id int not null primary key, subject1 int not null,
subject2 int not null, subject3 int not null, subject4 int not null,
foreign key(id) references student_reference_t(id),
foreign key(subject1) references subjects_t(sub_id),
foreign key(subject2) references subjects_t(sub_id),
foreign key(subject3) references subjects_t(sub_id),
foreign key(subject4) references subjects_t(sub_id));
INSERT INTO student_subjects_t(Id, Subject1, Subject2, Subject3, Subject4) VALUES
	('1', '11', '1', '5', '4'),
	('2', '6', '4', '2', '7'),
	('3', '12', '6', '7', '3'),
	('4', '13', '1', '11', '7'),
	('5', '10', '2', '6', '4'),
	('6', '10', '2', '6', '4'),
	('7', '13', '7', '11', '16'),
	('8', '17', '10', '11', '5'),
	('9', '1', '16', '7', '13'),
	('10', '6', '3', '9', '2'),
	('11', '5', '3', '9', '2'),
	('12', '5', '1', '11', '4'),
	('13', '19', '7', '16', '18'),
	('14', '2', '10', '9', '16'),
	('15', '7', '5', '1', '3'),
	('16', '5', '1', '9', '4'),
	('17', '12', '15', '11', '4'),
	('18', '9', '7', '14', '10'),
	('19', '9', '15', '6', '7'),
	('20', '2', '3', '9', '16'),
	('21', '5', '12', '11', '4'),
	('22', '2', '11', '1', '6'),
	('23', '9', '13', '8', '7'),
	('24', '13', '10', '11', '16');
    
#Create Pre requisite table
create table prerequisites_t(prerequisite_id int not null auto_increment primary key,prerequisite_name varchar(30) not null);
Insert into prerequisites_t(prerequisite_name)values("Bachelors"),("Diplomo"),("Btech"),("MTech"),("MBA");

#Create Prerequisite to course table
#drop table prerequisites_course_t;
create table prerequisites_course_t(course_id int not null ,prerequisite_id int not null,foreign key(course_id) references course_details_t(course_id)
,foreign key(prerequisite_id) references prerequisites_t(prerequisite_id));
INSERT INTO prerequisites_course_t(Course_ID, Prerequisite_Id) VALUES
	('1001', '3'),
	('1001', '3'),
	('1001', '4'),
	('1002', '2'),
	('1002', '4'),
	('1003', '3'),
	('1004', '2'),
	('1004', '2'),
	('1005', '5'),
	('1005', '4'),
	('1006', '4'),
	('1007', '1'),
	('1007', '1'),
	('1008', '4'),
	('1009', '4'),
	('1009', '1'),
	('1010', '3'),
	('1010', '1'),
	('1011', '2'); 
create table student_marks_t(id int not null primary key, Marks1 int not null,
Marks2 int not null, Marks3 int not null, Marks4 int not null,
foreign key(id) references student_reference_t(id));
INSERT INTO student_marks_t (ID, Marks1, Marks2, Marks3, Marks4) VALUES
	('1', '80', '74', '98', '94'),
	('2', '90', '82', '79', '68'),
	('3', '94', '75', '97', '88'),
	('4', '76', '68', '92', '61'),
	('5', '87', '93', '73', '96'),
	('6', '89', '98', '58', '78'),
	('7', '90', '30', '32', '99'),
	('8', '98', '62', '63', '71'),
	('9', '37', '45', '30', '73'),
	('10', '87', '78', '98', '76'),
	('11', '67', '81', '64', '39'),
	('12', '71', '65', '77', '69'),
	('13', '91', '73', '48', '76'),
	('14', '32', '87', '100', '48'),
	('15', '85', '57', '73', '36'),
	('16', '94', '50', '85', '36'),
	('17', '87', '31', '37', '53'),
	('18', '92', '38', '35', '87'),
	('19', '51', '64', '34', '51'),
	('20', '60', '88', '39', '55'),
	('21', '86', '74', '86', '86'),
	('22', '49', '90', '77', '83'),
	('23', '68', '52', '85', '59'),
	('24', '87', '69', '93', '87');

/*create table grade_t(grade_id int not null primary key auto_increment,student_id int not null,
Percentage int not null, Grade varchar(10) not null,
foreign key(student_id) references student_reference_t(Id));*/
#Subqueries
#Query 1)Write an sql query to get the student details with  Business Analytics
select * from student_details_t where student_id IN(
select student_id from student_reference_t where course_id IN(
Select course_id from course_details_t where Course_Name="Business Analytics"));

#Joins
#Query 2)-- Write an sql query to get the instructor name, subject name of the instructor
Select distinct instructor_details_t.instructor_name, subjects_t.subject_name 
from instructor_details_t join instructor_subject_t 
on instructor_details_t.instructor_id= instructor_subject_t.instructor_id 
join Subjects_t 
on instructor_subject_t. Subject_id = subjects_t.sub_id;

#GroupBy&Aggregate Operators
#Query3)Display total number of studnets who are in graduate and undergraduate
SELECT  student_Program,count(*) AS Total_Number_Of_Students 
FROM Student_details_t
WHERE Student_Program in('graduate', 'undergraduate')
GROUP BY student_Program;

#AND+OR+LIKE+JOIN
#Query4) Write  a query to find the age of the student who lives in frisco or parent lastname starts with R and student age greater than 20
select * from student_details_t;
select concat(parent_firstname,parent_lastname) as Parent_Name, 
concat(student_FirstName,student_details_t.student_LastName) as StudentName, Student_city,
DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),Student_DateOfBirth)), '%Y') + 0 AS age  from parent_details_t  
right join student_reference_t on student_reference_t.Parent_id =parent_details_t.parent_id
Right Join student_details_t on student_details_t.Student_Id=student_reference_t.student_id
where (Student_City="FRISCO" OR parent_lastname LIKE "R%")AND ((DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),Student_DateOfBirth)), '%Y') + 0)>20);

#Multiple Join
#Query5)Select student id,student_fullname, resource_name,software_resource_name,Textbook_name who are allocated with resources
select student_details_t.student_id,concat(student_details_t.student_FirstName,student_details_t.Student_LastName) FullName ,hardware_resources_t.resource_name, software_resources_t.software_resource_name,library_resources_t.TextBook_Name from student_details_t 
join resource_allocation_t on resource_allocation_t.student_id=student_details_t.student_id 
join software_resources_t on resource_allocation_t.software_resource_id=software_resources_t.software_resource_id
join library_resources_t on library_resources_t.Library_Resources_Id=resource_allocation_t.Library_Resources_Id
join hardware_resources_t on hardware_resources_t.resource_id=resource_allocation_t.hardware_resource_id
order by student_details_t.student_id;

#Procedure calling other procedure to update the grade table
#drop procedure grade_calculation;
#drop procedure Call_Grade_Calculation;
#drop table grade_t;
#Procedure
create table grade_t(grade_id int primary key not null,student_id int not null,
Percentage int not null, Grade varchar(10) not null,
foreign key(student_id) references student_reference_t(Id));
DELIMITER $$
create procedure Call_Grade_Generator(
in n int)
Begin
declare i INT default 0;
Set i=1;
while i <= n do
set @marks1=(select marks1 from student_marks_t where id=i);
set @marks2=(select marks1 from student_marks_t where id=i);
set  @marks3=(select marks1 from student_marks_t where id=i);
set @marks4=(select marks1 from student_marks_t where id=i);
set @studentid=i;
set @gradeid=i;
CALL Grade_Calculation(@marks1,@marks2,@marks3,@marks4,@gradeid,@studentid);
set i=i+1;
END WHILE;
END;$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE Grade_Calculation(
IN Marks1 INT,
IN Marks2  INT,
IN Marks3 INT,
IN Marks4 INT,
IN GradeId INT,
IN StudentId INT
)
BEGIN
DECLARE TOTAL INT;
DECLARE AVERAGE INT;
DECLARE Percentage INT;
DECLARE GRADE varchar(10);
SET TOTAL=(Marks1+Marks2+Marks3+Marks4);
SET AVERAGE=TOTAL/4;
SET SQL_SAFE_UPDATES = 0;
SET Percentage= AVERAGE;
IF Percentage >=90 then
SET Grade = 'A';
END IF;
IF Percentage >=80 and Percentage<90 then
SET Grade = 'A-';
END IF;
IF Percentage >=75 and Percentage<80  then
SET Grade = 'B+';
END IF;
IF Percentage >= 70 and Percentage<75 then
SET Grade = 'B';
END IF;
IF Percentage >= 68 and Percentage<70 then
SET Grade = 'B-';
END IF;
IF Percentage >= 65 and Percentage<68 then
SET Grade = 'C';
END IF;
IF Percentage < 65 then
SET Grade = 'F';
END IF;
Insert into grade_t values(GradeId,StudentId,Percentage,Grade);
END ; $$
DELIMITER ;
set @length=(select count(*) from student_marks_t);
select @length;
CALL Call_Grade_Generator(@length);
select * from grade_t;
#select * from student_marks_t;


#Procedure
DELIMITER //
Create Procedure AddStudent(
Student_Id int ,
Student_FirstName varchar(30) ,
Student_LastName varchar(30),
Student_Address varchar(100),
Student_City varchar(30),
Student_state varchar(30),
Student_PhoneNumber varchar(30),
Student_DateOfBirth date,
Student_Program varchar(30),
email_id varchar (50))
Begin
	Insert Into student_details_t(student_id,student_firstname,student_lastname,student_address,student_city,student_state,student_phonenumber,student_dateofbirth,student_program,email_Id) 
		values(student_id,student_firstname,student_lastname,student_address,student_city,student_state,student_phonenumber,student_dateofbirth,student_program,email_Id);
End //
DELIMITER ;
CALL AddStudent('26', 'Vishal', 'Ray', '598 holyson street', 'Saint', 'Texas', '794336482', '1985-01-10', 'Graduate', 'vr434@gmail.com');
select * from student_details_t;

#Procedure
DELIMITER //
#drop procedure GetStudentCourse;
CREATE PROCEDURE GetStudentCourse()
BEGIN
SELECT concat(Student_FirstName,Student_LastName)as Name, Course_Name FROM student_details_t 
JOIN student_reference_t ON student_reference_t.Student_Id=student_details_t.student_id 
JOIN course_details_t ON student_reference_t.Course_Id = course_details_t.Course_Id; 
END //
DELIMITER ;
Call GetStudentCourse;

#function
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `GetStudentFee`(StudentID INT) RETURNS varchar(30) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE fee VARCHAR(30);
	(SELECT  f.fee_Amount INTO fee
	FROM student_details_t sd                                   
	JOIN student_reference_t sr on sr.student_id=sd.Student_Id
	JOIN  fee_t f on f.fee_id=sr.fee_id
	WHERE sd.Student_ID = StudentID)
    LIMIT 1;

	RETURN Fee;
END //
DELIMITER ;
select GetStudentFee(2);


#Trigger
#If new student is allocated with the textbook then availability of that book in resources will be decreased
create trigger Update_Availability
before INSERT on resource_allocation_t
for each row 
Update library_resources_t join resource_allocation_t
on library_resources_t.library_Resources_Id=resource_allocation_t.Library_Resources_Id
set Availability=Availability-1
where library_resources_t.library_Resources_Id=resource_allocation_t.Library_Resources_Id;
# drop trigger Update_Availability;
select Availability from library_resources_t where Library_Resources_Id=8;
Insert into resource_allocation_t(hardware_resource_id,software_resource_id,library_resources_Id,student_id) values(3,7,8,24);
select Availability from library_resources_t where Library_Resources_Id=8;
#drop table Backup_student_t;
CREATE TABLE Backup_student_t(id int,student_id int,resource_id int,degree_id int, course_id int, fee_id int, parent_id int, action varchar(30));
#trigger




#UNION ALL
(select * from library_resources_t)UNION ALL (select * from software_resources_t);



#Deviation percentage of student from the highest score
DELIMITER $$
Create function RelativeScore(StudentID int)
returns float
deterministic
BEGIN
Declare Highest float;
Declare MyTotal float;
Declare RelativeScore float;
set Highest=(select max(Marks1+Marks2+Marks3+Marks4) from student_marks_t);
set MyTotal=(select (Marks1+Marks2+Marks3+Marks4) from student_marks_t where id=StudentId);
set RelativeScore= ((Highest-Mytotal)/Highest)*100;
return(RelativeScore);
END$$
DELIMITER ;
select concat(RelativeScore(4),"%") as Margin_To_Highest;

#trigger
DELIMITER $$
CREATE TRIGGER Backup_student_table
AFTER UPDATE
ON Student_reference_t
FOR EACH ROW
BEGIN
INSERT INTO Backup_student_t
SET action = 'update',
id=old.id,
Student_id=OLD.Student_id,
resource_id=OLD.resource_id,
degree_id=OLD.degree_id,
Course_id=OLD.course_id,
fee_id=OLD.fee_id,
Parent_id=Old.Parent_id;
END $$
DELIMITER ;

SET SQL_SAFE_UPDATES = 0;
update student_reference_t
set Parent_id=11 where student_id=24;
select * from student_reference_t;
select * from Backup_student_t;

# Display the student marks with respective instructors
create view StudentMarksInstructorsView as 
Select Student_ID, Student_FirstName, Student_LastName,instructor_id, instructor_name, Marks1, Marks2, Marks3, Marks4
From student_details_t, student_marks_t, instructor_details_t
where student_details_t.Student_ID=student_marks_t.id;
select * from StudentMarksInstructorsView;

#List of students with Graduate degree with courses
create view GraduateStudentsCourses as 
select Student_id, Student_firstname, Student_lastname, student_program, course_id, course_name
from student_details_t, course_details_t
where student_program='graduate';

select * from GraduateStudentsCourses;