/*Vizulizarea clientilor*/
SELECT *FROM CLIENTI;
/*Actualizarea numarului de telefon al unui client ,de exemplu 'Adam Ioana'*/
UPDATE CLIENTI
SET NUMAR_TELEFON='0762398522'
WHERE NUME=( SELECT NUME
FROM CLIENTI
where NUME= 'Adam Ioana');

SELECT *FROM film;
/*Actualizarea pretului unui film ,de exemplu vom schimba pretul filmului 'Inca un rand' de la 18 lei la 21 lei*/
UPDATE FILM
SET PRET=21
WHERE NUME_FILM='Inca un rand';
SELECT *FROM film;

/*Afisarea filmului/filmelor cu cel mai mic pret(afisam si pretul)*/
SELECT NUME_FILM,PRET
FROM FILM
WHERE PRET=(SELECT MIN(PRET) FROM FILM)
 
/*Afisarea numarului de bilete cumparate de un client cunoscandu-i numele */
SELECT COUNT(ID_VANZARE)
FROM VANZARI_BILETE
WHERE ID_CLIENT=(SELECT ID_CLIENT FROM CLIENTI WHERE NUME='Ichim Malina');

/*Aflarea filmului proiectat intr-o anumita data,sala si ora */
SELECT NUME_FILM
FROM FILM
WHERE ID_FILM=(SELECT ID_FILM FROM PROIECTIE WHERE (DATA='18-DEC-2020' AND ID_SALA=(SELECT ID_SALA FROM SALI WHERE NUME_SALA='Sala Gaudeamus') AND ORA='17:30'));

/*Schimbarea tipului variabilei Gen_film de la Varchar2(20) la Varchar2(30) */
ALTER TABLE DETALII_FILM MODIFY GEN_FILM VARCHAR2(30);

/*In tabela film vom modifica pretul in urma unei ieftiniri de 10%*/
UPDATE FILM
SET PRET=PRET*0.90


/*Stergerea inregistrarii din tabela vanzari pentru ca un client doreste amanarea biletul datorita faptului ca nu mai poate ajunge la proiectie*/
DELETE FROM VANZARI_BILETE
WHERE ID_PROIECTIE=200 AND ID_CLIENT=601;

/*Stergerea proiectiei si a biletelor vandute datorita amanarii acesteia*/
DELETE FROM VANZARI_BILETE
WHERE ID_PROIECTIE=200;
DELETE FROM PROIECTIE
WHERE ID_PROIECTIE=200;

/*NUMARUL DE FILME RULATE INTR-O ZI */
SELECT COUNT(ID_PROIECTIE)
FROM PROIECTIE
WHERE DATA='20-DEC-2020';

/*Adaugarea unei coloane noi pentru o tabela,de exemplu la detalii_film coloana nota_imdb */
ALTER TABLE DETALII_FILM
ADD (NOTA_IMDB number(2,2));
 
/*Afisarea clientilor al caror nume incep cu litera A*/
SELECT NUME FROM CLIENTI
WHERE REGEXP_LIKE(NUME,'^..[Aa].*');

/*Afisare informatii cinematograf*/
SELECT NUME_CINEMATOGRAF ||' se afla la adresa ' || ADRESA || ' daca aveti nevoie de detalii puteti suna la '|| NUMAR_TELEFON || 'in orarul '|| PROGRAM_LUCRU 
as THE_OUTPUT
FROM CINEMATOGRAF;

/*Afisarea zilelor cand este proiectat un film*/
SELECT DISTINCT(DATA)
FROM PROIECTIE
WHERE ID_FILM=(SELECT ID_FILM FROM FILM WHERE NUME_FILM='Inca un rand')
ORDER BY DATA;











