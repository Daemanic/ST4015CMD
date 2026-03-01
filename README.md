# College Club Membership Management
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

## [?] Database Design/Normalization
Initially, the data were stored in a single table, creative massive redundancy and inconsistency. To resolve this issue, different normalization steps are used:
- 1NF: Ensures atomic values and defines a unique primary key.
- 2NF: Revmoes partial dependencies by separating ``Student`` table info from ``Club`` table.
- 3NF: Transitive dependencies are removed, ensuring ``ClubMentor`` and ``ClubRoom`` depend solely on the ``ClubID``.

---

## [?] Expected Output
After following through the repository cloning and running the SQL file, the system will output a clean, joined list of student memberships demonstrating how data can be stored separately for efficiency.

---

## [?] Entity Relationship Diagram
Note: This image is generated through the raw DBdiagram.io code available in ``dbio.txt``.

<img width="639" height="328" alt="image" src="https://github.com/user-attachments/assets/f37a10ac-dce3-4bfa-a36d-7b1038c6e14f" />


