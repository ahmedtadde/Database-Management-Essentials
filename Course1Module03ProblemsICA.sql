DROP TABLE IF  EXISTS  customer;

DROP TABLE IF EXISTS facility;

DROP TABLE IF EXISTS location;

CREATE TABLE customer(
  custno char(4) PRIMARY KEY NOT NULL,
  custname varchar(50) NOT NULL,
  address varchar(50) NOT NULL,
  Internal char(2) NOT NULL,
  contact varchar(50) NOT NULL,
  phone int(7) NOT NULL,
  city varchar(50) NOT NULL,
  state char(2) NOT NULL,
  zip int(5) NOT NULL
 );
 
 
 CREATE TABLE facility(
	facno char(4)  NOT NULL,
    facname varchar(50)  NOT NULL,
    
    CONSTRAINT facilityPK PRIMARY KEY( facno),
    CONSTRAINT facname_unique  UNIQUE  (facname)
 );
 
 
 CREATE TABLE location(
  locno char(4) NOT NULL,
  facno char(4)  NOT NULL,
  locname varchar(50) NOT NULL,
  
  CONSTRAINT locationPK  PRIMARY KEY(locno),
  
  CONSTRAINT fk_location_facno_facility_facno 
	FOREIGN KEY (facno) REFERENCES facility(facno)
 );
 