Use ProjectDB

SELECT
p.PatientID,
p.FName + ' ' + p.LName AS PatientName,
Min(a.Date) AS FirstVisit,
Max(a.Date) AS MostRecentVisit,
Count(a.AppointmentID) AS TotalVisits
FROM ['APPOINTMENTAppointmentID_Patien$'] a
JOIN [PATIENT$] p
   ON a.PatientID = p.PatientID
GROUP BY p.PatientID, p.FName, p.LName
ORDER By MostRecentVisit DESC;