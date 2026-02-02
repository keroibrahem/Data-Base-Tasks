CREATE TABLE Employee (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(50),
    age    NUMBER
);

CREATE TABLE Phone(
    id     NUMBER PRIMARY KEY ,
    id_Employee  NUMBER NOT NULL UNIQUE,
    phoneNumber NUMBER,
    
    
    CONSTRAINT Ph_Employee_fk FOREIGN KEY (id_Employee) REFERENCES Employee(id)
    
);



