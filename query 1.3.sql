SELECT COUNT(*) AS Total_Number_Outage_Events, Status, Reason
FROM AEMR
WHERE Status = 'Approved' AND Year(Start_Time) IN ('2017')
GROUP BY Status, Reason
ORDER BY Reason;
