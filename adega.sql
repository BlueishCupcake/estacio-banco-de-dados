INSERT INTO empresa (cnpj, nome, tipo) 
VALUES ('51.618.902/0001-27', 'Nathalia Maschika Aquino', 'Adega');

SELECT * FROM empresa;

INSERT INTO categorias (nome)
VALUES ('Bebidas'), ('Comestiveis'), ('Utilitários');

SELECT * FROM categorias;

INSERT INTO produto ("idCategoria", nome, preco, quantidade)
VALUES (1, 'Vodka', 19.99, 10), (1, 'Cerveja', 7.99, 60), (1, 'Energético', 9.99, 26),
(2, 'Barra de cereal', 3.99, 7), (2, 'Cheetos', 5.99, 4), (2, 'Amendoim', 2.99, 30),
(3, 'Carvão', 59.99, 5), (3, 'Cigarro', 9.99, 12), (3, 'Isqueiro', 3.99, 15);

SELECT p.nome, p.preco, p.quantidade, c.nome FROM produto p
LEFT JOIN categorias c ON c."idCategoria" = p."idCategoria";