 -- create database pysliq;
use  pysliq;


-- create table diabetes_pred
-- (emp_name varchar (255),
-- patient_id varchar (255),
-- gender varchar(255),
-- dob date,
-- Hyper_tension int,
-- Heart_disese int,
-- smoking_history varchar (255),
-- bmi int,
-- HbA1c_level int,
-- blood_level int,
-- diabetes int);



-- select round(datediff(CURDATE(), dob) / 365) as age
-- from diabetes_pred;

-- alter table diabetes_pred
-- add column age int;

-- update diabetes_pred
-- set age = round(datediff(CURDATE(), dob) / 365);

----------------------------------------------------------------------------------------------------------------------------------------------
-- 1). Retrieve the Patient_id and ages of all patients.
 
 select patient_id ,age from diabetes_pred;

-- 2) . Select all female patients who are older than 25.

select emp_name, gender, age
from  diabetes_pred
where gender='female'and age > 25;

-- 3). Calculate the average BMI of patients.

select avg(bmi) as avg_bmi
from diabetes_pred;

-- 4). List patients in descending order of blood glucose levels.

select emp_name, blood_level
from diabetes_pred
order by blood_level desc;

-- 5). Find patients who have hypertension and diabetes.
 select emp_name, hyper_tension, heart_disese
 from diabetes_pred
 where hyper_tension = 1 and heart_disese = 1;
 
 -- 6). Determine the number of patients with heart disease.
  select count(*)
 from diabetes_pred
 where heart_disese=1;
 
 select sum(heart_disese)
 from diabetes_pred;
 
 -- 7) Group patients by smoking history and count how many smokers and nonsmokers there are.
 select smoking_history, count(*)
 from diabetes_pred
 group by smoking_history;
 
 -- 8). Retrieve the Patient_ids of patients who have a BMI greater than the average BMI.
 select patient_id
 from diabetes_pred
 where bmi > (select avg(bmi) from diabetes_pred);
 
 -- 9). Find the patient with the highest HbA1c level and the patient with the lowest HbA1clevel.

(
  SELECT emp_name,patient_id,hba1c_level FROM diabetes_pred ORDER BY hba1c_level DESC LIMIT 1
)
UNION
(
  SELECT emp_name,patient_id,hba1c_level FROM diabetes_pred ORDER BY hba1c_level ASC LIMIT 1
);

-- 10). Calculate the age of patients in years (assuming the current date as of now).

 select patient_id,age
 from diabetes_pred;
 
 
 -- 11)  Rank patients by blood glucose level within each gender group
 
 select emp_name, blood_level, gender,
 rank() over(partition by blood_level order by gender) as rank_patient
 from diabetes_pred;
 
 -- 12. Update the smoking history of patients who are older than 25 to "Ex-smoker."
 update diabetes_pred
 set smoking_history='Ex-smoker'
 where age > 25;
 
 select patient_id, age, smoking_history
 from diabetes_pred
 where smoking_history = "Ex-smoker" and age>25;
 
 -- 13). Insert a new patient into the database with sample data.
 
 insert into diabetes_pred values('Rati Yadav', 'PT100101','female','2002-07-15',0,0,'never',30,5,200,0,22);
 select * from
 diabetes_pred
 where patient_id='PT100101';
 
 -- 14. Delete all patients with heart disease from the database.
 delete from diabetes_pred 
 where heart_disese = 1;
 
 
 -- 15). Find patients who have hypertension but not diabetes using the EXCEPT operator.
 select emp_name,patient_id, hyper_tension,diabetes
from  diabetes_pred
where hyper_tension = 1 and diabetes = 0;


-- 16) . Define a unique constraint on the "patient_id" column to ensure its values are unique.
alter table diabetes_pred
add constraint unique_patient_id UNIQUE (patient_id);

-- 17). Create a view that displays the Patient_ids, ages, and BMI of patients.

create view  test as
(select patient_id,age, bmi
from diabetes_pred);

select * from test;


select * from diabetes_pred;