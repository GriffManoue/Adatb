-- general settings
-- ================
-- do not echo
set echo off
-- do not print substitution before/after text
set verify off
-- set date format
alter session set NLS_DATE_FORMAT='YYYY-MM-DD';
-- allow PL/SQL output
set serveroutput on
-- disable feedback, eg. anonymous block completed
set feedback off

-- saját objektum-eldobások (pl. saját táblák) ide

DROP TABLE KOLCSONZES;
DROP TABLE FILM;
DROP TABLE TAGOK;


prompt <tasks>

prompt <task n="2">
prompt <![CDATA[

-- 2-es feladat megoldása ide


-- film tabla letrehozasa
CREATE TABLE FILM (
    RENDEZO VARCHAR2(50 CHAR) NOT NULL,
    CIM VARCHAR2(50 CHAR) NOT NULL,
    MEGJELENES DATE NOT NULL,
    IDOTARTAM NUMBER(3) NOT NULL,
    KOLCSONZESI_DIJ NUMBER(3) DEFAULT 135 NOT NULL,
    AZON CHAR(7) NOT NULL,
    ADATHORDOZO VARCHAR2(7 CHAR) NOT NULL,
    MEGJEGYZES LONG,
    FILM_ID NUMBER(10) NOT NULL,
    
    CONSTRAINT FILM_ID_PK PRIMARY KEY (FILM_ID),
    CONSTRAINT AZON_UQ UNIQUE (AZON),
    CONSTRAINT IDOTARTAM_CK CHECK (IDOTARTAM >=15 AND IDOTARTAM <=270),
    CONSTRAINT KOLCSONZESI_DIJ_CK CHECK (KOLCSONZESI_DIJ >=50),
    CONSTRAINT ADATHORDOZO_CK CHECK (ADATHORDOZO IN ('DVD', 'Blu-ray')),
    CONSTRAINT MEGJELENES_CK CHECK (MEGJELENES >= '15-MAR-1848')
);


--tagok tabla letrehozasa
CREATE TABLE TAGOK(
    NEV VARCHAR2(50 CHAR) NOT NULL,
    TAGSAGI_KOD VARCHAR2(10 CHAR) NOT NULL,
    LAKCIM VARCHAR2(50 CHAR)  NOT NULL,
    SZULETESI_DATUM DATE NOT NULL,
    BELEPESI_IDO DATE DEFAULT SYSDATE NOT NULL,
    TAGSAGI_SZINT VARCHAR2(6 CHAR) NOT NULL,
    TAG_ID NUMBER(10) NOT NULL,

    CONSTRAINT TAG_ID_PK PRIMARY KEY (TAG_ID),
    CONSTRAINT TAGSAGI_KOD_UK UNIQUE (TAGSAGI_KOD),
    CONSTRAINT BELEPESI_IDO_CK CHECK (BELEPESI_IDO >= SZULETESI_DATUM),
    CONSTRAINT TAGSAGI_SZINT_CK CHECK (TAGSAGI_SZINT IN ('BASIC', 'SILVER', 'GOLD'))
);

--kolcsonzes tabla letrehozasa
CREATE TABLE KOLCSONZES (
    DIJKEDVEZMENY NUMBER(3) DEFAULT 0 NOT NULL,
    ELVITEL_DATUM DATE NOT NULL,
    VISSZAHOZATAL_DATUM DATE,
    FILM_ID NUMBER(10) NOT NULL,
    TAG_ID NUMBER(10) NOT NULL,
    KOLCSONZES_ID NUMBER(10) NOT NULL,
    
    CONSTRAINT DIJKEDVEZMENY_CK CHECK (DIJKEDVEZMENY >= 0 AND DIJKEDVEZMENY <= 100),
    CONSTRAINT VISSZA_DATUM_CK CHECK (VISSZAHOZATAL_DATUM > ELVITEL_DATUM),
    CONSTRAINT FILM_ID_FK FOREIGN KEY (FILM_ID) REFERENCES FILM (FILM_ID),
    CONSTRAINT TAG_ID_FK FOREIGN KEY (TAG_ID) REFERENCES TAGOK (TAG_ID),
    CONSTRAINT KOLCSONZES_ID_PK PRIMARY KEY (KOLCSONZES_ID)
);



prompt ]]>


prompt </task>
prompt </tasks>