LOAD DATA LOCAL INFILE 'C:\Users\Jatin Kumar Singh\Desktop\data.csv'
INTO TABLE Students
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(full_name, course_opted, mobile_no, @enrollment_date, enrolled)
SET enrollment_date = STR_TO_DATE(@enrollment_date, '%d-%m-%Y');
