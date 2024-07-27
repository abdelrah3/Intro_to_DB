-- Use the database provided as an argument
USE alx_book_store;

-- Retrieve full description of the 'books' table from INFORMATION_SCHEMA
SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Is Nullable',
    COLUMN_KEY AS 'Key',
    EXTRA AS 'Extra Info'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'books';
