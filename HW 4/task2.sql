mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pet_database`.`petevent`, CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`))
mysql> SELECT * FROM petPet WHERE petname = 'Fluffy';
Empty set (0.00 sec)

mysql> INSERT INTO petPet (petname, owner, species, gender, birth, death)
    -> VALUES ('Fluffy', 'Harold', 'cat', 'F', '1993-02-04', NULL);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');
Query OK, 1 row affected (0.00 sec)

mysql> USE pet_database;
Database changed
mysql> 
mysql> -- View table structure
Query OK, 0 rows affected (0.00 sec)

mysql> DESCRIBE petPet;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| petname | varchar(20) | NO   | PRI | NULL    |       |
| owner   | varchar(45) | NO   |     | NULL    |       |
| species | varchar(45) | NO   |     | NULL    |       |
| gender  | char(1)     | YES  |     | NULL    |       |
| birth   | date        | NO   |     | NULL    |       |
| death   | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> DESCRIBE petEvent;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| petname   | varchar(20)  | NO   | PRI | NULL    |       |
| eventdate | date         | NO   | PRI | NULL    |       |
| eventtype | varchar(15)  | NO   |     | NULL    |       |
| remark    | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> 
mysql> -- View table contents
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM petPet;
+---------+--------+---------+--------+------------+-------+
| petname | owner  | species | gender | birth      | death |
+---------+--------+---------+--------+------------+-------+
| Fluffy  | Harold | cat     | F      | 1993-02-04 | NULL  |
+---------+--------+---------+--------+------------+-------+
1 row in set (0.00 sec)

mysql> SELECT * FROM petEvent;
+---------+------------+-----------+-------------+
| petname | eventdate  | eventtype | remark      |
+---------+------------+-----------+-------------+
| Fluffy  | 2020-10-15 | vet       | antibiotics |
+---------+------------+-----------+-------------+
1 row in set (0.00 sec)

mysql> INSERT INTO petEvent (petname, owner, species, gender, birth, death)
    -> VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');
ERROR 1054 (42S22): Unknown column 'owner' in 'field list'
mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');
ERROR 1062 (23000): Duplicate entry 'Fluffy-2020-10-15' for key 'petevent.PRIMARY'
mysql> SELECT * FROM petEvent
    -> 
    -> USE pet_database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'pet_database' at line 3
mysql> 
mysql> -- View table structure
Query OK, 0 rows affected (0.00 sec)

mysql> DESCRIBE petPet;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| petname | varchar(20) | NO   | PRI | NULL    |       |
| owner   | varchar(45) | NO   |     | NULL    |       |
| species | varchar(45) | NO   |     | NULL    |       |
| gender  | char(1)     | YES  |     | NULL    |       |
| birth   | date        | NO   |     | NULL    |       |
| death   | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> DESCRIBE petEvent;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| petname   | varchar(20)  | NO   | PRI | NULL    |       |
| eventdate | date         | NO   | PRI | NULL    |       |
| eventtype | varchar(15)  | NO   |     | NULL    |       |
| remark    | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> 
mysql> -- View table contents
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM petPet;
+---------+--------+---------+--------+------------+-------+
| petname | owner  | species | gender | birth      | death |
+---------+--------+---------+--------+------------+-------+
| Fluffy  | Harold | cat     | F      | 1993-02-04 | NULL  |
+---------+--------+---------+--------+------------+-------+
1 row in set (0.00 sec)

mysql> SELECT * FROM petEvent;
+---------+------------+-----------+-------------+
| petname | eventdate  | eventtype | remark      |
+---------+------------+-----------+-------------+
| Fluffy  | 2020-10-15 | vet       | antibiotics |
+---------+------------+-----------+-------------+
1 row in set (0.00 sec)

mysql> //litter event INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '1995-06-15', 'litter', '5 kittens, 2 male');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//litter event INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALU' at line 1
mysql> //litter event
    -> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '1995-06-15', 'litter', '5 kittens, 2 male');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//litter event
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALU' at line 1
mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Fluffy', '1995-06-15', 'litter', '5 kittens, 2 male');
Query OK, 1 row affected (0.00 sec)

mysql> USE pet_database;
Database changed
mysql> 
mysql> -- View table structure
Query OK, 0 rows affected (0.00 sec)

mysql> DESCRIBE petPet;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| petname | varchar(20) | NO   | PRI | NULL    |       |
| owner   | varchar(45) | NO   |     | NULL    |       |
| species | varchar(45) | NO   |     | NULL    |       |
| gender  | char(1)     | YES  |     | NULL    |       |
| birth   | date        | NO   |     | NULL    |       |
| death   | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> DESCRIBE petEvent;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| petname   | varchar(20)  | NO   | PRI | NULL    |       |
| eventdate | date         | NO   | PRI | NULL    |       |
| eventtype | varchar(15)  | NO   |     | NULL    |       |
| remark    | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> 
mysql> -- View table contents
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM petPet;
+---------+--------+---------+--------+------------+-------+
| petname | owner  | species | gender | birth      | death |
+---------+--------+---------+--------+------------+-------+
| Fluffy  | Harold | cat     | F      | 1993-02-04 | NULL  |
+---------+--------+---------+--------+------------+-------+
1 row in set (0.00 sec)

