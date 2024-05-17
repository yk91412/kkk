select * from emp

SELECT SYSDATE FROM DUAL;

select to_char(sysdate,'yyyymmdd') from dual;

create table book1 (
book_id int,
category varchar(30),
author_id int,
price int,
published_date date);

select * from book1;

insert into book1 values(1,'인문',1,10000,'2020-01-01');

insert into book1 values(2,'경제',2,9000,'2021-02-05');
insert into book1 values(3,'인문',2,11000,'2021-04-11');
insert into book1 values(4,'인문',3,10000,'2021-03-15');
insert into book1 values(5,'생활',1,12000,'2021-01-10');


select book_id, published_date
from book1
where to_char(published_date,'yyyy')= '2021' and
category = '인문'
order by published_date;

create table car_rental_company_car(
car_id int,
car_type varchar(255),
daily_fee int,
options varchar(255)
);

insert into car_rental_company_car values(1,'세단',16000,'가죽시트');

select * from car_rental_company_car;

insert into car_rental_company_car values(2,'suv',14000,'스마트키');
insert into car_rental_company_car values(3,'suv',22000,'후방카메라');

commit;

insert into car_rental_company_car values(4,'suv',23500,'가죽시트');
insert into car_rental_company_car values(5,'suv',12400,'가죽시트');
insert into car_rental_company_car values(6,'suv',12357,'가죽시트');

select round(avg(daily_fee),1) as AVERAGE_FEE
from car_rental_company_car
where car_type = 'suv';


commit;

create table car_rental_company_rental_history(
history_id int,
car_id int,
start_date date,
end_date date);

select * from car_rental_company_rental_history;
insert into car_rental_company_rental_history values(1,4,'2022-09-27','2022-11-27');

insert into car_rental_company_rental_history values(2,3,'2022-10-03','2022-11-04');
insert into car_rental_company_rental_history values(3,2,'2022-09-05','2022-09-05');
insert into car_rental_company_rental_history values(4,1,'2022-09-01','2022-09-30');
insert into car_rental_company_rental_history values(5,3,'2022-09-16','2022-10-15');

alter table car_rental_company_rental_history
add (rent_type date);

alter table car_rental_company_rental_history
modify(rent_type number);

update car_rental_company_rental_history
set rent_type = '장기 대여'
where end_date - start_date > 30;

select * from car_rental_company_rental_history;

alter table car_rental_company_rental_history
modify(rent_type varchar(30));

update car_rental_company_rental_history
set rent_type = NULL;

update car_rental_company_rental_history
set rent_type = '단기 대여'
where end_date - start_date < 30;

select * from car_rental_company_rental_history
where to_char(start_date, 'mm') = '09'
order by history_id desc;

commit;