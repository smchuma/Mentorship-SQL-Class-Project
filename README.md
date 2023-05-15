Project Readme
This project is a SQL dump of a database named "mentorship". It contains three tables: program, skills, and student, along with their respective table structures and data.

Database Information
Database Name: mentorship
Server version: 10.4.11-MariaDB
PHP Version: 7.4.1
Table Structures
Table: program
This table stores information about mentoring programs.

Column Name	Data Type	Description
program_Code	varchar	Program code
personal_View	varchar	Personal view
group_Session	varchar	Group session
availability	varchar	Availability
std_Id	varchar	Student ID
skill_Code	varchar	Skill code
Table: skills
This table stores information about various skills.

Column Name	Data Type	Description
skill_Code	varchar	Skill code
skill_Name	varchar	Skill name
Table: student
This table stores information about students participating in the mentorship program.

Column Name	Data Type	Description
std_Id	varchar	Student ID
std_Name	varchar	Student name
std_Gender	varchar	Student gender
std_Email	varchar	Student email
std_Tel	varchar	Student telephone
std_Specialization	varchar	Student specialization
std_GPA	varchar	Student GPA
std_Role	varchar	Student role
Importing the Database Dump
To import this SQL dump into a MySQL or MariaDB database, you can follow these steps:

Create a new database named mentorship.

Open your MySQL or MariaDB command-line interface.

Use the mysql command to import the SQL dump file. Assuming the dump file is named mentorship_dump.sql and located in the current directory, you can run the following command:

shell
Copy code
mysql -u your_username -p mentorship < mentorship_dump.sql
Replace your_username with your MySQL or MariaDB username when prompted for the password.

Once the import process completes, the mentorship database will contain the tables and data specified in the SQL dump.

Feel free to explore the tables and perform various database operations using SQL queries.

Note: Make sure you have MySQL or MariaDB installed and properly configured before importing the SQL dump.

This project is a snapshot of a database used for a mentorship program. You can use the provided SQL dump to recreate the database structure and import the data. Modify and extend the database according to your specific requirements. Enjoy!