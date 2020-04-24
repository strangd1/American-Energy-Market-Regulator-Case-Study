SELECT Status,
       Reason,
       COUNT(*) AS Total_Number_Outage_Events,
       ROUND(AVG(TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60/24), 2) AS Average_Outage_Duration_Time_days,
       YEAR(Start_Time) AS Year
FROM AEMR
WHERE Status = 'Approved' 
GROUP BY Status, Reason, Year
ORDER BY Year, Reason;


