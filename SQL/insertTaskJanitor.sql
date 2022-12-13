use urban_wasting_collection;

DROP TABLE IF EXISTS taskjanitor;
create table TaskJanitor (
    `id` int(7) primary key,
    `status` varchar(12) not null default 'Completed',
    `date_assigned` date not null,
    `staff_id` int(7),
    `troller_id` int(7),
    `point_id` int(7),
    foreign key (`staff_id`) references Staff(`id`),
    foreign key (`troller_id`) references Troller(`id`),
    foreign key (`point_id`) references points(`id`)
);
set foreign_key_checks = 0;

INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (1, 'Completed', '2022-03-25', 51, 1, 1);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (2, 'Completed', '2022-08-25', 52, 2, 2);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (3, 'Completed', '2022-07-21', 53, 3, 3);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (4, 'Cancel', '2022-05-12', 54, 4, 4);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (5, 'Cancel', '2022-10-19', 55, 5, 5);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (6, 'Pending', '2022-06-22', 56, 6, 6);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (7, 'Completed', '2022-05-09', 57, 7, 7);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (8, 'Completed', '2022-09-12', 58, 8, 8);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (9, 'Cancel', '2022-11-27', 59, 9, 9);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (10, 'Completed', '2022-08-05', 60, 10, 10);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (11, 'In Progress', '2022-05-17', 61, 11, 11);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (12, 'In Progress', '2022-03-24', 62, 12, 12);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (13, 'Pending', '2022-05-20', 63, 13, 13);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (14, 'Completed', '2022-11-15', 64, 14, 14);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (15, 'Cancel', '2022-09-09', 65, 15, 15);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (16, 'Pending', '2022-09-10', 66, 16, 16);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (17, 'Completed', '2022-11-28', 67, 17, 17);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (18, 'In Progress', '2022-11-23', 68, 18, 18);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (19, 'Completed', '2022-04-07', 69, 19, 19);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (20, 'In Progress', '2022-09-08', 70, 20, 20);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (21, 'Pending', '2022-10-10', 71, 21, 21);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (22, 'Pending', '2022-10-28', 72, 22, 22);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (23, 'Pending', '2022-11-16', 73, 23, 23);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (24, 'In Progress', '2022-12-10', 74, 24, 24);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (25, 'In Progress', '2022-10-30', 75, 25, 25);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (26, 'In Progress', '2022-12-05', 76, 26, 26);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (27, 'In Progress', '2022-11-17', 77, 27, 27);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (28, 'Completed', '2022-11-12', 78, 28, 28);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (29, 'Completed', '2022-10-22', 79, 29, 29);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (30, 'Completed', '2022-12-08', 80, 30, 30);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (31, 'Completed', '2022-10-21', 81, 31, 31);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (32, 'Completed', '2022-12-03', 82, 32, 32);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (33, 'Completed', '2022-11-17', 83, 33, 33);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (34, 'Completed', '2022-11-16', 84, 34, 34);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (35, 'Completed', '2022-10-29', 85, 35, 35);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (36, 'Completed', '2022-10-28', 86, 36, 36);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (37, 'Cancel', '2022-11-06', 87, 37, 37);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (38, 'Cancel', '2022-10-12', 88, 38, 38);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (39, 'Cancel', '2022-11-18', 89, 39, 39);
INSERT INTO urban_wasting_collection.taskjanitor (id, status, date_assigned, staff_id, troller_id, point_id) VALUES (40, 'Cancel', '2022-11-09', 90, 40, 40);

set foreign_key_checks = 1;
