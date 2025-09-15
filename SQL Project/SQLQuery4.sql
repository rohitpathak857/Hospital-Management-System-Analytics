Use ProjectDB
SELECT 
    d.DoctorID,
    d.Fname + ' ' + d.Lname AS DoctorName,
    d.Speciality,
    COUNT(a.AppointmentID) AS TotalAppointments
	FROM ['APPOINTMENTAppointmentID_Patien$'] a
JOIN [DOCTOR$] d 
    ON a.DoctorID = d.DoctorID
GROUP BY d.DoctorID, d.Fname, d.Lname, d.Speciality
ORDER BY TotalAppointments DESC;