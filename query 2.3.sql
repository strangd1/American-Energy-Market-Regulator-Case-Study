SELECT Status, COUNT(*) AS Total_Number_Outage_Events, MONTH(Start_Time) AS Month, YEAR(Start_Time) As Year
FROM AEMR
WHERE Status = 'Approved' AND YEAR(Start_Time) IN ('2016', '2017')
GROUP BY Status, Month, Year
ORDER BY Month, Year;
