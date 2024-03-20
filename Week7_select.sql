SELECT SPECIALTYNUMBER, SPECIALTYNAME FROM SPECIALTY;

SELECT DOCTORNUMBER, DOCTORNAME, PHONENUMBER, SPECIALTYNAME, SUPERVISOR FROM DOCTOR LEFT JOIN SPECIALTY ON DOCTOR.SPECIALTYNUMBER = SPECIALTY.SPECIALTYNUMBER;

SELECT PATIENTNUMBER, PATIENTNAME, PATIENTPHONE, PATIENTEMAIL PATIENTADDRESS, DOCTORNAME, DATEADDEDTOSYSTEM FROM PATIENT LEFT JOIN DOCTOR ON PATIENT.DOCTORNUMBER = DOCTOR.DOCTORNUMBER;

SELECT APPOINTMENTID, APPOINTMENTDATE, BLOODPRESSURE, PATIENTWEIGHT AS 'WEIGHT', TREATMENTNOTES, PATIENTNAME, DOCTORNAME 
FROM APPOINTMENT 
LEFT JOIN PATIENT ON APPOINTMENT.PATIENTNUMBER=PATIENT.PATIENTNUMBER
RIGHT JOIN DOCTOR ON DOCTOR.DOCTORNUMBER=APPOINTMENT.DOCTORNUMBER;

SELECT MEDICINEID, MEDICINE FROM MEDICINE;