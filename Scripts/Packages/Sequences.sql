CREATE SEQUENCE sPerson
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

CREATE SEQUENCE sContinent
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

CREATE SEQUENCE sCountry
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sProvince
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sCanton
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
 CREATE SEQUENCE sDistrict
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sTelephone
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sEmail
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sUser
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sUserPassword
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sPhotoStay
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sPhotoSleep
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sOtherPet
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sPhotoOP
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sUserType
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sAdoptionForm
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sStatus
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  CREATE SEQUENCE sPet
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sPetStatus
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sBreed
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sPetType
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  CREATE SEQUENCE sColor
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE sPetPhoto
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;
  
drop sequence sPerson;
drop sequence sContinent ;
drop sequence sCountry ;
drop sequence sProvince ;
drop sequence sCanton ;
drop sequence sDistrict ;
drop sequence sPet;
drop sequence sPetStatus;
drop sequence sBreed;
drop sequence sPetType;
drop sequence sColor;
drop sequence sPetPhoto;
