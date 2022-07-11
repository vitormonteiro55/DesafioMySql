create database atividades;

use  atividades;

CREATE TABLE fornecedor( 
	id int AUTO_INCREMENT, 
	nome varchar(40) NOT null, 
	ie varchar(14), 
	PRIMARY KEY(id) 
);

CREATE TABLE material( 
	id int AUTO_INCREMENT, 
	nome varchar(40) NOT null, 	 
	PRIMARY KEY(id) 
);

CREATE TABLE ordem_compra( 
	id int AUTO_INCREMENT PRIMARY KEY, 
	data date NOT null, 	
      idFornecedor int,
	CONSTRAINT fk_fornecedor FOREIGN KEY (idFornecedor) REFERENCES fornecedor (id)
);

CREATE TABLE item_ordem_compra( 
	idOrdemCompra int,
    idMaterial int,
    valor float(6,2),
    quantidade int,
	CONSTRAINT fk_ordem_compra FOREIGN KEY (idOrdemCompra) REFERENCES ordem_compra (id),
    CONSTRAINT fk_material FOREIGN KEY (idMaterial) REFERENCES material (id),
    CONSTRAINT pk_item_ordem_compra PRIMARY KEY (idOrdemCompra, idMaterial)
);

INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Coelho Pai", "17568");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Coelho Filho", "26768");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Coelho Neto", "76859");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Balança mas não cai", "12345");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Torre de Babel", "66668");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Construindo o mundo", "54213");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Outra brecha", "10011");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Tudo para construção", "90012");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Building the world", "80654");
INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Novos empreendimentos", "12068");

INSERT INTO material (id, nome) VALUES (null, "martelo");
INSERT INTO material (id, nome) VALUES (null, "prego");
INSERT INTO material (id, nome) VALUES (null, "cimento");
INSERT INTO material (id, nome) VALUES (null, "ferragem");
INSERT INTO material (id, nome) VALUES (null, "argamassa");
INSERT INTO material (id, nome) VALUES (null, "parafuso");
INSERT INTO material (id, nome) VALUES (null, "fiação");
INSERT INTO material (id, nome) VALUES (null, "cal");
INSERT INTO material (id, nome) VALUES (null, "areia");
INSERT INTO material (id, nome) VALUES (null, "metais");
INSERT INTO material (id, nome) VALUES (null, "louças");
INSERT INTO material (id, nome) VALUES (null, "tijolo");
INSERT INTO material (id, nome) VALUES (null, "telha");
INSERT INTO material (id, nome) VALUES (null, "madeira");
INSERT INTO material (id, nome) VALUES (null, "porta");
INSERT INTO material (id, nome) VALUES (null, "janela");

INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-10',1);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-10',3);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-10',6);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-11',4);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-12',5);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-12',2);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-13',8);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-14',7);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-15',5);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-15',4);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-15',10);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-17',1);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-17',2);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-18',3);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-18',9);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-18',7);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-19',4);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-19',2);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-19',3);
INSERT INTO ordem_compra (id, data, idFornecedor)
	VALUES(null,'2022-05-19',10);

INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (1, 7, 5, 7.2);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (1, 1, 1, 12);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (1, 6, 15, 1.5);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (2, 2, 100, 0.29);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (2, 1, 1, 12);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (2, 3, 5, 35.9);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (2, 8, 5, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (3, 3, 10, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (3, 8, 7, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (4, 3, 12, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (4, 4, 40, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (4, 9, 100, 30);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (4, 8, 8, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (4, 12, 1000, 5.5);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (5, 11, 14, 70);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (6, 13, 500, 1.75);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (6, 14, 20, 50);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (6, 15, 8, 350);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (6, 16, 8, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (7, 2, 100, 0.25);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (7, 6, 40, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (7, 7, 50, 18.5);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (8, 10, 4, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (8, 11, 6, 250);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (8, 15, 2, 0.25);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (8, 16, 3, 65);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (9, 3, 6, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (9, 9, 100, 30);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (10, 3, 10, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (10, 4, 5, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (10, 8, 5, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (10, 9, 200, 30);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (10, 12, 700, 5.97);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (11, 5, 10, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (12, 1, 3, 12.2);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (12, 2, 500, 0.25);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (12, 6, 200, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (12, 14, 20, 50);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (13, 6, 15, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (13, 15, 5, 350);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (14, 6, 18, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (14, 15, 6, 250);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (14, 16, 1, 65);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (15, 5, 30, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (15, 9, 10, 30);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (16, 2, 100, 0.25);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (16, 3, 30, 40);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (16, 4, 6, 39);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (16, 8, 15, 32);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (16, 9, 20, 30);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (17, 5, 15, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (17, 6, 15, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (17, 10, 5, 97.3);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (17, 11, 6, 70);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (17, 16, 2, 65);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (18, 11, 5, 70);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (18, 13, 300, 1.75);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (19, 2, 200, 0.29);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (19, 13, 500, 1.75);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (19, 14, 27, 50);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (19, 6, 150, 0.35);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (20, 5, 15, 28);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (20, 10, 5, 97.3);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (20, 11, 10, 70);
INSERT INTO item_ordem_compra (idOrdemCompra, idMaterial, quantidade, valor) values (20, 15, 3, 450);

*******************************************************************************************************


SELECT * from fornecedor;

SELECT nome FROM fornecedor;

SELECT oc.id, oc.data, f.nome, f.ie
FROM fornecedor as f, ordem_compra as oc;

SELECT oc.id, oc.data, f.nome, f.ie 
FROM fornecedor as f, ordem_compra as oc 
WHERE oc.idFornecedor = f.id;

SELECT oc.id, oc.data, f.nome, f.ie 
FROM fornecedor as f, ordem_compra as oc 
WHERE oc.idFornecedor = f.id 
ORDER BY f.ie

SELECT oc.id, oc.data, f.nome, f.ie 
FROM fornecedor as f, ordem_compra as oc 
WHERE oc.idFornecedor = f.id 
ORDER BY f.ie DESC

SELECT ioc.idOrdemCompra, ioc.idMaterial, m.nome 
FROM item_ordem_compra AS ioc, material AS m 
WHERE ioc.idMaterial = m.id 
ORDER BY ioc.idOrdemCompra

///////////////////// exercicio /////////////////////////

--1. Exiba os dados da compra (item_ordem_compra) de todos os materiais cujo quantidade seja maior que 10.

SELECT * 
FROM item_ordem_compra 
WHERE quantidade > 10

--***************************************************************************************

--2. Exiba os dados da compra (item_ordem_compra) de todos os materiais cujo valor seja
menor que 50.

SELECT * 
FROM item_ordem_compra 
WHERE quantidade > 10 AND valor < 50

--***************************************************************************************

--3. Exibir os dados da compra de todos os materiais cuja quantidade seja maior que 100 e o valor seja menor que 50, 
contendo o nome do material e o nome do fornecedor.

SELECT f.nome, m.nome
FROM item_ordem_compra as ic, ordem_compra as c ,fornecedor as f, material as m
WHERE ic.idOrdemCompra = c.id AND c.idFornecedor = f.id AND ic.idMaterial = m.id
AND ic.quantidade > 100 AND ic.valor < 50


--***************************************************************************************

-- 4. Exiba o subtotal de cada material  vendido, o nome do material e o nome do fornecedor, para cada item_ordem_compra.

SELECT c.id,f.nome, m.nome, ic.quantidade*ic.valor as Subtotal
FROM item_ordem_compra as ic, ordem_compra as c ,fornecedor as f, material as m
WHERE c.idFornecedor = f.id AND ic.idOrdemCompra = c.id AND ic.idMaterial = m.id
ORDER BY idOrdemCompra


-- ****************************************************************************************
SELECT *, quantidade*valor as Subtotal 
FROM item_ordem_compra

-- *****************************************************************************************
SELECT idOrdemCompra, SUM(quantidade * valor) as totalCompra 
FROM item_ordem_compra 
GROUP BY idOrdemCompra

SELECT idOrdemCompra, SUM(valor * quantidade) as totalCompra 
FROM item_ordem_compra
GROUP by idOrdemCompra 
HAVING totalCompra > 5000

-- *****************************************************************************************

-- 5. O nome do fornecedor da ordem de compra, a ordem de compra e o total pago pela ordem de compra.

SELECT c.id, f.nome, c.data, sum(ic.quantidade*ic.valor) as total
FROM item_ordem_compra as ic, ordem_compra as c ,fornecedor as f
WHERE c.idFornecedor = f.id AND ic.idOrdemCompra = c.id 
GROUP by c.id

-- *****************************************************************************************

-- 6. O nome do fornecedor da ordem de compra, a data da ordem de compra, o total pago pela ordem de compra, 
   num determinado intervalo de datas.

SELECT f.nome, oc.data, sum(valor * quantidade) as total 
FROM ordem_compra as oc, item_ordem_compra as ioc, fornecedor as f 
where f.id = oc.idFornecedor 
	AND oc.id = ioc.idOrdemCompra 
	AND oc.data BETWEEN '2022-05-15' AND '2022-05-20' 
GROUP by ioc.idOrdemCompra

-- *****************************************************************************************

-- Fazer os exercicios abaixo:

-- *****************************************************************************************

-- listar o nome de cada material e o valor medio desse material

SELECT m.nome, avg(ic.quantidade*ic.valor) as total
FROM material as m, item_ordem_compra as ic
WHERE ic.idMaterial = m.id
GROUP by m.id



-- *****************************************************************************************

-- listar o nome de cada material e o valor medio desse material entre os dias 10/05/2022 e 13/05/2022 (lembrar que 
   o preco do material pode sofrer alteraçao e por isso será gravado na tabela de itens de compra)

SELECT m.nome, avg(ic.quantidade*ic.valor) as total
FROM material as m, item_ordem_compra as ic, ordem_compra as oc
WHERE ic.idMaterial = m.id AND oc.data BETWEEN '2022-05-10' AND '2022-05-13'
GROUP by m.id

-- *****************************************************************************************

-- qual é o produto que mais aparece nas compras?

SELECT m.nome, sum(ic.quantidade) as qtd_total
FROM material as m, item_ordem_compra as ic
WHERE ic.idMaterial = m.id
GROUP BY m.id
ORDER BY qtd_total DESC

-- *****************************************************************************************
--------------------------------------------------------------------------------------------

-- CRUD (insert, select, update, delete)
