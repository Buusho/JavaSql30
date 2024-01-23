
                     IJ
--#1
CREATE TABLE flowers(
                        id serial primary key ,
                        flower_name varchar,
                        color varchar,
                        placeOfPlants varchar);

insert into flowers (flower_name, color, placeOfPlants)
values ('Rose','red','any place except in hard soils and highlands'),
       ('Tulip','yellow','any place except in hard soils and highlands');

--#2

CREATE TABLE cars(
                     id serial primary key ,
                     car_name varchar,
                     color varchar,
                     firm varchar
);

insert into cars (car_name, color, firm)
values ('Carola','white','toyota'),
       ('m30','black','tesla'),
       ('lx470','black','Lexus');

--#3

CREATE  TABLE brands (
                         id serial primary key ,
                         brand_name varchar,
                         price int
);

insert into brands (brand_name, price)
values ('Gucci',2000),
       ('Adidas',2000),
       ('Nike',300);

alter table  brands add column thing varchar;

insert into brands(thing)
values ('shoes');

UPDATE brands
set  thing = 'jacket'
where id =1;

UPDATE  brands
set thing =  'socks'
where  id=2;

UPDATE  brands
set thing = 'shoes'
where id = 3;

UPDATE brands
set price = 200
where id = 4;

update  brands
set brand_name = 'Li-ning'
where id =4;

--#4


CREATE  TABLE  users (
                         id serial primary key ,
                         user_name varchar,
                         gender varchar
);
--#5
CREATE  TABLE phones(
                        id serial primary key ,
                        model varchar,
                        price int
);


insert into users (user_name, gender)
values ('Adyl','male');

alter  table  users add column phones_id integer references phones (id);


insert into phones (model, price)
values ('iphone 13','60000');

UPDATE users
set phones_id = 1
where id = 1;

--#6

CREATE TABLE clothes (
                         id serial primary key ,
                         price int,
                         brand_name varchar
);

--#7
CREATE TABLE animals (
                         id serial primary key ,
                         animal_name varchar,
                         kindOfAnimal varchar
);

--#8

CREATE TABLE kinds (
                       id serial primary key ,
                       description varchar
);


alter table  animals add column kinds_id  integer references kinds(id);

insert into  kinds (description)
values ('animal with horns and lives in the forest');

insert into animals (animal_name, kindOfAnimal)
values ('Elk','Artiodactyl mammals');

UPDATE  animals
set kinds_id = 1
where  id = 1;

--#9
CREATE TABLE plants (
                        id serial primary key ,
                        plants_name varchar,
                        colorOfPlant varchar,
                        kindsOfPlants varchar
);
--#10
CREATE  TABLE plants_kinds (
                               id serial primary key ,
                               description varchar
);


