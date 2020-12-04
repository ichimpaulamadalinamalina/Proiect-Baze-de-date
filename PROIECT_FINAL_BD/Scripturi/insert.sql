

INSERT INTO CINEMATOGRAF VALUES ('Cinema City Iulius Mall','Iasi,Bulevardul Tudor Vladimirescu,nr.131 ','0785431265','Zilnic:16:00-23:00');
INSERT INTO CINEMATOGRAF VALUES ('Cinema Victoria','Iasi,Strada Piata Unirii,nr.5 ','0767234167','Zilnic:16:30-22:30');
INSERT INTO CINEMATOGRAF VALUES ('Cinema Trianon','Iasi,Strada Alexandru Lapusneanu nr.12 ','0787567689','Joi-Duminica:18:30-23:30');
INSERT INTO CINEMATOGRAF VALUES ('Cinema Europa','Bucuresti,Strada Calea Mosilor nr.127 ','0744609152','Zilnic:17:30-22:00');
INSERT INTO CINEMATOGRAF VALUES ('Cinemateca Eforie','Bucuresti,Strada Eforie nr.2 ','0754487964','Luni-Vineri:16:30-22:00');



INSERT INTO SALI VALUES (sali_id_sala_seq.nextval,'Sala Gaudeamus',12,10,'Cinema Victoria');
INSERT INTO SALI VALUES (sali_id_sala_seq.nextval,'Sala Venus',10,10,'Cinema Victoria');
INSERT INTO SALI VALUES (sali_id_sala_seq.nextval,'Sala Arhimede',15,10,'Cinema Victoria');
INSERT INTO SALI VALUES (sali_id_sala_seq.nextval,'Sala Stellaris',17,10,'Cinema Victoria');
INSERT INTO SALI VALUES (sali_id_sala_seq.nextval,'Sala Andromeda',20,10,'Cinema Victoria');

INSERT INTO FILM VALUES (film_id_film_seq.nextval,'Galeria inimilor frante','Natalie Krinsky',20);
INSERT INTO FILM VALUES (film_id_film_seq.nextval,'O schema de milioane','George Gallo',25);
INSERT INTO FILM VALUES (film_id_film_seq.nextval,'Inca un rand','Thomas Vinterberg',18);
INSERT INTO FILM VALUES (film_id_film_seq.nextval,'5 minute','Dan Chisu',22);
INSERT INTO FILM VALUES (film_id_film_seq.nextval,'Bigfoot Junior 2','Jeremy Degruson',20);

INSERT INTO DETALII_FILM VALUES (300,'Comedie-Romantic','1:49','2D');
INSERT INTO DETALII_FILM VALUES (301,'Actiune-Comedie','1:44','2D');
INSERT INTO DETALII_FILM VALUES (302,'Drama','1:55','2D');
INSERT INTO DETALII_FILM VALUES (303,'Drama','1:43','2D');
INSERT INTO DETALII_FILM VALUES (304,'Animatie-Familie','1:29','3D');

INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,100,300,'18-DEC-2020','17:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,100,301,'18-DEC-2020','20:15');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,100,302,'19-DEC-2020','18:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,101,302,'18-DEC-2020','18:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,101,303,'20-DEC-2020','17:00');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,101,304,'22-DEC-2020','16:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,102,300,'19-DEC-2020','18:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,102,303,'21-DEC-2020','19:00');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,102,304,'22-DEC-2020','20:00');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,103,300,'18-DEC-2020','18:30');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,103,301,'20-DEC-2020','17:00');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,104,302,'18-DEC-2020','18:20');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,104,302,'21-DEC-2020','18:40');
INSERT INTO PROIECTIE VALUES (proiectie_id_proiectie_seq.nextval,104,303,'22-DEC-2020','19:20');


INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,100,1,1);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,100,1,2);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,100,1,3);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,100,1,4);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,100,1,5);

INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,101,1,1);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,101,1,2);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,101,1,3);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,101,1,4);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,101,1,5);

INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,102,1,1);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,102,1,2);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,102,1,3);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,102,1,4);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,102,1,5);

INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,103,1,1);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,103,1,2);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,103,1,3);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,103,1,4);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,103,1,5);

INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,104,1,1);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,104,1,2);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,104,1,3);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,104,1,4);
INSERT INTO LOCURI_SALI VALUES (locuri_sali_id_loc_seq.nextval,104,1,5);



INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Adam Ioana','0765432346');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Andrei Maria','0755798743');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Cobzaru Ana','0744327879');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Ichim Malina','0759146068');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Ionescu Marian','0788954231');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Manea Filip','0721346806');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Popescu Vlad','0733875321');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Rosca Andrei','0780895412');
INSERT INTO CLIENTI VALUES (clienti_id_client_seq.nextval,'Sandu Arina','0767743542');

INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'16-DEC-2020',200,1,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'16-DEC-2020',200,2,602);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'16-DEC-2020',200,3,603);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'16-DEC-2020',200,4,604);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'16-DEC-2020',200,5,605);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'17-DEC-2020',203,6,606);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'17-DEC-2020',203,7,606);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'17-DEC-2020',203,8,607);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'17-DEC-2020',203,9,608);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'18-DEC-2020',202,1,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'18-DEC-2020',202,2,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'18-DEC-2020',202,3,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'19-DEC-2020',206,11,603);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'19-DEC-2020',206,12,604);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',210,17,606);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',207,11,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',204,6,601);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',204,7,604);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',204,8,605);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'20-DEC-2020',204,9,609);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',205,6,602);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',205,7,602);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',207,12,602);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',207,13,603);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',207,14,604);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',207,15,605);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'21-DEC-2020',208,11,608);
INSERT INTO VANZARI_BILETE VALUES (vanzari_bilete_id_vanzare_seq.nextval,'22-DEC-2020',208,12,608);













