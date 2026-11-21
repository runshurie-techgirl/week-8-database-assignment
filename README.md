# Week 8: MySQL Database Backup and Restore

## About This Project

This project is my Week 8 database
assignment. It shows how to back up
a MySQL database using `mysqldump`.

`mysqldump` is a command-line tool
that comes with MySQL Server. It
exports a database into a `.sql` file
of CREATE TABLE and INSERT statements.
That file can be used later to rebuild
the database.

Throughout the training I worked with
the `sales` database. In this
assignment I made two backups:

1. A backup of the `sales` database.
2. A backup of every database on my
   MySQL server.

## Files in This Repository

- `answer.sql`: the commands for both
  questions, with comments that
  explain each command.
- `sales_backup.sql`: the backup of
  the `sales` database (Question 1).
- `README.md`: this file.
- `.gitignore`: tells Git to skip the
  all-databases backup (see below).

## Tools Used

- MySQL Server 8.0 (includes
  `mysqldump`).
- PowerShell, where the backup
  commands were run.
- Visual Studio Code, to write
  `answer.sql` and this README.
- Git and GitHub, to save and share
  my work.