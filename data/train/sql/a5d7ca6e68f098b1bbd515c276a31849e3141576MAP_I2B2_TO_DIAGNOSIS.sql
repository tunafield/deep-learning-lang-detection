CREATE TABLE PCORI_CDMV3.DIAGNOSIS
(
  DIAGNOSIS_ID VARCHAR2(200),  /*NEW COLUMN*/
  PATID VARCHAR2(50),
  ENCOUNTERID VARCHAR2(50),
  ENC_TYPE VARCHAR2(50),
  ADMIT_DATE VARCHAR2(50),
  PROVIDERID VARCHAR2(50),
  DX VARCHAR2(500),
  DX_TYPE VARCHAR2(50),
  DX_SOURCE VARCHAR2(50),
  PDX VARCHAR2(50),
  RAW_DX VARCHAR2(500),
  RAW_DX_TYPE VARCHAR2(50),
  RAW_DX_SOURCE VARCHAR2(50),
  RAW_PDX VARCHAR2(50)
);

INSERT  /*+ APPEND NOLOGGING */ INTO PCORI_CDMV3.DIAGNOSIS
  SELECT DISTINCT 
    NULL,
    patient_num, encounter_num, 'OT', null, null, concept_cd, '09',
    'OT', 'OT', CONCEPT_CD, '09', 'OT', 'OT' 
  FROM observation_fact 
  WHERE sourcesystem_cd LIKE 'ICD9%';