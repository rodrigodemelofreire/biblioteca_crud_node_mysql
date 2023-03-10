DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca CHARSET=UTF8 COLLATE utf8_general_ci;
USE biblioteca;

CREATE TABLE livro (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
autor VARCHAR(50),
valor DECIMAL(10, 2) NOT NULL,
data_emprestimo DATE NOT NULL,
data_devolucao_prevista DATE NOT NULL,
data_devolucao DATE
);

INSERT INTO livro (nome, autor, valor, data_emprestimo, data_devolucao_prevista, data_devolucao)
VALUES  ('Harry Potter Box', 'J.K. Rowling', 449.90, '2022-05-06', '2022-06-07', '2022-07-08'),
        ('The Alchemist', 'Paulo Coelho', 29.90, '2022-03-08', '2022-04-08', NULL),
        ('Star Wars: A Velha República - Revan', 'Karpyshyn', 59.90 , '2022-05-08', '2022-05-12', '2022-05-22'),
        ('Box A Divina Comédia', 'Dante Alighieri', 147.45 , '2022-05-08', '2022-05-12', '2022-05-22'),
        ('O chamado de Cthulhu', 'H.P. Lovecraft', 29.90 , '2022-05-08', '2022-05-12', '2022-05-22');
