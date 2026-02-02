CREATE TABLE Doctor (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(50),
    salary NUMBER
    
);


CREATE TABLE patient (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(50),
    age NUMBER
);

CREATE TABLE Doctor_patient (
    id_Doctor     NUMBER,
    id_patient     NUMBER,
    
    CONSTRAINT dp_pk PRIMARY KEY (id_Doctor,id_patient),
    
    CONSTRAINT dp_doctor_fk FOREIGN KEY (id_Doctor) REFERENCES Doctor(id),
     
    CONSTRAINT dp_patient_fk FOREIGN KEY (id_patient) REFERENCES patient(id)
 );