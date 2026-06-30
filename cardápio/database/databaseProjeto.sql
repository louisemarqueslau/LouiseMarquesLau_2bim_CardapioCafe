
DROP TABLE IF EXISTS categoria, item_cardapio;

CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL
);


INSERT INTO categoria (nome_categoria)
VALUES
('Salgados'),
('Doces'),
('Listar tudo'),
('Sanduíches'),
('Pizzas'),
('Massas'),
('Cafés'),
('Sucos'),
('Sobremesas'),
('Combos');


CREATE TABLE item_cardapio (
    id_item SERIAL PRIMARY KEY,
    nome_item VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    preco DECIMAL(10,2) NOT NULL,

    id_categoria INT,

    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);


INSERT INTO item_cardapio (nome_item, descricao, preco, id_categoria)
VALUES
('Coxinha', 'Frango com catupiry', 7.50, 1),

('Empada', 'Empada de frango', 6.00, 1),

('Doguinho', 'Assado com salsicha', 7.00, 1),

('Esfiha', 'Esfiha de frango, presunto e carne', 6.00, 1),

('Brigadeiro', 'Brigadeiro tradicional', 3.50, 2),

('Bolo de chocolate', 'Fatia de bolo', 8.00, 2),

('Bolo de cenoura', 'Fatia de bolo', 8.00, 2),

('Petit Gateau', 'Bolo com calda de chocolate e sorvete de creme', 16.00, 9),

('Beijinho', 'Docinho de coco tradicional', 3.50, 2),

('Café preto', 'Café tradicional', 4.00, 7),

('Suco de laranja', 'Suco natural', 6.00, 8),

('Hambúrguer artesanal', 'Pão, carne e queijo', 15.00, 4),

('Pizza de queijo', 'Pizza com queijo e molho', 30.00, 5),

('Macarrão ao molho', 'Massa com molho de tomate', 18.00, 6),

('Combo café da manhã', 'Café + salgado + doce', 20.00, 10);