  CREATE SEQUENCE sBlacklist
  START WITH 000000
  INCREMENT BY 1
  MINVALUE 000000
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 
  
  
ALTER TABLE black_list ADD created_by VARCHAR(30);
ALTER TABLE black_list ADD created_date DATE;
ALTER TABLE black_list ADD updated_by VARCHAR2(30);
ALTER TABLE black_list ADD updated_date DATE;

CREATE OR REPLACE TRIGGER pr1.beforeInsertBlacklist
BEFORE INSERT 
ON pr1.black_list 
FOR EACH ROW 
BEGIN
    :new.created_by := USER;
    :new.created_date := SYSDATE;
END beforeInsertBlackList;