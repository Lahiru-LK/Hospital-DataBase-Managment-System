-- Delete Statement 01 (Delete all data in 'PT0001' record)
DELETE FROM Patient WHERE Patient_ID = 'PT0001';


-- Delete Statement 02 (Delete all the data in Patient table)
DELETE FROM Patient;


-- Delete Statement 03 (Delete all records which Doctor charges over Rs.2300.00 in Bill table)
DELETE FROM Bill
WHERE (Doctor_Charges > 2300.00);


-- Delete Statement 04 (Delete all records which weight is over 51kg and blood group is 'A+' in Record table)
DELETE FROM Record
WHERE (Weight > 51) AND (Blood_Group = 'A+');


-- Delete Statement 05 (Delete first two records of Name which after aligning the decending order from the Department)
DELETE FROM Department
ORDER BY Name DESC LIMIT 2;


-- Delete Statement 06 (Delete minimum medical charge data and show that column and Bill respectively as Expr1 and bill_1)
DELETE FROM Bill
WHERE  (Medicine_Charges = (SELECT MIN(Medicine_Charges) AS Expr1 FROM Bill AS bill_1));