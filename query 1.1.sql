SELECT COUNT(*) AS Total_Number_Outage_Events, Reason, YEAR(Start_Time) AS Year
FROM AEMR
WHERE Reason = 'Forced' AND Status = 'Approved' AND YEAR(Start_Time) IN ('2016','2017')
GROUP BY Status, Year
ORDER BY Reason, Year;
