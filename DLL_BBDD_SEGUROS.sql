-- Active: 1723121637486@@127.0.0.1@3306
CREATE DATABASE BBDD_SEGUROS;

 USE BBDD_SEGUROS;
   

    CREATE TABLE Categoria_Automovil(
        CaA_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        CaA_Nombre VARCHAR(20) 
    );

    CREATE TABLE Cobertura(
        Cob_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Cob_Tipo VARCHAR(20) 
    );

    CREATE TABLE Conductor(
        Con_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Con_Nombre VARCHAR(20), 
        Con_Edad VARCHAR(20)
    );

    CREATE TABLE Inmueble(
        Inm_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Inm_Direccion VARCHAR(40),
        Inm_Valor VARCHAR(20)
    );

    CREATE TABLE Agente(
        Age_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Age_Nombre VARCHAR(25),
        Age_Documento VARCHAR(15),
        Age_Direccion VARCHAR(40),
        Age_Telefono VARCHAR(20)
    );

    CREATE TABLE Cliente(
        Cli_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Cli_Nombre VARCHAR(25),
        Cli_Documento VARCHAR(15),
        Cli_Direccion VARCHAR(40),
        Cli_Telefono VARCHAR(20),
        Cli_Edad VARCHAR(4),
        Cli_Profesion VARCHAR(20)
    );
   
    CREATE TABLE Beneficiario(
        Ben_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Ben_Nombre VARCHAR(25)
    );

    CREATE TABLE Oferta(
        Ofe_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Ofe_Valor VARCHAR(20),
        Ofe_Prima VARCHAR(20),
        Ofe_Fecha DATE,
        FK_Age_ID INT NOT NULL,
        FOREIGN KEY FK_Age_ID1(FK_Age_ID) REFERENCES Agente(Age_ID)
    );

    CREATE TABLE Bienes_Inmueble(
        BieI_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        BieI_Nombre VARCHAR(20),
        BieI_Valor VARCHAR(20),
        FK_Inm_ID INT NOT NULL,
        FOREIGN KEY FK_Inm_ID1(FK_Inm_ID) REFERENCES Inmueble(Inm_ID)
    );

    CREATE TABLE Riesgos_Auxiliares(
        RiA_ID INT (5) AUTO_INCREMENT PRIMARY KEY,
        RiA_Nombre VARCHAR (20),
        RiA_Valor INT(15),
        FK_Inm_ID INT NOT NULL,
        FOREIGN KEY FK_Inm_ID4(FK_Inm_ID) REFERENCES Inmueble(Inm_ID)
    )

    CREATE TABLE Seguro_Hogar(
        SeH_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        SeH_FechaContrato DATE,
        FK_Inm_ID INT NOT NULL,
        FK_Ofe_ID INT NOT NULL,
        FOREIGN KEY FK_Inm_ID(FK_Inm_ID) REFERENCES Inmueble(Inm_ID),
        FOREIGN KEY FK_Ofe_ID(FK_Ofe_ID) REFERENCES Oferta(Ofe_ID)
    );

    CREATE TABLE Seguro_Vida(
        SeV_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        SeV_CoberturaEconomica VARCHAR(20),
        FK_Ofe_ID INT NOT NULL,
        FK_Cli_ID INT NOT NULL,
        FOREIGN KEY FK_Ofe_ID1(FK_Ofe_ID) REFERENCES Oferta(Ofe_ID),
        FOREIGN KEY FK_Cli_ID1(FK_Cli_ID) REFERENCES Cliente(Cli_ID)
    );
      CREATE TABLE Seguro_Automovil(
        SeA_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        SeA_Recargos VARCHAR(20),
        SeA_Descuentos VARCHAR(20),
        FK_Ofe_ID INT NOT NULL,
        FK_Cob_ID INT NOT NULL,
        FK_Con_ID INT NOT NULL,
        FOREIGN KEY FK_Ofe_ID2(FK_Ofe_ID) REFERENCES Oferta(Ofe_ID),
        FOREIGN KEY FK_Cob_ID2(FK_Cob_ID) REFERENCES Cobertura(COb_ID),
        FOREIGN KEY FK_Con_ID2(FK_Con_ID) REFERENCES Conductor(Con_ID)
    );

    CREATE TABLE Automovil(
        Aut_ID INT(5) AUTO_INCREMENT PRIMARY KEY,
        Aut_Matricula VARCHAR(6),
        Aut_Anos INT(5),
        FK_CaA_ID INT NOT NULL,
        FK_SeA_ID INT NOT NULL,
        FOREIGN KEY FK_CaA_ID(FK_CaA_ID) REFERENCES Categoria_Automovil(CaA_ID),
        FOREIGN KEY FK_SeA_ID(FK_SeA_ID) REFERENCES Seguro_Automovil(SeA_ID)
    );

  

    CREATE TABLE Contrato(
        FK_Cli_ID INT NOT NULL,
        FK_SeH_ID INT NOT NULL,
        FK_SeV_ID INT NOT NULL,
        FK_SeA_ID INT NOT NULL,
        FK_Age_ID INT NOT NULL,
        FK_Ben_ID INT NOT NULL,
        FOREIGN KEY FK_Cli_ID3(FK_Cli_ID) REFERENCES Cliente(Cli_ID),
        FOREIGN KEY FK_SeH_ID3(FK_SeH_ID) REFERENCES Seguro_Hogar(SeH_ID),
        FOREIGN KEY FK_SeV_ID3(FK_SeV_ID) REFERENCES Seguro_Vida(SeV_ID),
        FOREIGN KEY FK_SeA_ID3(FK_SeA_ID) REFERENCES Seguro_Automovil(SeA_ID),
        FOREIGN KEY FK_Age_ID3(FK_Age_ID) REFERENCES Agente(Age_ID),
        FOREIGN KEY FK_Ben_ID3(FK_Ben_ID) REFERENCES Beneficiario(Ben_ID)
    );
  


    



