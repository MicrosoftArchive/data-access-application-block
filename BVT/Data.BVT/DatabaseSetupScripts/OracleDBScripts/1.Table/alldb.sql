
CREATE TABLE COUNTRY
(
  COUNTRYCODE  VARCHAR2(5 BYTE)                 NOT NULL,
  COUNTRYNAME  VARCHAR2(30 BYTE)                NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


CREATE UNIQUE INDEX COUNTRY_PK ON COUNTRY
(COUNTRYCODE)
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


ALTER TABLE COUNTRY ADD (
  CONSTRAINT COUNTRY_PK
 PRIMARY KEY
 (COUNTRYCODE)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       2147483645
                PCTINCREASE      0
               ));



CREATE TABLE CUSTOMERS
(
  CUSTOMERID    VARCHAR2(5 BYTE)                NOT NULL,
  COMPANYNAME   VARCHAR2(40 BYTE)               NOT NULL,
  CONTACTNAME   VARCHAR2(30 BYTE),
  CONTACTTITLE  VARCHAR2(30 BYTE),
  ADDRESS       VARCHAR2(60 BYTE),
  CITY          VARCHAR2(15 BYTE),
  REGION        VARCHAR2(15 BYTE),
  POSTALCODE    VARCHAR2(10 BYTE),
  COUNTRY       VARCHAR2(15 BYTE),
  PHONE         VARCHAR2(24 BYTE),
  FAX           VARCHAR2(24 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


CREATE UNIQUE INDEX PK_CUSTOMERID ON CUSTOMERS
(CUSTOMERID)
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


ALTER TABLE CUSTOMERS ADD (
  CONSTRAINT PK_CUSTOMERID
 PRIMARY KEY
 (CUSTOMERID)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       2147483645
                PCTINCREASE      0
               ));



CREATE TABLE DEBITS
(
  DEBITID    INTEGER,
  ACCOUNTID  CHAR(20 BYTE)                      NOT NULL,
  AMOUNT     INTEGER                            NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


CREATE UNIQUE INDEX DEBITS_PK ON DEBITS
(DEBITID)
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


ALTER TABLE DEBITS ADD (
  CONSTRAINT DEBITS_PK
 PRIMARY KEY
 (DEBITID)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       2147483645
                PCTINCREASE      0
               ));



CREATE TABLE EMPLOYEES
(
  EMPLOYEEID       INTEGER                      NOT NULL,
  LASTNAME         VARCHAR2(20 BYTE)            NOT NULL,
  FIRSTNAME        VARCHAR2(10 BYTE)            NOT NULL,
  TITLE            VARCHAR2(30 BYTE),
  TITLEOFCOURTESY  VARCHAR2(25 BYTE),
  BIRTHDATE        DATE,
  HIREDATE         DATE,
  ADDRESS          VARCHAR2(60 BYTE),
  CITY             VARCHAR2(15 BYTE),
  REGION           VARCHAR2(15 BYTE),
  POSTALCODE       VARCHAR2(10 BYTE),
  COUNTRY          VARCHAR2(15 BYTE),
  HOMEPHONE        VARCHAR2(24 BYTE),
  EXTENSION        VARCHAR2(4 BYTE),
  REPORTSTO        INTEGER,
  AGE              INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


CREATE UNIQUE INDEX PK_EMPLOYEEID ON EMPLOYEES
(EMPLOYEEID)
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


ALTER TABLE EMPLOYEES ADD (
  CONSTRAINT PK_EMPLOYEEID
 PRIMARY KEY
 (EMPLOYEEID)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       2147483645
                PCTINCREASE      0
               ));


ALTER TABLE EMPLOYEES ADD (
  CONSTRAINT FK_EMPLOYEES_EMPLOYEEID 
 FOREIGN KEY (REPORTSTO) 
 REFERENCES EMPLOYEES (EMPLOYEEID));





CREATE TABLE PRODUCTS
(
  PRODUCTID    INTEGER,
  PRODUCTNAME  VARCHAR2(50 BYTE),
  CATEGORYID   INTEGER,
  UNITPRICE    INTEGER                          NOT NULL,
  LASTUPDATE   DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


CREATE UNIQUE INDEX PRODUCTS_KEY ON PRODUCTS
(PRODUCTID)
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


ALTER TABLE PRODUCTS ADD (
  CONSTRAINT PRODUCTS_KEY
 PRIMARY KEY
 (PRODUCTID)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       2147483645
                PCTINCREASE      0
               ));



CREATE TABLE SIMPLEDATATYPE
(
  COL1   VARCHAR2(20 BYTE),
  COL2   CHAR(20 BYTE),
  COL3   NUMBER,
  COL4   INTEGER,
  COL5   DATE,
  COL6   LONG,
  COL7   RAW(10),
  COL8   NVARCHAR2(10),
  COL9   NCHAR(10),
  COL10  FLOAT(126),
  COL11  INTEGER,
  COL12  INTEGER,
  COL13  INTEGER,
  COL14  FLOAT(63),
  COL15  INTEGER,
  COL16  VARCHAR2(1 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );






