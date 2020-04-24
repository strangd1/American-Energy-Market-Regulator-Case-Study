SELECT Status, YEAR(Start_Time) AS Year, ROUND(AVG(Outage_MW), 2) AS Avg_Outage_MW_Loss, ROUND(AVG(ROUND(TIMESTAMPDIFF(MINUTE, Start_Time, End_Time), 2)), 2) AS Average_Outage_Duration_Time_Minutes
FROM AEMR
WHERE Status = 'Approved' AND Reason = 'Forced' AND YEAR(Start_Time) IN ('2016', '2017')
GROUP BY Status, Reason, Year
ORDER BY Year;


