create database product_managenement;

use product_managenement;

create table product (
	product_id char(5) primary key,
    product_name varchar(15),
    `description` text,
    image blob,
    is_deleted boolean,
    price double,
    manufacture_date date
);

insert into product
value (
"PR001",
"Iphone X",
"The iPhone X display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
1,
5000000,
"2019-11-11"
);

insert into product
value (
"PR002",
"Iphone 13",
"The iPhone 13 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
true,
30000000,
"2021-12-11"
);

insert into product
value (
"PR003",
"Iphone 15",
"The iPhone 15 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
false,
50000000,
"2014-1-1"
);

insert into product
value (
"PR004",
"Iphone 14",
"The iPhone 14 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
false,
50000000,
"2014-1-1",
"64gb"
);

insert into product
value (
"PR005",
"Iphone 14 pro",
"The iPhone 14 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
false,
50000000,
"2014-1-1",
"1TB"
);

insert into product
value (
"PR0006",
"Iphone 15 pro max",
"The iPhone 15 pro max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
"false",
50000000,
"2014-1-1"
);

insert into product
value (
"PR7",
"Iphone 7",
"The iPhone 7 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
"https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111864_iphonex.png",
1,
5000000,
"2019-11-11",
"256gb"
);

alter table product
add column version enum("64gb", "128gb", "256gb");




