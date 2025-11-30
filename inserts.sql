
--------TABELA CLIENTE---------
INSERT INTO cliente(nome, telefone, cpf)
VALUES
('João da Silva', '11998887777', '123.456.789-00'),
('Maria Oliveira', '11997776655', '987.654.321-00'),
('Carlos Ferreira', '11991234567', '111.222.333-44');

--------TABELA VEICULO---------
INSERT INTO veiculo(nome, marca, ano, id_cliente)
VALUES
('Civic', 'Honda', 2018, 1),
('Corolla', 'Toyota', 2020, 2),
('Onix', 'Chevrolet', 2019, 3);

--------TABELA PEDIDO---------
INSERT INTO pedido(data, status, valor_total)
VALUES
('2024-01-15', 'Concluído', 850.00),
('2024-02-10', 'Em andamento', 430.00),
('2024-03-01', 'Aguardando aprovação', 1200.00);

--------TABELA VENDEDOR---------
INSERT INTO vendedor(nome, cpf, assinatura, id_pedido)
VALUES
('Marcos Pereira', '222.333.444-55', 'AssinaturaDigital01', 1),
('Fernanda Lima', '111.222.333-44', 'AssinaturaDigital02', 2),
('Roberto Mendes', '999.888.777-66', 'AssinaturaDigital03', 3);

--------TABELA ESTOQUE---------
INSERT INTO estoque(data, marca, ano, tipo_servico, cor, id_veiculo, id_pedido)
VALUES
('2024-01-15', 'Honda', 2018, 'Revisão completa', 'Prata', 1, 1),
('2024-02-10', 'Toyota', 2020, 'Troca de pneus', 'Preto', 2, 2),
('2024-03-01', 'Chevrolet', 2019, 'Troca de óleo', 'Branco', 3, 3);

--------TABELA ENTREGA---------
INSERT INTO entrega(data, marca, ano, endereco, id_estoque)
VALUES
('2024-01-16', 'Honda', 2018, 'Rua das Acácias, 120', 1),
('2024-02-12', 'Toyota', 2020, 'Av. Principal, 500', 2),
('2024-03-03', 'Chevrolet', 2019, 'Rua Central, 90', 3);

--------TABELA PAGAMENTO---------
INSERT INTO pagamento(valor_total, forma_de_pagamento, data, nota_fiscal, id_estoque)
VALUES
(850.00, 'Cartão', '2024-01-15', 'NF-0001', 1),
(430.00, 'Pix', '2024-02-10', 'NF-0002', 2),
(1200.00, 'Dinheiro', '2024-03-01', 'NF-0003', 3);


