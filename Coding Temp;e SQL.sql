SELECT * FROM Members;
SELECT * FROM WorkoutSessions;




INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 35),
(3, 'Emily Johnson', 22),
(4, 'Michael Brown', 45);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-07-31', '08:00 AM', 'Yoga'),
(2, 2, '2024-07-31', '06:00 PM', 'Weightlifting'),
(3, 3, '2024-07-31', '07:00 AM', 'Running'),
(4, 4, '2024-07-31', '05:00 PM', 'Swimming');


UPDATE WorkoutSessions
SET session_time = '06:00 PM'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Doe');


DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');

DELETE FROM Members
WHERE name = 'John Smith';
