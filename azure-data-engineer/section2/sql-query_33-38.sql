----------------# Data Type ----------------------------------
-- MYSQL DATA TYPE
CREATE TABLE sample_data_types (
    -- Numeric Types
    id INT AUTO_INCREMENT PRIMARY KEY,
    tiny_num TINYINT,             -- Range: -128 to 127
    small_num SMALLINT,          -- Range: -32,768 to 32,767
    medium_num MEDIUMINT,        -- Range: ±8 million
    big_num BIGINT,              -- Very large integers
    price DECIMAL(10,2),         -- Exact for currency
    rating FLOAT(3,2),           -- Approximate, e.g. 4.50
    score DOUBLE(5,2),           -- More precision
    is_active BIT(1),            -- Boolean-like field

    -- String Types
    code CHAR(5),                -- Fixed-length
    name VARCHAR(100),          -- Variable-length
    description TEXT,           -- Up to 64 KB of text
    notes LONGTEXT,             -- Up to 4 GB of text
    gender ENUM('M','F','Other'),-- Limited choices
    tags SET('red','blue','green'), -- Multiple options

    -- Date/Time Types
    birth_date DATE,
    login_time TIME,
    created_at DATETIME,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    birth_year YEAR
);

-- SQL SERVER

CREATE TABLE Sample_Data_Types (
    -- Numeric Types
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-increment integer
    TinyNum TINYINT,                   -- 0 to 255
    SmallNum SMALLINT,                -- -32,768 to 32,767
    BigNum BIGINT,                    -- Very large integers
    DecimalValue DECIMAL(10,2),       -- Precise (e.g. money)
    RealValue REAL,                   -- Approximate, float-like
    FloatValue FLOAT,                 -- Approximate, 8-byte float
    BitValue BIT,                     -- 0 or 1 (Boolean)

    -- String Types
    FixedText CHAR(10),               -- Fixed-length text
    VarText VARCHAR(100),            -- Variable-length text
    UnicodeText NVARCHAR(100),       -- Unicode string (for international characters)
    LargeText TEXT,                   -- Deprecated: large text (use VARCHAR(MAX))
    LargeNText NTEXT,                 -- Deprecated: large Unicode text (use NVARCHAR(MAX))

    -- Modern large text types
    Notes VARCHAR(MAX),              -- Up to 2GB
    NNotes NVARCHAR(MAX),            -- Unicode, up to 2GB

    -- Date/Time Types
    BirthDate DATE,                  -- Only date
    BirthTime TIME,                  -- Only time
    CreatedAt DATETIME,              -- Date + Time
    UpdatedAt DATETIME2,            -- Higher precision date+time
    RegisteredAt SMALLDATETIME,     -- Lower precision, less storage
    LogTimeOffset DATETIMEOFFSET,   -- Includes timezone
    JoinYear AS YEAR(GETDATE()),     -- Computed column (example)

    -- Binary Types
    BinData BINARY(16),              -- Fixed-length binary
    VarBinData VARBINARY(256),       -- Variable-length binary
    LargeFile VARBINARY(MAX)         -- For files, images, etc.
);



---------------------- # DataType  Conversion  MYSQL --------------------------

-- 1. EXPLICIT CONVERSION using CAST()
SELECT 
    CAST('123' AS UNSIGNED) AS StringToInt,
    CAST(123 AS CHAR) AS IntToString,
    CAST(123.456 AS DECIMAL(10,2)) AS FloatToDecimal,
    CAST(NOW() AS DATE) AS DateOnly,
    CAST(NOW() AS CHAR) AS DateToString;

-- 2. EXPLICIT CONVERSION using CONVERT()
SELECT 
    CONVERT('2025-05-17', DATE) AS StringToDate,
    CONVERT(123, CHAR) AS IntToString,
    CONVERT(12.34, DECIMAL(6,2)) AS FloatToDecimal,
    CONVERT(NOW(), CHAR) AS DateToString;

-- 3. IMPLICIT CONVERSION (automatically handled)
SELECT 
    '123' + 10 AS ImplicitStringToInt,       -- '123' is auto-converted to 123
    100 + 3.14 AS ImplicitIntToFloat,        -- 100 becomes 100.00
    NOW() + 0 AS DateToNumber,               -- NOW() converted to numeric
    1 = '1' AS CompareIntWithString;         -- TRUE (1 = '1')

-- 4. DATE FORMATTING (for display, not conversion)
SELECT 
    DATE_FORMAT(NOW(), '%Y-%m-%d') AS FormattedDate,
    DATE_FORMAT(NOW(), '%d/%m/%Y %H:%i:%s') AS FormattedDateTime;

-- 5. CONVERT() with CHARSET (optional)
SELECT 
    CONVERT('MySQL' USING utf8mb4) AS Utf8String;

