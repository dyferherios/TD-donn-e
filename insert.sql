INSERT INTO "group" (id, ref, creation_datetime)
VALUES
('1', 'H1', CURRENT_TIMESTAMP),
('2', 'H2', CURRENT_TIMESTAMP),
('3', 'J1', CURRENT_TIMESTAMP),
('4', 'J2', CURRENT_TIMESTAMP),
('5', 'G1', CURRENT_TIMESTAMP),
('6', 'G2', CURRENT_TIMESTAMP);

INSERT INTO "user"
VALUES
('1', 'Alice', 'Smith', 'alice@example.com', 'REF002', 'active', 'F', '1992-05-15', '2024-04-25 11:00:00', '+987654321', '456 Elm St', 'T', '2'),
('é', 'Bob', 'Johnson', 'bob@example.com', 'REF003', 'inactive', 'M', '1985-08-20', '2024-04-25 12:00:00', '+112233445', '789 Oak St', 'M', '1'),
('3', 'Emma', 'Williams', 'emma@example.com', 'REF004', 'active', 'F', '1988-12-10', '2024-04-25 13:00:00', '+998877665', '321 Pine St', 'S', '2'),
('4', 'David', 'Brown', 'david@example.com', 'REF005', 'active', 'M', '1995-03-25', '2024-04-25 14:00:00', '+1122334455', '654 Maple St', 'T', '1'),
('5', 'Sophia', 'Davis', 'sophia@example.com', 'REF006', 'inactive', 'F', '1983-11-05', '2024-04-25 15:00:00', '+334455667', '987 Cedar St', 'S', '2'),
('6', 'James', 'Miller', 'james@example.com', 'REF007', 'active', 'M', '1993-07-12', '2024-04-25 16:00:00', '+9988776655', '753 Birch St', 'T', '1'),
('7', 'Olivia', 'Wilson', 'olivia@example.com', 'REF008', 'active', 'F', '1990-09-30', '2024-04-25 17:00:00', '+1122334455', '159 Willow St', 'M', '2'),
('8', 'William', 'Taylor', 'william@example.com', 'REF009', 'inactive', 'M', '1980-06-18', '2024-04-25 18:00:00', '+2233445566', '357 Oak St', 'S', '1'),
('9', 'Ava', 'Martinez', 'ava@example.com', 'REF010', 'active', 'F', '1997-02-08', '2024-04-25 19:00:00', '+9988776655', '852 Elm St', 'T', '2'),
('10', 'Michael', 'Garcia', 'michael@example.com', 'REF011', 'active', 'M', '1987-04-03', '2024-04-25 20:00:00', '+1122334455', '456 Pine St', 'M', '1');

insert into course (id, ref, "name", total_hours) values('1','PROG1','algorithmique','30'),('2','LV1','Langues','20'),('3','MGT1','Application en ligne','20'),('4','SYS1','Système d''exploitation','30');

insert into exam (id, exam_date, duration) values('1','2023-11-12','03'),('2','2024-01-08','2'),('3','2024-01-26','4');