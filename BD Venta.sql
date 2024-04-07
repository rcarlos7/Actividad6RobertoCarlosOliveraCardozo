CREATE DATABASE VENTABD;

CREATE TABLE CLIENTE (
IDCLIENTE INT IDENTITY (1,1) NOT NULL,
NOMBRE NVARCHAR (50) NOT NULL,
APELLIDO NVARCHAR (50) NOT NULL,
TELEFONO NVARCHAR (50) NULL,
PRIMARY KEY (IDCLIENTE),
);

CREATE TABLE VENTA (
IDVENTA INT IDENTITY (1,1) NOT NULL,
FECHAVENTA DATETIME NOT NULL,
TOTALVENTA MONEY NOT NULL,
PRIMARY KEY (IDVENTA),
);

CREATE TABLE PRODUCTO (
IDPRODUCTO INT IDENTITY (1,1) NOT NULL,
NOMBREPRODUCTO NVARCHAR (50) NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
PRIMARY KEY (IDPRODUCTO),
);

CREATE TABLE DETALLEVENTA (
IDDETALLEVENTA INT IDENTITY (1,1) NOT NULL,
IDCLIENTE INT NOT NULL,
IDVENTA INT NOT NULL,
IDPRODUCTO INT NOT NULL,
CANTIDAD INT NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
TOTALDETALLE MONEY NOT NULL,
PRIMARY KEY (IDDETALLEVENTA),
FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (IDCLIENTE),
FOREIGN KEY (IDVENTA) REFERENCES VENTA (IDVENTA),
FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTO (IDPRODUCTO),
);


insert into cliente values ('Juan' ,'Mancilla', '+59178458787')
insert into cliente values ('Mario' ,'Cosio', '+59178458787')
insert into cliente values ('Manuel' ,'Chorolque', '+59178458787')
insert into cliente values ('Jesus' ,'Aviles', '+59178458787')

insert into venta values ('2022-02-01 14:00:00', 215);
insert into venta values ('2022-03-01 14:00:00', 70);
insert into venta values ('2022-04-01 14:00:00', 30);
insert into venta values ('2022-05-01 14:00:00', 155);
insert into venta values ('2023-05-01 14:00:00', 80);
insert into venta values ('2023-09-01 14:00:00', 105);

insert into producto values ('Galleta Maria', 25);
insert into producto values ('Coca Cola', 15);
insert into producto values ('Helado Vaquita', 30);
insert into producto values ('Jugo Fresh', 20);

insert into detalleventa values (1 ,1 ,1 ,5 , 25, 125);
insert into detalleventa values (1 ,1 ,2 ,2 , 15, 30);
insert into detalleventa values (1 ,1 ,3 ,2 , 30, 60);
insert into detalleventa values (2 ,2 ,2 ,2 , 15, 30);
insert into detalleventa values (2 ,2 ,4 ,2 , 20, 40);
insert into detalleventa values (3 ,3 ,3 ,1 , 30, 30);
insert into detalleventa values (4, 4 ,1 ,2 , 25, 50);
insert into detalleventa values (4, 4 ,2 ,1 , 15, 15);
insert into detalleventa values (4, 4 ,3 ,1 , 30, 30);
insert into detalleventa values (4, 4 ,4 ,3 , 20, 60);
insert into detalleventa values (1, 5 ,1 ,2 , 25, 50);
insert into detalleventa values (1, 5 ,2 ,2 , 15, 30);
insert into detalleventa values (3, 6 ,2 ,3 , 15, 45);
insert into detalleventa values (3, 6 ,4 ,3 , 20, 60);