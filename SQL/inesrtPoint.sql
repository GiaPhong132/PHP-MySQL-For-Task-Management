use urban_wasting_collection;

drop table if exists points;
create table Points (
    `id` int(7),
    `MCP_id` int(7),
    primary key (`id`, `MCP_id`),
    foreign key (`MCP_id`) references MCP(`id`)
);

INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (1, 1);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (2, 1);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (4, 1);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (5, 2);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (6, 2);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (7, 2);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (8, 3);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (10, 3);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (12, 3);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (16, 4);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (22, 4);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (23, 4);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (24, 5);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (25, 5);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (27, 5);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (28, 6);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (30, 6);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (32, 6);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (34, 7);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (36, 7);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (37, 7);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (38, 8);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (39, 8);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (40, 8);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (43, 9);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (44, 9);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (45, 9);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (50, 10);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (52, 10);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (53, 10);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (55, 11);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (57, 11);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (60, 12);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (61, 12);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (63, 13);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (66, 13);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (68, 14);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (69, 14);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (70, 15);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (71, 15);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (72, 16);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (73, 16);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (75, 17);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (76, 17);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (77, 18);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (80, 18);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (96, 19);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (98, 19);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (99, 20);
INSERT INTO urban_wasting_collection.points (id, MCP_id) VALUES (100, 20);
