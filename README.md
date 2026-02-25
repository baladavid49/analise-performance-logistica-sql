# 📦 Projeto: Análise de Desempenho Logístico (SQL Server)

## 🎯 Contexto de Negócio

Uma empresa de logística deseja avaliar sua performance operacional para identificar:

- Taxa de atrasos
- Eficiência dos motoristas
- Lucratividade por região
- Evolução mensal das entregas

O objetivo é gerar indicadores estratégicos para apoiar a tomada de decisão.

---

## 🏗 Modelagem de Dados

O banco foi estruturado em modelo relacional com três tabelas:

- **Motoristas** → Dados dos responsáveis pelas entregas
- **Regioes** → Informações geográficas
- **Entregas** → Tabela fato com 3000 registros simulados

Relacionamentos garantidos via Foreign Keys.

---

## 📊 Indicadores Desenvolvidos (KPIs)

- Percentual de entregas atrasadas
- Tempo médio de entrega
- Ranking de motoristas por desempenho
- Lucro total por região
- Volume mensal de entregas

---

## 📈 Principais Insights

- Entregas com maior distância apresentam maior probabilidade de atraso.
- Algumas regiões possuem custo operacional elevado, reduzindo a margem.
- Há variação significativa de desempenho entre motoristas.

---

## 🛠 Tecnologias Utilizadas

- SQL Server
- T-SQL
- Agregações
- CTE
- Views

---




## 🧱 Modelo Relacional

O banco foi estruturado com três entidades principais relacionadas por chaves estrangeiras.

![Modelo Relacional](https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/Modelo_Relacional.png.png?raw=true)



## 📊 KPI – Taxa de Entregas no Prazo

Este indicador mede o percentual de entregas realizadas com sucesso.

![KPI Entregas no Prazo](https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/kpi_entrega_no_prazo.png.png?raw=true)

📌 Insight:
A taxa de entregas no prazo permite avaliar a eficiência operacional e identificar possíveis gargalos logísticos.


## ⏳ KPI – Tempo Médio de Entrega

Mede o tempo médio entre envio e entrega dos pedidos concluídos.

![KPI Tempo Médio](https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/kpi_tempo_medio.png.png?raw=true)

📌 Insight:
O tempo médio de entrega impacta diretamente a satisfação do cliente e a performance da operação.







## 🚀 Próximos Passos

- Construção de dashboard em Power BI
- Implementação de índices para otimização
- Evolução para modelo dimensional (Star Schema)

