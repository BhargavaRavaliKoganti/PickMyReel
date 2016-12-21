user table:

+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(20) | YES  |     | NULL    |       |
| username | varchar(20) | NO   | PRI | NULL    |       |
| password | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

details table:

+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| username   | varchar(20) | YES  |     | NULL    |       |
| movie_name | varchar(20) | YES  |     | NULL    |       |
| time       | varchar(20) | YES  |     | NULL    |       |
| threater   | varchar(20) | YES  |     | NULL    |       |
| seats      | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+









threater table:
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(20) | YES  |     | NULL    |       |
| id         | varchar(10) | NO   | PRI | NULL    |       |
| totalSeats | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+


movie table:
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| movie_name | varchar(20) | YES  |     | NULL    |       |
| movie_id   | varchar(10) | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+


shows table:
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| username    | varchar(20) | YES  | MUL | NULL    |       |
| unique_id   | varchar(10) | NO   | PRI | NULL    |       |
| time        | varchar(10) | YES  |     | NULL    |       |
| movie_id    | varchar(10) | YES  | MUL | NULL    |       |
| threater_id | varchar(10) | YES  | MUL | NULL    |       |
| no_seats    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
