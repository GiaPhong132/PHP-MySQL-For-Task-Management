use urban_wasting_collection;

DROP TABLE IF EXISTS MCP;
create table MCP (
    `id` int(7) primary key,
    `location` varchar(255) default null,
    `capacity` float(10),
    `isFull` int not null
);

insert into MCP (id, location, capacity, isFull) values (1, 'Vilcun', 83.82, 1);
insert into MCP (id, location, capacity, isFull) values (2, 'Mirzapur', 98.86, 1);
insert into MCP (id, location, capacity, isFull) values (3, 'Xufu', 156.77, 1);
insert into MCP (id, location, capacity, isFull) values (4, 'Jeleuk', 188.94, 1);
insert into MCP (id, location, capacity, isFull) values (5, 'Amphoe Sikhiu', 180.68, 1);
insert into MCP (id, location, capacity, isFull) values (6, 'Al Hoceima', 184.49, 1);
insert into MCP (id, location, capacity, isFull) values (7, 'Liberta', 79.05, 1);
insert into MCP (id, location, capacity, isFull) values (8, 'Leme', 147.42, 0);
insert into MCP (id, location, capacity, isFull) values (9, 'Krasica', 197.41, 1);
insert into MCP (id, location, capacity, isFull) values (10, 'Segoro', 76.79, 1);
insert into MCP (id, location, capacity, isFull) values (11, 'Rislane', 149.28, 0);
insert into MCP (id, location, capacity, isFull) values (12, 'Torre do Pinhao', 85.27, 1);
insert into MCP (id, location, capacity, isFull) values (13, 'Santa Ana', 97.17, 1);
insert into MCP (id, location, capacity, isFull) values (14, 'Itacurubi del Rosario', 105.91, 1);
insert into MCP (id, location, capacity, isFull) values (15, 'Ballitoville', 80.96, 1);
insert into MCP (id, location, capacity, isFull) values (16, 'Hatsukaichi', 111.08, 1);
insert into MCP (id, location, capacity, isFull) values (17, 'Maardu', 150.01, 1);
insert into MCP (id, location, capacity, isFull) values (18, 'Cachada', 62.83, 1);
insert into MCP (id, location, capacity, isFull) values (19, 'Karatau', 57.82, 1);
insert into MCP (id, location, capacity, isFull) values (20, 'Le Pontet', 70.82, 0);

