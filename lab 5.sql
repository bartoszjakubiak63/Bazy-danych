## zadanie 1
create table infs_jakubiakb.EMPLOYEE like company_2025.EMPLOYEE;
insert into infs_jakubiakb.EMPLOYEE select * from company_2025.EMPLOYEE;

create table infs_jakubiakb.CLIENT like company_2025.CLIENT;
insert into infs_jakubiakb.CLIENT select * from company_2025.CLIENT;

create table infs_jakubiakb.ORDER like company_2025.EMPLOYEE;
insert into infs_jakubiakb.ORDER select * from company_2025.ORDER;

select * From `ORDER`;

select * from `ORDER` 
where ORDER_STATUS = 5;

select ORDER_ID, ORDER_STATUS from `ORDER`
where CLIENT_ID in (1,3,5);

## zadnie 2
select * from EMPLOYEE;

select * from EMPLOYEE
where FIRST_NAME = 'Agnieszka' and pensja = 3900;

select * from EMPLOYEE
where pensja > 5000 and pensja < 7000;

select * from CLIENT
where IS_COMPANY = 1 and SHORT_NAME like '%eco%';

## zadnie 3
SELECT * FROM `ORDER`
WHERE MONTH(ORDER_DATE) IN (6, 7);

select * from CLIENT
order by SHORT_NAME asc;

select * from EMPLOYEE
order by BIRTH_DATE
limit 5;

## zadania 4
SELECT DISTINCT FIRST_NAME 
FROM EMPLOYEE;

SELECT concat(FIRST_NAME, ' - ', LAST_NAME) AS PRACOWNIK
FROM EMPLOYEE
WHERE LAST_NAME LIKE 'Ko%';

select LAST_NAME, pensja from EMPLOYEE
where year(DATE_OF_EMPLOYMENT) between 2010 and 2014;

## zadanie 5
SELECT 
    pensja,
    pensja * 0.75 AS pensja_netto,
    pensja * 0.25 AS kwota_podatku
FROM EMPLOYEE;

SELECT * 
FROM CLIENT
WHERE TAX_IDENTIFIER IS NULL;

SELECT SHORT_NAME 
FROM CLIENT
WHERE SHORT_NAME LIKE 'K%' OR SHORT_NAME LIKE '%ski'
ORDER BY SHORT_NAME DESC;

select * from CLIENT;
