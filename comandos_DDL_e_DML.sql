-- DROP DATABASE pizzaria;
CREATE DATABASE pizzaria;
USE pizzaria;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT,
    telefone VARCHAR(15),
    nome VARCHAR(120),
    rua VARCHAR(255),
    nr INT(6),
    bairro VARCHAR(120),
    CONSTRAINT pk_cliente PRIMARY KEY (id)
);

CREATE TABLE sabores (
    id INT AUTO_INCREMENT,
    descricao VARCHAR(120),
    preco FLOAT(6, 2),
    CONSTRAINT pk_sabores PRIMARY KEY (id)
);
ALTER TABLE sabores ADD (nome VARCHAR(90));
CREATE TABLE pedido (
    id INT AUTO_INCREMENT,
    id_cliente INT,
    dt_pedido DATE,
    CONSTRAINT pk_pedido PRIMARY KEY (id),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) 
		REFERENCES cliente(id)   
);
CREATE TABLE pedido_itens (
    id INT auto_increment,
    id_sabor INT,
    id_pedido INT,
    preco FLOAT(6, 2),
    CONSTRAINT pk_itens PRIMARY KEY (id),
	CONSTRAINT fk_itensdopedido FOREIGN KEY (id_pedido) REFERENCES pedido(id),
	CONSTRAINT fk_itens_pedido FOREIGN KEY (id_sabor) REFERENCES sabores(id)
);

INSERT INTO cliente (TELEFONE, NOME, RUA, NR, BAIRRO) 
VALUES ('11944768124', 'Adriano Saraiva', 'Rua Amador Bueno', 255, 'Jardim Amália');
INSERT INTO cliente (TELEFONE, NOME, RUA, NR, BAIRRO) 
VALUES ('11944768124', 'Adriano Saraiva', 'Rua Amador Bueno', 255, 'Jardim Amália');
INSERT INTO sabores (DESCRICAO, PRECO, NOME) 
VALUES ('Palmito, Ervilha, Mandioca', 50.00, 'A MODA DA CASA');
INSERT INTO sabores (DESCRICAO, PRECO, NOME) 
VALUES ('Calabresa, Cebola, Azeitona', 33.00, 'Calabresa');
 
SELECT * FROM cliente;
SELECT * FROM sabores;
SELECT * FROM pedido;
SELECT * FROM pedido_itens;
 
 
INSERT INTO pedido (ID, ID_CLIENTE, DT_PEDIDO) 
VALUES (default, 1, '2024-02-01');
INSERT INTO pedido_itens (ID, ID_SABOR, ID_PEDIDO, PRECO) 
     VALUES (default, 2, 1, 33);

SELECT * FROM cliente;
SELECT * FROM sabores;
SELECT * FROM pedido;
SELECT * FROM pedido_itens;

INSERT INTO pedido (ID, ID_CLIENTE, DT_PEDIDO) 
VALUES (default, 2, '2024-02-07');
INSERT INTO pedido_itens (ID, ID_SABOR, ID_PEDIDO, PRECO) 
     VALUES (default, 2, 3, 33);


     

     


