-- Join Querys 01 (Medicine available pharmacies)
SELECT MeName AS "Medicine Name",Quantity,PhName AS "Pharmacy Name",Location,Contact_No
FROM medicine 
NATURAL JOIN pharmacy;


-- Join Querys 02 (The medicine obtained, the pharmacy where the medicine was given and the patients who received the medicine)
SELECT MeName AS "Medicine Name",Quantity,pharmacy.PhName AS "Pharmacy Name",Patient_ID,G_Date AS "Give Date",G_Time AS "Give Time" 
FROM pharmacy,medicine 
NATURAL JOIN gives 
WHERE pharmacy.Pharmacy_ID = medicine.Pharmacy_ID AND medicine.Medicine_ID = gives.Medicine_ID;


-- Join Querys 03 (The department concerned with the patient and the doctor who examined the patient)
SELECT patient.Patient_ID,patient.Name,patient.State,department.Name,patient.Doctor_ID 
FROM patient 
LEFT JOIN department ON patient.Department_ID = department.Department_ID;


-- Join Querys 04 (Laboratory available for each department)
SELECT department.Department_ID,department.Name,Laboratory_ID 
FROM Department 
RIGHT JOIN Department_Lab ON Department.Department_ID = department_Lab.Department_ID;


-- Join Querys 05 (Room details for each patient and their department)
SELECT patient.Patient_ID,patient.Name,room.Room_ID,Room.RType,room.Department_ID 
FROM patient 
NATURAL JOIN room;