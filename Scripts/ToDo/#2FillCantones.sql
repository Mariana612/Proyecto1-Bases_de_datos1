--select * from canton order by id

drop sequence sDistrict;

 CREATE SEQUENCE sDistrict
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;


-- Cantón 1: San José
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 1, 'Carmen');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 1, 'Merced');

-- Cantón 2: Escazú
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 2, 'Escazú');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 2, 'San Antonio');

-- Cantón 3: Desamparados
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 3, 'Desamparados');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 3, 'San Miguel');

-- Cantón 4: Puriscal
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 4, 'Santiago');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 4, 'Mercedes Sur');

-- Cantón 5: Tarrazú
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 5, 'San Marcos');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 5, 'San Lorenzo');

-- Cantón 6: Aserrí
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 6, 'Aserrí');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 6, 'Tarbaca');

-- Cantón 7: Mora
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 7, 'Mora');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 7, 'Colón');

-- Cantón 8: Goicoechea
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 8, 'Goicoechea');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 8, 'San Francisco');

-- Cantón 9: Santa Ana
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 9, 'Santa Ana');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 9, 'Salitral');

-- Cantón 10: Alajuelita
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 10, 'Alajuelita');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 10, 'San Felipe');

-- Cantón 11: Vásquez de Coronado
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 11, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 11, 'San Rafael');

-- Cantón 12: Acosta
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 12, 'San Ignacio');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 12, 'Guaitil');

-- Cantón 13: Tibás
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 13, 'San Juan');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 13, 'Cinco Esquinas');

-- Cantón 14: Moravia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 14, 'San Vicente');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 14, 'San Jerónimo');

-- Cantón 15: Montes de Oca
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 15, 'San Pedro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 15, 'San Rafael');

-- Cantón 16: Turrubares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 16, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 16, 'San Pedro');

-- Cantón 17: Dota
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 17, 'Santa María');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 17, 'Jardín');

-- Cantón 18: Curridabat
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 18, 'Curridabat');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 18, 'Granadilla');

-- Cantón 19: Pérez Zeledón
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 19, 'San Isidro de El General');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 19, 'Daniel Flores');

-- Cantón 20: León Cortés Castro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 20, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 20, 'San Andrés');

-- Cantón 21: Alajuela
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 21, 'Alajuela');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 21, 'San José');

-- Cantón 22: San Ramón
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 22, 'San Ramón');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 22, 'Piedades Norte');

-- Cantón 23: Grecia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 23, 'Grecia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 23, 'San Isidro');

-- Cantón 24: San Mateo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 24, 'San Mateo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 24, 'Desmonte');

-- Cantón 25: Atenas
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 25, 'Atenas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 25, 'Jesús');

-- Cantón 26: Naranjo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 26, 'Naranjo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 26, 'San Miguel');

-- Cantón 27: Palmares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 27, 'Palmares');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 27, 'Zaragoza');

-- Cantón 28: Poás
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 28, 'San Pedro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 28, 'San Juan');

-- Cantón 29: Orotina
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 29, 'Orotina');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 29, 'Mastate');

-- Cantón 30: San Carlos
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 30, 'Quesada');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 30, 'Florencia');

-- Cantón 31: Zarcero
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 31, 'Zarcero');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 31, 'Laguna');

-- Cantón 32: Valverde Vega
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 32, 'Sarchí Norte');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 32, 'Sarchí Sur');

-- Cantón 33: Upala
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 33, 'Upala');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 33, 'Aguas Claras');

-- Cantón 34: Los Chiles
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 34, 'Los Chiles');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 34, 'El Amparo');

-- Cantón 35: Guatuso
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 35, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 35, 'Buenavista');

-- Cantón 36: Río Cuarto
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 36, 'Río Cuarto');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 36, 'Santa Isabel');

-- Cantón 37: Cartago
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 37, 'Cartago');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 37, 'Oriental');

-- Cantón 38: Paraíso
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 38, 'Paraíso');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 38, 'Santiago');

-- Cantón 39: La Unión
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 39, 'La Unión');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 39, 'Tres Ríos');

-- Cantón 40: Jiménez
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 40, 'Juan Viñas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 40, 'Tucurrique');

-- Cantón 41: Turrialba
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 41, 'Turrialba');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 41, 'La Suiza');