mysql> SELECT * FROM petEvent;
+---------+------------+-----------+-------------------+
| petname | eventdate  | eventtype | remark            |
+---------+------------+-----------+-------------------+
| Fluffy  | 1995-06-15 | litter    | 5 kittens, 2 male |
| Fluffy  | 2020-10-15 | vet       | antibiotics       |
+---------+------------+-----------+-------------------+
2 rows in set (0.01 sec)

mysql> UPDATE petEvent
    -> SET petname = 'Claws'
    -> WHERE petname = 'Slim' AND eventdate = '1997-08-03' AND eventtype = 'vet';
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Claws', '1997-08-03', 'vet', 'broken rib');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pet_database`.`petevent`, CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`))
mysql> INSERT INTO petPet (petname, owner, species, gender, birth, death)
    -> VALUES ('Claws', 'Gwen', 'cat', 'M', '1994-03-17', NULL);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> VALUES ('Claws', '1997-08-03', 'vet', 'broken rib');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ->     ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL),
    ->     ("Claws", "Gwen", "cat", "M", "1994-03-17", NULL),
    ->     ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ->     ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ->     ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ->     ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ->     ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ->     ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ->     ('Puffball', 'Diane', 'hamster', 'F', '1999-03-30', NULL);
ERROR 1062 (23000): Duplicate entry 'Fluffy' for key 'petpet.PRIMARY'
mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ->     ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ->     ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ->     ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ->     ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ->     ("Slim", "1997-08-03", "vet", "broken rib"),
    ->     ("Slim", "1997-10-04", "vet", "broken tooth"),
    ->     ("Bowser", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ->     ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ->     ("Whistler", "1998-12-09", "birthday", "First birthday");
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pet_database`.`petevent`, CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`))
mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ->     ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ->     ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ->     ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ->     ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ->     ("Slim", "1997-08-03", "vet", "broken rib"),
    ->     ("Slim", "1997-10-04", "vet", "broken tooth"),
    ->     ("Bowser", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ->     ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ->     ("Whistler", "1998-12-09", "birthday", "First birthday");
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pet_database`.`petevent`, CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`))
mysql> INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ->     ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL),
    ->     ("Claws", "Gwen", "cat", "M", "1994-03-17", NULL),
    ->     ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ->     ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ->     ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ->     ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ->     ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ->     ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ->     ('Puffball', 'Diane', 'hamster', 'F', '1999-03-30', NULL);
