-- Sub Query 01 (Can view Salary=120000 OR Salary=200000 and Department_ID="DP02" OR Department_ID="DP05" of staff member.)
SELECT Staff_ID, Name AS "Staff Member Name", Salary, Department_ID
FROM Staff
WHERE (Salary=120000 OR Salary=200000) AND (Department_ID="DP02" OR Department_ID="DP05");


-- Sub Query 02 (Can view patient weight between 50kg to 60kg)
SELECT Patient_ID, Weight
FROM record
WHERE Weight>50 AND Weight<60;


-- Sub Query 03 (Can view patient Gender="Female" AND State="Lv03")
SELECT * 
FROM patient
WHERE Gender="Female" AND State="Lv03";