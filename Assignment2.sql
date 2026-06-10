
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
8 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql> select * from employee_details;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select
    -> ^Z^C
mysql> select * from employee_details limit 3;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary ;
ERROR 1054 (42S22): Unknown column 'employeeSalary' in 'order clause'
 ysql> select * from employee_details order by employee_salary ;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           1 | viraj pukale   |           25000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name ;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
|           1 | viraj pukale   |           25000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           1 | viraj pukale   |           25000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc limit 2 ;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.01 sec)

mysql> select distinct city from customer;
+-------+
| city  |
+-------+
| thane |
| nerul |
+-------+
2 rows in set (0.00 sec)

mysql> select not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
mysql> select  city from customer;
+-------+
| city  |
+-------+
| thane |
| thane |
| thane |
| thane |
| nerul |
+-------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      200000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |        5 |       50000 | cash         | 2026-05-20 00:00:00 | delivered    |
|      103 | c103        | p103       |       20 |       70000 | gpay         | 2026-05-29 00:00:00 | shipping     |
|      104 | c104        | p104       |        5 |      250000 | gpay         | 2026-06-02 00:00:00 | shipping     |
|      105 | c105        | p105       |       15 |      300000 | gpay         | 2026-06-04 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from order_details where order_date between '2026-01-01' and '2026-04-01';
Empty set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-05-02' and '2026-06-04';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      200000 | gpay         | 2026-06-05 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c101','c103','c105');
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('c101','c103','c105');
+-------------+--------+-------+----------------------+------------+---------------+----------+
| customer_id | name   | city  | email                | phone_no   | address       | pin_code |
+-------------+--------+-------+----------------------+------------+---------------+----------+
| c102        | tushar | thane | tushar1311@gmail.com | 8108662035 | nitin company |   400606 |
| c104        | purva  | thane | purva99@gmail.com    | 7778889995 | shastri nagar |   400404 |
+-------------+--------+-------+----------------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' or address='nitin company';
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)


mysql> select * from customer where city='Thane' and address='itin company';
Empty set (0.00 sec)

mysql> select * from order_details where total_price > 30000;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      200000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |        5 |       50000 | cash         | 2026-05-20 00:00:00 | delivered    |
|      103 | c103        | p103       |       20 |       70000 | gpay         | 2026-05-29 00:00:00 | shipping     |
|      104 | c104        | p104       |        5 |      250000 | gpay         | 2026-06-02 00:00:00 | shipping     |
|      105 | c105        | p105       |       15 |      300000 | gpay         | 2026-06-04 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)













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
8 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql> select * from employee_details;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select
    -> ^Z^C
mysql> select * from employee_details limit 3;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary ;
ERROR 1054 (42S22): Unknown column 'employeeSalary' in 'order clause'
 ysql> select * from employee_details order by employee_salary ;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           1 | viraj pukale   |           25000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name ;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
|           1 | viraj pukale   |           25000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           1 | viraj pukale   |           25000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc limit 2 ;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.01 sec)

mysql> select distinct city from customer;
+-------+
| city  |
+-------+
| thane |
| nerul |
+-------+
2 rows in set (0.00 sec)

mysql> select not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
mysql> select  city from customer;
+-------+
| city  |
+-------+
| thane |
| thane |
| thane |
| thane |
| nerul |
+-------+
5 rows in set (0.00 sec)

mysql> select
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    -> 8^X^C
mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select
    -> ^C
mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      200000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |        5 |       50000 | cash         | 2026-05-20 00:00:00 | delivered    |
|      103 | c103        | p103       |       20 |       70000 | gpay         | 2026-05-29 00:00:00 | shipping     |
|      104 | c104        | p104       |        5 |      250000 | gpay         | 2026-06-02 00:00:00 | shipping     |
|      105 | c105        | p105       |       15 |      300000 | gpay         | 2026-06-04 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from order_details where order_date between '2026-01-01' and '2026-04-01';
Empty set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-05-02' and '2026-06-04';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      200000 | gpay         | 2026-06-05 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c101','c103','c105');
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('c101','c103','c105');
+-------------+--------+-------+----------------------+------------+---------------+----------+
| customer_id | name   | city  | email                | phone_no   | address       | pin_code |
+-------------+--------+-------+----------------------+------------+---------------+----------+
| c102        | tushar | thane | tushar1311@gmail.com | 8108662035 | nitin company |   400606 |
| c104        | purva  | thane | purva99@gmail.com    | 7778889995 | shastri nagar |   400404 |
+-------------+--------+-------+----------------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
| c105        | mayuri | nerul | mayurijadhav@gmail.com | 9998887776 | sector 10      |   400607 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' or address='nitin company';
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' and adress='nitin company';
ERROR 1054 (42S22): Unknown column 'adress' in 'where clause'
mysql> select * from customer where city='Thane' and adress='nitin company';
ERROR 1054 (42S22): Unknown column 'adress' in 'where clause'
mysql> select * from customer where city='Thane' and address='itin company';
Empty set (0.00 sec)

mysql> select * from customer where city='Thane' or address='itin company';
+-------------+--------+-------+------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                  | phone_no   | address        | pin_code |
+-------------+--------+-------+------------------------+------------+----------------+----------+
| c101        | diya   | thane | diyahinge9@gmail.com   | 8454965498 | lokmanya nagar |   400606 |
| c102        | tushar | thane | tushar1311@gmail.com   | 8108662035 | nitin company  |   400606 |
| c103        | prapti | thane | praptirane11@gmail.com | 7746778798 | sawarkar nagar |   400606 |
| c104        | purva  | thane | purva99@gmail.com      | 7778889995 | shastri nagar  |   400404 |
+-------------+--------+-------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)

mysql>




