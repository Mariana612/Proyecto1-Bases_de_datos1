
DROP sequence sProvince;

CREATE SEQUENCE sProvince
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;
 


INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'San Jose');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Alajuela');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Cartago');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Heredia');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Guanacaste');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Puntarenas');
INSERT INTO province(id, id_country, province_name) VALUES (sProvince.NEXTVAL, 8, 'Limon');

delete from canton;
drop sequence sCanton;

CREATE SEQUENCE sCanton
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;

INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'San José');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Escazú');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Desamparados');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Puriscal');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Tarrazú');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Aserrí');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Mora');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Goicoechea');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Santa Ana');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Alajuelita');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Vásquez de Coronado');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Acosta');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Tibás');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Moravia');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Montes de Oca');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Turrubares');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Dota');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Curridabat');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'Pérez Zeledón');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 1, 'León Cortés Castro');

INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Alajuela');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'San Ramón');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Grecia');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'San Mateo');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Atenas');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Naranjo');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Palmares');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Poás');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Orotina');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'San Carlos');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Zarcero');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Valverde Vega');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Upala');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Los Chiles');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Guatuso');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 2, 'Río Cuarto');


INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Cartago');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Paraíso');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'La Unión');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Jiménez');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Turrialba');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Alvarado');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'Oreamuno');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 3, 'El Guarco');

INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Heredia');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Barva');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Santo Domingo');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Santa Bárbara');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'San Rafael');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'San Isidro');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Belén');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Flores');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'San Pablo');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 4, 'Sarapiquí');

INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Liberia');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Nicoya');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Santa Cruz');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Bagaces');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Carrillo');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Cañas');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Abangares');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Tilarán');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Nandayure');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'La Cruz');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 5, 'Hojancha');

INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Puntarenas');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Esparza');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Buenos Aires');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Montes de Oro');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Osa');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Aguirre');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Golfito');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Coto Brus');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Parrita');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Corredores');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Garabito');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Monte Verde');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 6, 'Isla Chira');


INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Limón');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Pococí');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Siquirres');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Talamanca');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Matina');
INSERT INTO canton(id, id_province, canton_name) VALUES (sCanton.NEXTVAL, 7, 'Guácimo');

select * from province;
select * from canton order by id;



