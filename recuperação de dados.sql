-- recuperação de dados

USE oficina;

-- recupera os nomes do cliente e as informações de seu carro
SELECT concat(c.Fname,' ',c.Minit,' ',c.Lname) AS Full_Name, v.model, v.brand, v.years, v.color 
	FROM clients c, vehicle v 
		WHERE c.idClients = v.vehicle_idClients;
        
-- conta o numero de mecanicos que trabalham nessa oficina
SELECT count(*) AS Number_of_Mechanic FROM mechanic;

-- recupera o nome completo do dono do carro, informações do veiculo, data de emissão, 
-- data prevista para o fim e status do serviço enquanto ordena pelo nome completo do cliente
SELECT concat(c.Fname,' ',c.Minit,' ',c.Lname) AS Full_Name, v.model, v.brand, v.years, v.color, 
s.dateOfIssue, s.ExpectedEndDate, s.service_status
	FROM service s
		INNER JOIN vehicle v ON v.idVehicle = s.service_idVehicle 	
		INNER JOIN clients c ON c.idClients = v.vehicle_idClients 
			ORDER BY service_status;
		
-- recupera o primeiro nome, especialidade e preço de mao de obra do mecanico
-- recupera o nome, modelo e preço da peça 
-- e cria uma lista com a soma dos preços
SELECT p.idPrice, m.Fname, m.Especialidade, m.price_labor, c.Pname, c.ModelPart, c.price_carPart, (c.price_carPart + price_labor) AS total_price
	FROM mechanic m, carParts c, price p, service s
		WHERE p.price_idMechanic = m.idMechanic AND c.idCarParts = p.price_idCarParts AND s.service_idPrice = p.idPrice
;

-- recupera todos os dados de mecanicos que tem a mao de obra com valor igual ou maior que 700 
SELECT * FROM mechanic 
	HAVING price_labor >= 700;
