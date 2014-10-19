/*Create DB*/
CREATE DATABASE `ujoku` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/*API Authorized*/
Create table Client (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  ClientName VARCHAR(32),
  SecretKey VARCHAR(100),
  Status VARCHAR(1),
  CreateDate datetime DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO Client(ClientName,SecretKey,Status) value ('iPhone','5CA0516726987400677A12F4082D6D7B', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('MWeb','D4FC0582200925E8EB4064A24A10700E', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('Desktop','14E9BA5AE327402F4F8B41BF06864D2E', 'A');


Create table Visitor(
  Id varchar(32),
  user_id int,
  CreateDate datetime DEFAULT CURRENT_TIMESTAMP()
)