ERROR 1062 (23000): Duplicate entry 'Fluffy' for key 'petpet.PRIMARY'
mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ->     ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ->     ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ->     ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ->     ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ->     ("Slim", "1997-08-03", "vet", "broken rib"),
    ->     ("Slim", "1997-10-04", "vet", "broken tooth"),
    ->     ("Bowser", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ->     ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ->     ("Whistler", "1998-12-09", "birthday", "First birthday");
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pet_database`.`petevent`, CONSTRAINT `petevent_ibfk_1` FOREIGN KEY (`petname`) REFERENCES `petpet` (`petname`))
mysql> SELECT * FROM petPet;
+---------+--------+---------+--------+------------+-------+
| petname | owner  | species | gender | birth      | death |
+---------+--------+---------+--------+------------+-------+
| Claws   | Gwen   | cat     | M      | 1994-03-17 | NULL  |
| Fluffy  | Harold | cat     | F      | 1993-02-04 | NULL  |
+---------+--------+---------+--------+------------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ->     ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ->     ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ->     ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ->     ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ->     ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ->     ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ->     ("Puffball", "Diane", "hamster", "F", "1999-03-30", NULL);
Query OK, 7 rows affected (0.00 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM petPet;
+----------+--------+---------+--------+------------+------------+
| petname  | owner  | species | gender | birth      | death      |
+----------+--------+---------+--------+------------+------------+
| Bowser   | Diane  | dog     | M      | 1979-08-31 | 1995-07-29 |
| Buffy    | Harold | dog     | F      | 1989-05-13 | NULL       |
| Chirpy   | Gwen   | bird    | F      | 1998-09-11 | NULL       |
| Claws    | Gwen   | cat     | M      | 1994-03-17 | NULL       |
| Fang     | Benny  | dog     | M      | 1990-08-27 | NULL       |
| Fluffy   | Harold | cat     | F      | 1993-02-04 | NULL       |
| Puffball | Diane  | hamster | F      | 1999-03-30 | NULL       |
| Slim     | Benny  | snake   | M      | 1996-04-29 | NULL       |
| Whistler | Gwen   | bird    | NULL   | 1997-12-09 | NULL       |
+----------+--------+---------+--------+------------+------------+
9 rows in set (0.00 sec)

mysql> INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ->     ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ->     ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ->     ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ->     ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ->     ("Slim", "1997-08-03", "vet", "broken rib"),
    ->     ("Slim", "1997-10-04", "vet", "broken tooth"),
    ->     ("Bowser", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ->     ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ->     ("Whistler", "1998-12-09", "birthday", "First birthday");
Query OK, 11 rows affected (0.00 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM petEvent;
+----------+------------+-----------+-----------------------------+
| petname  | eventdate  | eventtype | remark                      |
+----------+------------+-----------+-----------------------------+
| Bowser   | 1991-10-12 | kennel    | NULL                        |
| Buffy    | 1993-06-23 | litter    | 5 puppies, 2 female, 3 male |
| Buffy    | 1994-06-19 | litter    | 3 puppies, 3 female         |
| Chirpy   | 1999-03-21 | vet       | needed beak straightened    |
| Claws    | 1997-08-03 | vet       | broken rib                  |
| Claws    | 1998-03-17 | birthday  | Gave him a new flea collar  |
| Fang     | 1991-10-12 | kennel    | NULL                        |
| Fang     | 1998-08-28 | birthday  | Gave him a new chew toy     |
| Fluffy   | 1995-05-15 | litter    | 4 kittens, 3 female, 1 male |
| Fluffy   | 1995-06-15 | litter    | 5 kittens, 2 male           |
| Fluffy   | 2020-10-15 | vet       | antibiotics                 |
| Slim     | 1997-08-03 | vet       | broken rib                  |
| Slim     | 1997-10-04 | vet       | broken tooth                |
| Whistler | 1998-12-09 | birthday  | First birthday              |
+----------+------------+-----------+-----------------------------+
14 rows in set (0.01 sec)

mysql> UPDATE petPet
    -> SET death = '2020-09-01'
    -> WHERE petname = 'Puffball';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM petPet;
+----------+--------+---------+--------+------------+------------+
| petname  | owner  | species | gender | birth      | death      |
+----------+--------+---------+--------+------------+------------+
| Bowser   | Diane  | dog     | M      | 1979-08-31 | 1995-07-29 |
| Buffy    | Harold | dog     | F      | 1989-05-13 | NULL       |
| Chirpy   | Gwen   | bird    | F      | 1998-09-11 | NULL       |
| Claws    | Gwen   | cat     | M      | 1994-03-17 | NULL       |
| Fang     | Benny  | dog     | M      | 1990-08-27 | NULL       |
| Fluffy   | Harold | cat     | F      | 1993-02-04 | NULL       |
| Puffball | Diane  | hamster | F      | 1999-03-30 | 2020-09-01 |
| Slim     | Benny  | snake   | M      | 1996-04-29 | NULL       |
| Whistler | Gwen   | bird    | NULL   | 1997-12-09 | NULL       |
+----------+--------+---------+--------+------------+------------+
9 rows in set (0.00 sec)

mysql> DELETE FROM petEvent
    -> WHERE petname = 'Buffy';
Query OK, 2 rows affected (0.01 sec)

mysql> SELECT * FROM petEvent;
+----------+------------+-----------+-----------------------------+
| petname  | eventdate  | eventtype | remark                      |
+----------+------------+-----------+-----------------------------+
| Bowser   | 1991-10-12 | kennel    | NULL                        |
| Chirpy   | 1999-03-21 | vet       | needed beak straightened    |
| Claws    | 1997-08-03 | vet       | broken rib                  |
| Claws    | 1998-03-17 | birthday  | Gave him a new flea collar  |
| Fang     | 1991-10-12 | kennel    | NULL                        |
| Fang     | 1998-08-28 | birthday  | Gave him a new chew toy     |
| Fluffy   | 1995-05-15 | litter    | 4 kittens, 3 female, 1 male |
| Fluffy   | 1995-06-15 | litter    | 5 kittens, 2 male           |
| Fluffy   | 2020-10-15 | vet       | antibiotics                 |
| Slim     | 1997-08-03 | vet       | broken rib                  |
| Slim     | 1997-10-04 | vet       | broken tooth                |
| Whistler | 1998-12-09 | birthday  | First birthday              |
+----------+------------+-----------+-----------------------------+
12 rows in set (0.00 sec)

mysql> DELETE FROM petPet
    -> WHERE petname = 'Buffy';
Query OK, 1 row affected (0.00 sec)

mysql>  SELECT * FROM petPet;
+----------+--------+---------+--------+------------+------------+
| petname  | owner  | species | gender | birth      | death      |
+----------+--------+---------+--------+------------+------------+
| Bowser   | Diane  | dog     | M      | 1979-08-31 | 1995-07-29 |
| Chirpy   | Gwen   | bird    | F      | 1998-09-11 | NULL       |
| Claws    | Gwen   | cat     | M      | 1994-03-17 | NULL       |
| Fang     | Benny  | dog     | M      | 1990-08-27 | NULL       |
| Fluffy   | Harold | cat     | F      | 1993-02-04 | NULL       |
| Puffball | Diane  | hamster | F      | 1999-03-30 | 2020-09-01 |
| Slim     | Benny  | snake   | M      | 1996-04-29 | NULL       |
| Whistler | Gwen   | bird    | NULL   | 1997-12-09 | NULL       |
+----------+--------+---------+--------+------------+------------+
8 rows in set (0.00 sec)

