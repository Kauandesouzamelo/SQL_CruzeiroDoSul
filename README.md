📌 Sobre o Projeto

Este repositório faz parte da atividade prática da matéria Modelagem de Banco de Dados – Cruzeiro do Sul, cujo objetivo é projetar, modelar e implementar um banco relacional utilizando SQLite Studio / SQL / PgAdmin.

🧱 Estrutura do Banco de Dados

O mini-mundo representa um sistema de gestão de serviços e controle de veículos, onde é possível registrar clientes, seus veículos, solicitações de serviço (pedidos), processos de estoque, entregas e pagamentos.

O banco de dados é composto pelas seguintes entidades principais:

Cliente – armazena os dados dos clientes.

Veículo – associa veículos aos clientes.

Estoque – controla as entradas de serviços e informações técnicas do veículo vinculadas a um pedido.

Pedido – registra solicitações, datas, status e valores.

Vendedor – relaciona o responsável por cada pedido.

Entrega – registra os dados de entrega vinculados ao estoque.

Pagamento – armazena informações sobre o pagamento do serviço.

Cada tabela foi estruturada com suas chaves primárias e estrangeiras, respeitando o modelo lógico definido no mini-mundo e garantindo integridade referencial.

🛠 Tecnologias Utilizadas

Modelagem e implementação no PgAdmin / PostgreSQL
(compatível com outros SGBDs com pequenas adaptações)

Scripts SQL completos contendo DDL e DML

GitHub para versionamento do projeto

🎯 Conclusão

Este projeto demonstra o processo completo de construção de um banco de dados: desde a modelagem conceitual do mini-mundo, normalização e definição das entidades, até a implementação das tabelas, relacionamentos e manipulação de dados.
O objetivo é aplicar, na prática, os conceitos de modelagem, integridade, normalização e comandos SQL dentro de um cenário realista de gestão de serviços automotivos.
