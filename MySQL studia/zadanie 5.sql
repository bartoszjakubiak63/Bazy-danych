create table status(
id_statusu int primary key auto_increment,
nazwa_statusu varchar(20)
);

insert into status (nazwa_statusu)
values 
	('dobry'),
    ('sredni'),
    ('slaby');

create table zadanie_has_status(
id_zdarzenia int primary key auto_increment,
id_zadania int,
constraint fk_id_zadania
foreign key (id_zadania) references zadania(id_zadania),
id_statusu int,
constraint fk_id_statusu
foreign key (id_statusu) references status(id_statusu),
data_zdarzenia timestamp default current_timestamp
);

select * from zadanie_has_status;

insert into zadanie_has_status (data_zdarzenia)
values 
	('2026-10-05'),
	('2026-12-10'),
    ('2026-11-11');