Use ProjectDB
Select TOP 10

d.FName + ' ' + d.LName AS DoctorName,
p.FName + ' ' + p.LName AS PatientName,
COUNT(a.APPOINTMENTID) AS TotalVisits
FROM ['APPOINTMENTAppointmentID_Patien$'] a
JOIN [DOCTOR$] d
  on a.DOCTORID = d.DOCTORID
JOIN [PATIENT$] p
  on a.PatientID = p.PatientID
GROUP BY d.FName, d.LName, p.FName, p.LName
ORDER BY TotalVisits DESC;