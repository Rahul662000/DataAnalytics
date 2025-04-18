create database datetime;
use dateTime;

create table Events(
	event_id int primary key,
    event_name varchar(255),
    event_date date
);

INSERT INTO Events (event_id, event_name, event_date) VALUES
(1, 'Tech Conference 2025', '2025-04-10'),
(2, 'Music Festival', '2025-05-15'),
(3, 'Startup Pitch Day', '2025-06-20'),
(4, 'AI & ML Workshop', '2025-07-05'),
(5, 'Sports Championship', '2025-08-12'),
(6, 'Business Networking Meetup', '2025-09-18'),
(7, 'Hackathon 2025', '2025-10-22'),
(8, 'Health & Wellness Expo', '2025-11-07'),
(9, 'Cultural Fest', '2025-12-03'),
(10, 'Gaming Tournament', '2026-01-14');

select event_name , year(event_date) as year , month(event_date) as month from events;

create table appointments(
	appointment_id int primary key,
    appointment_desc varchar(255),
    appointment_time time
);

INSERT INTO Appointments (appointment_id, appointment_desc, appointment_time) VALUES
(1, 'Doctor Consultation', '09:30:00'),
(2, 'Business Meeting', '11:00:00'),
(3, 'Dentist Appointment', '14:15:00'),
(4, 'Interview with HR', '16:00:00'),
(5, 'Project Discussion', '10:45:00'),
(6, 'Yoga Session', '07:00:00'),
(7, 'Parent-Teacher Meeting', '13:30:00'),
(8, 'Car Service', '15:20:00'),
(9, 'Dinner Reservation', '19:00:00'),
(10, 'Flight Check-in', '22:30:00');

select Appointment_desc , time(Appointment_time) as APpointment_time from Appointments;

create table scheduleTask(
	task_id int primary key,
    task_desc varchar(255),
    schedule_datetime datetime
);

INSERT INTO ScheduleTask (task_id, task_desc, schedule_datetime) VALUES
(1, 'Team Meeting', '2025-04-01 09:30:00'),
(2, 'Project Deadline', '2025-04-05 23:59:59'),
(3, 'Doctor Appointment', '2025-04-10 14:00:00'),
(4, 'Flight to New York', '2025-04-15 06:45:00'),
(5, 'Gym Workout', '2025-04-18 07:30:00'),
(6, 'Client Presentation', '2025-04-22 11:00:00'),
(7, 'Software Deployment', '2025-04-25 03:00:00'),
(8, 'Birthday Celebration', '2025-04-30 19:00:00'),
(9, 'Grocery Shopping', '2025-05-02 17:30:00'),
(10, 'Car Service Appointment', '2025-05-06 10:00:00');

select task_desc , timestamp(schedule_datetime) as schedule_datetime from scheduleTask;

select curdate();
select now();
select current_timestamp();

select task_desc,
	schedule_datetime,
    datediff(now() , schedule_datetime) as date_untill_deadline
    from scheduletask;