INSERT INTO Regioes VALUES
(1, 'Sudeste', 'SP'),
(2, 'Sul', 'PR'),
(3, 'Nordeste', 'BA'),
(4, 'Centro-Oeste', 'GO'),
(5, 'Norte', 'PA');


DECLARE @i INT = 1

WHILE @i <= 20
BEGIN
    INSERT INTO Motoristas
    VALUES (
        @i,
        CONCAT('Motorista ', @i),
        DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 1500, GETDATE()),
        CASE 
            WHEN @i % 3 = 0 THEN 'Caminhão'
            WHEN @i % 2 = 0 THEN 'Van'
            ELSE 'Moto'
        END
    )
    SET @i += 1
END





DECLARE @i INT = 1

WHILE @i <= 3000
BEGIN
    DECLARE @DataPedido DATE = DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())
    DECLARE @DataEnvio DATE = DATEADD(DAY, 1, @DataPedido)
    DECLARE @PrazoPrevisto DATE = DATEADD(DAY, (ABS(CHECKSUM(NEWID())) % 7) + 1, @DataEnvio)
    DECLARE @Atraso INT = ABS(CHECKSUM(NEWID())) % 4

    DECLARE @DataEntrega DATE =
        CASE 
            WHEN @Atraso = 0 THEN DATEADD(DAY, 2, @PrazoPrevisto)
            ELSE @PrazoPrevisto
        END

    INSERT INTO Entregas
    VALUES (
        @i,
        @DataPedido,
        @DataEnvio,
        @DataEntrega,
        CASE 
            WHEN @Atraso = 0 THEN 'Atrasado'
            ELSE 'Entregue'
        END,
        (ABS(CHECKSUM(NEWID())) % 900) + 10,
        (ABS(CHECKSUM(NEWID())) % 500) + 50,
        (ABS(CHECKSUM(NEWID())) % 300) + 30,
        (ABS(CHECKSUM(NEWID())) % 20) + 1,
        (ABS(CHECKSUM(NEWID())) % 5) + 1
    )

    SET @i += 1
END




