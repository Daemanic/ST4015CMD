CREATE DATABASE IF NOT EXISTS College3NF;
USE College3NF;

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  StudentName VARCHAR(80),
  Email VARCHAR(80)
);

INSERT INTO Student (StudentID, StudentName, Email) 
VALUES (1, 'Asha', 'asha@email.com'), 
  (2, 'Bikash', 'bikash@email.com'),
  (3, 'Nisha', 'nisha@email.com'),
  (4, 'Rohan', 'rohan@email.com'),
  (5, 'Suman', 'suman@email.com'),
  (6, 'Pooja', 'pooja@email.com'),
  (7, 'Aman', 'aman@email.com');

CREATE TABLE Club (
  ClubID INT PRIMARY KEY,
  ClubName VARCHAR(50),
  ClubRoom VARCHAR(10),
  ClubMentor VARCHAR(80)
);

INSERT INTO Club (ClubID, ClubName, ClubRoom, ClubMentor) 
VALUES (1, 'Music Club', 'R101', 'Mr. Raman'),
  (2, 'Sports Club', 'R202', 'Ms. Sita'),
  (3, 'Drama Club', 'R303', 'Mr. Kiran'),
  (4, 'Coding Club', 'Lab1', 'Mr. Anil');

CREATE TABLE Membership (
  StudentID INT,
  ClubID INT,
  JoinDate DATE,
  PRIMARY KEY (StudentID, ClubID),
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
  FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

INSERT INTO Membership (StudentID, ClubID, JoinDate)
VALUES (1, 1, '2024-10-01'), 
  (2, 2, '2024-12-01'), 
  (1, 2, '2024-01-15'),
  (3, 1, '2024-01-20'),
  (4, 3, '2024-01-18'),
  (5, 1, '2024-01-22'),
  (2, 3, '2024-01-25'),
  (6, 2, '2024-01-27'),
  (3, 4, '2024-01-28'),
  (7, 4, '2024-01-30');

SELECT 
    s.StudentName, 
    c.ClubName, 
    d.JoinDate 
FROM Membership d 
JOIN Student s ON d.StudentID = s.StudentID 
JOIN Club c ON d.ClubID = c.ClubID;
