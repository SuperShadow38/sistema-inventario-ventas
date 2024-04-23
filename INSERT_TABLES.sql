create table T_INFO_CAJERO_FAV (
cod_cajero  number primary key not null,
nombres varchar2(150) not null,
apellidos varchar2(150) not null
);

create table T_INFO_PRODUCTO_FAV (
cod_producto number primary key not null,
nombre varchar2(150) not null,
precio number(3,2) not null
);

create table T_INFO_MAQ_REGISTRADORA_FAV (
cod_maquina  number primary key not null,
ubicacion varchar2(150) not null
);

create table T_INFO_VENTA_FAV (
cajero_cod number not null,
producto_cod number not null,
maquina_cod number not null,
foreign key (cajero_cod) references T_INFO_CAJERO_FAV(cod_cajero),
foreign key (producto_cod) references T_INFO_PRODUCTO_FAV(cod_producto),
foreign key (maquina_cod) references T_INFO_MAQ_REGISTRADORA_FAV(cod_maquina)
);





