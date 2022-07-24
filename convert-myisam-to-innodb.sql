-- OPTION 1
-- Select all tables with MyISAM storage engine in all databases (except system)
-- on the server to create a list of sql statements to convert them to InnoDB.
-- Paste the output in a new SQL statement.

SELECT  CONCAT('ALTER TABLE ',table_schema,'.', table_name, ' ENGINE=InnoDB;') AS sql_statements
FROM    information_schema.tables AS tb
WHERE 	table_schema NOT IN ('information_schema', 'sys', 'performance_schema','mysql')
AND     `ENGINE` = 'MyISAM'
AND     `TABLE_TYPE` = 'BASE TABLE'
ORDER BY table_schema, table_name;

-- OPTION 2
-- Set your current database in the variable and select only the tables of this database to convert to INNODB.

SET @DATABASE_NAME = 'name_of_your_db';
SELECT  CONCAT('ALTER TABLE ', table_name, ' ENGINE=InnoDB;') AS sql_statements
FROM    information_schema.tables AS tb
WHERE   table_schema = @DATABASE_NAME
AND     `ENGINE` = 'MyISAM'
AND     `TABLE_TYPE` = 'BASE TABLE'
ORDER BY table_name;
