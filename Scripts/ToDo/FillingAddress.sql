



--1
DELETE FROM user_password;
DELETE FROM user_type;

--2
DELETE FROM user_person;

--3 
DELETE FROM email;

--4
DELETE FROM person;

--5 
DELETE FROM district;
DELETE FROM canton; 
delete from province; 
delete from country;
delete from continent;

--6
drop sequence sContinent;

CREATE SEQUENCE sContinent
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 100
  NOCACHE
  NOCYCLE;

INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'North America');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'South America');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'Europe');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'Africa');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'Asia');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'Oceania');
INSERT INTO continent(id, continent_name) VALUES (sContinent.NEXTVAL, 'Antartica');

select * from continent order by id;

--7
drop sequence sCountry;

CREATE SEQUENCE sCountry
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;

-- Assuming you have a sequence named sCountry to generate unique IDs.

INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Canada');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'United States');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Mexico');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Guatemala');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Belize');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'El Salvador');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Honduras');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Costa Rica');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Nicaragua');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Panama');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Bahamas');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Cuba');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Jamaica');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Haiti');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Dominican Republic');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Puerto Rico');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Barbados');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Saint Kitts and Nevis');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Antigua and Barbuda');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Dominica');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Saint Lucia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Saint Vincent and Grenadines');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 1, 'Grenada');

INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Argentina');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Bolivia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Brazil');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Chile');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Colombia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Ecuador');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Guyana');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Paraguay');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Peru');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Suriname');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Uruguay');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 2, 'Venezuela');


INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Albania');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Andorra');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Austria');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Belarus');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Belgium');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Bosnia and H.');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Bulgaria');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Croatia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Cyprus');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Czech Rep.');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Denmark');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Estonia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Finland');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'France');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Germany');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Greece');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Hungary');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Iceland');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Ireland');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Italy');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Latvia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Liechtenstein');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Lithuania');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Luxembourg');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Malta');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Moldova');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Monaco');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Montenegro');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Netherlands');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'N. Macedonia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Norway');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Poland');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Portugal');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Romania');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Russia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'San Marino');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Serbia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Slovakia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Slovenia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Spain');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Sweden');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Switzerland');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'Ukraine');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 3, 'United Kingdom');


INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Algeria');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Angola');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Benin');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Botswana');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Cameroon');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Chad');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Cote dIvoire');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Egypt');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Eritrea');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 4, 'Ethiopia');


INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Afghanistan');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Bahrain');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Bangladesh');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'China');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'India');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Indonesia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Iran');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Iraq');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Israel');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 5, 'Japan');


INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Australia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Fiji');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Kiribati');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Marshall I.');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Micronesia');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Nauru');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'New Zealand');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Palau');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'PapuaN.Guinea');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Samoa');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Solomon I.');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Tonga');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Tuvalu');
INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 6, 'Vanuatu');


INSERT INTO country(id, id_continent, country_name) VALUES(sCountry.NEXTVAL, 7, 'Antartica');






select * from country order by id;

