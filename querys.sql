

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
