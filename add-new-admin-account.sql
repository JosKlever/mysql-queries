-- Add a WordPress administrator account to the website if you can't login yet.
-- First replace the database_name, table prefix ("wp_", 6 places!) and your personal data as username, password, email, website.
-- Then run the complete code.

SET @USER_ID = (SELECT AUTO_INCREMENT FROM information_schema.tables WHERE TABLE_SCHEMA = 'database_name' and TABLE_NAME = 'wp_users');
SET @PASSWORD = 'XXXXXXXXXXXXXX';

INSERT INTO wp_users (ID, user_login, user_pass, user_nicename, user_email, user_url, user_registered, user_activation_key, user_status, display_name)
VALUES (@USER_ID, 'UserName', MD5(@PASSWORD), 'username', 'info@userdomainname.com', 'https://userdomainname.com/', NOW(), '', '0', 'User Display Name');

INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (NULL, @USER_ID, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');

INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (NULL, @USER_ID, 'wp_user_level', '10');
