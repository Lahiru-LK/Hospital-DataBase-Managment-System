-- Update Statement 01 (Change the Roomtype(RType) of RM001 as 'Only_Private_R_03' )
UPDATE Room
SET RType = 'Only_Private_R_03'
WHERE Room_ID = 'RM001';


-- Update Statement 02 (Change the pharmacy name(PhName) as a gale pharmacy which Pharmacy Id and Location respectively 'PH004' and Kandy)
UPDATE Pharmacy
SET PhName ="Gale Pharmacy"
WHERE Pharmacy_ID = 'PH004' AND Location = 'Kandy';


-- Update Statement 03 (Chang the Pharmacy name, Location and Contact_No of pharmacy id is 'PH006')
UPDATE Pharmacy
SET  
    PhName = 'Roguss pharmacy',
    Location = 'Nigambo',
    Contact_No = '081-2323456'
WHERE Pharmacy_ID = 'PH006';


-- Update Statement 04 (Set quantity of Gabapentin as 2500 in medicine table)
UPDATE Medicine
SET Quantity = 2500
WHERE MeName = 'Gabapentin';


-- Update Statement 05 (update staff table adding 1850 to Salary which are get salaries over 200000)
UPDATE Staff
SET Salary = Salary + 1850
WHERE Salary > 200000 ;