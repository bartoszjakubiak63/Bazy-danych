create table sprint(
id_sprintu int primary key auto_increment,
numer_sprintu int unsigned,
data_rozpoczencia date,
data_zakonczenia date
);

select * from sprint;

alter table zadania
	add column id_sprintu int,
    add constraint fk_id_sprintu
    foreign key (id_sprintu) references sprint(id_sprintu)
    on delete set null;

select * from zadania;

insert into sprint (numer_sprintu, data_rozpoczencia, data_zakonczenia)
values 
	(1,'2026-11-14','2026-11-15'),
	(2,'2026-11-20','2026-11-21');

insert into zadania(nazwa_zadania,id_sprintu)
values 
	('kopnij',1),
	('przepros',1);
    
update zadania
set id_sprintu = 1
where id_zadania = 1;

update zadania
set id_sprintu = 1
where id_zadania = 2;