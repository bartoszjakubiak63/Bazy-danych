create table zadania(
id_zadania int primary key auto_increment,
nazwa_zadania varchar(150) not null,
opis text,
id_pracownika int,
constraint fk_id_pracownika
foreign key (id_pracownika) references pracownik(id_pracownika)
on delete set null
);

insert into zadania (nazwa_zadania, opis)
values 
	('kopnij','raz a dobrze'),
    ('przepros','serdecznie');

update zadania
set opis = 'od razu'
where id_zadania = 2;

select * from zadania;