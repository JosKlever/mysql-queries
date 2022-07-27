# mysql-queries
Useful MySQL queries for maintenance and optimization of your database(s).

## WARNING
Use these scripts only if you understand what you are doing and if you have a decent backup.

## Scripts
### Convert tables from MyISAM to InnoDB
The MyISAM storage engine is old and is less stable to use, so you shouldn't use them anymore. You can find 2 queries in the file. One for all databases at once and one for a specific database.

### Add new WordPress admininistrator account
If you can't login to a website, you can create a new admin user via the database.
(If you know an easy way to use the table prefix that's used in 6 places via a variable, please let me know!)
