create table projekt(
id_projektu int primary key auto_increment,
nazwa_projektu varchar(150),
data_rozpoczęcia date,
data_zakonczenia date
);

alter table projekt
	add column id_menadzera int
	after id_projektu, 
	add constraint fk_id_menadzera
	foreign key (id_menadzera) references pracownik(id_pracownika);

select * from projekt;

insert into projekt (nazwa_projektu, data_rozpoczęcia, data_zakonczenia)
values 
	('drapanie','2026-11-14','2026-12-24'),
	('skladanie','2026-11-20','2026-12-30');

select * from pracownik;

alter table zadania
	add column id_projektu int
	after id_zadania,
	add constraint fk_id_projektu 
    foreign key (id_projektu) references projekt(id_projektu)
    on delete cascade;

select * from zadania;

update zadania
set id_projektu = 1
where id_zadania = 1;

update zadania
set id_projektu = 2
where id_zadania = 2;