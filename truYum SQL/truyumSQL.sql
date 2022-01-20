create table menu(
    Name varchar(30),
    Price double(5,2),
    Active boolean,
    Date_of_lunch date,
    Category enum('Starter', 'Main Course', 'Desserts', 'Drinks'),
    Free_delivery boolean,
    menuID varchar(10),
    primary key (menuID)
);

use truyum;
desc user;
select * from menu;
create table user(
	UserID int,
    User_Name varchar(30),
    primary key (userID)
);


create table cart(
	UserID int,
    Name varchar(30),
    Free_Delivery boolean,
    Price double(5,2),
    menuID varchar(10),
    foreign key (menuID) references menu(menuID),
    foreign key (UserID) references user(UserID)
);

/*1*/
insert into menu values('Sandwich', 99, true, '2017/03/15', 'Main Course', true, 'M02');
insert into menu values('Burger', 129, true, '2017/12/23', 'Main Course', false, 'M01');
insert into menu values('Pizza', 149, true, '2017/08/21', 'Main Course', false, 'M03');
insert into menu values('French Fries', 57, false, '2017/07/02', 'Starter', true, 'M04');
insert into menu values('Chocolate Brownie', 32, true, '2012/11/02', 'Desserts ', true, 'M05');

/*2*/
select * from menu where date_of_lunch >= current_date() and Active = 1;

/*3 a*/
select * from menu order by menuid;

/*3 b*/
update menu set name = "" , Price = "", Active=  " ", Date_of_lunch = "" , Category = "", Free_delivery = ""
where menuid = "";

/*4*/
insert into user values (1,'Kumar');
insert into user values (2,'Ali');


insert into cart values (2,'Sandwich', 1, 99, 'M02');
insert into cart values (2,'Burger', 0, 129, 'M01');
insert into cart values (2,'Pizza', 0, 149, 'M03');


/*5 a*/
select * from cart where userid = 2;

/*5 b*/
select sum(price) from cart where userid = 2;

/*6*/
delete from cart where userid = 2 and menuid = 'M02';

use truyum;
select * from menu;

use truyum;
