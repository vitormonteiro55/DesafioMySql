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


INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Juca da Silva", "123456");
----------------------

SELECT *
FROM fornecedor
WHERE nome ='Juca da Silva'

---------------------

UPDATE fornecedor
SET ie = '987654'
WHERE nome ='Juca da Silva'

---------------------

DELETE 
FROM fornecedor
WHERE nome ='Juca da Silva'

---------------------

INSERT INTO fornecedor (id, nome, ie) VALUES (null, "Maria Joaquina", "111254");