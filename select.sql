SELECT 
    id_pedido, 
    data, 
    status, 
    valor_total
FROM pedido
WHERE valor_total > 200
ORDER BY valor_total DESC;

SELECT 
    e.id_estoque,
    e.marca,
    e.ano,
    e.tipo_servico,
    v.nome AS nome_veiculo
FROM estoque e
JOIN veiculo v ON e.id_veiculo = v.id_veiculo
WHERE e.ano > 2018
ORDER BY e.ano ASC;

SELECT 
    v.nome AS vendedor,
    v.cpf, 
    v.assinatura,
    p.id_pedido,
    p.status,
    p.valor_total
FROM vendedor v
JOIN pedido p ON v.id_pedido = p.id_pedido
ORDER BY v.nome;

SELECT 
    id_pedido,
    valor_total
FROM pedido
ORDER BY valor_total DESC
LIMIT 2;

SELECT 
    p.id_pedido,
    p.data AS data_pedido,
    p.status,
    p.valor_total,

    v.nome AS veiculo,
    v.marca AS marca_veiculo,
    v.ano AS ano_veiculo,

    e.tipo_servico,
    e.cor AS cor_do_servico,

    ent.endereco AS endereco_entrega,
    ent.data AS data_entrega
FROM pedido p
JOIN estoque es ON p.id_pedido = es.id_pedido
JOIN veiculo v ON es.id_veiculo = v.id_veiculo
JOIN entrega ent ON es.id_estoque = ent.id_estoque;

SELECT 
    pag.id_pagamento,
    pag.valor_total,
    pag.forma_de_pagamento,
    pag.data AS data_pagamento,
    pag.nota_fiscal,

    e.tipo_servico,
    e.marca,
    e.ano,

    p.id_pedido
FROM pagamento pag
JOIN estoque e ON pag.id_estoque = e.id_estoque
JOIN pedido p ON e.id_pedido = p.id_pedido
ORDER BY pag.valor_total DESC;
