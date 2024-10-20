-- Cleansed DIM_Customers --
/*
1- removed unwanted columns
2- renamed columns
3- used feuture extraction to create helpful columns
4- joined a customer city column from geography table
*/
SELECT 
	   c.customerkey AS CustomerKey
      ,c.geographykey AS GeographyKey
     -- ,[CustomerAlternateKey]
      --,[Title]
      ,c.firstname AS [First Name] 
      --,[MiddleName]
      ,c.lastname AS [Last Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.datefirstpurchase AS DateFirstPurchse
      --,[CommuteDistance]
	  , g.city AS [Customer City]
  FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography AS g ON g.geographykey = c.geographykey
  ORDER BY
  CustomerKey ASC
