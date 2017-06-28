--------------------------------------------------------
--  File created - Wednesday-June-28-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APPL_TBL
--------------------------------------------------------

  CREATE TABLE "BPT"."APPL_TBL" 
   (	"APPL_ID" VARCHAR2(20 BYTE), 
	"APPL_NAME" VARCHAR2(40 BYTE), 
	"LOC_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AT_EVENT_TBL
--------------------------------------------------------

  CREATE TABLE "BPT"."AT_EVENT_TBL" 
   (	"UUID" VARCHAR2(50 BYTE), 
	"READER" VARCHAR2(50 BYTE), 
	"ANTENNA" VARCHAR2(50 BYTE), 
	"READ_TIME" NUMBER, 
	"LOC_ID" VARCHAR2(50 BYTE), 
	"PREV_READ_TIME" NUMBER, 
	"PREV_LOC_ID" VARCHAR2(50 BYTE), 
	"STATUS" VARCHAR2(50 BYTE), 
	"DURATION" NUMBER, 
	"READ_DATE" DATE, 
	"PREV_READ_DATE" DATE, 
	"SEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOCATION_TBL
--------------------------------------------------------

  CREATE TABLE "BPT"."LOCATION_TBL" 
   (	"LOC_ID" VARCHAR2(50 BYTE), 
	"LOC_NAME" VARCHAR2(50 BYTE), 
	"LOC_TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERSON_TBL
--------------------------------------------------------

  CREATE TABLE "BPT"."PERSON_TBL" 
   (	"P_ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"COMPANY" VARCHAR2(40 BYTE), 
	"EMAILID" VARCHAR2(40 BYTE), 
	"BASE_LOC_ID" VARCHAR2(20 BYTE), 
	"LOC_ID" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(20 BYTE), 
	"READ_TIME" NUMBER, 
	"READ_DATE" DATE, 
	"PHONE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TAG_TBL
--------------------------------------------------------

  CREATE TABLE "BPT"."TAG_TBL" 
   (	"UUID" VARCHAR2(40 BYTE), 
	"TYPE" VARCHAR2(20 BYTE), 
	"P_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence EVENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BPT"."EVENTS_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999 INCREMENT BY 1 START WITH 54 NOCACHE  ORDER  NOCYCLE ;
REM INSERTING into BPT.APPL_TBL
SET DEFINE OFF;
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader11','Reader 1,antenna 1','ZONE1');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader14','Reader 1,antenna 4','ZONE4');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader21','Reader 2,antenna 1','ZONE5');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader22','Reader 2,antenna 2','ZONE6');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader23','Reader 2,antenna 3','ZONE7');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader24','Reader 2,antenna 4','ZONE8');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader12','Reader 1,antenna 2','ZONE2');
Insert into BPT.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('Reader13','Reader 1,antenna 3','ZONE3');
REM INSERTING into BPT.AT_EVENT_TBL
SET DEFINE OFF;
REM INSERTING into BPT.LOCATION_TBL
SET DEFINE OFF;
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE1','ZONE1','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE2','ZONE2','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE3','ZONE3','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE4','ZONE4','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE5','ZONE5','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE6','ZONE6','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE7','ZONE7','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('ZONE8','ZONE8','STALL');
Insert into BPT.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('Event hall','Event hall','Event hall');
REM INSERTING into BPT.PERSON_TBL
SET DEFINE OFF;
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('1','JACOB','RBEI','jacob7@bosch.in','Event hall','ZONE1','Location',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'8876543232');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('2','ALICE','RBEI','alice@bosch.in','Event hall','ZONE1','Location',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'9685245696');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('3','EVA','RBEI','evamathew@bosch.in','Event hall','ZONE2','Inventory',1490333707301,to_date('13-MAR-17','DD-MON-RR'),'8845695741');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('4','JOSEPH','CERNER','joshiphine@cerner.in','Event hall','ZONE3','Inventory',1489729909842,to_date('13-MAR-17','DD-MON-RR'),'9654785123');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('5','PETER','CERNER','peterson@cerner.in','Event hall','ZONE4','Inventory',1489385578321,to_date('13-MAR-17','DD-MON-RR'),'8569574231');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('6','CLARA','TEXAS INSTRUMENTS','clara@texas.in','Event hall','ZONE5','Inventory',1489729909842,to_date('13-MAR-17','DD-MON-RR'),'9965874152');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('7','LYNDA','TEXAS INSTRUMENTS','lynda@texasistrument.in','Event hall','ZONE6','Transit',1490331027301,to_date('13-MAR-17','DD-MON-RR'),'9685763451');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('8','YELLOBY','SABRE','yelloby@sabre.in','Event hall','ZONE7','Inventory',1489404207731,to_date('13-MAR-17','DD-MON-RR'),'9875632145');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('9','JOSHUA','SABRE','joshua@sabre.in','Event hall','ZONE8','Inventory',1489384244252,to_date('13-MAR-17','DD-MON-RR'),'9865247631');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('10','ANDREW','J K TECHNOSOFT','andrew@gmail.com','Event hall','ZONE5','Location',1490331394357,to_date('13-MAR-17','DD-MON-RR'),'8897888978');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('11','CURIE','LOGIXTIC TECHNOLOGIES','curie@logixtic.in','Event hall','ZONE6','Location',1490331394357,to_date('13-MAR-17','DD-MON-RR'),'8564654963');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('12','AMY','HCL','amywatson@hcl.in','Event hall','ZONE7','Location',1490331394357,to_date('13-MAR-17','DD-MON-RR'),'8654712369');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('13','MATHEW','HCL','mathew_moni@hcl.in','Event hall','ZONE8','Location',1490331394357,to_date('13-MAR-17','DD-MON-RR'),'9822455656');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('14','JACKSON','INFORMATICA','jackson@informatica.in','Event hall','ZONE7','Location',1489726706348,to_date('13-MAR-17','DD-MON-RR'),'9933562547');
Insert into BPT.PERSON_TBL (P_ID,NAME,COMPANY,EMAILID,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,PHONE) values ('15','ANTONY','WALLMART','antony@wallmart.in','Event hall','ZONE8','Location',1490268210294,to_date('14-MAR-17','DD-MON-RR'),'8050422698');
REM INSERTING into BPT.TAG_TBL
SET DEFINE OFF;
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 0627','RFID','1');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('ABE1 3606 0000 0000 0000 0000 ','RFID','2');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 0618','RFID','3');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06202','RFID','4');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06191','RFID','5');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06213','RFID','6');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06224','RFID','7');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06235','RFID','8');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06246','RFID','9');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 0619122','RFID','10');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06213411','RFID','11');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 062242','RFID','12');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 0619122','RFID','13');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('ABE1 3606 0000 0000 0000 00002 ','RFID','14');
Insert into BPT.TAG_TBL (UUID,TYPE,P_ID) values ('E200 4000 8409 0060 0970 06183','RFID','15');
--------------------------------------------------------
--  DDL for Index ITEM_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BPT"."ITEM_TBL_PK" ON "BPT"."PERSON_TBL" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TAG_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BPT"."TAG_TBL_PK" ON "BPT"."TAG_TBL" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger BEFORE_EVENT_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BPT"."BEFORE_EVENT_INSERT" BEFORE
  INSERT ON AT_EVENT_TBL FOR EACH ROW DECLARE
    -- variable declarations
    v_loc_id       VARCHAR2(20);
  v_prev_loc_id    VARCHAR2(10);
  v_prev_read_time NUMBER;
  v_prev_read_date DATE;
  v_read_date      DATE;
  v_item_id        VARCHAR2(20);
  v_base_loc_id    VARCHAR2(10);
  v_event_status   VARCHAR2(10);
  v_item_status    VARCHAR2(10);
  v_prev_status    VARCHAR2(10);
  BEGIN
    --Get the current Read Date from the Read Time in Millsecond
    BEGIN
      SELECT TO_DATE('197001','YYYYMM') + (:new.READ_TIME / 1000 / 60 / 60 / 24)
      INTO v_read_date
      FROM DUAL;
    END;
    /*************************************************************/
    --Find the current location based on the reader ID
    BEGIN
      SELECT LOC_ID
      INTO v_loc_id
      FROM APPL_TBL
      WHERE APPL_ID = :new.READER
        ||:new.ANTENNA ;
    END;
    /*************************************************************/
    --Find the prev read location and time for the Item
    BEGIN
      SELECT A.ITEM_ID,
        A.LOC_ID,
        A.READ_TIME,
        A.READ_DATE,
        A.STATUS,
        A.BASE_LOC_ID
      INTO v_item_id,
        v_prev_loc_id,
        v_prev_read_time,
        v_prev_read_date,
        v_prev_status,
        v_base_loc_id
      FROM ITEM_TBL A,
        TAG_TBL B
      WHERE B.UUID =:new.UUID
      AND A.ITEM_ID=B.ITEM_ID;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_loc_id    := v_loc_id;
      v_prev_read_time := :new.READ_TIME;
      v_prev_read_date := v_read_date;
    END;
    /*************************************************************/
    --Determine the status of the event as entry or exit
    BEGIN
      IF v_prev_loc_id   = v_loc_id THEN
        IF v_prev_status ='Transit' THEN
          v_event_status:='Entry';
        ELSE
          v_event_status:='Exit';
          v_item_status :='Transit';
        END IF;
      ELSE
        v_event_status:='Entry';
      END IF;
      --Set Item Status as Warehouse or Deployed if not in transit based on base location
      IF v_item_status  IS NULL THEN
        IF v_loc_id      = v_base_loc_id THEN
          v_item_status := 'Inventory';
        ELSE
          v_item_status := 'Location';
        END IF;
      END IF;
    END;
    /*************************************************************/
    --Update the Item Table for the latest reading values before updating the event table
    BEGIN
      dbms_output.put_line(v_item_id);
      UPDATE ITEM_TBL
      SET LOC_ID    = v_loc_id,
        STATUS      = v_item_status,
        READ_TIME   = :new.READ_TIME,
        READ_DATE   = v_read_date
      WHERE ITEM_ID = v_item_id;
    END;
    /*************************************************************/
    --Get the sequence number
    BEGIN
      IF :new.SEQ IS NULL THEN
        SELECT EVENTS_SEQ.NEXTVAL INTO :new.SEQ FROM dual;
      END IF;
    END;
    /*************************************************************/
    --Assign the new values for insert
    :new.LOC_ID         := v_loc_id;
    :new.PREV_READ_TIME := v_prev_read_time;
    :new.PREV_LOC_ID    := v_prev_loc_id;
    :new.STATUS         := v_event_status;
    :new.DURATION       := ROUND((:new.READ_TIME - v_prev_read_time)/(1000*60),1);
    :new.READ_DATE      := v_read_date;
    :new.PREV_READ_DATE := v_prev_read_date;
    /*************************************************************/
  END;
