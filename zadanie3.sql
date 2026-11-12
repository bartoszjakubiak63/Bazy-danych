select * From zadania;
select * from pracownik;
alter table zadania
add foreign key (fk_id)
references pracownik (id_pracownika);

alter table zadania
drop foreign key fk_pracownik,
add constraint fk_id
foreign key (fk_id)
references pracownik(id_pracownika)
on delete set null;

alter table zadnnia
drop column fk_id;

update zadania 
set priorytet ="normalny"
where id_zadania = 1;
select * from zadania;

update zadania
set nazwa_zadania = "drapanie"
where id_zadania = 1;
select * from zadania;

alter table zadania
add column wykonawca varchar(150);
select * from zadania;

update zadania
set fk_id = null
where id_zadania = 2;
select * from zadania;

create table projekt(
id_projektu int primary key not null auto_increment,
nazwa_projektu varchar(150) not null,
data_rozpoczęcia date not null,
data_zakończenia date);

INSERT INTO projekt (id_projektu, nazwa_projektu, data_rozpoczęcia, data_zakończenia)
VALUES
    (1, 'lekcja1', '2026-10-11', '2026-11-11'),
    (2, 'lekcja2', '2026-10-15', '2026-11-25'),
    (3, 'lekcja3', '2026-10-20', '2026-11-30');

SELECT * FROM projekt;

alter table projekt
add column menadzer_projektu int;

alter table projekt
add constraint menadzer
foreign key (menadzer_projektu)
references pracownik(id_pracownika);

alter table zadania
add constraint fk_id_projektu
foreign key (id_projektu)
references projekt(id_projektu)
on delete cascade;

select * from projekt;