-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/11/2024 às 03:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devsbook`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `postcomments`
--

CREATE TABLE `postcomments` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `postcomments`
--

INSERT INTO `postcomments` (`id`, `id_post`, `id_user`, `created_at`, `body`) VALUES
(6, 16, 1, '2024-07-08 04:23:46', 'das'),
(8, 28, 8, '2024-07-28 09:58:31', 'teste fff'),
(9, 28, 8, '2024-07-28 16:41:47', 'sadas'),
(10, 28, 8, '2024-07-28 16:42:51', 'grasdn'),
(11, 27, 8, '2024-07-28 16:42:57', 'pc'),
(12, 27, 8, '2024-07-28 16:43:02', 'gra'),
(13, 26, 8, '2024-07-28 16:43:48', 'dd'),
(14, 26, 8, '2024-07-28 16:45:41', 'da'),
(15, 26, 8, '2024-07-28 16:52:56', 'dsds');

-- --------------------------------------------------------

--
-- Estrutura para tabela `postlikes`
--

CREATE TABLE `postlikes` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `postlikes`
--

INSERT INTO `postlikes` (`id`, `id_post`, `id_user`, `created_at`) VALUES
(9, 16, 1, '2024-07-08 04:23:41'),
(14, 28, 8, '2024-07-28 09:09:21'),
(19, 33, 1, '2024-08-04 07:53:42'),
(20, 34, 1, '2024-08-04 07:53:59');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `type`, `created_at`, `body`) VALUES
(11, 1, 'photo', '2024-07-07 17:46:14', '7929e620041a3e1c0cb6d6018345712b.jpg'),
(16, 3, 'text', '2024-07-07 17:56:41', 'sdas'),
(17, 3, 'text', '2024-07-07 18:03:31', 'aasd'),
(28, 8, 'text', '2024-07-28 14:30:33', 'sadas'),
(29, 8, 'photo', '2024-07-30 14:25:40', '8bbf8d323d4d0da8d5ba80854763f4f3.jpg'),
(30, 1, 'text', '2024-08-03 13:31:21', '2'),
(31, 1, 'text', '2024-08-03 13:31:23', '3'),
(32, 1, 'text', '2024-08-03 13:31:25', '4'),
(33, 1, 'text', '2024-08-03 13:31:26', '5'),
(34, 1, 'text', '2024-08-03 13:31:28', '6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `userrelations`
--

CREATE TABLE `userrelations` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `userrelations`
--

INSERT INTO `userrelations` (`id`, `user_from`, `user_to`) VALUES
(14, 8, 3),
(15, 8, 2),
(16, 8, 1),
(17, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `cover` varchar(100) NOT NULL DEFAULT 'cover.jpg',
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `birthdate`, `city`, `work`, `avatar`, `cover`, `token`) VALUES
(1, 'kelitondelas@fuar.god', '$2y$10$Bnpggxb48UJj2n6t3dw/per4xwl4mQe0WkwxkF6SrL9nrr.M8XD8.', 'Kleiton Delas', '1980-12-20', 'Pelotas', 'amaciante', '2e158f2b60aba9ca9c423b8982450af5.jpg', 'eb447783f05bd218c10ae3ba99b0e59c.jpg', 'd5f2da5f3137d882eed5d2d1e105a4ee'),
(2, 'fulano@gmail.com', '$2y$10$Bnpggxb48UJj2n6t3dw/per4xwl4mQe0WkwxkF6SrL9nrr.M8XD8.', 'fulano de tal', '1922-12-20', '', '', 'default.jpg', 'cover.jpg', '208c1ee7ae2ab989be9aa5707edc3cdb'),
(3, 'carlaotera@gmail.com', '$2y$10$Bnpggxb48UJj2n6t3dw/per4xwl4mQe0WkwxkF6SrL9nrr.M8XD8.', 'Carla Otera', '1998-07-29', 'caloteiros', 'vendedora', '95137340fefd6caed0e49890cde8e921.jpg', '56519e7fcdbcb40a31d6f572e243cfda.jpg', 'ea930c3e375464836ab77a85547612dd'),
(8, 'dd@dd.com', '$2y$10$7USZYZQzOrP2BDVP4IHK.evUWJuLH5.ldiMqImzyyh/aVOj1NhkJG', 'Klekle do Dimas', '2010-10-10', 'Avaiana', 'Endoscopata', '1233c88c729b688c79b8b9e9c953b534.jpg', '0936d7ef38c095ccdb2f23d1352d14f8.jpg', '99bb2b2b7920a5969b901e35c2cba7d7');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `postcomments`
--
ALTER TABLE `postcomments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `postlikes`
--
ALTER TABLE `postlikes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `userrelations`
--
ALTER TABLE `userrelations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postcomments`
--
ALTER TABLE `postcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `postlikes`
--
ALTER TABLE `postlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `userrelations`
--
ALTER TABLE `userrelations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
