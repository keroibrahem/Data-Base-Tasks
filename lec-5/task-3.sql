CREATE TABLE Language (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(50)
);

CREATE TABLE Teacher (
    id     NUMBER PRIMARY KEY,
    id_Language NUMBER NOT NULL ,
    name   VARCHAR2(50),
    salary NUMBER,
    
    CONSTRAINT Te_Language_fk FOREIGN KEY (id_Language) REFERENCES Language (id)
    
);



