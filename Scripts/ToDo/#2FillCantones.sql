--select * from canton order by id

drop sequence sDistrict;

 CREATE SEQUENCE sDistrict
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;


-- Cant�n 1: San Jos�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 1, 'Carmen');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 1, 'Merced');

-- Cant�n 2: Escaz�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 2, 'Escaz�');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 2, 'San Antonio');

-- Cant�n 3: Desamparados
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 3, 'Desamparados');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 3, 'San Miguel');

-- Cant�n 4: Puriscal
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 4, 'Santiago');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 4, 'Mercedes Sur');

-- Cant�n 5: Tarraz�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 5, 'San Marcos');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 5, 'San Lorenzo');

-- Cant�n 6: Aserr�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 6, 'Aserr�');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 6, 'Tarbaca');

-- Cant�n 7: Mora
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 7, 'Mora');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 7, 'Col�n');

-- Cant�n 8: Goicoechea
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 8, 'Goicoechea');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 8, 'San Francisco');

-- Cant�n 9: Santa Ana
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 9, 'Santa Ana');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 9, 'Salitral');

-- Cant�n 10: Alajuelita
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 10, 'Alajuelita');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 10, 'San Felipe');

-- Cant�n 11: V�squez de Coronado
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 11, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 11, 'San Rafael');

-- Cant�n 12: Acosta
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 12, 'San Ignacio');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 12, 'Guaitil');

-- Cant�n 13: Tib�s
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 13, 'San Juan');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 13, 'Cinco Esquinas');

-- Cant�n 14: Moravia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 14, 'San Vicente');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 14, 'San Jer�nimo');

-- Cant�n 15: Montes de Oca
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 15, 'San Pedro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 15, 'San Rafael');

-- Cant�n 16: Turrubares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 16, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 16, 'San Pedro');

-- Cant�n 17: Dota
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 17, 'Santa Mar�a');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 17, 'Jard�n');

-- Cant�n 18: Curridabat
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 18, 'Curridabat');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 18, 'Granadilla');

-- Cant�n 19: P�rez Zeled�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 19, 'San Isidro de El General');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 19, 'Daniel Flores');

-- Cant�n 20: Le�n Cort�s Castro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 20, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 20, 'San Andr�s');

-- Cant�n 21: Alajuela
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 21, 'Alajuela');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 21, 'San Jos�');

-- Cant�n 22: San Ram�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 22, 'San Ram�n');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 22, 'Piedades Norte');

-- Cant�n 23: Grecia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 23, 'Grecia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 23, 'San Isidro');

-- Cant�n 24: San Mateo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 24, 'San Mateo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 24, 'Desmonte');

-- Cant�n 25: Atenas
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 25, 'Atenas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 25, 'Jes�s');

-- Cant�n 26: Naranjo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 26, 'Naranjo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 26, 'San Miguel');

-- Cant�n 27: Palmares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 27, 'Palmares');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 27, 'Zaragoza');

-- Cant�n 28: Po�s
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 28, 'San Pedro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 28, 'San Juan');

-- Cant�n 29: Orotina
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 29, 'Orotina');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 29, 'Mastate');

-- Cant�n 30: San Carlos
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 30, 'Quesada');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 30, 'Florencia');

-- Cant�n 31: Zarcero
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 31, 'Zarcero');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 31, 'Laguna');

-- Cant�n 32: Valverde Vega
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 32, 'Sarch� Norte');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 32, 'Sarch� Sur');

-- Cant�n 33: Upala
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 33, 'Upala');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 33, 'Aguas Claras');

-- Cant�n 34: Los Chiles
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 34, 'Los Chiles');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 34, 'El Amparo');

-- Cant�n 35: Guatuso
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 35, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 35, 'Buenavista');

-- Cant�n 36: R�o Cuarto
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 36, 'R�o Cuarto');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 36, 'Santa Isabel');

-- Cant�n 37: Cartago
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 37, 'Cartago');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 37, 'Oriental');

-- Cant�n 38: Para�so
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 38, 'Para�so');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 38, 'Santiago');

-- Cant�n 39: La Uni�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 39, 'La Uni�n');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 39, 'Tres R�os');

-- Cant�n 40: Jim�nez
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 40, 'Juan Vi�as');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 40, 'Tucurrique');

-- Cant�n 41: Turrialba
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 41, 'Turrialba');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 41, 'La Suiza');

