create database quanlytour;

use quanlytour;

-- Tạo các bảng
CREATE TABLE `quanlytour`.`category_tour` (
  `id` INT NOT NULL,
  `categoryCode` VARCHAR(255) NULL,
  `category_Name` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `quanlytour`.`tour` (
  `id` INT NOT NULL,
  `tourCode` VARCHAR(255) NULL,
  `category_id` INT NULL,
  `destination_id` INT NULL,
  `dateStart` DATE NULL,
  `dateEnd` DATE NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `quanlytour`.`order_tour` (
  `id` INT NOT NULL,
  `tour_id` INT NULL,
  `clients_id` INT NULL,
  `statuss` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `quanlytour`.`destination` (
  `id` INT NOT NULL,
  `destinationName` VARCHAR(255) NULL,
  `describes` VARCHAR(255) NULL,
  `cost` INT NULL,
  `city_id` INT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `quanlytour`.`city` (
  `id` INT NOT NULL,
  `cityName` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `quanlytour`.`clients` (
  `id` INT NOT NULL,
  `nameClients` VARCHAR(255) NULL,
  `idNumber` VARCHAR(255) NULL,
  `dateBirth` DATE NULL,
  `city_id` INT NULL,
  PRIMARY KEY (`id`));
  
  -- Thêm khoá ngoại 
  ALTER TABLE `quanlytour`.`tour` 
  ADD CONSTRAINT `fk_categoryidTour_idTour`
  FOREIGN KEY (`category_id`)
  REFERENCES `quanlytour`.`category_tour` (`id`);
  
  ALTER TABLE `quanlytour`.`tour` 
  ADD CONSTRAINT `fk_destinationidTour_idDestination`
  FOREIGN KEY (`destination_id`)
  REFERENCES `quanlytour`.`destination` (`id`);
  
  ALTER TABLE `quanlytour`.`order_tour` 
  ADD CONSTRAINT `fk_tourid_idTour`
  FOREIGN KEY (`tour_id`)
  REFERENCES `quanlytour`.`tour` (`id`);
  
  ALTER TABLE `quanlytour`.`order_tour` 
  ADD CONSTRAINT `fk_clientid_idClient`
  FOREIGN KEY (`clients_id`)
  REFERENCES `quanlytour`.`clients` (`id`);
  
  ALTER TABLE `quanlytour`.`destination` 
  ADD CONSTRAINT `fk_cityid_idCity`
  FOREIGN KEY (`city_id`)
  REFERENCES `quanlytour`.`city` (`id`);
  
  ALTER TABLE `quanlytour`.`clients` 
  ADD CONSTRAINT `fk_cityidClients_idCity`
  FOREIGN KEY (`city_id`)
  REFERENCES `quanlytour`.`city` (`id`);
  
  -- Thêm city
  insert into `city` (`id`, `cityName`) values (1, 'Haitang');
insert into `city` (`id`, `cityName`) values (2, 'Aliwal North');
insert into `city` (`id`, `cityName`) values (3, 'Anzihao');
insert into `city` (`id`, `cityName`) values (4, 'Lam Sonthi');
insert into `city` (`id`, `cityName`) values (5, 'Lutowiska');
insert into `city` (`id`, `cityName`) values (6, 'Baiyanghe');
insert into `city` (`id`, `cityName`) values (7, 'Mangga Dua');
insert into `city` (`id`, `cityName`) values (8, 'Tršić');
insert into `city` (`id`, `cityName`) values (9, 'Purwokerto');
insert into `city` (`id`, `cityName`) values (10, 'Camaligan');
insert into `city` (`id`, `cityName`) values (11, 'Samdo');
insert into `city` (`id`, `cityName`) values (12, 'Wotho');
insert into `city` (`id`, `cityName`) values (13, 'Skellefteå');
insert into `city` (`id`, `cityName`) values (14, 'Ronneby');
insert into `city` (`id`, `cityName`) values (15, 'San Andres');
insert into `city` (`id`, `cityName`) values (16, 'Predavac');
insert into `city` (`id`, `cityName`) values (17, 'Chefchaouene');
insert into `city` (`id`, `cityName`) values (18, 'Saint Paul');
insert into `city` (`id`, `cityName`) values (19, 'Tasböget');
insert into `city` (`id`, `cityName`) values (20, 'Jacutinga');

-- Thêm category_tour
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (1, 'PL', 'Tuntutuliak Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (2, 'FR', 'Mansons Landing Seaplane Base');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (3, 'BR', 'Terapo Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (4, 'BW', 'Gardner Municipal Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (5, 'ZA', 'Beja Airport / Airbase');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (6, 'RU', 'Udine-Campoformido Air Base');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (7, 'CZ', 'Boca Raton Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (8, 'RU', 'Mariupol International Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (9, 'ET', 'Fritzlar Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (10, 'PH', 'Pontoise - Cormeilles-en-Vexin Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (11, 'PH', 'Henry Post Army Air Field (Fort Sill)');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (12, 'CN', 'Pevek Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (13, 'ID', 'Salina Cruz Naval Air Station');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (14, 'SL', 'Tulsa International Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (15, 'CN', 'Osvaldo Vieira International Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (16, 'CN', 'Kalpowar Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (17, 'RU', 'Mc Connell Air Force Base');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (18, 'CN', 'Lesobeng Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (19, 'RU', 'Sócrates Mariani Bittencourt Airport');
insert into `category_tour` (`id`, `categoryCode`, `category_Name`) values (20, 'PL', 'Mehamn Airport');

-- Thêm clients
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (1, 'Dolli Janicijevic', 1, '2023-07-13', 1);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (2, 'Clywd Huband', 2, '2023-05-31', 2);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (3, 'Goddard McGennis', 3, '2023-04-19', 3);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (4, 'Connie Wayt', 4, '2023-10-17', 4);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (5, 'Christan Osgarby', 5, '2023-11-27', 5);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (6, 'Durant Kabisch', 6, '2023-07-02', 6);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (7, 'Rice Fabry', 7, '2024-01-22', 7);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (8, 'Ceciley MacDearmaid', 8, '2023-07-14', 8);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (9, 'Dorthy Cavell', 9, '2023-06-08', 9);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (10, 'Gray Mount', 10, '2023-10-27', 10);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (11, 'Salaidh Copelli', 11, '2023-05-06', 11);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (12, 'Lesya Haddinton', 12, '2023-12-12', 12);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (13, 'Angelique Gabbetis', 13, '2023-05-15', 13);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (14, 'Lisa Mongeot', 14, '2023-10-18', 14);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (15, 'Monti Prazor', 15, '2023-07-13', 15);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (16, 'Mavis Bedlington', 16, '2023-09-30', 16);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (17, 'Osmund Hollebon', 17, '2023-11-15', 17);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (18, 'Eimile Fashion', 18, '2024-01-22', 18);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (19, 'Roderick Markey', 19, '2024-04-02', 19);
insert into `clients` (`id`, `nameClients`, `idNumber`, `dateBirth`, `city_id`) values (20, 'Roderich Daintree', 20, '2023-05-15', 20);

-- Thêm destination
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (1, 'Poland', 'Displaced fracture of acromial process, left shoulder, subsequent encounter for fracture with routine healing', 1, 1);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (2, 'China', 'Partial traumatic metacarpophalangeal amputation of right middle finger, initial encounter', 2, 2);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (3, 'Sweden', 'Displaced fracture of fourth metatarsal bone, unspecified foot', 3, 3);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (4, 'China', 'Supervision of other high risk pregnancies, first trimester', 4, 4);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (5, 'Sweden', 'Other intervertebral disc disorders, lumbosacral region', 5, 5);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (6, 'France', 'Other fracture of lower end of unspecified femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion', 6, 6);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (7, 'Greece', 'Animal-rider injured by fall from or being thrown from horse in noncollision accident, initial encounter', 7, 7);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (8, 'China', 'Kearns-Sayre syndrome, right eye', 8, 8);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (9, 'Philippines', 'Unspecified physeal fracture of lower end of right fibula', 9, 9);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (10, 'China', 'Other jaw asymmetry', 10, 10);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (11, 'Nigeria', 'Open bite of right eyelid and periocular area', 11, 11);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (12, 'Indonesia', 'Adverse effect of other antihypertensive drugs, sequela', 12, 12);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (13, 'Poland', 'Unspecified physeal fracture of lower end of left tibia, subsequent encounter for fracture with delayed healing', 13, 13);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (14, 'China', 'Displaced comminuted fracture of shaft of radius, unspecified arm, initial encounter for closed fracture', 14, 14);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (15, 'China', 'Nondisplaced fracture of lower epiphysis (separation) of right femur, subsequent encounter for open fracture type I or II with malunion', 15, 15);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (16, 'Serbia', 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of unspecified site', 16, 16);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (17, 'China', 'Drowning and submersion due to fishing boat sinking', 17, 17);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (18, 'Portugal', 'Passenger in pick-up truck or van injured in collision with pedal cycle in traffic accident, sequela', 18, 18);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (19, 'Poland', 'Displaced longitudinal fracture of right patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion', 19, 19);
insert into `destination` (`id`, `destinationName`, `describes`, `cost`, `city_id`) values (20, 'China', 'Person on outside of dune buggy injured in nontraffic accident, sequela', 20, 20);

-- Thêm tour
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (1, 'SE', 1, 1, '2023-06-05', '2022-08-31');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (2, 'RU', 2, 2, '2024-04-10', '2022-03-18');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (3, 'RU', 3, 3, '2023-12-21', '2021-08-26');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (4, 'PL', 4, 4, '2023-07-06', '2021-03-08');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (5, 'PE', 5, 5, '2023-08-18', '2021-06-20');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (6, 'PT', 6, 6, '2023-06-19', '2023-10-04');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (7, 'PT', 7, 7, '2023-06-03', '2023-01-17');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (8, 'SY', 8, 8, '2023-11-17', '2022-08-21');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (9, 'CN', 9, 9, '2023-05-01', '2023-06-13');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (10, 'MA', 10, 10, '2023-10-10', '2021-06-30');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (11, 'EG', 11, 11, '2023-10-24', '2021-12-14');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (12, 'LY', 12, 12, '2023-10-14', '2022-12-12');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (13, 'PH', 13, 13, '2023-07-19', '2022-03-23');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (14, 'CN', 14, 14, '2023-06-25', '2021-11-14');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (15, 'ID', 15, 15, '2023-06-15', '2022-08-11');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (16, 'US', 16, 16, '2024-03-17', '2022-07-26');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (17, 'PL', 17, 17, '2024-02-19', '2022-08-29');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (18, 'MX', 18, 18, '2024-02-06', '2023-02-21');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (19, 'CN', 19, 19, '2023-08-20', '2023-12-14');
insert into `tour` (`id`, `tourCode`, `category_id`, `destination_id`, `dateStart`, `dateEnd`) values (20, 'FR', 20, 20, '2023-12-30', '2022-10-18');

-- Thêm order tour
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (1, 1, 1, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (2, 2, 2, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (3, 3, 3, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (4, 4, 4, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (5, 5, 5, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (6, 6, 6, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (7, 7, 7, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (8, 8, 8, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (9, 9, 9, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (10, 10, 10, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (11, 11, 11, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (12, 12, 12, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (13, 13, 13, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (14, 14, 14, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (15, 15, 15, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (16, 16, 16, 'Sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (17, 17, 17, 'Not sale');
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (18, 18, 18, true);
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (19, 19, 19, false);
insert into `order_tour` (`id`, `tour_id`, `clients_id`, `statuss`) values (20, 20, 20, true);

-- Thống kê số lượng tour của các thành phố
select c.cityName as CityName, count(t.id) as NumbersOfTour
from city c 
	join destination d on c.id = d.city_id
    join tour t on d.id = t.destination_id
group by c.cityName;

-- Tính số tour có ngày bắt đầu trong tháng 6 năm 2023
select count(dateStart) as ToursInJune
from tour
where month(dateStart) = '6' and year(dateStart) = '2023';

-- -- Tính số tour có ngày kết thúc trong tháng 8 năm 2022
select count(dateEnd) as ToursEndInAugust
from tour
where month(dateEnd) = '8' and year(dateEnd) = '2022';




  
  
  
  
