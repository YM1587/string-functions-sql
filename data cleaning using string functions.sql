-- Overview
-- Let's explore how string functions can be used to clean up data in our table Access_to_Basic_Services. The 
-- country name column contains a number of entries with unwanted information inside parentheses. We need to 
-- extract the country name without the additional details.

-- Let's start by selecting all unique country names from the table Access_to_Basic_Services. We will then use 
-- the WHERE clause to filter country names that have information in parentheses.

SELECT 
DISTINCT
	Country_name
   --  This retrieves only unique country names (no duplicates).
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';

-- This filters the rows to only those where the Country_name column:
-- Contains the character ( followed by )
-- This means the country name must contain parentheses.
-- The % symbols are wildcards that match any number of characters before or after the ( ).

SELECT 
DISTINCT
	Country_name,
	LENGTH(Country_name) AS CName_String_length
    -- This is to count for us the length of the characters in the column country name
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';

SELECT 
DISTINCT
	Country_name,
	LENGTH(Country_name) AS CName_String_length,
    POSITION('(' IN Country_name) AS Extract_of_CName_from_parenthesis
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';
    
SELECT 
DISTINCT
	Country_name,
	LENGTH(Country_name) AS CName_String_length,
    -- Finds the numeric position (index) of the first occurrence of the character
--     '(' in the Country_name string.
-- 	The POSITION() function returns an integer.
-- 	The result tells you where in the string the opening parenthesis starts.
    POSITION('(' IN Country_name) AS Extract_of_CName_from_parenthesis,
    -- Extracts the leftmost characters from Country_name, up to and including the character before or at 
--     the position of '('.
    LEFT(Country_name, POSITION('(' IN Country_name)) AS New_Country_Name
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';
    

SELECT 
DISTINCT
	Country_name,
	LENGTH(Country_name) AS CName_String_length,
    POSITION('(' IN Country_name) AS Extract_of_CName_from_parenthesis,
	-- to exclude the parenthesis, you typically subtract 1:
    LEFT(Country_name, POSITION('(' IN Country_name)-1) AS New_Country_Name,
    LENGTH(LEFT(Country_name, POSITION('(' IN Country_name)-1)) AS New_Country_name_length
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';
    
-- Now we're still experincing another problem of an extra space for our new country names.
-- To remove the trailing spaces,we'll use the RTRIM() FUNCTION 

SELECT 
DISTINCT
	Country_name,
	LENGTH(Country_name) AS CName_String_length,
    POSITION('(' IN Country_name) AS Extract_of_CName_from_parenthesis,
    RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1)) AS New_Country_Name,
    LENGTH(RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1)))AS New_Country_name_length
FROM
	access_to_basic_services
    WHERE
	Country_name LIKE '%(%)%';