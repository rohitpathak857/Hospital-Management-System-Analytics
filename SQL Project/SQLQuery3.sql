Use ProjectDB
SELECT 
    DATEPART(HOUR, a.Date) AS BookingHour,
    COUNT(*) AS TotalAppointments,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS HourRank
FROM ['APPOINTMENTAppointmentID_Patien$'] a
GROUP BY DATEPART(HOUR, a.Date)
ORDER BY TotalAppointments DESC;





