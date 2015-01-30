
-- Table: tb_cars

-- DROP TABLE tb_cars;

create table crud.tb_cars
    (
        id serial,
        name text not null,
        brand text default null,
        color text default null,
        Primary Key(id),
    );

