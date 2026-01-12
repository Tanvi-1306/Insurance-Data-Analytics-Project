create database INSURANCE ;

use insurance;

-- KPI-01

SELECT 
  `account executive`,
  COUNT(invoice_number) AS num_invoices
FROM 
  invoice
GROUP BY 
  `account executive`
ORDER BY 
  num_invoices DESC;
  
  
  -- KPI-02
  
  SELECT YEAR(MEETING_DATE),COUNT(MEETING_DATE)
  FROM MEETING
  GROUP BY YEAR(MEETING_DATE)
  ORDER BY YEAR(MEETING_DATE);
  
  
 -- KPI-03
  
  SELECT 
  i.`Income_Class`,
  SUM(ib.`New Budget`) AS Target,
  SUM(ib.`Cross Sell Bugdet`) AS Achieve,
  SUM(ib.`Renewal Budget`) AS "New"
FROM 
  insurance.`individual budgets` ib
  JOIN insurance.invoice i ON ib.`Account Exe ID` = i.`Account Exe ID`
GROUP BY 
  i.`Income_Class`;
  
  
  -- KPI-04

Select stage,sum(revenue_amount) as Revenue
From opportunity
Group by stage;


  -- KPI-05

Select insurance.meeting.`Account Executive`,Count(meeting_date) as 'No of meetings'
From meeting
Group by insurance.meeting.`Account Executive`;


  -- KPI-06
  
Select insurance.opportunity.opportunity_name,concat(Round(((insurance.opportunity.revenue_amount)/1000000),2),"M") as Revenue
From insurance.opportunity
Order by insurance.opportunity.revenue_amount desc
limit 4;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  