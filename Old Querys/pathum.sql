CREATE TABLE Doctor(
    Doctor_ID VARCHAR(5) PRIMARY KEY,
    Staff_ID VARCHAR(5),
    DType CHAR(20),
    FOREIGN KEY(Staff_ID) REFERENCES Staff(Staff_ID)
);

CREATE TABLE Pharmacy(
    Pharmacy_ID VARCHAR(5) PRIMARY KEY,
    Name CHAR(20),
    Location VARCHAR(30),
    Contact_No VARCHAR(11)
);

CREATE TABLE Nurse(
    Nurse_ID VARCHAR(5) PRIMARY KEY,
    Staff_ID VARCHAR(5),
    FOREIGN KEY(Staff_ID) REFERENCES Staff(Staff_ID)
);

CREATE TABLE Patient_Contact(
    Patient_ID VARCHAR(6),
    Contact VARCHAR(11),
    PRIMARY KEY(Patient_ID,Contact),
    FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Bill(
    Bill_ID VARCHAR(6) PRIMARY KEY,
    Doctor_Charges DECIMAL(6,2),
    Treatment_Charges DECIMAL(6,2),
    Medicine_Charges DECIMAL(6,2),
    BDate 
    Patient_ID VARCHAR(6),
    FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID)
);