-- Count and Group Functions Query 01 (Can view number of patient group by blood group)
SELECT Blood_Group, COUNT(patient_ID) AS "Number of patient"
FROM record
GROUP BY Blood_Group;


-- Count and Group Functions Query 02 (Can view number of bills group by Payment Method)
SELECT payment_method.PMType AS "Payment Method", COUNT(paid_by.Bill_ID) AS "Number of Bills"
FROM payment_method, paid_by
WHERE payment_method.Method_ID=paid_by.Method_ID
GROUP BY payment_method.PMType;