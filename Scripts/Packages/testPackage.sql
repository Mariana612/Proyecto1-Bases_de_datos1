SET SERVEROUTPUT ON 
DECLARE 
  pcDistrictN     VARCHAR2(50) := 'SampleDistrict'; 
  pcCantonN       VARCHAR2(50) := 'SampleCanton'; 
  pcProvinceN     VARCHAR2(50) := 'SampleProvince'; 
  pcCountryN      VARCHAR2(50) := 'SampleCountry'; 
  pcContinentN    VARCHAR2(50) := 'SampleContinent'; 
  pcFirstN        VARCHAR2(50) := 'abcd'; 
  pcMiddleN       VARCHAR2(50) := 'Doe'; 
  pcFirstLastN    VARCHAR2(100) := 'JohnSmith'; 
  pcSecondLastN   VARCHAR2(100) := 'DoeJr'; 
  pcUserName   VARCHAR2(100) := 'abcdedasdas'; 
  pcPassword  VARCHAR2(100) := 'abcdedasdas'; 
BEGIN 
--Call the insertPerson procedure with sample data 
  createUser.insertPerson( 
    pcDistrictN, 
    pcCantonN, 
    pcProvinceN, 
    pcCountryN, 
    pcContinentN, 
    pcFirstN, 
    pcMiddleN, 
    pcFirstLastN, 
    pcSecondLastN, 
    pcUserName, 
    pcPassword 
  ); 
 

END; 
/ 
 
 
delete from personxdistrict; 
delete from user_password; 
delete from user_person; 
delete from person; 
delete from district; 
delete from canton; 
delete from province; 
delete from country; 
delete from continent; 
