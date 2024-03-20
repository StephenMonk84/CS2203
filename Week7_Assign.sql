Create table Specialty(
    SpecialtyNumber varchar(4) Primary Key,
    SpecialtyName varchar(25) not null
);

create table Doctor(
    DoctorNumber varchar(5) Primary Key,
    DoctorName varchar(50) not null,
    PhoneNumber varchar(15) not null,
    SpecialtyNumber varchar(4) not null,
    Supervisor varchar(5),
    Constraint fk_sup foreign key (Supervisor)
    References Doctor (DoctorNumber) on Update CASCADE on delete cascade,
    CONSTRAINT fk_spec foreign key (SpecialtyNumber)
    REFERENCES Specialty (SpecialtyNumber) on UPDATE CASCADE on delete cascade
);


Create table Patient(
    PatientNumber varchar(6) Primary Key,
    DoctorNumber varchar(5) not null,
    PatientName varchar(50) not null,
    PatientPhone varchar(15) not null,
    PatientEmail varchar(50),
    PatientAddress varchar(50) not null,
    DateAddedtoSystem date not null,
    CONSTRAINT fk_doc foreign key (DoctorNumber)
    REFERENCES Doctor (DoctorNumber) on UPDATE CASCADE on delete cascade
);

Create table Appointment(
    AppointmentID varchar(10) Primary Key,
    PatientNumber varchar(6) not null,
    DoctorNumber varchar(5) NOT NULL,
    AppointmentDate date not null,
    BloodPressure int not null,
    PatientWeight tinyint not null, 
    TreatmentNotes VARCHAR(250),
    CONSTRAINT fk_patient foreign key (PatientNumber)
    REFERENCES Patient (PatientNumber) on UPDATE CASCADE on delete cascade,
    CONSTRAINT fk_doc01 foreign key (DoctorNumber)
    REFERENCES Doctor (DoctorNumber) on UPDATE CASCADE on delete cascade
);

Create Table Medicine(
    MedicineID varchar(10) Primary Key,
    Medicine varchar(50)
);

Create Table Allergy(
    AllergyID varchar(10) Primary Key,
    Allergy varchar(50)
);

Create Table PatientMedicine(
    AppointmentID varchar(10) not null,
    MedicineID varchar(10) not null,
    Primary Key(AppointmentID, MedicineID),
    CONSTRAINT fk_appoint01 foreign key (AppointmentID)
    REFERENCES Appointment (AppointmentID) on UPDATE CASCADE on delete cascade,
    CONSTRAINT fk_med foreign key (MedicineID)
    REFERENCES Medicine (MedicineID) on UPDATE CASCADE on delete cascade
);

Create Table PatientAllergy(
    AllergyID varchar(10) not null,
    PatientID varchar(6) not null,
    Primary Key(PatientID, AllergyID),
    CONSTRAINT fk_patient02 foreign key (PatientID)
    REFERENCES Patient (PatientNumber) on UPDATE CASCADE on delete cascade,
    CONSTRAINT fk_alerg foreign key (AllergyID)
    REFERENCES Allergy (AllergyID) on UPDATE CASCADE on delete cascade
);