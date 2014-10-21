

/*API Authorized*/
DROP TABLE IF EXISTS `Client`;
Create table Client (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  ClientName VARCHAR(32),
  SecretKey VARCHAR(100),
  Status VARCHAR(1),
  CreateDate timestamp DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO Client(ClientName,SecretKey,Status) value ('iPhone','5CA0516726987400677A12F4082D6D7B', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('MWeb','D4FC0582200925E8EB4064A24A10700E', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('Desktop','14E9BA5AE327402F4F8B41BF06864D2E', 'A');

DROP TABLE IF EXISTS `Visitor`;
CREATE TABLE Visitor(
  Id VARCHAR(32),
  user_id INT,
  last_ip VARCHAR(15),
  user_agent VARCHAR(128),
  last_visit TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
)