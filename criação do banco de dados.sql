-- Criação do Banco de Dados Oficina

CREATE DATABASE oficina;

USE oficina;

-- criação tabela cliente

CREATE TABLE clients(
	idClients INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR (30) NOT NULL,
    Minit VARCHAR (3) NOT NULL,
    Lname VARCHAR (50) NOT NULL,
    CPF CHAR (11) NOT NULL,
    contact CHAR (11),
    email VARCHAR(255),
    Adress VARCHAR(255) NOT NULL
);

-- criação tabela peças

CREATE TABLE carParts(
	idCarParts INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(125) NOT NULL,
    modelPart VARCHAR(125) NOT NULL,
    price_carPart FLOAT NOT NULL,
    quantity INT DEFAULT 1
);

-- criação tabela mecanico

CREATE TABLE mechanic(
	idMechanic INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR (30) NOT NULL,
    Minit VARCHAR (3) NOT NULL,
    Lname VARCHAR (50) NOT NULL,
    CPF CHAR (11) NOT NULL,
    Adress VARCHAR(255) NOT NULL,
    Especialidade VARCHAR(45) NOT NULL,
    price_labor FLOAT NOT NULL
);

-- criação tabela veiculo

CREATE TABLE vehicle(
	idVehicle INT AUTO_INCREMENT,
    vehicle_idClients INT,
    model VARCHAR(45) NOT NULL,
    brand VARCHAR(45) NOT NULL,
    years CHAR(4) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (idVehicle, vehicle_idClients),
    CONSTRAINT FOREIGN KEY (vehicle_idClients) REFERENCES clients(idClients)
);

-- criação tabela preço

CREATE TABLE price(
	idPrice INT AUTO_INCREMENT,
    price_idCarParts INT,
    price_idMechanic INT,
	PRIMARY KEY (idPrice, price_idCarParts, price_idMechanic),
    CONSTRAINT FOREIGN KEY (price_idCarParts) REFERENCES carParts(idCarParts),
    CONSTRAINT FOREIGN KEY (price_idMechanic) REFERENCES mechanic(idMechanic)
);

-- criação tabela ordem serviço
CREATE TABLE service(
	ServiceNumber INT,
    service_idVehicle INT,
    service_idPrice INT,
    dateOfIssue DATE,
    ExpectedEndDate DATE,
    service_status VARCHAR(45),
    PRIMARY KEY(service_idVehicle, service_idPrice),
    CONSTRAINT FOREIGN KEY (service_idVehicle) REFERENCES vehicle(idVehicle),
    CONSTRAINT FOREIGN KEY (service_idPrice) REFERENCES price(idPrice)
);

-- criação tabela forma de pagamento

CREATE TABLE payments(
	pay_idClients INT PRIMARY KEY,
    paymentType ENUM('Boleto', 'Cartão', 'pix'),
    CONSTRAINT FOREIGN KEY (pay_idClients) REFERENCES clients(idClients)
);