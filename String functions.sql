-- String functions
-- String functions in SQL are built-in functions that operate on string data types (for example, VARCHAR, 
-- CHAR, TEXT) and allow us to manipulate and work with strings.

-- The difference between CHAR, VARCHAR, and TEXT lies in how they store string data. CHAR is a fixed-length 
-- type that always uses the specified number of characters, padding shorter strings with spaces, making it 
-- suitable for uniform-length data like codes. VARCHAR is a variable-length type that stores only the 
-- characters you input, without padding, and is ideal for fields like names or emails where length varies.
--  TEXT is also variable-length but designed for large blocks of text, such as articles or descriptions, and 
--  has storage and indexing limitations compared to VARCHAR.

-- We often work with data that are not in a format or structure that is immediately usable for the use case at
--  hand. 
-- SQL string manipulation assists in turning unstructured data into a structured format so that generic 
-- transformations can be performed on the data. 

-- UPPER() and LOWER() functions
-- The UPPER() function is used to convert a string to uppercase while the LOWER() function is used to convert 
-- a string to lowercase. Their syntaxes are as follows:
SELECT
	UPPER(string) AS Alias
FROM
	Table_name;

SELECT
	LOWER(string) AS Alias
FROM
	Table_name;

-- LTRIM() and RTRIM() functions
-- The LTRIM() function is used to remove leading spaces from the left end of a string while the RTRIM() 
-- function is used to remove trailing spaces from the right end of a string

SELECT
	LTRIM(string) AS Alias
FROM
	Table_name;

SELECT
	RTRIM(string) AS Alias
FROM
	Table_name;

-- LENGTH() function
-- The LENGTH() function is used to determine the length (number of characters) of a string. It counts white 
-- spaces as part of the string length.
SELECT
	LENGTH(string) AS Alias
FROM
	Table_name;
    
-- POSITION() function
-- The POSITION() function is used to return the position (index) of the first occurrence of a substring 
-- within a string. It takes two arguments: the substring to search for and the string in which to search 
-- for that substring. It returns 0 if the substring is not found.
SELECT
	POSITION(substring IN string) AS Alias
FROM
	Table_name;

-- LEFT() and RIGHT() functions
-- The LEFT() function is used to extract a specified number of characters from the beginning (leftmost side)
--  of a string while the RIGHT() function is used to extract a specified number of characters from the end 
--  (rightmost side) of a string.

SELECT
	LEFT(string, length) AS Alias
FROM
	Table_name;

SELECT
	RIGHT(string, length) AS Alias
FROM
	Table_name;
    
-- SUBSTRING() function
-- The SUBSTRING() function is used to extract a substring from a string. It takes three arguments: the 
-- original string, the starting position of the substring, and optionally, the length of the substring.

SELECT
	SUBSTRING(string, start_position, length) 
	AS Alias
FROM
	Table_name;

-- CONCAT() function
-- The CONCAT() function is used to concatenate or join multiple strings together. It takes two or more 
-- string arguments (separated by commas) and returns a single concatenated string.

SELECT
	CONCAT(string1, string2,stringN) AS Alias
FROM
	Table_name;

-- REPLACE() function
-- The REPLACE() function is used to replace all occurrences of a specified substring within a string with a 
-- new substring. It takes three arguments: the original string, the substring to be replaced, and the new 
-- substring. 

SELECT
	REPLACE(string, search_string,replacement_string)
	AS Alias
FROM
	Table_name;



 



