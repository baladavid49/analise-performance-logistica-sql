📦 Projeto: Análise de Desempenho Logístico com SQL
📌 Sobre o Projeto

Este projeto foi desenvolvido para praticar SQL em um cenário simulado de uma empresa de logística.
O objetivo foi analisar dados operacionais e gerar indicadores que ajudem a entender a eficiência das entregas e a rentabilidade da operação.

Os dados foram simulados com 3000 registros, permitindo trabalhar consultas próximas de um contexto real.

🎯 Problema de Negócio Simulado

A empresa deseja responder perguntas como:

Qual o percentual de entregas realizadas no prazo?

Qual o tempo médio de entrega?

Quais motoristas apresentam melhor desempenho?

Qual região gera maior lucro?

Como o volume de entregas evolui ao longo dos meses?

A proposta do projeto é transformar dados brutos em informações que apoiem decisões.

🏗 Estrutura do Banco de Dados

O banco foi estruturado com três tabelas principais:

🔹 Motoristas

Contém os dados dos motoristas responsáveis pelas entregas.

🔹 Regioes

Contém informações das regiões atendidas.

🔹 Entregas

Tabela principal com os registros das entregas realizadas, incluindo:

Datas

Distância

Receita

Custo

Status da entrega

As tabelas estão relacionadas por chaves estrangeiras, garantindo integridade e consistência dos dados.


📊 Indicadores Desenvolvidos

Foram criadas consultas em SQL para gerar os seguintes indicadores:

📌 Percentual de entregas no prazo

⏳ Tempo médio de entrega

🏆 Ranking de motoristas por desempenho

💰 Lucro total por região

📈 Volume mensal de entregas

As consultas utilizaram:

Funções de agregação (SUM, AVG, COUNT)

GROUP BY


Views para organização dos indicadores

🧱 Modelo Relacional

Representação do modelo de dados utilizado no projeto:
https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/Modelo_Relacional.png.png?raw=true


📊 KPI – Taxa de Entregas no Prazo

Indicador que mede o percentual de entregas realizadas dentro do prazo.
https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/kpi_entrega_no_prazo.png?raw=true


⏳ KPI – Tempo Médio de Entrega

Indicador que mede o tempo médio entre envio e conclusão das entregas.
https://github.com/baladavid49/analise-performance-logistica-sql/blob/main/kpi_tempo_medio.png.png?raw=true


📈 Principais Análises

A partir das consultas realizadas, foi possível observar que:

Entregas com maior distância tendem a apresentar mais atrasos.

Existem diferenças de desempenho entre motoristas.

Algumas regiões possuem custo operacional mais elevado, impactando a margem.

O volume de entregas apresenta variação ao longo dos meses.

🛠 Tecnologias Utilizadas

SQL Server

T-SQL

Modelagem relacional básica

🎯 Objetivo do Projeto

Este projeto faz parte do meu desenvolvimento na área de Análise de Dados e tem como foco:

Aplicar SQL em um cenário prático

Desenvolver raciocínio analítico

Entender indicadores de desempenho operacional

Praticar modelagem de dados

🚀 Próximos Passos

Construir dashboard em Power BI com os dados tratados

Adicionar novos indicadores

Melhorar a performance das consultas com índices

Evoluir o modelo para formato mais próximo de um modelo dimensional

