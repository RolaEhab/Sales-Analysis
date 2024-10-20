--Cleaning DIM_DateTable--
/*
   1-Filtering uneeded features based on buisness request
   2-Using user friendly names
*/
SELECT 
       [DateKey]
      ,[FullDateAlternateKey] AS Date
     -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS Weeknum
      ,[EnglishMonthName] AS Month
	  , LEFT([EnglishMonthName],3) AS MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Monthnum
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE 
  CalendarYear >= YEAR(GETDATE()) -2
