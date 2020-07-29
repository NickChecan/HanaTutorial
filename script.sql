-- DDL

CREATE SCHEMA TUTORIAL_1;

CREATE COLUMN TABLE TUTORIAL_1.MARA (
	MATNR VARCHAR(18) PRIMARY KEY,
	MTART VARCHAR(4),
	PRICE DOUBLE
);

CREATE COLUMN TABLE TUTORIAL_1.MARA (
	MATNR VARCHAR(18),
	MTART VARCHAR(4),
	PRICE DOUBLE,
	CONSTRAINT MARA_PK PRIMARY KEY (MATNR)
);

-- Create material description table
CREATE COLUMN TABLE TUTORIAL_1.MAKT (
	MATNR VARCHAR(18),
	SPRAS VARCHAR(2) COMMENT 'System Language',
	MAKTX VARCHAR(100),
	CONSTRAINT MAKT_PK PRIMARY KEY (MATNR, SPRAS),
	CONSTRAINT MAKT_FK FOREIGN KEY (MATNR) REFERENCES TUTORIAL_1.MARA (MATNR)
);

DROP TABLE TUTORIAL_1.MARA;
DROP TABLE TUTORIAL_1.MAKT;

ALTER TABLE TUTORIAL_1.MAKT DROP CONSTRAINT MAKT_FK;

-- DML

INSERT INTO TUTORIAL_1.MARA VALUES ('000000000000000100', 'FERT', 2.00);
INSERT INTO TUTORIAL_1.MARA (MATNR) VALUES ('000000000000000200');

INSERT INTO TUTORIAL_1.MAKT VALUES ('000000000000000100', 'EN', 'English text');
INSERT INTO TUTORIAL_1.MAKT VALUES ('000000000000000100', 'PT', 'Texto em português');

INSERT INTO TUTORIAL_1.MAKT VALUES ('000000000000000400', 'EN', 'English text');
