CREATE TABLE player (
	id NUMBER NOT NULL ,
	name varchar2(50) UNIQUE ,
	age NUMBER ,
	CONSTRAINT player_id_uk UNIQUE (id)
); 

CREATE TABLE manager (
    id     NUMBER NOT NULL,
    name   VARCHAR2(50),
    salary NUMBER,
    CONSTRAINT manager_id_name_uk UNIQUE (id, name)
);

DROP TABLE manager;

CREATE TABLE manager (
    id   NUMBER,
    name VARCHAR2(50),
    age  NUMBER,
    CONSTRAINT manager_pk PRIMARY KEY (id)
);
