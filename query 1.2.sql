SELECT 
      SUM(CASE WHEN Reason = 'Forced' THEN 1 ELSE 0 END) AS Total_Number_Forced_Outage_Events,
      COUNT(*) AS Total_Number_Outage_Events,
      ROUND(SUM(CASE WHEN Reason = 'Forced' THEN 1 ELSE 0 END)/COUNT(*)*100, 2) AS Forced_Outage_Percentage,
      YEAR(Start_Time) AS Year
FROM AEMR
WHERE Status = 'Approved'
GROUP BY Year;
       


