use hospital;
-- Query 01: (To view all details of doctors)
DELIMITER //
CREATE PROCEDURE view_doc_details()
BEGIN
	SELECT s.Staff_ID,d.Doctor_ID,s.Name,dep.Name AS "Department Name",s.salary
	FROM staff AS s,Doctor AS d,department AS dep
	WHERE s.staff_ID=d.staff_ID AND dep.Department_ID=s.Department_ID;
END//
DELIMITER ;

CALL view_doc_details();

-- Query 02: (To view all details of nurses)
DELIMITER //
CREATE PROCEDURE view_nurse_details()
BEGIN
	SELECT s.Staff_ID,n.Nurse_ID,s.Name,dep.Name AS "Department Name",s.salary
	FROM staff AS s,nurse AS n,department AS dep
	WHERE s.staff_ID=n.staff_ID AND dep.Department_ID=s.Department_ID;
END//
DELIMITER ;

CALL view_nurse_details();

-- Query 03: (To view all details of ward boys)
DELIMITER //
CREATE PROCEDURE view_ward_boy_details()
BEGIN
	SELECT s.Staff_ID,w.ward_boy_ID,s.Name,dep.Name AS "Department Name",s.salary
	FROM staff AS s,ward_boy AS w,department AS dep
	WHERE s.staff_ID=w.staff_ID AND dep.Department_ID=s.Department_ID;
END//
DELIMITER ;

CALL view_ward_boy_details();

-- Query 04: (To view all details of patient)
DELIMITER //
CREATE PROCEDURE view_patient_details()
BEGIN
	SELECT p.Patient_ID,p.Name,p.State,p.Address,p.Gender,p.DOB,p.Room_ID,s.Name AS "Doctor Name",dep.Name AS "Department Name"
	FROM patient AS p,record AS r,doctor AS d,department AS dep,staff AS s
	WHERE p.patient_ID=r.patient_ID AND p.Doctor_ID=d.Doctor_ID AND p.Department_ID=dep.Department_ID AND s.staff_ID=d.Staff_ID;
END//
DELIMITER ;

CALL view_patient_details();

-- Query 05: (To view details about medicine)
DELIMITER //
CREATE PROCEDURE view_med_details()
BEGIN
	SELECT M.Medicine_ID,M.MeName AS "Medicine Name",M.Quantity,P.PhName AS "Pharmacy Name",P.Location,P.Contact_No
	FROM Medicine AS M,pharmacy AS P
	WHERE M.Pharmacy_ID=P.Pharmacy_ID;
END//
DELIMITER ;

CALL view_med_details();

-- Query 06: (To view Given medication details)
DELIMITER //
CREATE PROCEDURE view_gmed_details()
BEGIN
	SELECT G.patient_ID,M.MeName AS "Medicine Name",G_Date AS "Given Date",G_Time AS "Given Time"
	FROM Gives AS G,Medicine AS M
	WHERE G.Medicine_ID=M.Medicine_ID;
END//
DELIMITER ;

CALL view_gmed_details();

-- Query 07: (To view patient contact numbers)
DELIMITER //
CREATE PROCEDURE view_pcontact_details()
BEGIN
	SELECT PC.patient_ID,P.Name,PC.Contact
	FROM patient_contact AS PC,Patient AS P
	WHERE PC.patient_ID=P.patient_ID;
END//
DELIMITER ;

CALL view_pcontact_details();

-- Query 08: (To view Inpatient records with all details)
DELIMITER //
CREATE PROCEDURE view_inpatient_details()
BEGIN
	SELECT R.record_ID,R.patient_ID,P.Name,R.weight,R.Blood_Group,dep.Name AS "Department Name",P.Room_ID,IP.Admit_Date,IP.Discharge_Date
	FROM record AS R,patient AS P,Inpatient AS IP,Department AS dep
	WHERE R.patient_ID=P.patient_ID AND p.Room_ID IS NOT NULL AND IP.record_ID=R.record_ID AND p.department_ID=dep.department_ID;
END//
DELIMITER ;

CALL view_inpatient_details();

-- Query 09: (To view Outpatient records with all details)
DELIMITER //
CREATE PROCEDURE view_outpatient_details()
BEGIN
	SELECT R.record_ID,R.patient_ID,P.Name,R.weight,R.Blood_Group,OP.ODate AS "OPD DATE"
	FROM record AS R,patient AS P,Outpatient AS OP
	WHERE R.patient_ID=P.patient_ID AND p.Room_ID IS NULL AND OP.record_ID=R.record_ID;
END//
DELIMITER ;

CALL view_outpatient_details();

-- Query 10: (To view inpatient who are still in the hospital)
DELIMITER //
CREATE PROCEDURE view_still_inpatient_details()
BEGIN
	SELECT R.record_ID,R.patient_ID,P.Name,R.weight,R.Blood_Group,dep.Name AS "Department Name",P.Room_ID,IP.Admit_Date
	FROM record AS R,patient AS P,Inpatient AS IP,Department AS dep
	WHERE R.patient_ID=P.patient_ID AND p.Room_ID IS NOT NULL AND IP.record_ID=R.record_ID AND p.department_ID=dep.department_ID AND IP.Discharge_Date IS NULL;
END//
DELIMITER ;

CALL view_still_inpatient_details();

-- Query 11:(To view Bill details)
DELIMITER //
CREATE PROCEDURE view_bill_details()
BEGIN
	SELECT B.Bill_ID,B.patient_ID,P.Name AS "Patient Name",B.Doctor_Charges,B.Treatment_Charges,B.Medicine_Charges,B.BDate AS "BILL Date",(B.Doctor_Charges + B.Treatment_Charges + B.Medicine_Charges) AS "Total Amount"
	FROM bill AS B,patient AS P
	WHERE B.patient_ID=P.patient_ID;
END//
DELIMITER ;

CALL view_bill_details();

-- Query 12: (To view Unique patient bill details by input patient_ID)
DELIMITER //
CREATE PROCEDURE view_patient_bill_details(IN x varchar(6))
BEGIN
	SELECT B.Bill_ID,B.patient_ID,P.Name AS "Patient Name",B.Doctor_Charges,B.Treatment_Charges,B.Medicine_Charges,B.BDate AS "BILL Date",(B.Doctor_Charges + B.Treatment_Charges + B.Medicine_Charges) AS "Total Amount"
	FROM bill AS B,patient AS P
	WHERE B.patient_ID=P.patient_ID AND  B.patient_ID=x;
END//
DELIMITER ;

CALL view_patient_bill_details('PT0004');

-- Query 13:(To view available Medicine in pharmacies)
DELIMITER //
CREATE PROCEDURE view_available_medicine_details()
BEGIN
	SELECT Medicine_ID,MeName AS "Medicine Name",Quantity,PhName AS "Pharmacy Name",Location,Contact_No
	FROM medicine 
	NATURAL JOIN pharmacy;
END//
DELIMITER ;

CALL view_available_medicine_details();

-- Query 14:(To view details about treatment)
DELIMITER //
CREATE PROCEDURE view_treatment_details()
BEGIN
	SELECT dt.patient_ID,p.Name AS "Patient Name",d.Doctor_ID,s.Name AS "Doctor Name",dt.Treatment_Name,dt.D_Date AS "Treatment Given Date",D_Time AS "Treatment Given Time",dt.Test_Result
	FROM patient AS p,doctor AS d,doctor_treat AS dt,staff AS s
	WHERE p.patient_ID=dt.patient_ID AND s.staff_ID=d.staff_ID AND d.doctor_ID=dt.doctor_ID;
END//
DELIMITER ;

CALL view_treatment_details();