CREATE TABLE kategoria (
id_kategoria INT AUTO_INCREMENT PRIMARY KEY, 
nazwa VARCHAR(50)
);

Desc kategoria;

create table produkt (
id_produktu int auto_increment primary key,
nazwa varchar(100) not null,
data_dodania date,
id_kategoria int,
foreign key(id_kategoria)
references kategoria(id_kategoria)
);

insert into kategoria
values 
	(1,'komputer');
insert into kategoria
values 
	(2,'akcesoria'),
	(3,'sprzet preyferyjny');

select * from kategoria;

update kategoria
set nazwa = 'ogrod'
where id_kategoria = 3;

delete from kategoria where id_kategoria = 3;

insert into produkt (nazwa, data_dodania, id_kategoria)
values ('mysz','2026-10-29', 2);
desc produkt;

select * from produkt;

alter table produkt
drop foreign key produkt_ibfk_2,
add foreign key(id_kategoria)
	references kategoria(id_kategoria)
	on delete set null;

delete from kategoria where id_kategoria = 3;