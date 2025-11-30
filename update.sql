--------------ATUALIZAR STATUS DE PEDIDO PARA "ENTREGUE"-------------
UPDATE pedido
SET status = 'Entregue'
WHERE id_pedido = 2;

--------------AUMENTAR O VALOR TOTAL DO PEDIDO EM 10%-------------
UPDATE pedido
SET valor_total = valor_total * 1.10;

--------------ALTERAR O TIPO DE SERVIÇO NO ESTOQUE-------------
UPDATE estoque
SET tipo_servico = 'Revisão completa'
WHERE id_estoque = 1;

--------------ATUALIZAR CPF DO CLIENTE-------------
UPDATE cliente
SET cpf = '999.888.777-66'
WHERE id_cliente = 3;

--------------REMOVER UM PAGAMENTO (RELACIONAMENTO 1:1)-------------
DELETE FROM pagamento 
WHERE id_pagamento = 1;

--------------REMOVER UM PEDIDO COMPLETO-------------
-- 1) Deletar pagamento
DELETE FROM pagamento 
WHERE id_estoque IN (SELECT id_estoque FROM estoque WHERE id_pedido = 1);

-- 2) Deletar entrega
DELETE FROM entrega
WHERE id_estoque IN (SELECT id_estoque FROM estoque WHERE id_pedido = 1);

-- 3) Deletar estoque
DELETE FROM estoque
WHERE id_pedido = 1;

-- 4) Deletar o pedido
DELETE FROM pedido
WHERE id_pedido = 1;

--------------REMOVER CLIENTES SEM VEÍCULO-------------
DELETE FROM cliente
WHERE id_cliente NOT IN (SELECT id_cliente FROM veiculo);

--------------REMOVER VEÍCULO DE UM CLIENTE-------------
DELETE FROM veiculo
WHERE id_veiculo = 2;

--------------REMOVER ENTREGA COM ANO ANTIGO-------------
DELETE FROM entrega
WHERE ano < 2015;
