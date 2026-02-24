-- taxa atraso
SELECT 
    COUNT(*) AS TotalEntregas,
    SUM(CASE WHEN StatusEntrega = 'Atrasado' THEN 1 ELSE 0 END) AS TotalAtrasos,
    CAST(
        100.0 * SUM(CASE WHEN StatusEntrega = 'Atrasado' THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS PercentualAtraso
FROM Entregas;





-- tempo médio entrega
SELECT 
    AVG(DATEDIFF(DAY, DataEnvio, DataEntrega)) AS TempoMedioEntrega
FROM Entregas;



-- performace por motorista
SELECT 
    m.Nome,
    COUNT(*) AS TotalEntregas,
    SUM(CASE WHEN e.StatusEntrega = 'Atrasado' THEN 1 ELSE 0 END) AS TotalAtrasos
FROM Entregas e
JOIN Motoristas m ON e.MotoristaID = m.MotoristaID
GROUP BY m.Nome
ORDER BY TotalAtrasos DESC;




--lucro por região
SELECT 
    r.NomeRegiao,
    SUM(ValorFrete - CustoOperacional) AS LucroTotal
FROM Entregas e
JOIN Regioes r ON e.RegiaoID = r.RegiaoID
GROUP BY r.NomeRegiao
ORDER BY LucroTotal DESC;



-- evolução mensal
SELECT 
    FORMAT(DataPedido, 'yyyy-MM') AS AnoMes,
    COUNT(*) AS TotalEntregas
FROM Entregas
GROUP BY FORMAT(DataPedido, 'yyyy-MM')
ORDER BY AnoMes;



