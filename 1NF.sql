CREATE DATABASE IF NOT EXISTS College1NF;
USE College1NF;

CREATE TABLE StudentClub (
  StudentID INT,
  StudentName VARCHAR(225),
  Email VARCHAR(80),
  ClubName VARCHAR(10),
  ClubRoom VARCHAR(10),
  ClubMentor VARCHAR(80),
  JoinDate VARCHAR(20),
  PRIMARY KEY (StudentID, ClubName)
);

INSERT INTO StudentClub 
VALUES (1, 'Asha', 'asha@email.com', 'Music Club', 'R101', 'Mr. Raman', '1/10/2024'),
  (2, 'Bikash', 'bikash@email.com', 'Sports Club', 'R202', 'Ms. Sita', '1/12/2024'),
  (1, 'Asha', 'asha@email.com', 'Sports Club', 'R202', 'Ms. Sita', '1/15/2024'),
  (3, 'Nisha', 'nisha@email.com', 'Music Club', 'R101', 'Mr. Raman', '1/20/2024'),
  (4, 'Rohan', 'rohan@email.com', 'Drama Club', 'R303', 'Mr. Kiran', '1/18/2024'),
  (5, 'Suman', 'suman@email.com', 'Music Club', 'R101', 'Mr. Raman', '1/22/2024'),
  (2, 'Bikash', 'bikash@email.com', 'Drama Club', 'R303', 'Mr. Kiran', '1/25/2024'),
  (6, 'Pooja', 'pooja@email.com', 'Sports Club', 'R202', 'Ms. Sita', '1/27/2024'),
  (3, 'Nisha', 'nisha@email.com', 'Coding Club', 'Lab1', 'Mr. Anil', '1/28/2024'),
  (7, 'Aman', 'aman@email.com', 'Coding Club', 'Lab1', 'Mr. Anil', '1/30/2024');
