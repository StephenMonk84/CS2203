Insert into Specialty VALUES('S1', 'Dermatology');
Insert into Specialty VALUES('S2', 'Psychiatry');
Insert into Specialty VALUES('S3', 'Oncology');
Insert into Specialty VALUES('S4', 'Cardiology');
Insert into Specialty VALUES('S5', 'Urology');
Insert into Specialty VALUES('S6', 'Pediatrics');

Insert into Doctor VALUES('D1', 'Doctor Karen', '555-1212', 'S6', NULL);
Insert into Doctor VALUES('D2', 'Doctor John', '555-2934', 'S2', 'D1');
Insert into Doctor VALUES('D3', 'Doctor Robert', '555-6723', 'S6', 'D1');
Insert into Doctor VALUES('D4', 'Doctor David', '555-1745', 'S4', 'D1');
Insert into Doctor VALUES('D5', 'Doctor Mary', '555-6565', 'S5', 'D1');
Insert into Doctor VALUES('D6', 'Doctor Linda', '555-4889', 'S1', 'D1');
Insert into Doctor VALUES('D7', 'Doctor Susan', '555-4581', 'S3', 'D1');
Insert into Doctor VALUES('D8', 'Doctor Zeynep', '555-7891', 'S4', 'D1');
Insert into Doctor VALUES('D9', 'Doctor Mat', '555-7781', 'S1', 'D1');

Insert Into Patient Values('P1', 'D2', 'Patient Dana', '444-1212', 'P1@email.com', '123 Home St.', '2019-02-01');
Insert Into Patient Values('P2', 'D7', 'Patient Harry', '444-2934', 'P2@email.com', '3435 Main St.', '2011-07-13');
Insert Into Patient Values('P3', 'D6', 'Patient Karl', '444-6723', 'P3@email.com', '2176 Baker St.', '2009-10-05');