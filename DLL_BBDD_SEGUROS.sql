-- Creación de tabla Cliente
CREATE TABLE Cliente(
    Cli_ID INT AUTO_INCREMENT PRIMARY KEY,
    Cli_Nombre VARCHAR(30),
    Cli_Documento VARCHAR(20),
    Cli_Direccion VARCHAR(40),
    Cli_Telefono VARCHAR(15),
    Cli_Profesion VARCHAR(25),
    Cli_Edad VARCHAR(3)
);

-- Creación de tabla Beneficiario
CREATE TABLE Beneficiario(
    Ben_ID INT AUTO_INCREMENT PRIMARY KEY,
    Ben_Nombre VARCHAR(30)   
);

-- Creación de tabla Agente
CREATE TABLE Agente(
    Age_ID INT AUTO_INCREMENT PRIMARY KEY,
    Age_Nombre VARCHAR(30), 
    Age_Direccion VARCHAR(40),
    Age_Telefono VARCHAR(15),
    Age_Documento VARCHAR(20)
);

-- Creación de tabla Automovil
CREATE TABLE Automovil(
    Aut_ID INT AUTO_INCREMENT PRIMARY KEY,
    Aut_Categoria VARCHAR(20),
    Aut_Annos INT(3),
    Aut_Matricula VARCHAR(6)    
);

-- Creación de tabla Conductor
CREATE TABLE Conductor(
    Con_ID INT AUTO_INCREMENT PRIMARY KEY,
    Con_Nombre VARCHAR(30),
    Con_Edad VARCHAR(3)
);

-- Creación de tabla Inmueble
CREATE TABLE Inmueble(
    Inm_ID INT AUTO_INCREMENT PRIMARY KEY,
    Inm_Direccion VARCHAR(40),
    Inm_Valor VARCHAR(40)
);

-- Creación de tabla que contiene los bienes del inmueble
CREATE TABLE Bienes_Inmueble(
    BiI_ID INT AUTO_INCREMENT PRIMARY KEY,
    BiI_Nombre VARCHAR(30),
    BiI_Valor VARCHAR(30),
    FK_Inm_ID INT NOT NULL,
    FOREIGN KEY FK_Inm_ID1(FK_Inm_ID) REFERENCES Inmueble(Inm_ID) 
);

-- Creación de tabla de seguro de vida
CREATE TABLE Seguro_Vida(
    SeV_ID INT AUTO_INCREMENT PRIMARY KEY,
    SeV_CoberturaEconomica VARCHAR(20),
    SeV_Vigente BOOLEAN
);

-- Creación de tabla de seguro de automóvil
CREATE TABLE Seguro_Automovil(
    SeA_ID INT AUTO_INCREMENT PRIMARY KEY,
    SeA_Recargos FLOAT(20), 
    SeA_Descuentos FLOAT(20),
    SeA_Cobertura VARCHAR(20),
    SeA_Vigente BOOLEAN,
    FK_Aut_ID INT NOT NULL,
    FK_Con_ID INT NOT NULL,
    FOREIGN KEY FK_Aut_ID1(FK_Aut_ID) REFERENCES Automovil(Aut_ID),
    FOREIGN KEY FK_Con_ID1(FK_Con_ID) REFERENCES Conductor(Con_ID)
);

-- Creación de tabla de seguro de hogar
CREATE TABLE Seguro_Hogar(
    SeH_ID INT AUTO_INCREMENT PRIMARY KEY,
    SeH_RiesgoAuxiliar VARCHAR(15),
    SeH_Vigente BOOLEAN,
    FK_Inm_ID INT NOT NULL,
    FOREIGN KEY FK_Inm_ID2(FK_Inm_ID) REFERENCES Inmueble(Inm_ID)
);
    
-- Creación de tabla que contiene contratos relacionados con seguros de vida
CREATE TABLE Contrato_SeguroVida(
    CSV_ID INT AUTO_INCREMENT PRIMARY KEY,
    CSV_FechaContrato DATE,
    CSV_Prima INT(20),
    FK_Cli_ID INT NOT NULL,
    FK_Ben_ID INT NOT NULL,
    FK_SeV_ID INT NOT NULL,
    FK_Age_ID INT NOT NULL,
    FOREIGN KEY FK_Cli_ID2(FK_Cli_ID) REFERENCES Cliente(Cli_ID),
    FOREIGN KEY FK_Ben_ID2(FK_Ben_ID) REFERENCES Beneficiario(Ben_ID),
    FOREIGN KEY FK_SeV_ID2(FK_SeV_ID) REFERENCES Seguro_Vida(SeV_ID),
    FOREIGN KEY FK_Age_ID2(FK_Age_ID) REFERENCES Agente(Age_ID)
);

-- Creación de tabla que contiene contratos relacionados con seguros de automóvil

CREATE TABLE Contrato_SeguroAutomovil(
    CSA_ID INT AUTO_INCREMENT PRIMARY KEY,
    CSA_FechaContrato DATE,
    CSA_Prima INT(20),
    FK_Cli_ID INT NOT NULL,
    FK_Ben_ID INT NOT NULL,
    FK_SeA_ID INT NOT NULL,
    FK_Age_ID INT NOT NULL,
    FOREIGN KEY FK_Cli_ID3(FK_Cli_ID) REFERENCES Cliente(Cli_ID),
    FOREIGN KEY FK_Ben_ID3(FK_Ben_ID) REFERENCES Beneficiario(Ben_ID),
    FOREIGN KEY FK_SeA_ID3(FK_SeA_ID) REFERENCES Seguro_Automovil(SeA_ID),
    FOREIGN KEY FK_Age_ID3(FK_Age_ID) REFERENCES Agente(Age_ID)
);

-- Creación de tabla que contiene contratos relacionados con seguros de hogar

CREATE TABLE Contrato_SeguroHogar(
    CSH_ID INT AUTO_INCREMENT PRIMARY KEY,
    CSH_FechaContrato DATE,
    CSH_Prima INT(20),
    FK_Cli_ID INT NOT NULL,
    FK_Ben_ID INT NOT NULL,
    FK_SeH_ID INT NOT NULL,
    FK_Age_ID INT NOT NULL,
    FOREIGN KEY FK_Cli_ID4(FK_Cli_ID) REFERENCES Cliente(Cli_ID),
    FOREIGN KEY FK_Ben_ID4(FK_Ben_ID) REFERENCES Beneficiario(Ben_ID),
    FOREIGN KEY FK_SeH_ID4(FK_SeH_ID) REFERENCES Seguro_Hogar(SeH_ID),
    FOREIGN KEY FK_Age_ID4(FK_Age_ID) REFERENCES Agente(Age_ID)
);
