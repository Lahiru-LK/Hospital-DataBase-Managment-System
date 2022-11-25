CREATE TABLE Ward_boy_Assign{
   Ward_boy_ID VARCHAR(6),
   Room_ID VARCHAR(6),
   WADate DATE,
   WATime TIME,
   PRIMARY KEY(Ward_boy_ID,Room_ID),
   FOREIGN KEY(Ward_boy_ID) REFERENCES Word_boy(Ward_boy_ID);
}