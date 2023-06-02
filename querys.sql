-- CRIAR A BASE
-- create database teste_crud;

-- USAR A TABELA:
use teste_crud;

-- CRIA A TABELA DE CONTATO
CREATE TABLE IF NOT EXISTS tb_contato (
  id_contato int(10) NOT NULL AUTO_INCREMENT,
  email varchar(100) NOT NULL,
  telefone int(10) NOT NULL,
  nome_contato varchar(100) NOT NULL,
  sobrenome_contato varchar(100) NOT NULL,
  observacao varchar(100) NOT NULL,
  PRIMARY KEY (id_contato)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21;

-- SELECIONA OS CONTATOS ENVIADOS:
-- select * from tb_contato;

-- CRIA A TABELA DE USUARIO
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nm_telefone` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- SELECIONA TODOS OS USUARIOS:
select * from tb_usuario;

-- CRIA A TABELA DE QUARTO
CREATE TABLE IF NOT EXISTS `tb_quartos` (
  `id_quarto` int(10) NOT NULL AUTO_INCREMENT,
  `ds_quarto` varchar(100) NOT NULL,
  `qtd_quartos` int(10) NOT NULL,
  PRIMARY KEY (`id_quarto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- SELECIONA TODOS OS QUARTOS:
select * from tb_quartos;

-- INSERTS DOS QUARTOS

-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Solteiro Standard', 6);
-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Solteiro Master', 6);
-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Solteiro Deluxe', 6);
-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Casal Standard', 6);
-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Casal Master', 6);
-- INSERT INTO tb_quartos (ds_quarto, qtd_quartos) values ('Quarto Casal Deluxe', 6);

-- CRIA A TABELA DE RESERVA DE QUARTO:

CREATE TABLE IF NOT EXISTS `tb_reserva_quartos` (
  `id_reserva_quarto` int(10) NOT NULL AUTO_INCREMENT,
  `email_reserva` varchar(100) NOT NULL,
  `id_quarto` int(10),
  CONSTRAINT fk_ReservaQuarto FOREIGN KEY (`id_quarto`) REFERENCES `tb_quartos` (`id_quarto`),
  PRIMARY KEY (`id_reserva_quarto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- SELECIONA TODAS AS RESERVAS:
select * from tb_reserva_quartos;
