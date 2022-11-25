CREATE TABLE Paid_by(
    Bill_ID VARCHAR(6)
    Method_ID VARCHAR(6)
    PdDate DATE,
    PdTime TIME,
    PRIMARY KEY(Bill_ID,Method_ID),
    FOREIGN KEY Bill_ID REFERENCES Bill(Bill_ID)
);