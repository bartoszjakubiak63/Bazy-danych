create table pracownik (
id_pracownika int primary key auto_increment,
imie varchar(40) not null,
nazwisko varchar(50) not null,
data_urodzenia date not null
);

insert into pracownik (id_pracownika, imie, nazwisko, data_urodzenia)
values
	(1,"Tomek", "Karas", "2000-01-01"),
    (2,"Marek","Most","1999-04-05"),
    (3,"Tymek","Kapec","2002-07-04");

select * from pracownik;

update pracownik
set data_urodzenia = "1998-06-10"
where id_pracownika = 1;

create table zadania (
id_zadania int primary key auto_increment,
nazwa_zadania varchar(150) not null,
priorytet enum('normalny', 'wysoki', 'niski'),
opis varchar(200),
robol int
);

alter table zadania
add foreign key (robol)
references pracownik(id_pracownika);

insert into zadania (id_zadania, nazwa_zadania, priorytet, opis)
values
	(1,'kopanie','wysoki','szybko'),
    (2,'zakopywanie','niski','wolno');

select * from zadania;