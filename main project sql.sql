1.
create table car_customers
(
customer_id number,
first_name varchar(50),
last_name varchar2(50),
email varchar2(50),
address varchar2(600),
registration_date date,
primary key(customer_id)
);
desc car_customers;

2.
create table carbrands(
brand_id  int primary key,
brand_name varchar2(50)
);

desc carbrands;



3.
create table carmodels
(
model_id int primary key,
brand_id int,
model_name varchar2(50),
price number,
year int,
constraints car_bid_fk foreign key(brand_id) references carbrands(brand_id)
);
desc carmodels;

4.
create table cars
(
car_id int primary key,
model_id int,
color varchar2(20),
stock_quantity number,
constraints car_mid_fk foreign key(model_id)references carmodels(model_id)
);

desc cars;

5.
create table staff
(
staff_id int primary key,
first_name varchar2(50),
last_name varchar2(50),
rolle varchar2(50),
hire_date date
);

desc staff;

6.
create table sales
(
sale_id int primary key,
car_id int,
customer_id int,
staff_id int,
sale_date date,
sale_price number,
constraints car_cid_fk foreign key (car_id)references cars(car_id),
constraints cus_cusid_fk foreign key(customer_id)references car_customers(customer_id),
constraints stf_stfid_fk foreign key(staff_id)references staff(staff_id)
);
desc sales;



select * from car_customers;
select * from carbrands;
select * from carmodels;
select * from cars;
select * from staff;
select * from sales;
select * from car_customers;
insert into car_customers values(35,'brendob','mucullum','bazz@.com','1/114 newzealand ','15-08-24');
insert into car_customers values(1,'sathish','rko','sathishrko@.com','123 tirunelveli ','15-08-24');
insert into car_customers values(2,'thara','chuttie','tharaf4@.com','123 thanjavur ','15-08-24');
insert into car_customers values(32,'pat','cummins','patty@.com','1/114 australia ','15-08-24');
insert into car_customers values(31,'rishahb','pant','pant@.com','1/114 india ','15-08-24');
select * from carbrands;
insert into carbrands values(1,'suzuki');
insert into carbrands values(2,'mahindra');
insert into carbrands values(3,'toyota');
insert into carbrands values(4,'tata');
insert into carbrands values(5,'bmw');
insert into carbrands values(20,'mg');
commit;
select * from carmodels;
insert into carmodels values(28,16,'ipace',91236937,'2024',28);
insert into carmodels values(1,1,'brezza',91236937,'2024',1);
insert into carmodels values(3,2,'thar',91236937,'2024',6);
insert into carmodels values(5,3,'fortuner',91236937,'2024',3);
insert into carmodels values(7,4,'nexon',91236937,'2024',5);
select * from cars;
insert into cars values(25,16,'white',2);
insert into cars values(1,1,'black',5);
insert into cars values(2,1,'whire',4);
insert into cars values(3,2,'black',5);

alter table staff rename column rolle to rolls;

