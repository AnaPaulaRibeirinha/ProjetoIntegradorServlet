CREATE TABLE IF NOT EXISTS `usuario` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Senha` varchar(100) NOT NULL,
  `Numero` varchar(100) NOT NULL,
  `Endereco` varchar(100) NOT NULL,
  `Cep` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;