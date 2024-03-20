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
Insert Into Patient Values('P4', 'D2', 'Patient Sid', '444-1745', 'P4@email.com', '176 Right St.', '2010-06-20');
Insert Into Patient Values('P5', 'D8', 'Patient Marry', '444-6565', 'P5@email.com', '435 Main St.', '2014-05-18');
Insert Into Patient Values('P6', 'D6', 'Patient Kim', '444-4889', 'P6@email.com', '34 Home St.', '2018-03-15');
Insert Into Patient Values('P7', 'D4', 'Patient Susan', '444-4581', 'P7@email.com', '65 Water St.', '2009-09-07');
Insert Into Patient Values('P8', 'D3', 'Patient Sam', '444-7891', 'P8@email.com', '23 Hill Drive', '2010-11-23');
Insert Into Patient Values('P9', 'D5', 'Patient Peter', '444-7791', 'P9@email.com', '12 River St.', '2008-02-01');
Insert Into Patient Values('P10', 'D7', 'Patient Nick', '123-1212', 'P10@email.com', '335 Bay St.', '2011-07-13');
Insert Into Patient Values('P11', 'D9', 'Patient Kyle', '123-2934', 'P11@email.com', '216 Baker St.', '2016-05-10');
Insert Into Patient Values('P12', 'D9', 'Patient Garcia', '123-6723', 'P12@email.com', '176 St.', '2010-06-20');
Insert Into Patient Values('P13', 'D4', 'Patient Alicia', '123-1745', 'P13@email.com', '823 Left St.', '2015-05-18');
Insert Into Patient Values('P14', 'D4', 'Patient Dan', '123-6565', 'P14@email.com', '534 High St.', '2018-03-15');

Insert Into Appointment Values('A1', 'P1', 'D2', '2019-07-01', '80', '65', 'Dream to success');
Insert Into Appointment Values('A2', 'P13', 'D4', '2019-01-04', '77', '88', 'Good heart rate');
Insert Into Appointment Values('A3', 'P11', 'D9', '2019-03-22', '82', '95', 'Many spots');
Insert Into Appointment Values('A4', 'P7', 'D4', '2020-02-01', '85', '74', 'Fast heart rate');
Insert Into Appointment Values('A5', 'P9', 'D5', '2019-04-13', '75', '56', 'Reports checked');
Insert Into Appointment Values('A6', 'P3', 'D6', '2019-11-12', '81', '92', 'Sun light spots');
Insert Into Appointment Values('A7', 'P10', 'D7', '2020-01-29', '80', '81', 'Early treatment');
Insert Into Appointment Values('A8', 'P9', 'D5', '2019-08-12', '86', '92', 'Much better');
Insert Into Appointment Values('A9', 'P14', 'D4', '2019-05-18', '75', '75', 'Good heart rate');
Insert Into Appointment Values('A10', 'P8', 'D3', '2019-11-18', '76', '79', 'New teeth');
Insert Into Appointment Values('A11', 'P11', 'D9', '2019-06-22', '78', '71', 'Much better');
Insert Into Appointment Values('A12', 'P2', 'D7', '2020-02-21', '82', '86', 'Early Treatment');
Insert Into Appointment Values('A13', 'P4', 'D2', '2019-08-17', '81', '101', 'Bad dreams');
Insert Into Appointment Values('A14', 'P6', 'D6', '2019-06-27', '79', '49', 'Sun light spots');
Insert Into Appointment Values('A15', 'P10', 'D7', '2020-07-29', '80', '83', 'Early Treatment');
Insert Into Appointment Values('A16', 'P7', 'D4', '2020-01-08', '78', '79', 'Good heart rate');

Insert Into Allergy Values ('AL1', 'Drug');
Insert Into Allergy Values ('AL2', 'Food');
Insert Into Allergy Values ('AL3', 'Skin');
Insert Into Allergy Values ('AL4', 'Asthma');
Insert Into Allergy Values ('AL5', 'Rhinitis');

Insert Into PatientAllergy Values('AL4', 'P1');
Insert Into PatientAllergy Values('AL2', 'P13');
Insert Into PatientAllergy Values('AL3', 'P11');
Insert Into PatientAllergy Values('AL4', 'P7');
Insert Into PatientAllergy Values('AL5', 'P9');
Insert Into PatientAllergy Values('AL1', 'P3');

Insert Into Medicine Values('M1', 'Ativan');
Insert Into Medicine Values('M2', 'Ibuprofen');
Insert Into Medicine Values('M3', 'Omeprazole');
Insert Into Medicine Values('M4', 'Metoprolol');
Insert Into Medicine Values('M5', 'Azithromycin');
Insert Into Medicine Values('M6', 'Codeine');

Insert Into PatientMedicine Values('A15','M1');
Insert Into PatientMedicine Values('A2','M6');
Insert Into PatientMedicine Values('A8','M3');
Insert Into PatientMedicine Values('A6','M3');
Insert Into PatientMedicine Values('A15','M2');
Insert Into PatientMedicine Values('A10','M6');
Insert Into PatientMedicine Values('A10','M2');
Insert Into PatientMedicine Values('A4','M5');
Insert Into PatientMedicine Values('A3','M5');
Insert Into PatientMedicine Values('A1','M2');