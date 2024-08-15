USE DATABASE BBDD_Seguros;

-- Se insertan de datos a la tabla de Cliente
INSERT INTO Cliente (Cli_Nombre, Cli_Documento, Cli_Direccion, Cli_Telefono, Cli_Profesion, Cli_Edad)
VALUES 
('Juan Pérez', '1234567890', 'Av. Siempre Viva 742', '555-1234', 'Ingeniero', '35'),
('Ana Gómez', '9876543210', 'Calle Falsa 123', '555-5678', 'Abogada', '29'),
('Carlos López', '1122334455', 'Calle Luna 456', '555-8765', 'Médico', '40'),
('Laura Martínez', '5566778899', 'Paseo Central 789', '555-4321', 'Arquitecta', '32'),
('Pedro Ramírez', '9988776655', 'Av. del Mar 321', '555-9999', 'Profesor', '45');

-- Se insertan datos a la tabla Beneficiario
INSERT INTO Beneficiario (Ben_Nombre)
VALUES 
('Carlos Pérez'),
('María Gómez'),
('José López'),
('Ana Pérez'),
('Luis Fernández');

-- Se insertan datos a la tabla Agente
INSERT INTO Agente (Age_Nombre, Age_Direccion, Age_Telefono, Age_Documento)
VALUES 
('Luis Martínez', 'Calle Real 456', '555-8765', '1122334455'),
('Elena Rodríguez', 'Paseo Central 789', '555-4321', '5544332211'),
('Ricardo Torres', 'Av. del Sol 101', '555-1234', '6677889900'),
('Sofía Gómez', 'Calle Mayor 202', '555-5678', '8899001122'),
('Miguel Ángel', 'Calle Dorada 303', '555-8765', '2233445566');

-- Se insertan datos a la tabla Automóvil
INSERT INTO Automovil (Aut_Categoria, Aut_Annos, Aut_Matricula)
VALUES 
('Sedán', 5, 'ABC123'),
('SUV', 3, 'XYZ789'),
('Coupe', 4, 'LMN456'),
('Hatchback', 2, 'OPQ321'),
('Camioneta', 6, 'RST654');

-- Se insertan datos al Conductor
INSERT INTO Conductor (Con_Nombre, Con_Edad)
VALUES 
('Mario Fernández', '40'),
('Lucía Martínez', '33'),
('Jorge Sánchez', '28'),
('Patricia García', '45'),
('Andrés Ruiz', '38');

-- Se insertan datos a la tabla inmueble
INSERT INTO Inmueble (Inm_Direccion, Inm_Valor)
VALUES 
('Calle Verde 456', '200000'),
('Av. del Sol 789', '350000'),
('Calle Luna 101', '250000'),
('Paseo Central 202', '400000'),
('Calle Real 303', '150000');

-- Se insertan datos a la tabla Bienes_Inmueble
INSERT INTO Bienes_Inmueble (BiI_Nombre, BiI_Valor, FK_Inm_ID)
VALUES 
('Sofá', '5000', 1),
('Televisor', '1500', 1),
('Cama', '2000', 2),
('Frigorífico', '2500', 3),
('Lámpara', '300', 4);

-- Se insertan datos a la tabla Seguro_Vida
INSERT INTO Seguro_Vida (SeV_CoberturaEconomica, SeV_Vigente)
VALUES 
('Básica', TRUE),
('Completa', TRUE),
('Premium', FALSE),
('Estándar', TRUE),
('Integral', TRUE);

-- Se insertan datos a la tabla Seguro_Automovil
INSERT INTO Seguro_Automovil (SeA_Recargos, SeA_Descuentos, SeA_Cobertura, SeA_Vigente, FK_Aut_ID, FK_Con_ID)
VALUES 
(200.50, 50.00, 'Todo Riesgo', TRUE, 1, 1),
(150.00, 30.00, 'Limitada', TRUE, 2, 2),
(180.00, 40.00, 'Parcial', FALSE, 3, 3),
(220.00, 60.00, 'Completa', TRUE, 4, 4),
(160.00, 35.00, 'Terceros', TRUE, 5, 5);

-- Se insertan datos a la tabla Seguro_Hogar
INSERT INTO Seguro_Hogar (SeH_RiesgoAuxiliar, SeH_Vigente, FK_Inm_ID)
VALUES 
('Incendio', TRUE, 1),
('Robos', TRUE, 2),
('Daños por agua', TRUE, 3),
('Desastres naturales', FALSE, 4),
('Responsabilidad civil', TRUE, 5);

-- Se insertan datos a la tabla Contrato_SeguroVida
INSERT INTO Contrato_SeguroVida (CSV_FechaContrato, CSV_Prima, FK_Cli_ID, FK_Ben_ID, FK_SeV_ID, FK_Age_ID)
VALUES 
('2024-08-01', 1000, 1, 1, 1, 1),
('2024-08-02', 1200, 2, 2, 2, 2),
('2024-08-03', 1300, 3, 3, 3, 3),
('2024-08-04', 1100, 4, 4, 4, 4),
('2024-08-05', 1400, 5, 5, 5, 5);

-- Se insertan datos a la tabla Contrato_SeguroAutomovil
INSERT INTO Contrato_SeguroAutomovil (CSA_FechaContrato, CSA_Prima, FK_Cli_ID, FK_Ben_ID, FK_SeA_ID, FK_Age_ID)
VALUES 
('2024-08-01', 500, 1, 1, 1, 1),
('2024-08-02', 550, 2, 2, 2, 2),
('2024-08-03', 600, 3, 3, 3, 3),
('2024-08-04', 650, 4, 4, 4, 4),
('2024-08-05', 700, 5, 5, 5, 5);

-- Se insertan datos a la tabla Contrato_SeguroHogar
INSERT INTO Contrato_SeguroHogar (CSH_FechaContrato, CSH_Prima, FK_Cli_ID, FK_Ben_ID, FK_SeH_ID, FK_Age_ID)
VALUES 
('2024-08-01', 300, 1, 1, 1, 1),
('2024-08-02', 350, 2, 2, 2, 2),
('2024-08-03', 400, 3, 3, 3, 3),
('2024-08-04', 450, 4, 4, 4, 4),
('2024-08-05', 500, 5, 5, 5, 5);


