-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-11-28 18:35:04 EET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cinematograf (
    nume_cinematograf  VARCHAR2(40) NOT NULL,
    adresa             VARCHAR2(50) NOT NULL,
    numar_telefon      CHAR(10) NOT NULL,
    program_lucru      VARCHAR2(40) NOT NULL
);

ALTER TABLE cinematograf
    ADD CONSTRAINT cinema_tel_ck CHECK ( substr(numar_telefon, 1, 2) LIKE '07'
                                         AND length(numar_telefon) = 10 );

ALTER TABLE cinematograf ADD CONSTRAINT cinematograf_pk PRIMARY KEY ( nume_cinematograf );

CREATE TABLE clienti (
    id_client      NUMBER(3) NOT NULL,
    nume           VARCHAR2(30) NOT NULL,
    numar_telefon  CHAR(10) NOT NULL
);

ALTER TABLE clienti
    ADD CONSTRAINT client_tel_ck CHECK ( substr(numar_telefon, 1, 2) LIKE '07'
                                         AND length(numar_telefon) = 10 );

ALTER TABLE clienti ADD CONSTRAINT clienti_pk PRIMARY KEY ( id_client );

ALTER TABLE clienti ADD CONSTRAINT clienti_nume_numar_telefon_un UNIQUE ( nume,
                                                                          numar_telefon );

CREATE TABLE detalii_film (
    id_film      NUMBER(3) NOT NULL,
    gen_film     VARCHAR2(20) NOT NULL,
    durata_film  CHAR(4) NOT NULL,
    format_film  CHAR(2) NOT NULL
);

ALTER TABLE detalii_film
    ADD CONSTRAINT durata_film_ck CHECK ( substr(durata_film, 2, 1) = ':'
                                          AND to_number(substr(durata_film, 3, 2)) >= 0
                                          AND to_number(substr(durata_film, 3, 2)) <= 59
                                          AND to_number(substr(durata_film, 1, 1)) >= 0
                                          AND to_number(substr(durata_film, 1, 1)) <= 3 );

CREATE UNIQUE INDEX detalii_film__idx ON
    detalii_film (
        id_film
    ASC )
        LOGGING;

CREATE TABLE film (
    id_film       NUMBER(3) NOT NULL,
    nume_film     VARCHAR2(40) NOT NULL,
    nume_regizor  VARCHAR2(30) NOT NULL,
    pret          NUMBER(4, 2) NOT NULL
);

ALTER TABLE film ADD CONSTRAINT pret_film_ck CHECK ( pret > 0 );

ALTER TABLE film ADD CONSTRAINT film_pk PRIMARY KEY ( id_film );

ALTER TABLE film ADD CONSTRAINT film_nume_film_nume_regizor_un UNIQUE ( nume_film,
                                                                        nume_regizor );

CREATE TABLE locuri_sali (
    id_loc   NUMBER(3) NOT NULL,
    id_sala  NUMBER(3) NOT NULL,
    rand     NUMBER(2) NOT NULL,
    scaun    NUMBER(2) NOT NULL
);

ALTER TABLE locuri_sali ADD CONSTRAINT locuri_sali_pk PRIMARY KEY ( id_loc );

CREATE TABLE proiectie (
    id_proiectie  NUMBER(3) NOT NULL,
    id_sala       NUMBER(3) NOT NULL,
    id_film       NUMBER(3) NOT NULL,
    data          DATE NOT NULL,
    ora           CHAR(5) NOT NULL
);

ALTER TABLE proiectie
    ADD CONSTRAINT ora_ck CHECK ( substr(ora, 3, 1) = ':'
                                  AND to_number(substr(ora, 4, 2)) >= 0
                                  AND to_number(substr(ora, 4, 2)) <= 59
                                  AND to_number(substr(ora, 1, 2)) >= 0
                                  AND to_number(substr(ora, 1, 2)) <= 23 );

ALTER TABLE proiectie ADD CONSTRAINT proiectie_pk PRIMARY KEY ( id_proiectie );

CREATE TABLE sali (
    id_sala            NUMBER(3) NOT NULL,
    nume_sala          VARCHAR2(20) NOT NULL,
    numar_randuri      NUMBER(2) NOT NULL,
    numar_scaune       NUMBER(2) NOT NULL,
    nume_cinematograf  VARCHAR2(40) NOT NULL
);

ALTER TABLE sali ADD CONSTRAINT sali_pk PRIMARY KEY ( id_sala );

ALTER TABLE sali ADD CONSTRAINT sali_nume_sala_un UNIQUE ( nume_sala );

