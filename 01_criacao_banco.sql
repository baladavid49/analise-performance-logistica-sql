CREATE TABLE Motoristas (
    MotoristaID INT PRIMARY KEY,
    Nome VARCHAR(100),
    DataContratacao DATE,
    TipoVeiculo VARCHAR(50) -- Van, Caminhão, Moto
);


CREATE TABLE Regioes (
    RegiaoID INT PRIMARY KEY,
    NomeRegiao VARCHAR(100),
    Estado CHAR(2)
);  


CREATE TABLE Entregas (
    EntregaID INT PRIMARY KEY,
    DataPedido DATE,
    DataEnvio DATE,
    DataEntrega DATE,
    StatusEntrega VARCHAR(50), -- Entregue, Atrasado, Cancelado
    DistanciaKM DECIMAL(6,2),
    ValorFrete DECIMAL(10,2),
    CustoOperacional DECIMAL(10,2),
    MotoristaID INT,
    RegiaoID INT,
    FOREIGN KEY (MotoristaID) REFERENCES Motoristas(MotoristaID),
    FOREIGN KEY (RegiaoID) REFERENCES Regioes(RegiaoID)
);



