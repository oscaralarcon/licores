-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2018 a las 04:08:07
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `licores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_licores`
--

CREATE TABLE IF NOT EXISTS `categoria_licores` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria_licores`
--

INSERT INTO `categoria_licores` (`categoria_id`, `categoria_nombre`) VALUES
(1, 'Pisco'),
(2, 'Ron'),
(3, 'Vodka'),
(4, 'Whisky'),
(5, 'Tequila'),
(6, 'Vino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_licores`
--

CREATE TABLE IF NOT EXISTS `detalle_licores` (
  `dlicores_id` int(11) NOT NULL,
  `dlicores_nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dlicores_descripcion` varchar(500) CHARACTER SET utf8 NOT NULL,
  `dlicores_urlimagen_p` varchar(200) CHARACTER SET utf8 NOT NULL,
  `dlicores_urlimagen_s` varchar(200) CHARACTER SET utf8 NOT NULL,
  `dlicores_categoria_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalle_licores`
--

INSERT INTO `detalle_licores` (`dlicores_id`, `dlicores_nombre`, `dlicores_descripcion`, `dlicores_urlimagen_p`, `dlicores_urlimagen_s`, `dlicores_categoria_id`) VALUES
(1, 'Pisco Artesanal', 'Pisco Artesanal Añejado 35 grados,\r\nHORCON QUEMADO,\r\nBotella 645 mls,\r\n$ 7.899 Und.', 'img/pisco/artesanal_p.png', 'img/pisco/artesanal_s.png', 1),
(13, 'Whisky CHIVAS', 'Whisky Importado  CHIVAS REGAL\r\nBotella 750 mls\r\n$ 27.999 Und', 'img/whisky/chivas_p.png', 'img/whisky/chivas_s.png', 4),
(2, 'Pisco Reservado', 'Pisco Reservado 40 grados,\r\nALTO DEL CARMEN,\r\nBotella 750 mls,\r\n$ 7.279 Und.', 'img/pisco/reservado_p.png', 'img/pisco/reservado_s.png', 1),
(10, 'Vodka Raspberri', 'Vodka Raspberri 40 grados ABSOLUT,\r\nBotella 750 mls,\r\n$ 10.999 Und.', 'img/vodka/raspberri_p.png', 'img/vodka/raspberri_s.png', 3),
(11, 'Whisky Importado', 'Whisky Importado Etiqueta Negra 12 Años JOHNNIE WALKER,\r\nBotella 750 mls,\r\n$ 27.999 Und.', 'img/whisky/jw_p.png', 'img/whisky/jw_s.png', 4),
(12, 'Whisky Finest', 'Whisky Importado Finest BALLANTINES,\r\nBotella 750 mls,\r\n$ 10.689 Und.', 'img/whisky/ball_p.png', 'img/whisky/ball_s.png', 4),
(3, 'Pisco Mistral', 'Pisco Mistral 35 grados\r\nBotella 1 lt,\r\n$ 6.999 Und.', 'img/pisco/mistral_p.png', 'img/pisco/mistral_s.png', 1),
(9, 'Vodka Azul', 'Vodka Azul SKYY,\r\nBotella 1 lts,\r\n$ 9.689 Und.', 'img/vodka/azul_p.png', 'img/vodka/azul_s.png', 3),
(4, 'Pisco Envejecido', 'Pisco Envejecido 40 grados,\r\nALTO DEL CARMEN,\r\nBotella 750 mls,\r\n$ 9.989 Und.', 'img/pisco/envejecido_p.png', 'img/pisco/envejecido_s.png', 1),
(8, 'Vodka Black', 'Vodka Black Premium Wild Berry 20 grados ERISTOFF,\r\nBotella 700 mls,\r\n$ 4.939 Und.', 'img/vodka/black_p.png', 'img/vodka/black_s.png', 3),
(7, 'Ron Agnejo', 'Ron Añejo  BARCELO,\r\nBotella 750 mls,\r\n$ 7.689 Und.', 'img/ron/anejo_p.png', 'img/ron/anejo_s.png', 2),
(5, 'Ron Dorado', 'Ron Dorado Añejado MADERO,\r\nBotella 750 mls,\r\n$ 3.649 Und.', 'img/ron/dorado_p.png', 'img/ron/dorado_s.png', 2),
(6, 'Ron Havana', 'Ron Havana Club Añejo 7 Años HAVANNA,\r\nBotella 1 lt,\r\n$ 18.299 Und.', 'img/ron/havana_p.png', 'img/ron/havana_s.png', 2),
(14, 'Tequila Blanco', 'Tequila Blanco  S.NEGRO,\r\nBotella 750 mls,\r\n$ 7.989 Und.', 'img/tequila/blanco_p.png', 'img/tequila/blanco_s.png', 5),
(15, 'Tequila Dorado', 'Tequila Dorado  OLMECA\r\nBotella 750 mls,\r\n$ 10.299 Und.', 'img/tequila/dorado_p.png', 'img/tequila/dorado_s.png', 5),
(16, 'Tequila Especial', 'Tequila Especial Reposado  JOSE CUERVO\r\nBotella 750 mls,\r\n$ 12.499 Und.', 'img/tequila/especial_p.png', 'img/tequila/especial_s.png', 5),
(17, 'Vino Icono', 'Vino Icono Malbec  VIU MANENT,\r\nBotella 750 mls,\r\n$ 76.999 Und.', 'img/vino/vino1_p.png', 'img/vino/vino1_s.png', 6),
(18, 'Jaume  CODORNIU', 'Jaume  CODORNIU,\r\nBotella 750 mls,\r\n$ 45.999 Und.', 'img/vino/vino2_p.png', 'img/vino/vino2_s.png', 6),
(19, 'Vino de Mesa', 'Vino de Mesa Familia  DE MARTINO,\r\nBotella 750 mls,\r\n$ 43.999 Und.', 'img/vino/vino3_p.png', 'img/vino/vino3_s.png', 6),
(20, 'Vino Caballo', 'Vino Caballo Loco Grand Cru Limari  VALDIVIESO,\r\nBotella 750 mls,\r\n$ 29.689 Und.', 'img/vino/vino4_p.png', 'img/vino/vino4_s.png', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_licores`
--
ALTER TABLE `categoria_licores`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `detalle_licores`
--
ALTER TABLE `detalle_licores`
  ADD PRIMARY KEY (`dlicores_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_licores`
--
ALTER TABLE `categoria_licores`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `detalle_licores`
--
ALTER TABLE `detalle_licores`
  MODIFY `dlicores_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