-- Cant�n 42: Alvarado
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 42, 'Pacayas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 42, 'Cervantes');

-- Cant�n 43: Oreamuno
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 43, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 43, 'Cot');

-- Cant�n 44: El Guarco
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 44, 'El Tejar');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 44, 'San Isidro');

-- Cant�n 45: Heredia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 45, 'Heredia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 45, 'Mercedes');

-- Cant�n 46: Barva
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 46, 'Barva');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 46, 'San Pedro');

-- Cant�n 47: Santo Domingo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 47, 'Santo Domingo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 47, 'San Vicente');

-- Cant�n 48: Santa B�rbara
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 48, 'Santa B�rbara');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 48, 'San Pedro');

-- Cant�n 49: San Rafael
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 49, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 49, 'San Josecito');

-- Cant�n 50: San Isidro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 50, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 50, 'San Jos�');

-- Cant�n 51: Bel�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 51, 'San Antonio');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 51, 'Ribera');

-- Cant�n 52: Flores
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 52, 'San Joaqu�n');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 52, 'Barrantes');

-- Cant�n 53: San Pablo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 53, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 53, 'Rinc�n');

-- Cant�n 54: Sarapiqu�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 54, 'Puerto Viejo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 54, 'La Virgen');

-- Cant�n 55: Liberia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 55, 'Liberia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 55, 'Ca�as Dulces');

-- Cant�n 56: Nicoya
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 56, 'Nicoya');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 56, 'Mansi�n');

-- Cant�n 57: Santa Cruz
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 57, 'Santa Cruz');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 57, 'Bols�n');

-- Cant�n 58: Bagaces
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 58, 'Bagaces');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 58, 'La Fortuna');

-- Cant�n 59: Carrillo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 59, 'Filadelfia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 59, 'Palmira');

-- Cant�n 60: Ca�as
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 60, 'Ca�as');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 60, 'Bebedero');

-- Cant�n 61: Abangares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 61, 'Las Juntas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 61, 'Sierra');

-- Cant�n 62: Tilar�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 62, 'Tilar�n');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 62, 'Quebrada Grande');

-- Cant�n 63: Nandayure
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 63, 'Carmona');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 63, 'Santa Rita');

-- Cant�n 64: La Cruz
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 64, 'La Cruz');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 64, 'Santa Cecilia');

-- Cant�n 65: Hojancha
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 65, 'Hojancha');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 65, 'Monte Romo');

-- Cant�n 66: Puntarenas
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 66, 'Puntarenas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 66, 'Pitahaya');

-- Cant�n 67: Esparza
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 67, 'Esparza');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 67, 'Caldera');

-- Cant�n 68: Buenos Aires
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 68, 'Buenos Aires');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 68, 'Volc�n');

-- Cant�n 69: Montes de Oro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 69, 'Miramar');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 69, 'Uni�n');

-- Cant�n 70: Osa
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 70, 'Ciudad Cort�s');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 70, 'Palmar');

-- Cant�n 71: Aguirre
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 71, 'Quepos');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 71, 'Naranjito');

-- Cant�n 72: Golfito
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 72, 'Golfito');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 72, 'Puerto Jim�nez');

-- Cant�n 73: Coto Brus
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 73, 'San Vito');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 73, 'Sabalito');

-- Cant�n 74: Parrita
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 74, 'Parrita');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 74, 'Juntas');

-- Cant�n 75: Corredores
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 75, 'Corredor');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 75, 'La Cuesta');

-- Cant�n 76: Garabito
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 76, 'Jac�');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 76, 'T�rcoles');

-- Cant�n 77: Monte Verde
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 77, 'Monteverde');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 77, 'Santa Elena');

-- Cant�n 78: Isla Chira
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 78, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 78, 'San Francisco');

-- Cant�n 79: Lim�n
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 79, 'Lim�n');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 79, 'Valle La Estrella');

-- Cant�n 80: Pococ�
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 80, 'Gu�piles');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 80, 'Cariari');

-- Cant�n 81: Siquirres
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 81, 'Siquirres');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 81, 'Pacuare');

-- Cant�n 82: Talamanca
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 82, 'Bribri');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 82, 'Sixaola');

-- Cant�n 83: Matina
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 83, 'Matina');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 83, 'Bat�n');

-- Cant�n 84: Gu�cimo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 84, 'Gu�cimo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 84, 'Mercedes');


  