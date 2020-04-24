SELECT Participant_Code,
       Status,
       YEAR(Start_Time) AS Year,
       ROUND(AVG(Outage_MW), 2) AS Avg_Outage_MW_Loss,
       ROUND(AVG(ROUND(TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60/24, 2)), 2) AS Average_Outage_Duration_Time_Minutes
FROM AEMR
WHERE Status = 'Approved' AND Reason = 'Forced' 
GROUP BY Participant_Code, Status, Year
ORDER BY Year, Avg_Outage_MW_Loss DESC;

