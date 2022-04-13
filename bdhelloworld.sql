-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Mar-2022 às 02:32
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdhelloworld`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbagenda`
--

CREATE TABLE `tbagenda` (
  `idAgenda` int(11) NOT NULL,
  `nomeAgenda` varchar(30) DEFAULT NULL,
  `dataAgenda` datetime DEFAULT NULL,
  `horarioTerminoAgenda` time DEFAULT NULL,
  `horarioAgenda` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbagendaatividade`
--

CREATE TABLE `tbagendaatividade` (
  `idAgendaAtividade` int(11) NOT NULL,
  `dataVencimentoAtividade` date DEFAULT NULL,
  `dataAdicionadaAtividade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbarquivoatividade`
--

CREATE TABLE `tbarquivoatividade` (
  `idArquivoAtividade` int(11) NOT NULL,
  `tipoArquivoAtividade` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbatividade`
--

CREATE TABLE `tbatividade` (
  `idAtividade` int(11) NOT NULL,
  `tituloAtividade` varchar(50) DEFAULT NULL,
  `textoAtividade` varchar(200) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idArquivoAtividade` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaula`
--

CREATE TABLE `tbaula` (
  `idAula` int(11) NOT NULL,
  `tipoAula` varchar(40) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idAgenda` int(11) DEFAULT NULL,
  `idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbchat`
--

CREATE TABLE `tbchat` (
  `idChat` int(11) NOT NULL,
  `dataChat` date DEFAULT NULL,
  `horaChat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `textoChat` varchar(1000) DEFAULT NULL,
  `idTipoUsuario` int(11) DEFAULT NULL,
  `idContChat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcontchat`
--

CREATE TABLE `tbcontchat` (
  `idContChat` int(11) NOT NULL,
  `tipoArquivoContChat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmaterial`
--

CREATE TABLE `tbmaterial` (
  `idMaterial` int(11) NOT NULL,
  `tituloMaterial` varchar(50) DEFAULT NULL,
  `nomeMaterial` varchar(100) DEFAULT NULL,
  `dataMaterial` datetime DEFAULT NULL,
  `conteudoMaterial` varchar(200) DEFAULT NULL,
  `idAgenda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtipousuario`
--

CREATE TABLE `tbtipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descRipoUsuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbturma`
--

CREATE TABLE `tbturma` (
  `idTurma` int(11) NOT NULL,
  `siglaTurma` varchar(3) DEFAULT NULL,
  `semestreTurma` varchar(20) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(200) DEFAULT NULL,
  `emailUsuario` varchar(200) DEFAULT NULL,
  `loginUsuario` varchar(200) DEFAULT NULL,
  `senhaUsuario` varchar(200) DEFAULT NULL,
  `idTipoUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbagenda`
--
ALTER TABLE `tbagenda`
  ADD PRIMARY KEY (`idAgenda`);

--
-- Índices para tabela `tbagendaatividade`
--
ALTER TABLE `tbagendaatividade`
  ADD PRIMARY KEY (`idAgendaAtividade`);

--
-- Índices para tabela `tbarquivoatividade`
--
ALTER TABLE `tbarquivoatividade`
  ADD PRIMARY KEY (`idArquivoAtividade`);

--
-- Índices para tabela `tbatividade`
--
ALTER TABLE `tbatividade`
  ADD PRIMARY KEY (`idAtividade`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idArquivoAtividade` (`idArquivoAtividade`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Índices para tabela `tbaula`
--
ALTER TABLE `tbaula`
  ADD PRIMARY KEY (`idAula`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idAgenda` (`idAgenda`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Índices para tabela `tbchat`
--
ALTER TABLE `tbchat`
  ADD PRIMARY KEY (`idChat`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`),
  ADD KEY `idContChat` (`idContChat`);

--
-- Índices para tabela `tbcontchat`
--
ALTER TABLE `tbcontchat`
  ADD PRIMARY KEY (`idContChat`);

--
-- Índices para tabela `tbmaterial`
--
ALTER TABLE `tbmaterial`
  ADD PRIMARY KEY (`idMaterial`),
  ADD KEY `idAgenda` (`idAgenda`);

--
-- Índices para tabela `tbtipousuario`
--
ALTER TABLE `tbtipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Índices para tabela `tbturma`
--
ALTER TABLE `tbturma`
  ADD PRIMARY KEY (`idTurma`),
  ADD KEY `tbturma_ibfk_1` (`idUsuario`);

--
-- Índices para tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbagenda`
--
ALTER TABLE `tbagenda`
  MODIFY `idAgenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbagendaatividade`
--
ALTER TABLE `tbagendaatividade`
  MODIFY `idAgendaAtividade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbarquivoatividade`
--
ALTER TABLE `tbarquivoatividade`
  MODIFY `idArquivoAtividade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbatividade`
--
ALTER TABLE `tbatividade`
  MODIFY `idAtividade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbaula`
--
ALTER TABLE `tbaula`
  MODIFY `idAula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbchat`
--
ALTER TABLE `tbchat`
  MODIFY `idChat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbcontchat`
--
ALTER TABLE `tbcontchat`
  MODIFY `idContChat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmaterial`
--
ALTER TABLE `tbmaterial`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtipousuario`
--
ALTER TABLE `tbtipousuario`
  MODIFY `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbturma`
--
ALTER TABLE `tbturma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbatividade`
--
ALTER TABLE `tbatividade`
  ADD CONSTRAINT `tbatividade_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`),
  ADD CONSTRAINT `tbatividade_ibfk_2` FOREIGN KEY (`idArquivoAtividade`) REFERENCES `tbarquivoatividade` (`idArquivoAtividade`),
  ADD CONSTRAINT `tbatividade_ibfk_3` FOREIGN KEY (`idTurma`) REFERENCES `tbturma` (`idTurma`);

--
-- Limitadores para a tabela `tbaula`
--
ALTER TABLE `tbaula`
  ADD CONSTRAINT `idAgenda` FOREIGN KEY (`idAgenda`) REFERENCES `tbagenda` (`idAgenda`),
  ADD CONSTRAINT `idMaterial` FOREIGN KEY (`idMaterial`) REFERENCES `tbmaterial` (`idMaterial`),
  ADD CONSTRAINT `tbaula_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `tbturma` (`idTurma`);

--
-- Limitadores para a tabela `tbchat`
--
ALTER TABLE `tbchat`
  ADD CONSTRAINT `idContChat` FOREIGN KEY (`idContChat`) REFERENCES `tbcontchat` (`idContChat`),
  ADD CONSTRAINT `idTipoUsuario` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tbtipousuario` (`idTipoUsuario`);

--
-- Limitadores para a tabela `tbmaterial`
--
ALTER TABLE `tbmaterial`
  ADD CONSTRAINT `tbmaterial_ibfk_1` FOREIGN KEY (`idAgenda`) REFERENCES `tbagenda` (`idAgenda`);

--
-- Limitadores para a tabela `tbturma`
--
ALTER TABLE `tbturma`
  ADD CONSTRAINT `tbturma_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Limitadores para a tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD CONSTRAINT `tbusuario_ibfk_1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tbtipousuario` (`idTipoUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