CREATE TABLE vanzari_bilete (
    id_vanzare    NUMBER(3) NOT NULL,
    data_vanzare  DATE NOT NULL,
    id_proiectie  NUMBER(3) NOT NULL,
    id_loc        NUMBER(3) NOT NULL,
    id_client     NUMBER(3) NOT NULL
);

ALTER TABLE vanzari_bilete ADD CONSTRAINT vanzari_bilete_pk PRIMARY KEY ( id_vanzare );

ALTER TABLE detalii_film
    ADD CONSTRAINT detalii_film_film_fk FOREIGN KEY ( id_film )
        REFERENCES film ( id_film )
    NOT DEFERRABLE;

ALTER TABLE locuri_sali
    ADD CONSTRAINT locuri_sali_sali_fk FOREIGN KEY ( id_sala )
        REFERENCES sali ( id_sala )
    NOT DEFERRABLE;

ALTER TABLE proiectie
    ADD CONSTRAINT proiectie_film_fk FOREIGN KEY ( id_film )
        REFERENCES film ( id_film )
    NOT DEFERRABLE;

ALTER TABLE proiectie
    ADD CONSTRAINT proiectie_sali_fk FOREIGN KEY ( id_sala )
        REFERENCES sali ( id_sala )
    NOT DEFERRABLE;

ALTER TABLE sali
    ADD CONSTRAINT sali_cinematograf_fk FOREIGN KEY ( nume_cinematograf )
        REFERENCES cinematograf ( nume_cinematograf )
    NOT DEFERRABLE;

ALTER TABLE vanzari_bilete
    ADD CONSTRAINT vanzari_bilete_clienti_fk FOREIGN KEY ( id_client )
        REFERENCES clienti ( id_client )
    NOT DEFERRABLE;

ALTER TABLE vanzari_bilete
    ADD CONSTRAINT vanzari_bilete_locuri_sali_fk FOREIGN KEY ( id_loc )
        REFERENCES locuri_sali ( id_loc )
    NOT DEFERRABLE;

ALTER TABLE vanzari_bilete
    ADD CONSTRAINT vanzari_bilete_proiectie_fk FOREIGN KEY ( id_proiectie )
        REFERENCES proiectie ( id_proiectie )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER Trg 
    BEFORE INSERT OR UPDATE ON Proiectie 
    FOR EACH ROW 
BEGIN
IF( :new.Data <= SYSDATE )
THEN
RAISE_APPLICATION_ERROR( -20001,
'Data invalida: ' || TO_CHAR( :new.Data, 'DD.MM.YYYY HH24:MI:SS' ) || ' trebuie sa fie mai mare decat data curenta.' );
END IF;
END; 
/

CREATE SEQUENCE clienti_id_client_seq START WITH 601 MAXVALUE 800 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER clienti_id_client_trg BEFORE
    INSERT ON clienti
    FOR EACH ROW
    WHEN ( new.id_client IS NULL )
BEGIN
    :new.id_client := clienti_id_client_seq.nextval;
END;
/

CREATE SEQUENCE film_id_film_seq START WITH 300 MAXVALUE 370 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER film_id_film_trg BEFORE
    INSERT ON film
    FOR EACH ROW
    WHEN ( new.id_film IS NULL )
BEGIN
    :new.id_film := film_id_film_seq.nextval;
END;
/

CREATE SEQUENCE locuri_sali_id_loc_seq START WITH 1 MAXVALUE 200 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER locuri_sali_id_loc_trg BEFORE
    INSERT ON locuri_sali
    FOR EACH ROW
    WHEN ( new.id_loc IS NULL )
BEGIN
    :new.id_loc := locuri_sali_id_loc_seq.nextval;
END;
/

CREATE SEQUENCE proiectie_id_proiectie_seq START WITH 200 MAXVALUE 270 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER proiectie_id_proiectie_trg BEFORE
    INSERT ON proiectie
    FOR EACH ROW
    WHEN ( new.id_proiectie IS NULL )
BEGIN
    :new.id_proiectie := proiectie_id_proiectie_seq.nextval;
END;
/

CREATE SEQUENCE sali_id_sala_seq START WITH 100 MAXVALUE 170 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER sali_id_sala_trg BEFORE
    INSERT ON sali
    FOR EACH ROW
    WHEN ( new.id_sala IS NULL )
BEGIN
    :new.id_sala := sali_id_sala_seq.nextval;
END;
/

CREATE SEQUENCE vanzari_bilete_id_vanzare_seq START WITH 401 MAXVALUE 600 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER vanzari_bilete_id_vanzare_trg BEFORE
    INSERT ON vanzari_bilete
    FOR EACH ROW
    WHEN ( new.id_vanzare IS NULL )
BEGIN
    :new.id_vanzare := vanzari_bilete_id_vanzare_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             1
-- ALTER TABLE                             23
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           7
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          6
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
