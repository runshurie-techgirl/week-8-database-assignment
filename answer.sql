-- ============================================================
-- Week 8 Assignment: MySQL Database Backup and Restore
-- Database: sales
-- Note: mysqldump is run in the terminal (PowerShell), not in
-- MySQL Workbench, so the commands are written as comments.
-- ============================================================


-- ============================================================
-- QUESTION 1: Creating a Complete Database Backup
-- ============================================================

-- Command:
-- mysqldump -u root -p --result-file=sales_backup.sql sales

-- Explanation:
-- mysqldump : the tool that exports a database into a text file
--             of SQL statements.
-- -u root   : log in with the MySQL username "root".
-- -p        : asks for the password when the command runs, so the
--             password is never typed in the command itself.
-- --result-file=sales_backup.sql : saves the backup in the file
--             sales_backup.sql. It does the same job as
--             "> sales_backup.sql" but is safer in PowerShell,
--             because ">" can save the file in the wrong format.
-- sales     : the database being backed up.
-- The file holds CREATE TABLE statements (the structure) and
-- INSERT statements (the data).

-- Why regular backups are important:
-- 1. Protection from data loss: hardware failure, a power cut,
--    a virus or accidental deletion can destroy a database.
-- 2. Safety before changes: if a big update goes wrong, we can
--    restore the database to how it was.
-- 3. Disaster recovery: a business can get back to work quickly
--    after a crash.
-- 4. Restoring is easy: the backup can be loaded back with
--    mysql -u root -p sales < sales_backup.sql
-- Think of it like a photocopy of important documents kept in a
-- safe place. If the original is lost, you still have a copy.


-- ============================================================
-- QUESTION 2: Backing Up All Databases
-- ============================================================

-- Command:
-- mysqldump -u root -p --all-databases --result-file=all_databases_backup.sql

-- Explanation:
-- mysqldump       : the export tool.
-- -u root         : log in as the "root" user.
-- -p              : prompts for the password securely.
-- --all-databases : exports every database on the server,
--                   including sales, in one go.
-- --result-file=all_databases_backup.sql : saves everything in
--                   the file all_databases_backup.sql.

-- Why backing up all databases is important before migration:
-- 1. Nothing is left behind: a server may hold many databases,
--    and one command covers all of them.
-- 2. Safety during the move: if the migration fails, we still
--    have a full copy of the old server's data.
-- 3. Easy rebuild: the file can be loaded on the new server to
--    recreate all databases, tables, and data.
-- 4. Less human error: we do not have to back up each database
--    one by one and risk forgetting one.
-- It is like packing everything in the house before moving to a
-- new home, so nothing gets left behind.


-- ============================================================
-- TESTING: Output from PowerShell
-- ============================================================

-- Question 1 output:
-- Enter password: *********
-- (No error. mysqldump prints nothing when it succeeds.)
-- Note: my first attempt gave "Error 1045: Access denied"
-- because I typed the password wrong. The second attempt worked.

-- Question 2 output:
-- Enter password: *********
-- (No error. The backup file was created.)

-- Proof that both backup files were created (dir command):
-- Mode    LastWriteTime        Length   Name
-- -a----  11/21/2026 10:32 AM  1503739  all_databases_backup.sql
-- -a----  11/21/2026 10:30 AM   201289  sales_backup.sql