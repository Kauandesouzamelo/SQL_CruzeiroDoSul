CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone CHAR(15),
    cpf VARCHAR(14)
);

CREATE TABLE veiculo (
    id_veiculo SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    marca VARCHAR(30),
    ano INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    assinatura VARCHAR(100),
    id_pedido INT, 
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE pedido (
    id_pedido SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(50),
    valor_total DECIMAL(10,2),
    id_estoque INT,
);

CREATE TABLE estoque (
    id_estoque SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    marca VARCHAR(30),
    ano INT,
    tipo_servico VARCHAR(100),
    cor CHAR(15),
    id_veiculo INT NOT NULL,
    id_pedido INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE entrega (
    id_entrega SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    marca VARCHAR(30),
    ano INT,
    endereco VARCHAR(100),
    id_estoque INT NOT NULL,
    FOREIGN KEY (id_estoque) REFERENCES estoque(id_estoque)
);

CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    valor_total DECIMAL(10,2),
    forma_de_pagamento VARCHAR(20),
    data DATE NOT NULL,
    nota_fiscal VARCHAR(50),
    id_estoque INT UNIQUE NOT NULL, -- relação 1:1
    FOREIGN KEY (id_estoque) REFERENCES estoque(id_estoque)
);