select * from staff;

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (1, 'John', 'Doe', 'Sales Executive', TO_DATE('15-01-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (2, 'Jane', 'Smith', 'Sales Executive', TO_DATE('22-03-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (3, 'Michael', 'Johnson', 'Sales Manager', TO_DATE('10-07-2020', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (4, 'Emily', 'Davis', 'Finance Manager', TO_DATE('25-09-2019', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (5, 'Chris', 'Brown', 'Inventory Manager', TO_DATE('12-06-2021', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (6, 'Sarah', 'Wilson', 'Customer Service', TO_DATE('01-02-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (7, 'David', 'Moore', 'Technician', TO_DATE('20-11-2018', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (8, 'Sophia', 'Taylor', 'Sales Executive', TO_DATE('18-05-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (9, 'Daniel', 'Anderson', 'IT Specialist', TO_DATE('05-01-2021', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (10, 'Olivia', 'Thomas', 'Sales Executive', TO_DATE('11-10-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (11, 'James', 'Jackson', 'Assistant Manager', TO_DATE('15-08-2019', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (12, 'Emma', 'White', 'HR Manager', TO_DATE('04-12-2018', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (13, 'William', 'Harris', 'Sales Executive', TO_DATE('19-07-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (14, 'Ava', 'Martin', 'Customer Service', TO_DATE('21-04-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (15, 'Ethan', 'Thompson', 'Sales Executive', TO_DATE('30-06-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (16, 'Mia', 'Garcia', 'Marketing Executive', TO_DATE('27-03-2021', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (17, 'Lucas', 'Martinez', 'Sales Executive', TO_DATE('01-09-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (18, 'Isabella', 'Robinson', 'Finance Assistant', TO_DATE('15-12-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (19, 'Alexander', 'Clark', 'Technician', TO_DATE('29-05-2020', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (20, 'Charlotte', 'Rodriguez', 'Receptionist', TO_DATE('09-11-2021', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (21, 'Liam', 'Lewis', 'Sales Executive', TO_DATE('10-01-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (22, 'Amelia', 'Lee', 'Marketing Manager', TO_DATE('17-02-2019', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (23, 'Benjamin', 'Walker', 'Sales Manager', TO_DATE('12-08-2020', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (24, 'Harper', 'Hall', 'Inventory Assistant', TO_DATE('20-07-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (25, 'Elijah', 'Allen', 'Sales Executive', TO_DATE('22-08-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (26, 'Ella', 'Young', 'Customer Service', TO_DATE('14-09-2022', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (27, 'Noah', 'King', 'Technician', TO_DATE('05-10-2020', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (28, 'Grace', 'Wright', 'HR Assistant', TO_DATE('23-12-2021', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date) 
VALUES (29, 'Logan', 'Scott', 'Sales Executive', TO_DATE('08-04-2023', 'DD-MM-YYYY'));

INSERT INTO staff (Staff_ID, First_Name, Last_Name, ROLLS, Hire_Date)  
VALUES (30, 'Chloe', 'Green', 'Receptionist', TO_DATE('03-03-2022', 'DD-MM-YYYY'));
select * from staff;
select * from sales;
insert into sales values(30,16,16,15,'07-nov-24',1030000);
insert into sales values(1,1,5,2,'01-jan-24',7790000);
insert into sales values(2,10,20,10,'03-jan-24',16030000);
insert into sales values(3,15,4,4,'09-jan-24',13060000);

commit;
select * from sales;
SELECT
    sf.first_name,
    sf.last_name,
    s.sale_price,
    s.staff_id,
    s.sale_date
FROM
         staff sf
    JOIN sales s ON sf.staff_id = s.staff_id where s.staff_id=17;
    
    alter table carmodels add customer_id number;
select * from carmodels;
alter table carmodels add constraints cm_cusid_fk foreign key(customer_id)references car_customers(customer_id);
select * from car_customers;
update carmodels set customer_id=24 where model_id=21;


SELECT
    cu.first_name,
    cu.last_name,
    b.brand_name,
    cam.model_name,
    s.sale_date,s.sale_price,sf.staff_id
FROM
         car_customers cu
    JOIN carmodels cam ON cu.customer_id = cam.customer_id
    JOIN carbrands b ON b.brand_id = cam.brand_id join  sales s on s.customer_id=cu.customer_id  join staff sf on sf.staff_id=s.staff_id;
    
SELECT
    b.brand_name,
    AVG(cam.price)as price
FROM
         carmodels cam
    JOIN carbrands b ON b.brand_id = cam.brand_id
GROUP BY
    b.brand_name
order by price desc;
 --full outer join--
SELECT
    b.brand_name,
    cam.model_name
FROM
    carbrands b
    FULL OUTER JOIN carmodels cam ON b.brand_id = cam.brand_id; 
SELECT
    cu.first_name || cu.last_name AS "name",
    cam.model_name,
    cam.price
FROM
    carmodels     cam
    LEFT OUTER JOIN car_customers cu ON cu.customer_id = cam.customer_id;
    --right,left outer join---
SELECT
    cu.first_name || cu.last_name AS "name",
    c.color,
    sf.rolls,
    s.sale_price
FROM
    sales s
    LEFT OUTER JOIN car_customers cu ON cu.customer_id = s.customer_id
    RIGHT OUTER JOIN staff sf ON sf.staff_id = s.staff_id
    LEFT OUTER JOIN cars  c ON c.car_id = s.car_id;
    
---sub query-----
select * from cars;
SELECT
    cam.model_name,
    cam.price,
    b.brand_name
FROM
         carmodels cam
    JOIN carbrands b ON b.brand_id = cam.brand_id
WHERE
    cam.price > (
        SELECT
            AVG(price)
        FROM
            carmodels cam
    );
SELECT
    first_name || last_name AS "name",
    rolls,
    hire_date from staff 
WHERE
    hire_date IN (
        SELECT
            MAX(hire_date)
        FROM
            staff
    );
    
---scalar view----
select sf.first_name||sf.last_name as"name",s.sale_price, ( SELECT
                                                          max(sale_price) FROM sales s)
                                                        FROM
                                                         sales s
                                                 JOIN staff sf ON sf.staff_id = s.staff_id;

select * from staff;
--incline view---
select * from car_customers cu,(select * from sales where sale_price>200000 )s where cu.customer_id=s.customer_id;

--rank-----------
select sale_id,customer_id,sale_date,sale_price,rank()over(order by sale_price desc)rank from sales;
select * from (select sale_id,customer_id,sale_price,rank()over(order by sale_price desc)rank from sales)where rank=10;

---dense_rank()
select model_id,brand_id,model_name,price, dense_rank()over(order by price desc)rank from  carmodels;
select * from(select model_id,brand_id,model_name,price,dense_rank()over(order by price asc)rank from carmodels)where rank=25;

--decode--
select distinct(stock_quantity),
case
when stock_quantity=1 then 'limited stock'
when stock_quantity=2 then 'limited'
when stock_quantity=5 then 'available'
when stock_quantity=4 then 'fast booking'
when stock_quantity=0 then 'not available'
else 'stocks available'
end
from cars;

---group by and having--------
select sale_price,count(*) from sales where sale_price >1000000 group by (sale_price);
--having-----
select sale_price,customer_id,count(*)from sales where sale_price>100000 group by(sale_price,customer_id)having count(*)=1;

--multirow function--------
select max(sale_price)from sales;
select sum(sale_price)from sales;

-----single row function---
select  * from sales where sale_date=to_date('feb-21-24','mon-dd-yy');
select sale_date,to_char(sale_date,'month'),to_char(sale_date,'year'),to_char(sale_date,'dd'),to_char(sale_date,'yyyy')from sales;

select add_months(sysdate,1)from dual;
-----next day----
select sale_date,next_day(sale_date,'monday')from sales;
----last day--
select sale_date,last_day(sale_date)from sales;
--monthsbetween=---
select sale_date, months_between(sale_date,sysdate)from sales;
----convert into year-------
select sale_date,(months_between(sale_date,sysdate)/12)from sales;
---concat---
select concat(first_name,last_name)from car_customers;
--substr---
select  first_name ,substr(first_name,1,6)from car_customers ;
select instr(brand_name,'a',1,2)from carbrands;
----instr and substr------
select instr(substr(brand_name,1,10),'a',1,1)from carbrands;
 ---replace and translate---
 select translate(brand_name,'apty','kxyz')from carbrands;
 select replace(brand_name,'en','xx')from carbrands;
 
 ---lower,upper,initcap--
select lower(brand_name),upper(brand_name),initcap(brand_name) from carbrands;

--view key---
create view view_carcust as select first_name||last_name as"NAME",email,address from car_customers where customer_id >10;
select * from view_carcust;

---backup date---
create table carbrands_bkp as select * from carbrands;
select * from carbrands_bkp; 
---ddl--
alter table car_customers add phone_number number;
alter table car_customers rename column phone_number to ph_no;

---dml---
update carbrands set brand_name='skoda' where brand_id=5;
select sale_price from sales where sale_price between 100000 and 10000000;
select sale_price from sales where sale_price  not between 100000 and 10000000;
commit;


select * from car_customers;

select * from cars;

alter table carbrands rename column brand_name to brand_names;
alter table carbrands rename column brand_names to brand_name;
-rename-
rename carbrands to  car_brands;
rename car_brands to carbrands;
update cars set color='blue' where car_id=2;
update cars set stock_quantity=10 where car_id=1;
commit;

select hire_date from staff;

---lead--
select sale_id,sale_date,sale_price,lag(sale_price,2)over(order by sale_price desc)lag from sales;
select * from car_customers;
---inner join--
SELECT
    s.sale_id,
    s.sale_date,
    cu.first_name || cu.last_name AS "NAME",
    sf.first_name || sf.last_name AS " employee_NAME",
    c.color,
    cam.model_name,
    b.brand_name
FROM
         sales s
    INNER JOIN car_customers cu ON s.customer_id = cu.customer_id
    INNER JOIN staff         sf ON sf.staff_id = s.staff_id
    INNER JOIN cars          c ON c.car_id = s.car_id
    INNER JOIN carmodels     cam ON cam.model_id = c.model_id
    INNER JOIN carbrands b ON b.brand_id = cam.brand_id;
    commit;
    
    