--Insert Sample Data (Oracle Style)

INSERT INTO Students VALUES (1, 'Alice', 'alice@email.com', DATE '2025-01-15');
INSERT INTO Students VALUES (2, 'Bob', 'bob@email.com', DATE '2025-02-10');
INSERT INTO Students VALUES (3, 'Charlie', 'charlie@email.com', DATE '2025-03-05');

INSERT INTO Courses VALUES (101, 'SQL for Beginners', 'Database', 4);
INSERT INTO Courses VALUES (102, 'Python Fundamentals', 'Programming', 3);
INSERT INTO Courses VALUES (103, 'Data Visualization', 'Analytics', 5);

INSERT INTO Enrollments VALUES (1, 1, 101, DATE '2025-01-20');
INSERT INTO Enrollments VALUES (2, 1, 102, DATE '2025-02-15');
INSERT INTO Enrollments VALUES (3, 2, 101, DATE '2025-03-01');
INSERT INTO Enrollments VALUES (4, 3, 103, DATE '2025-03-10');

INSERT INTO Modules VALUES (1, 101, 'Introduction to SQL');
INSERT INTO Modules VALUES (2, 101, 'Filtering and Sorting Data');
INSERT INTO Modules VALUES (3, 101, 'Joins and Relationships');
INSERT INTO Modules VALUES (4, 101, 'Aggregation and Grouping');
INSERT INTO Modules VALUES (5, 102, 'Python Basics');
INSERT INTO Modules VALUES (6, 102, 'Control Flow');
INSERT INTO Modules VALUES (7, 102, 'Functions');
INSERT INTO Modules VALUES (8, 103, 'Charts in Excel');
INSERT INTO Modules VALUES (9, 103, 'Visualization Principles');
INSERT INTO Modules VALUES (10, 103, 'Dashboards');
INSERT INTO Modules VALUES (11, 103, 'Storytelling with Data');
INSERT INTO Modules VALUES (12, 103, 'Final Project');

INSERT INTO Progress VALUES (1, 1, 1, 'Completed');
INSERT INTO Progress VALUES (2, 1, 2, 'Completed');
INSERT INTO Progress VALUES (3, 1, 3, 'Completed');
INSERT INTO Progress VALUES (4, 1, 4, 'In Progress');
INSERT INTO Progress VALUES (5, 2, 1, 'Completed');
INSERT INTO Progress VALUES (6, 2, 2, 'In Progress');
INSERT INTO Progress VALUES (7, 3, 8, 'Completed');
INSERT INTO Progress VALUES (8, 3, 9, 'In Progress');