/
ALTER TRIGGER "BPT"."BEFORE_EVENT_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Procedure BEFORE_EVENT_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BPT"."BEFORE_EVENT_INSERT" AS 
    -- variable declarations
  v_loc_id       VARCHAR2(20);
  v_prev_loc_id    VARCHAR2(10);
  v_prev_read_time NUMBER;
  v_prev_read_date DATE;
  v_read_date      DATE;
  v_item_id        VARCHAR2(20);
  v_base_loc_id    VARCHAR2(10);
  v_event_status   VARCHAR2(10);
  v_item_status    VARCHAR2(10);
  BEGIN
    BEGIN
      --Get the current Read Date from the Read Time in Millseconds
      BEGIN
        SELECT TO_DATE('197001','YYYYMM') + (:new.READ_TIME / 1000 / 60 / 60 / 24)
        INTO v_read_date
        FROM DUAL
      END;
    /*************************************************************/
    --Find the current location based on the reader ID
    BEGIN
      SELECT LOC_ID
      INTO v_loc_id
      FROM APPL_TBL
      WHERE APPL_ID = :new.READER
        ||:new.ANTENNA ;
    END;
    /*************************************************************/
    --Find the prev read location and time for the Item
    BEGIN
      SELECT ITEM_ID,
        LOC_ID,
        READ_TIME,
        READ_DATE,
        STATUS,
        BASE_LOC_ID
      INTO v_item_id,
        v_prev_loc_id,
        v_prev_read_time,
        v_prev_read_date,
        v_prev_status,
        v_base_loc_id
      FROM ITEM_TBL A,
        TAG_TBL B
      WHERE B.UUID =:new.UUID
      AND a.ITEM_ID=B.ITEM_ID;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_loc_id    := v_loc_id;
      v_prev_read_time := :new.READ_TIME;
      v_prev_read_date := v_read_date;
    END;
    /*************************************************************/
    --Determine the status of the event as entry or exit
    BEGIN
      IF v_prev_loc_id   = v_loc_id THEN
        IF v_prev_status ='Transit' THEN
          v_event_status:='Entry';
        ELSE
          v_event_status:='Exit';
          v_item_status :='Transit';
        END IF;
      ELSE
        v_event_status:='Entry';
      END IF;
      --Set Item Status as Warehouse or Deployed if not in transit based on base location
      IF v_item_status  != 'Transit' THEN
        IF v_loc_id      = v_base_loc_id THEN
          v_item_status := 'Warehouse';
        ELSE
          v_item_status := 'Deployed';
        END IF;
      END IF;
    END;
    /*************************************************************/
    --Update the Item Table for the latest reading values before updating the event table
    BEGIN
      UPDATE ITEM_TBL
      SET LOC_ID    = v_loc_id,
        STATUS      = v_item_status,
        READ_TIME   = :new.READ_TIME,
        READ_DATE   = v_read_date
      WHERE ITEM_ID = v_item_id;
    END;
    /*************************************************************/
    --Assign the new values for insert

      :new.LOC_ID         := v_loc_id;
      :new.PREV_READ_TIME := v_prev_read_time;
      :new.PREV_LOC_ID    := v_prev_loc_id;
      :new.STATUS         := v_event_status;
      :new.DURATION       := (v_prev_read_time - :new.READ_TIME)/(1000*60);
      :new.READ_DATE      := v_read_date;
      :new.PREV_READ_DATE := v_prev_read_date;
  
    /*************************************************************/
  END

/
--------------------------------------------------------
--  Constraints for Table PERSON_TBL
--------------------------------------------------------

  ALTER TABLE "BPT"."PERSON_TBL" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "BPT"."PERSON_TBL" ADD CONSTRAINT "ITEM_TBL_PK" PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAG_TBL
--------------------------------------------------------

  ALTER TABLE "BPT"."TAG_TBL" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TAG_TBL
--------------------------------------------------------

  ALTER TABLE "BPT"."TAG_TBL" ADD CONSTRAINT "TAG_TBL_FK1" FOREIGN KEY ("P_ID")
	  REFERENCES "BPT"."PERSON_TBL" ("P_ID") ENABLE;
