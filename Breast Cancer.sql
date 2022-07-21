USE cancer;
SELECT *
FROM breast_cancer;

--How many total patients are there?

SELECT COUNT(*)
FROM breast_cancer;

---There are 334 patients total

--How many are female and how many are male

SELECT COUNT(*)
FROM breast_cancer
WHERE gender='female';

SELECT COUNT(*)
FROM breast_cancer
WHERE gender='male';

-330 patients are female and 4 are male

--Determine the youngest patient, their gender, and patient status

SELECT MIN(age),gender,patient_status
FROM breast_cancer
GROUP BY gender;

--Youngest female is 29 and alive. Youngest male is 44 and alive

--Determine the oldest patients with breast cancer, their gender, and patient status

SELECT MAX(age), gender, patient_status
FROM breast_cancer
GROUP BY gender;

--Oldest female is 90 and alive. Oldest male is 84 and alive

--Determine how many patients are in each tumour stage and how many are male and female

SELECT COUNT(*), tumour_stage, gender
FROM breast_cancer
WHERE tumour_stage='III'
GROUP BY gender;

--Total of 81 patients are in stage 3, 80 are female 1 is male


SELECT COUNT(*), tumour_stage, gender
FROM breast_cancer
WHERE tumour_stage='II'
GROUP BY gender;

--Total of 189 patients are in stage 2, 186 are female 3 are male

SELECT COUNT(*), tumour_stage, gender
FROM breast_cancer
WHERE tumour_stage='I'
GROUP BY gender;

--Total of 64 patients are in stage 1 and they are all females

SELECT *
FROM breast_cancer;

--How many patients have died total, male and female

SELECT COUNT(patient_status),gender
FROM breast_cancer
WHERE patient_status='dead'
GROUP BY gender;

--65 females have died and only 1 male




