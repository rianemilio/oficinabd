-- inserção de dados

USE oficina;

-- (Fname, Minit, Lname, CPF, contact, email, Adress)
INSERT INTO clients (Fname, Minit, Lname, CPF, contact, email, Adress) VALUES 
('Ana', 'M', 'Silva', 56676870842, 94408224276, 'ana.m.silva@example.com', 'Rua das Flores, 123, Cidade A'),
('Pedro', 'A', 'Santos', 69806012529, NULL, 'pedro.a.santos@example.com', 'Avenida das Palmeiras, 456, Cidade B'),
('Maria', 'R', 'Oliveira', 93908411359, 24066797096, 'maria.r.oliveira@example.com', 'Travessa dos Pássaros, 789, Cidade C'),
('João', 'L', 'Costa', 37103873293, 58703365015, 'joao.l.costa@example.com', 'Praça das Montanhas, 101, Cidade D'),
('Laura', 'C', 'Rodrigues', 91146244672, NULL, 'laura.c.rodrigues@example.com', 'Alameda das Estrelas, 222, Cidade E'),
('Rodrigo', 'L', 'Almeida', 83362417763, 87169339930, 'rodrigo.l.almeida@example.com', 'Praça das Tulipas, 246, Cidade W'),
('Thiago', 'C', 'Santos', 49972962753, NULL, 'thiago.c.santos@example.com', 'Alameda dos Crisântemos, 951, Cidade V')
;

-- (idCarParts, Pname, modelPart, quantity, price_carPart)
INSERT INTO carParts(Pname, modelPart, quantity, price_carPart) VALUES
('Motor', 'V6 Turbo', 754, 2500.00),
('Alternador', 'Premium Gold', 162, 180.00),
('Suspensão Dianteira', 'Sports Pro', 589, 350.00),
('Freio a Disco', 'Performance Plus', 413, 120.00),
('Radiador', 'CoolMax', 276, 280.00),
('Filtro de Ar', 'AirMax Ultra', 851, 18.00),
('Correia Dentada', 'PowerDrive Elite', 347, 30.00),
('Embreagem', 'Xtreme Clutch', 624, 150.00),
('Bomba de Combustível', 'FuelMaster Pro', 198, 80.00),
('Vela de Ignição', 'SparkPlatinum', 502, 12.00)
;

-- (Fname, Minit, Lname, CPF, Adress, Especialidade, price_labor)
INSERT INTO mechanic (Fname, Minit, Lname, CPF, Adress, Especialidade, price_labor) VALUES 
('Lucas', 'R', 'Mendes', 85101460872, 'Rua das Azaleias, 123, Cidade P', 'Manutenção de Motores', 700.00),
('Gabriel', 'L', 'Almeida', 77513074598, 'Travessa das Acácias, 789, Cidade R', 'Suspensão e Direção', 600.00),
('João', 'L', 'Costa', 64639087496, 'Praça das Magnólias, 101, Cidade S', 'Diagnóstico Eletrônico', 740.00),
('Rafael', 'C', 'Santos', 65559786544, 'Alameda das Tulipas, 222, Cidade U', 'Transmissão Automática', 900.00),
('Mateus', 'F', 'Oliveira', 18237103114, 'Avenida das Margaridas, 333, Cidade V', 'Sistemas de Freios', 1500.00)
;

-- pay_idClients, paymentType ('Boleto', 'Cartão', 'pix')
INSERT INTO payments(pay_idClients, paymentType) VALUES 
(1, 'Boleto'),
(2, 'Cartão'),
(3, 'Cartão'),
(4, 'Boleto'),
(5, 'Pix'),
(6, 'Boleto'),
(7, 'Cartão')
;

-- (idVehicle, vehicle_idClients, model, brand, years, color)
INSERT INTO vehicle (vehicle_idClients, model, brand, years, color) VALUES 
(1, 'Sedan Luxo', 'FictiCar', 2022, 'Prata'),
(2, 'SUV Aventureiro', 'DriveMaster', 2020, 'Preto'),
(3, 'Hatch Compacto', 'SpeedyAuto', 2021, 'Vermelho'),
(4, 'Caminhonete Potente', 'RuggedTruck', 2019, 'Azul'),
(5,'Carro Esportivo', 'VelocityCars', 2023, 'Amarelo'),
(6, 'Crossover Urbano', 'CityRide', 2022, 'Cinza'),
(7, 'Minivan Familiar', 'ComfortWheels', 2020, 'Branco')
;

-- (idPrice, price_idCarParts, price_idMechanic)
INSERT INTO price(price_idCarParts, price_idMechanic) VALUES 
(1, 1),
(7, 1),
(6, 2),
(10, 2),
(9, 3),
(2, 4),
(4, 5),
(5, 5)
;

-- ServiceNumber, service_idVehicle, service_idPrice, dateOfIssue, ExpectedEndDate, service_status
INSERT INTO service (ServiceNumber, service_idVehicle, service_idPrice, dateOfIssue, ExpectedEndDate, service_status) VALUES 
(1689 , 1, 7, '2023-05-21', '2023-10-12', 'Esperando Peças'),
(1689 , 2, 8, '2023-07-18', '2023-08-08', 'Sendo Realizado'),
(3724 , 3, 2, '2023-08-15', '2023-09-05', 'Finalizando'),
(2205 , 4, 3, '2023-06-20', '2023-07-11', 'Esperando Peças'),
(5919 , 5, 4, '2023-09-01', '2023-09-22', 'Sendo Realizado'),
(7987 , 6, 5, '2023-10-10', '2023-10-31', 'Finalizado'),
(6529 , 7, 1, '2023-12-14', '2024-01-04', 'Finalizado')
;
