/*

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
/*


mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.01 sec)

mysql> create database bank;
Query OK, 1 row affected (0.01 sec)

mysql> use bank;
Database changed
mysql> create table Bank_Account;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table Bank_Account(account_id varchar(10) not null primary key,account_holder_name varchar(100) not null , account_balance double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Bank_Account values('A101','Vijaya Rane',55000),('A102','Sachin Hinge',60000),('A103','Yogesh Rane',40000),('A104','Aanchal Gupta',25000),('A105','Rohan Shinde',18000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Bank_Account;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Vijaya Rane         |           55000 |
| A102       | Sachin Hinge        |           60000 |
| A103       | Yogesh Rane         |           40000 |
| A104       | Aanchal Gupta       |           25000 |
| A105       | Rohan Shinde        |           18000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from Bank_Account;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Vijaya Rane         |           55000 |
| Sachin Hinge        |           60000 |
| Yogesh Rane         |           40000 |
| Aanchal Gupta       |           25000 |
| Rohan Shinde        |           18000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name ,account_balance from Bank_Account where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Vijaya Rane         |           55000 |
| Sachin Hinge        |           60000 |
| Yogesh Rane         |           40000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> update Bank_Account set account_balance=30000 where account_id='A104';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Bank_Account;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Vijaya Rane         |           55000 |
| A102       | Sachin Hinge        |           60000 |
| A103       | Yogesh Rane         |           40000 |
| A104       | Aanchal Gupta       |           30000 |
| A105       | Rohan Shinde        |           18000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
