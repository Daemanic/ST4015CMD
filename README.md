# 📄 College Club Membership Management
### ST4015CMD - Foundation of Computer Science

---

## [?] Project Overview
This repository contains all normalization process and SQL implementation for a college club membership system. This project demonstrates the transition from a ``Flat-File`` data structure to a fully optimized **Third Normal Form 3NF** relational database.

---

## [?] Getting Started
**Dependencies required:**<br>
- A SQL Databse engine (eg; MySQL, PostgreSQL or SQLite)
- A database client (eg; MySQL Workbench or Command Line)

---

## [?] Cloning Repository
Run the following command to install this project locally and navigating to the directory:
```bash
git clone https://github.com/Daemanic/ST4015CMD.git
cd ST4015CMD
```

---

## [?] Using Docker

1. Creating Docker Container:
```bash
docker run -d --name container -v database:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=070805 mysql:latest
```

2. Import the database into the Container:
```bash
docker exec -it container mysql -u root -p070805 -e "CREATE DATABASE IF NOT EXISTS st4015cmd;"
docker exec -i container mysql -u root -p070805 st4015cmd < 3NF.sql
```

3. Executing the SQL Container:
```bash
docker exec -it container mysql -u root -p070805 st4015cmd
```

---

## [?] Flat-File Table
```
+-----------+--------------+-------------------+-------------+----------+------------+------------+
| StudentID | Student-Name | Email             | ClubName    | ClubRoom | ClubMentor | JoinDate   |
+-----------+--------------+-------------------+-------------+----------+------------+------------+
| 1         | Asha         | asha@email.com    | Music Club  | R101     | Mr. Raman  | 1/10/2024  |
| 2         | Bikash       | bikash@email.com  | Sports Club | R202     | Ms. Sita   | 1/12/2024  |
| 1         | Asha         | asha@email.com    | Sports Club | R202     | Ms. Sita   | 1/15/2024  |
| 3         | Nisha        | nisha@email.com   | Music Club  | R101     | Mr. Raman  | 1/20/2024  |
| 4         | Rohan        | rohan@email.com   | Drama Club  | R303     | Mr. Kiran  | 1/18/2024  |
| 5         | Suman        | suman@email.com   | Music Club  | R101     | Mr. Raman  | 1/22/2024  |
| 2         | Bikash       | bikash@email.com  | Drama Club  | R303     | Mr. Kiran  | 1/25/2024  |
| 6         | Pooja        | pooja@email.com   | Sports Club | R202     | Ms. Sita   | 1/27/2024  |
| 3         | Nisha        | nisha@email.com   | Coding Club | Lab1     | Mr. Anil   | 1/28/2024  |
| 7         | Aman         | aman@email.com    | Coding Club | Lab1     | Mr. Anil   | 1/30/2024  |
+-----------+--------------+-------------------+-------------+----------+------------+------------+
```

## [?] Normalized 3NF Table
SQL Command: `` SELECT * FROM Student; ``
```
+-----------+-------------+------------------+
| StudentID | StudentName | Email            |
+-----------+-------------+------------------+
| 1         | Asha        | asha@email.com   |
| 2         | Bikash      | bikash@email.com |
| 3         | Nisha       | nisha@email.com  |
| 4         | Rohan       | rohan@email.com  |
| 5         | Suman       | suman@email.com  |
| 6         | Pooja       | pooja@email.com  |
| 7         | Aman        | aman@email.com   |
+-----------+-------------+------------------+
```
SQL Command: `` SELECT * FROM Club; ``
```
+-----------+-------------+------------------+
| StudentID | StudentName | Email            |
+-----------+-------------+------------------+
| 1         | Asha        | asha@email.com   |
| 2         | Bikash      | bikash@email.com |
| 3         | Nisha       | nisha@email.com  |
| 4         | Rohan       | rohan@email.com  |
| 5         | Suman       | suman@email.com  |
| 6         | Pooja       | pooja@email.com  |
| 7         | Aman        | aman@email.com   |
+-----------+-------------+------------------+
```
SQL Command: `` SELECT * FROM Membership ORDER BY JoinDate; ``
```
+-----------+--------+------------+
| StudentID | ClubID | JoinDate   |
+-----------+--------+------------+
| 1         | 1      | 2024-10-01 |
| 2         | 2      | 2024-12-01 |
| 1         | 2      | 2024-01-15 |
| 4         | 3      | 2024-01-18 |
| 3         | 1      | 2024-01-20 |
| 5         | 1      | 2024-01-22 |
| 2         | 3      | 2024-01-25 |
| 6         | 2      | 2024-01-27 |
| 3         | 4      | 2024-01-28 |
| 7         | 4      | 2024-01-30 |
+-----------+--------+------------+
```

---

## [?] Database Design/Normalization
Initially, the data were stored in a single table, creative massive redundancy and inconsistency. To resolve this issue, different normalization steps are used:
- **1NF:**<br>
  - Ensures atomic values and defines a unique primary key.
- **2NF:**<br>
  - Revmoes partial dependencies by separating ``Student`` table info from ``Club`` table.
- **3NF:**<br>
  - Transitive dependencies are removed, ensuring ``ClubMentor`` and ``ClubRoom`` depend solely on the ``ClubID``.

---

## [?] Expected Output
After following through the repository cloning and running the SQL file, the system will output a clean, joined list of student memberships demonstrating how data can be stored separately for efficiency.

---

## [?] Entity Relationship Diagram
Note: This image is generated through the raw DBdiagram.io code available in ``dbio.txt``.
<img width="639" height="328" alt="image" src="https://github.com/user-attachments/assets/f37a10ac-dce3-4bfa-a36d-7b1038c6e14f" />

---

## 📨 Acknowledgement
I would like to give credit to my lecturer **Rupak Rajbanshi** Sir for his guidance in this project made for module ST4015CMD - Foundation of Computer Science.
