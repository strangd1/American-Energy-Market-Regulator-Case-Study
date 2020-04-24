/*SELECT Participant_Code, Facility_Code, Status, YEAR(Start_Time) AS Year, ROUND(AVG(Outage_MW), 2) AS Avg_Outage_MW_Loss, ROUND(SUM(Outage_MW), 2) AS Summed_Energy_Lost,
FROM AEMR
WHERE Status = 'Approved' AND Reason = 'Forced'
ORDER BY Participant_Code, Facility_Code, Status, YEAR
GROUP BY Year, Summed_Energy_Lost DESC;*/

SELECT Participant_Code, Facility_Code, Status, YEAR(Start_Time) AS Year, ROUND(AVG(Outage_MW), 2) AS Avg_Outage_MW_Loss, ROUND(SUM(Outage_MW), 2) AS Summed_Energy_Lost
FROM AEMR
WHERE Status = 'Approved' AND Reason = 'Forced'
GROUP BY Participant_Code, Facility_Code, Status, Year
ORDER BY Year, Summed_Energy_Lost DESC;


       


