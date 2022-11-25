-- Select Query 01 (Can be view patient name, state, address, gender, DOB)  
SELECT Name, State, Address, Gender, DOB
FROM Patient;


-- Select Query 02 (Can be view details about doctors ID have treated, treatments and result with date and time.) 
SELECT Patient.Patient_ID, Patient.Name, Patient.Doctor_ID, Doctor_Treat.Treatment_Name, Doctor_Treat.D_Date, Doctor_Treat.D_Time, Doctor_Treat.Test_Result
FROM Patient, Doctor_Treat
WHERE Patient.Patient_ID=Doctor_Treat.Patient_ID;


-- Select Query 03 (Can be view Department related Laboratory)  
SELECT Laboratory.Laboratory_ID, Laboratory.Name AS "Laboratory Name", Department_Lab.Department_ID, Department.Name AS "Department Name"
FROM Laboratory, Department, Department_Lab
WHERE Laboratory.Laboratory_ID=Department_Lab.Laboratory_ID AND Department_Lab.Department_ID=Department.Department_ID;


-- Select Query 04 (Can view details about payment type, details about paid time and date.) 
SELECT Bill.Bill_ID, Paid_by.PdDate, Paid_By.PdTime, Payment_Method.PMType AS "Payment Method"
FROM Bill, Paid_By, Payment_Method
WHERE Bill.Bill_ID=Paid_By.Bill_ID AND Payment_Method.Method_ID=Paid_By.Method_ID;


-- Select Query 05 (Can view detail about patient, admit and discharge date.)
SELECT Record.Record_ID, Patient.Patient_ID, Patient.Name AS "Patient Name", Inpatient.Admit_Date, Inpatient.Discharge_Date
FROM Record, Patient, Inpatient
WHERE Record.Record_ID=Inpatient.Record_ID AND Record.Patient_ID=Patient.Patient_ID;


-- Select Query 06 (Can be view details about staff, member salary and department.)
SELECT staff.staff_ID, staff.Name AS "Staff Member Name", Salary, department.Name AS "Department Name"
FROM staff, department 
WHERE staff.Department_ID=department.Department_ID
ORDER BY staff.staff_ID ASC;


-- Select Query 07 (Can be view details about department and Number of Patient in departments.)
SELECT Patient.Department_ID, Department.Name AS "Department Name", COUNT(Patient_ID) AS "Number of Patient"
FROM Patient, Department
WHERE Patient.Department_ID=Department.Department_ID
GROUP BY Department_ID;


-- Select Query 08 (Can view supplier details(pharmacy), medication details, and available quantity.)
SELECT medicine.Medicine_ID, medicine.MeName AS "Medicine Name", medicine.Quantity, pharmacy.Pharmacy_ID, pharmacy.PhName AS "Pharmacy Name"
FROM medicine, pharmacy
WHERE pharmacy.Pharmacy_ID=medicine.Pharmacy_ID;


-- Select Query 09 (Can view staff ID, name and salary between 120000 to 250000.)
SELECT Staff_ID, Name, Salary
FROM Staff
WHERE Salary BETWEEN 120000 AND 250000
ORDER BY Salary ASC;


-- Select Query 10 (Can view patient details, admit date and discharged date.)
SELECT Patient.Patient_ID, Patient.Name AS "Patient Name", Inpatient.Admit_Date, Inpatient.Discharge_Date
FROM Inpatient, Record, Patient
WHERE Record.Patient_ID=Patient.Patient_ID AND Record.Record_ID=Inpatient.Record_ID;


-- Select Query 11 (Can view patient came from Galle.)
SELECT Name, Address 
FROM Patient
WHERE Address LIKE'%Galle'
ORDER BY Name ASC;


