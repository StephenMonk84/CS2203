Create table Specialty(
    SpecialtyNumber int Primary Key AUTO_INCREMENT,
    SpecialtyName varchar(25) not null,
)


create table Doctor(
    DoctorNumber int Primary Key AUTO_INCREMENT,
    DoctorName varchar(50) not null,
    PhoneNumber varchar(15) not null,
    SpecialtyNumber int not null,
    --Need to add foreign key of specialty
);

Create table Patient(
    PatientNumber int Primary Key AUTO_INCREMENT,
    PatientName varchar(50) not null,
    PatientPhone varchar(15) not null,
    PatientEmail varchar(50),
    PatientAddress varchar(50) not null,
    DateAddedtoSystem date not null,
    --need to add foreign key of doctor
);

Create table Appointment(
    AppointmentiD int Primary Key AUTO_INCREMENT,
    AppointmentDate datetime not null,
    BloodPressure varchar(20) not null,
    Pulse tinyint not null,
    TreatmentNotes VARCHAR(250)
    --need to add foreign key doctor and patient
);

Create Table Medicine(
    MedicineID int Primary Key AUTO_INCREMENT,
    Medicine varchar(50)
);

Create Table Allergy(
    AllergyID int Primary Key AUTO_INCREMENT,
    Allergy vharchar(50)
);

Create Table PatientMedicine(
    --foreign key PatientID and MedicineID both are a composite key
);

Create Table PatientAllergy(
    --foreign key PatientID and AllergyID both are a composite key
);