--------------------------------------------------------
--  DDL for Table UDT_IGPERROR_STATS
--------------------------------------------------------

  CREATE TABLE "SCPOMGR"."UDT_IGPERROR_STATS" 
   (	"RUN_DATE" DATE, 
	"BOM" NUMBER, 
	"CAL" NUMBER, 
	"CALDATA" NUMBER, 
	"COST" NUMBER, 
	"COSTTIER" NUMBER, 
	"PRODMETHOD" NUMBER, 
	"PRODUCTIONSTEP" NUMBER, 
	"PRODYIELD" NUMBER, 
	"RES" NUMBER, 
	"RESCONSTRAINT" NUMBER, 
	"RESCOST" NUMBER, 
	"RESPENALTY" NUMBER, 
	"SKU" NUMBER, 
	"SKUDEMANDPARAM" NUMBER, 
	"SKUDEPLOYPARAM" NUMBER, 
	"SKUSSPARAM" NUMBER, 
	"SKUPLANNPARAM" NUMBER, 
	"SKUPENALTY" NUMBER, 
	"SOURCING" NUMBER, 
	"SOURCINGMETRIC" NUMBER, 
	"STORAGEREQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SCPODATA"
