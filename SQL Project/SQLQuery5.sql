Use ProjectDB

SELECT 
    d.DoctorID,
    d.Fname + ' ' + d.Lname AS DoctorName,
    d.Speciality,
	COUNT(DISTINCT a.PatientID) AS TotalPatients
	FROM ['APPOINTMENTAppointmentID_Patien$'] a
JOIN [DOCTOR$] d 
ON a.DoctorID = d.DoctorID
GROUP BY d.DoctorID, d.Fname, d.Lname, d.Speciality
ORDER BY TotalPatients DESC;