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

## 🚀 Próximos Passos

- Construção de dashboard em Power BI
- Implementação de índices para otimização
- Evolução para modelo dimensional (Star Schema)