alter table  plants add column plants_kinds_id integer references plants_kinds(id);
insert into plants_kinds (description)
values ('Форма тюльпана бывает разнообразной: бокаловидная, овальная, чашевидная, звездчатая.
');

insert into plants(plants_name, colorOfPlant, kindsOfPlants,plants_kinds_id)
values ('Tulip','different colors','Царство: Растения. Отдел: Покрытосеменные. Класс: Однодольные.
',1);



         PG ADMIN

        --#1
CREATE TABLE techonologies(
                              id serial primary key ,
                              name_techonology varchar (50),
                              price int );

--#2

CREATE TABLE market (
                        id serial primary key ,
                        name_market varchar ,
                        place_market varchar);

alter table market rename to markets;

alter table techonologies add column market_id integer references markets(id);

insert into markets (name_market,place_market)
values ('AsiaMall','avenue Manas 34');

insert into techonologies (name_techonology,price,market_id)
values ('hammer',200,1);

--#3

CREATE TABLE libraries (
                           id serial primary key ,
                           name_library varchar,
                           place varchar,
                           founder varchar);

--#4

CREATE TABLE books (
                       id serial primary key ,
                       name_book varchar,
                       author_book varchar);

alter table libraries add column book_id integer references books(id);

insert into books (name_book,author_book)
values ('Harry Poter','Rowling');

insert into libraries (name_library,place,founder,book_id)
values ('Aitmatova','avanue Manasa 34','Tolomushev',1);

--#5
CREATE TABLE fruits (
                        id serial primary key ,
                        name_fruits varchar ,
                        description varchar,
                        price int );

insert into fruits (name_fruits,description,price)
values ('banan','yellow,super',34);

alter table fruits add column place_of_plant varchar;

update fruits
set place_of_plant  ='Africa'
where id = 1;

--#6

CREATE TABLE vegetables (id serial primary key ,
                         name_vagetables varchar ,
                         description varchar,
                         price int
);

--#7
CREATE TABLE plants_vegetable(
                                 id serial primary key ,
                                 place_of_plant varchar,
                                 vegetables_id int
);

insert into vegetables (name_vagetables,description,price)
values ('potato','round , color:brown',123);
insert into plants_vegetable (place_of_plant,vegetables_id)
values ('anywhere',1);

--#8
CREATE TABLE companys (
                          id serial primary key ,
                          name_company varchar (30),
                          place varchar );


--#9

CREATE TABLE person (
                        id serial primary key ,
                        name_person varchar,
                        age int);

alter table companys add column employee_id integer references person(id);
alter table person add column expirience int;

insert into person (name_person,age,expirience)
values ('Adyl',19,3),
       ('Arslan',19,3);

insert into companys (name_company,place,employee_id)
values ('Tesla','south America, Wasgington',1),
       ('Space-X','north America,Brasil:Brasilia',2);

--#10

CREATE TABLE actors  (
                         id serial primary key ,
                         name_actor varchar ,
                         description varchar
);

insert into actors (name_actor , description)
values ('Argen','was in Netflix');

                         TERMINAL

postgres=# CREATE TABLE colors (id serial primary key,name_color varchar , price int );
CREATE TABLE
    postgres=# CREATE TABLE magazins (id serial primary key , name_magazin varchar , place_magazin varchar );
CREATE TABLE
    postgres=# alter table magazins add column colors_id int references colors(id);
ALTER TABLE
    postgres=# insert into colors (name_color , price) values ('red',23),('blue',25);
INSERT 0 2
        postgres=# insert into magazins (name_magazin , place_magazin ,colors_id) values ('Svat','Ahunbaeva 32',1), values ('svet','asd 23',2);
        ОШИБКА:  ошибка синтаксиса (примерное положение: "values")
        СТРОКА 1: ...zin ,colors_id) values ('Svat','Ahunbaeva 32',1), values ('s...
                ^
                postgres=# insert into magazins (name_magazin , place_magazin ,colors_id) values ('Svat','Ahunbaeva 32',1),  ('svet','asd 23',2);
        INSERT 0 2
        postgres=# CREATE TABLE rooms ( id serial primary key , name_room varchar , numberOfRomm varchar );
        CREATE TABLE
        postgres=# CREATE TABLE builds(id serial primary key , name_build varchar, street varchar);
        CREATE TABLE
        postgres=# alter table builds add column rooms_id int references rooms(id);
        ALTER TABLE
        postgres=# inser into rooms(name_room , numberOfRomm) values ('spaceX',3);
        ОШИБКА:  ошибка синтаксиса (примерное положение: "inser")
        СТРОКА 1: inser into rooms(name_room , numberOfRomm) values ('spaceX',...
          ^
        postgres=# insert into rooms(name_room , numberOfRomm) values ('spaceX','3');
    postgres=#  insert into builds (name_build,street,rooms_id) values ('Peaksoft','Grajdanskaya 119',1);
INSERT 0 1
  postgres=# select * from builds;
 id | name_build |      street      | rooms_id
----+------------+------------------+----------
  1 | Peaksoft   | Grajdanskaya 119 |        1
(1 ёЄЁюър)
postgres=# CREATE TABLE box (id serial primary key, name_box varchar ,size varchar );
CREATE TABLE
postgres=# insert into box(name_box , size)
postgres-# ;
ОШИБКА:  ошибка синтаксиса (примерное положение: ";")
СТРОКА 2: ;
          ^
postgres=# insert into box(name_box , size) values ('brown box','23 34');
INSERT 0 1
 postgres=# CREATE TABLE windows (brand varchar , color varchar );
CREATE TABLE
postgres=# insert into windows (brand,color) values ('Nur','white');
INSERT 0 1
postgres=# CREATE TABLE schools (id serial primary key , name_school varchar , location_school varchar );
CREATE TABLE
postgres=# CREATE TABLE studdents (id serial primary key , name_stu varchar , age int );
CREATE TABLE
postgres=# alter table schools add column studdents_id int references studdents(id);
ALTER TABLE
postgres=# insert into studdents (name_stu, age,) values ('Adyl',18), ('Arsen',19);
ОШИБКА:  ошибка синтаксиса (примерное положение: ")")
СТРОКА 1: insert into studdents (name_stu, age,) values ('Adyl',18), (...
                                               ^
postgres=# insert into studdents (name_stu, age) values ('Adyl',18), ('Arsen',19);
INSERT 0 2
postgres=# insert into schools (name_school,location_school,studdents_id) values ('Gorkiy','Pervo maiysky 23,1) ,('Gorkiy','Pervo maiysky 23,2);
ОШИБКА:  ошибка синтаксиса (примерное положение: "Gorkiy")
СТРОКА 1: ...ents_id) values ('Gorkiy','Pervo maiysky 23,1) ,('Gorkiy','P...
                                                               ^
postgres=# insert into schools (name_school,location_school,studdents_id) values ('Gorkiy','Pervo maiysky 23',1) ,('Gorkiy','Pervo maiysky 23',2);
INSERT 0 2
postgres=# select * table from schools;
ОШИБКА:  ошибка синтаксиса (примерное положение: "table")
СТРОКА 1: select * table from schools;
                   ^
postgres=# select * from schools;
 id | name_school | location_school  | studdents_id
----+-------------+------------------+--------------
  1 | Gorkiy      | Pervo maiysky 23 |            1
  2 | Gorkiy      | Pervo maiysky 23 |            2
(2 ёЄЁюъш)
postgres=# select * from studdents;
 id | name_stu | age
----+----------+-----
  1 | Adyl     |  18
  2 | Arsen    |  19
(2 ёЄЁюъш)
postgres=# CREATE TABLE patients (id serial primary key , name_patient varchar, age int , disease varchar );
CREATE TABLE
postgres=# CREATE TABLE hospitals (id serial primary key , name_hospital varchar ,location_hospital varchar );
CREATE TABLE
postgres=# alter table hospitals add column patient_id int references patients(id);
ALTER TABLE
postgres=# insert into patients (name_patient , age,disease varchar) values ('Anna',12,'flu') , ('Eliza',14,flu,);
ОШИБКА:  ошибка синтаксиса (примерное положение: "varchar")
СТРОКА 1: insert into patients (name_patient , age,disease varchar) va...
                                                           ^
postgres=# insert into patients (name_patient , age,disease varchar) values ('Anna',12,'flu') , ('Eliza',14,'flu');
ОШИБКА:  ошибка синтаксиса (примерное положение: "varchar")
СТРОКА 1: insert into patients (name_patient , age,disease varchar) va...
                                                           ^
postgres=# insert into patients (name_patient , age,disease ) values ('Anna',12,'flu') , ('Eliza',14,'flu');
INSERT 0 2
 postgres=# insert into hospitals (name_hospital,location_hospital,patient_id) values ('Gos','kievski 34',1) , ('Frank' , 'Tup 45',2);
INSERT 0 2
postgres=# select * from hospitals ;
 id | name_hospital | location_hospital | patient_id
----+---------------+-------------------+------------
  3 | Gos           | kievski 34        |          1
  4 | Frank         | Tup 45            |          2
(2 ёЄЁюъш)


postgres=# select * from patients;
 id | name_patient | age | disease
----+--------------+-----+---------
  1 | Anna         |  12 | flu
  2 | Eliza        |  14 | flu
(2 ёЄЁюъш)
