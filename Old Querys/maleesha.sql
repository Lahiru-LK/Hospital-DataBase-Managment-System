CREATE TABLE Department_Lab (
    Department_ID VARCHAR(4),
    Laboratory_ID VARCHAR(4),
    PRIMARY KEY (Department_ID,Laboratory_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (Laboratory_ID) REFERENCES Laboratory(Laboratory_ID)
);

CREATE TABLE Patient (
    Patient_ID VARCHAR(6) PRIMARY KEY,
    Name VARCHAR(20),
    State VARCHAR(4),
    Address VARCHAR(40),
    Gender VARCHAR(8),
    DOB DATE,
    Room_ID VARCHAR(5),
    Department_ID VARCHAR(4),
    Doctor_ID VARCHAR(5),
    FOREIGN KEY (Room_ID) REFERENCES Laboratory(Laboratory_ID)
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Laboratory(Laboratory_ID)
);

CREATE TABLE Inpatient (
    Record_ID  VARCHAR(5) PRIMARY KEY,
    Admit_Date DATE,
    Discharge_Date DATE,
);

CREATE TABLE Word_boy (
    Word_boy_ID  VARCHAR(5) PRIMARY KEY,
    Staff_ID VARCHAR(5)
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

CREATE TABLE Nurse_Assign (
    Nurse_ID VARCHAR(6),
    Room_ID VARCHAR(6),
    NADate DATE,
    NATime TIME,
    PRIMARY KEY (Nurse_ID,Room_ID);
    FOREIGN KEY (Nurse_ID) REFERENCES Nures(Nures_ID),
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);
