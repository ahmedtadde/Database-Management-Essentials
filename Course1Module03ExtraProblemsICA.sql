DROP TABLE IF  EXISTS  customer;
DROP TABLE IF  EXISTS  employee;
DROP TABLE IF  EXISTS  order_table;



CREATE TABLE customer (
    CustNo CHAR(8) NOT NULL,
    CustFirstName VARCHAR(50) NOT NULL,
    CustLastName VARCHAR(50) NOT NULL,
    CustCity VARCHAR(50),
    CustSate CHAR(2),
    CustZip CHAR(10),
    CustBal DEC(19 , 4 ),
    CONSTRAINT pk_customer PRIMARY KEY (CustNo)
);

CREATE TABLE employee (
    EmpNo CHAR(8),
    EmpFirstName VARCHAR(50) NOT NULL,
    EmpLastName VARCHAR(50) NOT NULL,
    EmpPhone CHAR(14),
    EmpEmail VARCHAR(50) NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (EmpNo),
    CONSTRAINT unique_EmpEmail UNIQUE (EmpEmail)
);


CREATE TABLE order_table (
    OrdNo CHAR(8),
    OrdDate DATE NOT NULL,
    CustNo CHAR(8) NOT NULL,
    EmpNo CHAR(8),
    CONSTRAINT pk_order_table PRIMARY KEY (OrdNo),
    CONSTRAINT fk_order_table_CustNo_customer_CustNo FOREIGN KEY (CustNo)
        REFERENCES customer (CustNo),
    CONSTRAINT fk_order_table_EmpNo_employee_EmpNo FOREIGN KEY (EmpNo)
        REFERENCES employee (EmpNo)
);