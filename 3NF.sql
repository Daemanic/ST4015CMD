CREATE DATABASE IF NOT EXISTS College3NF;
USE College3NF;

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  StudentName VARCHAR(80),
  Email VARCHAR(80)
);

INSERT INTO Student 
VALUES (1, 'Asha', 'asha@email.com'), 
  (2, 'Bikash', 'bikash@email.com'),
  (3, 'Nisha', 'nisha@email.com');

CREATE TABLE Club (
  ClubID INT PRIMARY KEY,
  ClubName VARCHAR(50),
  ClubRoom VARCHAR(10),
  ClubMentor VARCHAR(80)
);

INSERT INTO Club 
VALUES (1, 'Music Club', 'R101', 'Mr. Raman'),
  (2, 'Sports Club', 'R202', 'Ms. Sita');

CREATE TABLE Membership (
  StudentID INT,
  ClubID INT,
  JoinDate DATE,
  PRIMARY KEY (StudentID, ClubID),
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
  FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

INSERT INTO Membership 
VALUES (1, 1, '2024-01-10'), 
  (2, 2, '2024-01-12'), 
  (1, 2, '2024-01-15');

SELECT 
    s.StudentName, 
    c.ClubName, 
    d.JoinDate 
FROM Membership d 
JOIN Student s ON d.StudentID = s.StudentID 
JOIN Club c ON d.ClubID = c.ClubID;
