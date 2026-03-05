CREATE DATABASE IF NOT EXISTS College2NF;
USE College2NF;

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  StudentName VARCHAR(80),
  Email VARCHAR(80)
);

CREATE TABLE Club (
  StudentID INT,
  ClubName VARCHAR(50),
  ClubRoom VARCHAR(10),
  ClubMentor VARCHAR(100),
  JoinDate VARCHAR(20),
  PRIMARY KEY (StudentID, ClubName),
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

INSERT INTO Student 
VALUES (1, 'Asha', 'asha@email.com'), (2, 'Bikash', 'bikash@email.com'),
  (3, 'Nisha', 'nisha@email.com'), (4, 'Rohan', 'rohan@email.com'),
  (5, 'Suman', 'suman@email.com'), (6, 'Pooja', 'pooja@email.com'),
  (7, 'Aman', 'aman@email.com');

INSERT INTO Club 
VALUES (1, 'Music Club', 'R101', 'Mr. Raman', '1/10/2024'),
  (2, 'Sports Club', 'R202', 'Ms. Sita', '1/12/2024'),
  (1, 'Sports Club', 'R202', 'Ms. Sita', '1/15/2024'),
  (3, 'Music Club', 'R101', 'Mr. Raman', '1/20/2024'),
  (4, 'Drama Club', 'R303', 'Mr. Kiran', '1/18/2024');
