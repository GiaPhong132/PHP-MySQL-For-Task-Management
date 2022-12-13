use urban_wasting_collection;

DROP TABLE IF EXISTS BackOfficer;
create table BackOfficer (
    `id` int(7) primary key,
    `email` varchar(255) not null unique,
    `name` varchar(255) not null,
    `phone` varchar(12) default null
);

insert into BackOfficer(name, phone, email, id) values ('admin', '012-345-6789', 'admin@gmail.com', 9999999);