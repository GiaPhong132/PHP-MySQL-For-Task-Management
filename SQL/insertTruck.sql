use urban_wasting_collection;

DROP TABLE IF EXISTS truck;
create table Truck (
    `id` int(7) primary key,
    `capacity` float(10),
    `isAvailable` int not null,
    `vehicleNum` int(7) unique,
    `weight` float(10),
    `fuelConsumption` float(10)
);

insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (1, 760.71, 0, 9222077, 3587.45, 14.38);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (2, 657.36, 0, 9435297, 1704.04, 14.91);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (3, 703.3, 1, 1603488, 4171.49, 8.84);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (4, 681.85, 0, 6858650, 4405.63, 5.88);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (5, 804.86, 1, 2901707, 3713.4, 7.58);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (6, 810.16, 0, 3534801, 1003.2, 12.3);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (7, 782.31, 1, 4782595, 4678.95, 14.33);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (8, 613.91, 1, 2786950, 2636.7, 8.28);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (9, 812.09, 0, 8206446, 2985.91, 11.34);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (10, 582.05, 0, 2406008, 2450.94, 5.83);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (11, 556.41, 1, 5884562, 1498.53, 10.61);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (12, 877.81, 0, 5234489, 4317.13, 5.23);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (13, 520.51, 0, 9158807, 4970.95, 13.56);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (14, 799.74, 1, 7882528, 3351.67, 10.02);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (15, 690.46, 1, 7641146, 1557.64, 14.77);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (16, 665.82, 0, 4514482, 1696.85, 14.36);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (17, 725.44, 0, 6238799, 4795.39, 14.77);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (18, 552.17, 1, 3582636, 3168.93, 11.25);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (19, 813.36, 1, 3579733, 1640.09, 11.69);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (20, 840.9, 1, 6750737, 4828.81, 6.97);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (21, 742.46, 0, 2333856, 2772.11, 7.94);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (22, 883.99, 0, 2766930, 4775.23, 8.1);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (23, 508.95, 1, 8851009, 3850.69, 13.24);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (24, 703.07, 1, 6539692, 1061.82, 14.44);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (25, 666.73, 1, 4513091, 3045.34, 8.59);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (26, 748.19, 0, 8007544, 2330.69, 14.32);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (27, 769.39, 0, 3934327, 4098.21, 5.39);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (28, 785.25, 1, 1812819, 2870.37, 9.26);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (29, 868.57, 1, 6037692, 4485.02, 8.59);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (30, 697.33, 0, 4669617, 1098.05, 5.48);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (31, 886.14, 0, 2861011, 2227.55, 11.04);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (32, 504.73, 0, 9433834, 4722.09, 12.86);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (33, 621.35, 1, 2534192, 4267.28, 9.1);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (34, 683.13, 0, 7621586, 3607.57, 14.02);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (35, 718.86, 1, 7763918, 3510.39, 7.63);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (36, 629.15, 0, 8562126, 3450.66, 12.61);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (37, 786.26, 0, 1902078, 3088.42, 5.94);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (38, 507.55, 1, 2906071, 3771.9, 13.84);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (39, 888.04, 1, 5485900, 2444.79, 8.05);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (40, 721.34, 1, 6232465, 1136.36, 5.55);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (41, 869.02, 1, 1277068, 3539.78, 11.02);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (42, 684.92, 1, 4485700, 3660.13, 5.36);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (43, 761.15, 0, 6309341, 1629.74, 6.4);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (44, 859.59, 1, 4571640, 1784.3, 9.3);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (45, 880.53, 0, 4464875, 3119.34, 11.37);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (46, 649.57, 1, 7334937, 3799.01, 11.05);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (47, 545.77, 0, 4813560, 3050.73, 9.7);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (48, 588.95, 1, 7089198, 4762.8, 12.96);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (49, 682.63, 0, 3860793, 2971.32, 8.96);
insert into Truck (id, capacity, isAvailable, vehicleNum, weight, fuelConsumption) values (50, 519.6, 0, 7449966, 2812.03, 11.6);