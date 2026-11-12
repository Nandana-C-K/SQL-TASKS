-- Tasks
USE COLLEGE_DB;
-- 1. Display the different cities the students come from.
SELECT distinct CITY FROM STUDENTS;
-- 2. Display the different departments.
SELECT distinct DEPARTMENT FROM STUDENTS;
-- 3. Display the different combinations of department and admission_year.
SELECT distinct DEPARTMENT, ADMISSION_YEAR FROM STUDENTS;
-- 4. Display all students from Kochi.
SELECT * FROM STUDENTS WHERE CITY = 'KOCHI';
-- 5. Display first_name, last_name and percentage of students who scored above 80.
SELECT FIRST_NAME, LAST_NAME, PERCENTAGE FROM STUDENTS WHERE PERCENTAGE > 80;

-- 6. Display all students who are not in the Commerce department.
SELECT * FROM STUDENTS WHERE DEPARTMENT <> 'COMMERCE';
-- 7. Display all students admitted in 2023 or later.
SELECT * FROM STUDENTS WHERE ADMISSION_YEAR >='2023';
-- 8. Display all female students in Computer Science.
SELECT * FROM STUDENTS WHERE GENDER = 'FEMALE' AND  DEPARTMENT = 'COMPUTER_SCIENCE';
-- 9. Display all students in Electronics or Mechanical.
SELECT * FROM STUDENTS WHERE DEPARTMENT IN ('ELECTRONICS' OR 'MECHANICS');
-- 10. Display all students from Kochi, Thrissur or Kozhikode.
SELECT * FROM STUDENTS WHERE CITY IN ('KOCHI','THRISSUR','KOZHIKODE');
-- 11. Display all students who are not from Chennai, Bengaluru or Trivandrum.
SELECT * FROM STUDENTS WHERE CITY not IN ('CHENNAI','BENGALURU','TRIVANDRUM');
-- 12. Display first_name, department and percentage of students who scored 70 or more
-- and 85 or less.
SELECT FIRST_NAME,DEPARTMENT,PERCENTAGE FROM STUDENTS WHERE PERCENTAGE between 70 AND 85;

-- 13. Display first_name and date_of_birth of students born on or after 1 January 2004
-- and on or before 30 June 2004.
SELECT FIRST_NAME,DATE_OF_BIRTH FROM STUDENTS WHERE DATE_OF_BIRTH BETWEEN '2004-01-01' AND '2004-06-30';
-- 14. Display first_name, department and percentage of Computer Science or Electronics
-- students who scored above 85.
SELECT FIRST_NAME,DEPARTMENT,PERCENTAGE FROM STUDENTS WHERE DEPARTMENT IN ('COMPUTER SCIENCE','ELECTRONICS');
-- 15. Display all courses that have 4 credits.
SELECT * FROM COURSES WHERE CREDITS = 4 ;
-- 16. Display all enrollments of course 101 where the marks are 80 or more.
SELECT * FROM ENROLLMENTS WHERE COURSE_ID=101 AND MARKS >=80;