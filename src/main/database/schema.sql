/*Create DB*/
CREATE DATABASE `ujoku` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/*API Authorized*/
Create table Client (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  ClientName VARCHAR(32),
  SecretKey VARCHAR(100),
  Status VARCHAR(1)
);

INSERT INTO Client(ClientName,SecretKey,Status) value ('iPhone','71487ab01d4c5807965267f51e22674f', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('MWeb','aa386dedc62de1fc75920745e0b81f5f', 'A');
INSERT INTO Client(ClientName,SecretKey,Status) value ('Desktop','63c6a0a078b0e6996326199005e9d641', 'A');
