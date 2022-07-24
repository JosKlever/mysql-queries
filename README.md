# mysql-queries
Useful MySQL queries for maintenance and optimization of your database(s).

## WARNING
Use these scripts only if you understand what you are doing and if you have a decent backup.

## Scripts
### Convert tables from MyISAM to InnoDB
The MyISAM storage engine is old and is less stable to use, so you shouldn't use them anymore. You can find 2 queries in the file. One for all databases at once and one for a specific database.
