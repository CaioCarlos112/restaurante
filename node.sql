-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Jul-2017 às 05:37
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Estrutura das tabelas
--
CREATE TABLE res_categorias (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL
);

CREATE TABLE res_produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_categoria INT NOT NULL,
	nome VARCHAR(45) NOT NULL,
	preco FLOAT NOT NULL,
	destaque BOOL,
	CONSTRAINT 'fk_id_categoria'
		FOREIGN KEY ('id_categoria')
		REFERENCES 'res_categorias' ('id')
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);
--
-- Extraindo dados da tabela res_produtos
--

INSERT INTO res_produtos (nome, preço, res_categorias, destaque) VALUES
('sorvete', '5,00', 'sobremesa', 'vários sabores'),
('porção de batata', '7,00', 'porção', 'porção média');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE 'res_produtos'
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE 'res_produtos'
  MODIFY 'id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
