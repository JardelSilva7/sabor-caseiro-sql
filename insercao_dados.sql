-- Inserindo clientes
INSERT INTO CLIENTE (nome, telefone, endereco) VALUES
('João Silva', '(11) 99999-1111', 'Rua A, 123 - Centro'),
('Maria Santos', '(11) 98888-2222', 'Av. B, 456 - Jardins'),
('Carlos Oliveira', '(11) 97777-3333', NULL);

-- Inserindo mesas
INSERT INTO MESA (numero, capacidade, status) VALUES
(1, 4, 'livre'),
(2, 6, 'ocupada'),
(3, 2, 'livre'),
(4, 8, 'livre');

-- Inserindo funcionários
INSERT INTO FUNCIONARIO (nome, cargo, telefone) VALUES
('Pedro Almeida', 'garçom', '(11) 96666-4444'),
('Ana Costa', 'cozinheiro', '(11) 95555-5555'),
('Lucas Mendes', 'entregador', '(11) 94444-6666');

-- Inserindo pratos
INSERT INTO PRATO (nome, descricao, preco, categoria) VALUES
('Feijoada Completa', 'Feijoada com todos os acompanhamentos', 45.90, 'Principal'),
('Lasanha à Bolonhesa', 'Lasanha com molho bolonhesa e queijo', 38.50, 'Principal'),
('Salada Caesar', 'Salada com frango, croutons e molho caesar', 28.90, 'Entrada'),
('Suco de Laranja', 'Suco natural de laranja', 9.90, 'Bebida'),
('Sorvete de Chocolate', 'Sorvete de chocolate com calda', 15.50, 'Sobremesa');

-- Inserindo pedidos
INSERT INTO PEDIDO (tipo, status, id_cliente, id_mesa, id_funcionario) VALUES
('presencial', 'entregue', 1, 2, 1),
('delivery', 'em preparo', 2, NULL, 1),
('presencial', 'recebido', 3, 1, 1);

-- Inserindo itens dos pedidos
INSERT INTO ITEM_PEDIDO (id_pedido, id_prato, quantidade, subtotal) VALUES
(1, 1, 2, 91.80),
(1, 4, 2, 19.80),
(2, 2, 1, 38.50),
(2, 3, 1, 28.90),
(3, 5, 3, 46.50);
