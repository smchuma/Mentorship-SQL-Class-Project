# Project Readme

This project is a SQL dump of a database named "mentorship". It contains three tables: `program`, `skills`, and `student`, along with their respective table structures and data.

## Database Information

- Database Name: mentorship
- Server version: 10.4.11-MariaDB
- PHP Version: 7.4.1

## Table Structures

### Table: program

This table stores information about mentoring programs.

| Column Name   | Data Type | Description   |
| ------------- | --------- | ------------- |
| program_Code  | varchar   | Program code  |
| personal_View | varchar   | Personal view |
| group_Session | varchar   | Group session |
| availability  | varchar   | Availability  |
| std_Id        | varchar   | Student ID    |
| skill_Code    | varchar   | Skill code    |

### Table: skills

This table stores information about various skills.

| Column Name | Data Type | Description |
| ----------- | --------- | ----------- |
| skill_Code  | varchar   | Skill code  |
| skill_Name  | varchar   | Skill name  |

### Table: student

This table stores information about students participating in the mentorship program.

| Column Name        | Data Type | Description            |
| ------------------ | --------- | ---------------------- |
| std_Id             | varchar   | Student ID             |
| std_Name           | varchar   | Student name           |
| std_Gender         | varchar   | Student gender         |
| std_Email          | varchar   | Student email          |
| std_Tel            | varchar   | Student telephone      |
| std_Specialization | varchar   | Student specialization |
| std_GPA            | varchar   | Student GPA            |
| std_Role           | varchar   | Student role           |
