
  CREATE TABLE "REFERENCIA"."TPRY_OBRAS_PROVEEDOR" 
   (	"IDPROVEEDOR" NUMBER NOT NULL ENABLE, 
	"IDTIPOOBRA" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "FK001_TPRY_OBRAS" FOREIGN KEY ("IDPROVEEDOR")
	  REFERENCES "REFERENCIA"."TGEN_TIPO_OBRA" ("IDOBRA") ENABLE, 
	 CONSTRAINT "FK002_TPRY_PROVEEDOR" FOREIGN KEY ("IDPROVEEDOR")
	  REFERENCES "REFERENCIA"."TPRY_PROVEEDORES" ("IDPROVEEDOR") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
