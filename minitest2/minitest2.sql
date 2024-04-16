CREATE SCHEMA `minitest2` ;

use `minitest2`;

-- Tạo các bảng
CREATE TABLE `minitest2`.`class` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `language` VARCHAR(255) NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `minitest2`.`students` (
  `id` INT NOT NULL,
  `fullName` VARCHAR(255) NULL,
  `address_id` INT NULL,
  `age` INT NULL,
  `phone` VARCHAR(45) NULL,
  `class_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE);
  
  CREATE TABLE `minitest2`.`course` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `minitest2`.`point` (
  `id` INT NOT NULL,
  `course_id` INT NULL,
  `student_id` INT NULL,
  `point` DOUBLE NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `minitest2`.`address` (
  `id` INT NOT NULL,
  `address` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
  -- Thêm khoá phụ
  ALTER TABLE `minitest2`.`students` 
ADD INDEX `address_id_idx` (`address_id` ASC) VISIBLE,
ADD INDEX `class_id_idx` (`class_id` ASC) VISIBLE;
;
ALTER TABLE `minitest2`.`students` 
ADD CONSTRAINT `address_id`
  FOREIGN KEY (`address_id`)
  REFERENCES `minitest2`.`address` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `class_id`
  FOREIGN KEY (`class_id`)
  REFERENCES `minitest2`.`class` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  ALTER TABLE `minitest2`.`point` 
ADD INDEX `course_id_idx` (`course_id` ASC) VISIBLE,
ADD INDEX `student_id_idx` (`student_id` ASC) VISIBLE;
;
ALTER TABLE `minitest2`.`point` 
ADD CONSTRAINT `course_id`
  FOREIGN KEY (`course_id`)
  REFERENCES `minitest2`.`course` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `student_id`
  FOREIGN KEY (`student_id`)
  REFERENCES `minitest2`.`students` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  -- Thêm dữ liệu
  -- Thêm 5 bản ghi address
  insert into `address` (`id`, `address`) values (1, 'Hue');
insert into `address` (`id`, `address`) values (2, 'HaNoi');
insert into `address` (`id`, `address`) values (3, 'SaiGon');
insert into `address` (`id`, `address`) values (4, 'DaNang');
insert into `address` (`id`, `address`) values (5, 'HaiPhong');

-- Thêm 5 bản ghi class
insert into `class` (`id`, `name`, `language`, `description`) values (1, 'C0124I1', 'TiengViet', 'NguVan');
insert into `class` (`id`, `name`, `language`, `description`) values (2, 'C0224H1', 'TiengAnh', 'Toeic');
insert into `class` (`id`, `name`, `language`, `description`) values (3, 'C1123I2', 'TiengAnh', 'Ielt');
insert into `class` (`id`, `name`, `language`, `description`) values (4, 'C0324H1', 'TiengPhap', 'B1');
insert into `class` (`id`, `name`, `language`, `description`) values (5, 'C0823H2', 'TiengViet', 'TiengVietCoBan');

-- Thêm 10 bản ghi trong bảng student
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (1, 'DucLe', 1, 23, '0123456', 2);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (2, 'QuyDang', 2, 26, '024689', 2);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (3, 'HoangAn', 3, 23, '0654321', 1);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (4, 'ThaoPhan', 5, 22, '0124567', 5);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (5, 'LuuKhoa', 4, 24, '0345678', 4);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (6, 'NhatHuy', 4, 21, '0112233', 4);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (7, 'BaoDai', 5, 20, '0554433', 5);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (8, 'TatQuan', 1, 18, '0987654', 3);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (9, 'MinhHieu', 2, 20, '0223344', 2);
insert into `students` (`id`, `fullName`, `address_id`, `age`, `phone`, `class_id`) values (10, 'NhatMinh', 2, 16, '0887766', 1);

-- Thêm 15 bản point
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (1, 2, 10, 3.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (2, 20, 9, 4.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (3, 15, 8, 7.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (4, 13, 7, 5.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (5, 2, 6, 6.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (6, 3, 5, 7.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (7, 9, 4, 8.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (8, 8, 3, 10.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (9, 11, 2, 3.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (10, 12, 1, 3.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (11, 6, 10, 5.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (12, 7, 5, 6.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (13, 14, 2, 8.5);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (14, 16, 4, 1.0);
insert into `point` (`id`, `course_id`, `student_id`, `point`) values (15, 19, 3, 3.0);

-- Thêm 20 bản Course
insert into `course` (`id`, `name`, `description`) values (1, 'Java1', "Java des1");
insert into `course` (`id`, `name`, `description`) values (2, 'Java2', "Java des2");
insert into `course` (`id`, `name`, `description`) values (3, 'Java3', "Java des3");
insert into `course` (`id`, `name`, `description`) values (4, 'Java4', "Java des4");
insert into `course` (`id`, `name`, `description`) values (5, 'Java5', "Java des5");
insert into `course` (`id`, `name`, `description`) values (6, 'Java6', "Java des6");
insert into `course` (`id`, `name`, `description`) values (7, 'Java7', "Java des7");
insert into `course` (`id`, `name`, `description`) values (8, 'Java8', "Java des8");
insert into `course` (`id`, `name`, `description`) values (9, 'Java9', "Java des9");
insert into `course` (`id`, `name`, `description`) values (10, 'Java10', "Java des10");
insert into `course` (`id`, `name`, `description`) values (11, 'Java11', "Java des11");
insert into `course` (`id`, `name`, `description`) values (12, 'Java12', "Java des12");
insert into `course` (`id`, `name`, `description`) values (13, 'Java13', "Java des13");
insert into `course` (`id`, `name`, `description`) values (14, 'Java14', "Java des14");
insert into `course` (`id`, `name`, `description`) values (15, 'Java15', "Java des15");
insert into `course` (`id`, `name`, `description`) values (16, 'Java16', "Java des16");
insert into `course` (`id`, `name`, `description`) values (17, 'Java17', "Java des17");
insert into `course` (`id`, `name`, `description`) values (18, 'Java18', "Java des18");
insert into `course` (`id`, `name`, `description`) values (19, 'Java19', "Java des19");
insert into `course` (`id`, `name`, `description`) values (20, 'Java20', "Java des20");

-- Viết câu query thực hiện:    
-- Tìm kiếm HV có họ Nguyen
select * from students
where fullName like '%Nguyen%';
-- Tìm kiếm HV có ten Anh
select * from students
where fullName like '%Anh%';
-- Tim kiem HV có độ tuổi tư 18-15
select * from students
where age between 15 and 18;
-- Tìm kiếm HV có id là 9 hoặc 10
select * from students
where id = 9 or id = 10;

-- Viết các câu lệnh truy vấn thực hiện nhiệm vụ sau:
-- Thống kê số lượng học viên các lớp (count)
select c.name, COUNT(s.id) as SoHV 
from students s 
join class c on s.class_id = c.id
group by c.name;

-- Thống kê số lượng học viên tại các tỉnh (count)
select a.address, COUNT(s.id) as SoHV 
from students s 
join address a on s.address_id = a.id
group by a.address;

-- Tính điểm trung bình của các khóa học (avg)
select cs.name, avg(p.point) as DTB
from point p 
join course cs on p.course_id = cs.id
group by cs.name;

-- Lấy ra điểm cao nhất, thấp nhất.
select s.fullName, max(p.point) as MaxPoint, min(p.point) as MinPoint
from point p 
join students s on p.student_id = s.id
group by s.fullName;

-- Lấy ra danh sách HS, Chuyển đổi tên HS thành chữ hoa
select *, ucase(fullName) as UpcaseName
from students;


