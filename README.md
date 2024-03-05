# Diabetes Prediction Database Project

This repository contains a SQL database project focused on diabetes prediction. The project includes SQL scripts to create a database, define tables, insert sample data, and perform various queries and updates. The data includes information about patients, such as age, gender, medical history, and key health indicators.

## Table of Contents
 1. Database Structure
 2. Queries
 3. Views
 4. Data Manipulation
 5. Instructions
 6. Contributing

## Database Structure

The database, named pysliq, includes a table named diabetes_pred with the following columns:
1. 'emp_name' (VARCHAR)
2. 'patient_id' (VARCHAR, unique)
3. 'gender' (VARCHAR)
4. dob (DATE)
5. Hyper_tension (INT)
6. Heart_disese (INT)
7. smoking_history (VARCHAR)
8. bmi (INT)
9. HbA1c_level (INT)
10. blood_level (INT)
11. diabetes (INT)
12. age (INT)

## Queries

1. Retrieve the Patient_id and ages of all patients.
2. Select all female patients who are older than 25.
3. Calculate the average BMI of patients.
4. List patients in descending order of blood glucose levels.
5. Find patients who have hypertension and diabetes.
6. Determine the number of patients with heart disease.
7. Group patients by smoking history and count smokers and nonsmokers.
8. Retrieve the Patient_ids of patients with a BMI greater than the average BMI.
9. Find the patient with the highest and lowest HbA1c levels.
10. Calculate the age of patients in years.
11. Rank patients by blood glucose level within each gender group.
12. Update the smoking history of patients older than 25 to "Ex-smoker."
13. Insert a new patient into the database with sample data
14. Delete all patients with heart disease from the database.
15. Find patients with hypertension but not diabetes using the EXCEPT operator.
16. Define a unique constraint on the "patient_id" column.
17. Create a view displaying Patient_ids, ages, and BMI of patients.


## Views
A view named test has been created to display Patient_ids, ages, and BMI of patients.

## Data Manipulation
The project includes data manipulation operations, such as updating smoking history, inserting new patients, and deleting patients with heart disease.

## Instructions
To run the project:
1. Execute the SQL script to create the database and tables.
2. Run the queries to retrieve and manipulate data.
3. Check the views for additional insights.

 ## Contributing
Feel free to contribute by submitting issues or pull requests. If you find any bugs or have suggestions for improvements, please open an issue.  
   
