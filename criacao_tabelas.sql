-- Criação do banco de dados
CREATE DATABASE SaborCaseiro;
USE SaborCaseiro;

-- Tabela CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

-- Tabela MESA
CREATE TABLE MESA (
    id_mesa INT PRIMARY KEY AUTO_INCREMENT,
    numero INT UNIQUE NOT NULL,
    capacidade INT NOT NULL,
    status VARCHAR(20) DEFAULT 'livre'
);

-- Tabela FUNCIONARIO
CREATE TABLE FUNCIONARIO (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(30),
    telefone VARCHAR(20)
);

-- Tabela PRATO
CREATE TABLE PRATO (
    id_prato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50)
);

-- Tabela PEDIDO
CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    tipo VARCHAR(20) NOT NULL,
    status VARCHAR(20) DEFAULT 'recebido',
    id_cliente INT,
    id_mesa INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_mesa) REFERENCES MESA(id_mesa),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
);

-- Tabela ITEM_PEDIDO
CREATE TABLE ITEM_PEDIDO (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_prato INT NOT NULL,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_prato) REFERENCES PRATO(id_prato)
);