-- Cantón 42: Alvarado
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 42, 'Pacayas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 42, 'Cervantes');

-- Cantón 43: Oreamuno
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 43, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 43, 'Cot');

-- Cantón 44: El Guarco
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 44, 'El Tejar');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 44, 'San Isidro');

-- Cantón 45: Heredia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 45, 'Heredia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 45, 'Mercedes');

-- Cantón 46: Barva
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 46, 'Barva');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 46, 'San Pedro');

-- Cantón 47: Santo Domingo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 47, 'Santo Domingo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 47, 'San Vicente');

-- Cantón 48: Santa Bárbara
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 48, 'Santa Bárbara');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 48, 'San Pedro');

-- Cantón 49: San Rafael
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 49, 'San Rafael');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 49, 'San Josecito');

-- Cantón 50: San Isidro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 50, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 50, 'San José');

-- Cantón 51: Belén
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 51, 'San Antonio');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 51, 'Ribera');

-- Cantón 52: Flores
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 52, 'San Joaquín');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 52, 'Barrantes');

-- Cantón 53: San Pablo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 53, 'San Pablo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 53, 'Rincón');

-- Cantón 54: Sarapiquí
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 54, 'Puerto Viejo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 54, 'La Virgen');

-- Cantón 55: Liberia
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 55, 'Liberia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 55, 'Cañas Dulces');

-- Cantón 56: Nicoya
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 56, 'Nicoya');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 56, 'Mansión');

-- Cantón 57: Santa Cruz
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 57, 'Santa Cruz');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 57, 'Bolsón');

-- Cantón 58: Bagaces
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 58, 'Bagaces');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 58, 'La Fortuna');

-- Cantón 59: Carrillo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 59, 'Filadelfia');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 59, 'Palmira');

-- Cantón 60: Cañas
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 60, 'Cañas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 60, 'Bebedero');

-- Cantón 61: Abangares
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 61, 'Las Juntas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 61, 'Sierra');

-- Cantón 62: Tilarán
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 62, 'Tilarán');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 62, 'Quebrada Grande');

-- Cantón 63: Nandayure
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 63, 'Carmona');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 63, 'Santa Rita');

-- Cantón 64: La Cruz
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 64, 'La Cruz');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 64, 'Santa Cecilia');

-- Cantón 65: Hojancha
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 65, 'Hojancha');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 65, 'Monte Romo');

-- Cantón 66: Puntarenas
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 66, 'Puntarenas');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 66, 'Pitahaya');

-- Cantón 67: Esparza
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 67, 'Esparza');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 67, 'Caldera');

-- Cantón 68: Buenos Aires
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 68, 'Buenos Aires');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 68, 'Volcán');

-- Cantón 69: Montes de Oro
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 69, 'Miramar');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 69, 'Unión');

-- Cantón 70: Osa
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 70, 'Ciudad Cortés');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 70, 'Palmar');

-- Cantón 71: Aguirre
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 71, 'Quepos');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 71, 'Naranjito');

-- Cantón 72: Golfito
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 72, 'Golfito');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 72, 'Puerto Jiménez');

-- Cantón 73: Coto Brus
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 73, 'San Vito');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 73, 'Sabalito');

-- Cantón 74: Parrita
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 74, 'Parrita');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 74, 'Juntas');

-- Cantón 75: Corredores
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 75, 'Corredor');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 75, 'La Cuesta');

-- Cantón 76: Garabito
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 76, 'Jacó');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 76, 'Tárcoles');

-- Cantón 77: Monte Verde
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 77, 'Monteverde');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 77, 'Santa Elena');

-- Cantón 78: Isla Chira
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 78, 'San Isidro');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 78, 'San Francisco');

-- Cantón 79: Limón
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 79, 'Limón');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 79, 'Valle La Estrella');

-- Cantón 80: Pococí
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 80, 'Guápiles');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 80, 'Cariari');

-- Cantón 81: Siquirres
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 81, 'Siquirres');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 81, 'Pacuare');

-- Cantón 82: Talamanca
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 82, 'Bribri');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 82, 'Sixaola');

-- Cantón 83: Matina
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 83, 'Matina');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 83, 'Batán');

-- Cantón 84: Guácimo
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 84, 'Guácimo');
INSERT INTO district (id, id_canton, district_name) VALUES (sDistrict.NEXTVAL, 84, 'Mercedes');


  