-----------------------# Data Time Functions ------------------------------
-------- MYSQL ----------------

-- Get Current Date/Time MYSQL
SELECT NOW();           -- Full datetime: 2025-05-17 15:45:30
SELECT CURDATE();       -- Only date:     2025-05-17
SELECT CURTIME();       -- Only time:     15:45:30

-- Extract Date/Time Parts MYSQL
SELECT 
  YEAR(NOW()),          -- 2025
  MONTH(NOW()),         -- 5
  DAY(NOW()),           -- 17
  HOUR(NOW()),          -- 15
  MINUTE(NOW()),        -- 45
  SECOND(NOW()),        -- 30
  DAYNAME(NOW());       -- Saturday


-- Add / Subtract Dates MYSQL

SELECT 
  DATE_ADD(NOW(), INTERVAL 7 DAY)     AS plus_7_days,
  DATE_SUB(NOW(), INTERVAL 1 MONTH)   AS minus_1_month;

-- Difference Between Dates MYSQL

SELECT 
  DATEDIFF('2025-05-17', '2025-05-10')                         AS days_diff,     -- 7
  TIMESTAMPDIFF(YEAR, '2000-01-01', CURDATE())                 AS year_diff,     -- 25
  TIMESTAMPDIFF(DAY, '2025-01-01', '2025-05-17')               AS total_days;    -- 136

-- Format / Parse Dates MYSQL

SELECT 
  DATE_FORMAT(NOW(), '%d-%m-%Y %H:%i:%s')                      AS formatted_date,     -- 17-05-2025 15:45:30
  STR_TO_DATE('17-05-2025', '%d-%m-%Y')                        AS parsed_date;        -- 2025-05-17

-- Other Useful Functions MYSQL

SELECT 
  LAST_DAY(NOW())            AS last_day_of_month,
  WEEK(NOW())                AS week_number,
  QUARTER(NOW())             AS quarter,
  UNIX_TIMESTAMP(NOW())      AS timestamp,
  FROM_UNIXTIME(1715943930)  AS from_timestamp;


----------------- SQL SERVER ----------------

-- Current Date and Time
SELECT 
    GETDATE() AS [CurrentDateTime],
    CONVERT(DATE, GETDATE()) AS [OnlyDate],
    CONVERT(TIME, GETDATE()) AS [OnlyTime];

-- Extract Parts of Date/Time
SELECT 
    YEAR(GETDATE()) AS [Year],
    MONTH(GETDATE()) AS [Month],
    DAY(GETDATE()) AS [Day],
    DATEPART(HOUR, GETDATE()) AS [Hour],
    DATEPART(MINUTE, GETDATE()) AS [Minute],
    DATEPART(SECOND, GETDATE()) AS [Second],
    DATENAME(WEEKDAY, GETDATE()) AS [WeekdayName];

-- Date Addition and Subtraction
SELECT 
    DATEADD(DAY, 7, GETDATE()) AS [Add7Days],
    DATEADD(MONTH, -1, GETDATE()) AS [Subtract1Month],
    DATEADD(YEAR, 1, GETDATE()) AS [Add1Year];

-- Date Difference
SELECT 
    DATEDIFF(DAY, '2025-05-10', '2025-05-17') AS [DaysDiff],
    DATEDIFF(YEAR, '2000-01-01', GETDATE()) AS [YearsDiff];

-- Format Date (SQL Server 2012+)
SELECT 
    FORMAT(GETDATE(), 'dd-MM-yyyy HH:mm:ss') AS [FormattedDate],
    FORMAT(GETDATE(), 'dddd') AS [DayName];

-- Convert Date using CONVERT styles
SELECT 
    CONVERT(VARCHAR, GETDATE(), 103) AS [DDMMYYYY_Format],  -- 17/05/2025
    CONVERT(VARCHAR, GETDATE(), 120) AS [ISO_Format];       -- 2025-05-17 15:45:30

-- Other Useful Date/Time Functions
SELECT 
    EOMONTH(GETDATE()) AS [LastDayOfMonth],
    DATEPART(WEEK, GETDATE()) AS [WeekNumber],
    DATEPART(QUARTER, GETDATE()) AS [Quarter],
    SYSDATETIME() AS [HighPrecisionDateTime],
    GETUTCDATE() AS [UTCDateTime];


