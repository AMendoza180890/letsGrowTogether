-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2022 a las 05:31:21
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdtogether`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catchild`
--

CREATE TABLE `catchild` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `edad` text NOT NULL,
  `diagnostico` text NOT NULL,
  `funfact` text NOT NULL,
  `foto` text NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla para almacenar informacion de los estudiantes de patro';

--
-- Volcado de datos para la tabla `catchild`
--

INSERT INTO `catchild` (`id`, `nombre`, `edad`, `diagnostico`, `funfact`, `foto`, `estado`) VALUES
(1, 'Sheelsi Nahomi', '10', 'Cerebral Palsy', 'She is a girl who likes to pose for pictures; She is cheerful and she likes to eat and to listen to music;', 'shelsie.jpg', ''),
(2, 'Rolando Samuel', '10', 'Intellectual Disability', 'He is a cheerful child who likes to go to school; When he comes to Tesoros; he enjoys his therapies;\"\n', 'rolando.jpg', ''),
(3, 'Abdiel Isaac', '5', 'Cerebral Palsy', 'He is a cheerful child; He listens to music and likes to be carried; He likes to watch TV; to ride in the car;  to play with his little sister; and to hear the sound of the xylophone;', 'abdiel.jpg', ''),
(4, 'Sara Abigail', '15', 'Microcephaly', 'Her condition does not allow her much mobility; She likes to spend most of her time sitting and she likes to see images with lots of colors;', 'saradolmus.jpg', ''),
(5, 'Jafet Jahazael', '14', 'Autism', 'He is a cheerful child; He likes to sing and dance; He is very active and is learning to swim;', 'jafet.jpg', ''),
(6, 'Charlie Alessandro', '5', 'Microcephaly', 'He likes to be kissed; He likes music and  laughing; toys with sounds; the xylophone; taking a bath; animal cookies; and beans;', 'charlie.jpg', ''),
(7, 'Marcelo Adrian', '3', 'Microcephaly', 'He is a cheerful child who likes to go for walks; He likes to watch TV; toys with sounds; and he laughs when he goes for walks;', 'marcelo.jpg', ''),
(8, 'Maynor Sebastian', '6', 'Cerebral Palsy', 'He likes to play in bed and to sit in a beach chair;  He has learned to lean forward; His favorite sitting position is cross-legged;', 'maynor.jpg', ''),
(9, 'Alejandro Isaac', '9', 'Down Syndrome', 'He likes to play soccer and to watch TV; He also likes swimming pools; the sea; and the park; He enjoys doing things alone; He is independent; intelligent; and obedient;', 'alejandro.jpg', ''),
(10, 'Danny Adrian', '9', 'Down Syndrome', 'He is very cheerful and likes to run and get into mischief; He enjoys spending time with his Tesoros teachers;', 'danny.jpg', ''),
(11, 'Gabriela Sarahi', '9', 'Viral encephalitis', 'He likes to listen to music; dance; and wave his arms; He likes to go to the ocean and sit in the sand;', 'gabriela.jpg', ''),
(12, 'Jose Maria', '8', 'Spina bifida', 'She is cheerful; positive; and likes to interact with people; She likes jokes; volunteering; painting; and playing with balls; She plays guitar and is learning to play flute;', 'josemaria.jpg', ''),
(13, 'Leonardo Espinoza', '9', 'Intellectual Disability', 'He is a solitary soul and doesn?t socialize much; He likes to play alone and enjoys his computer class;', 'leonardo.jpg', ''),
(14, 'Darrell Eliseo', '11', 'Autism', 'He is independent; bathing and dressing himself; He watches TV and doesn?t like to go out; He gets frustrated doing his homework; People and noises don?t bother him;', 'darell.jpg', ''),
(15, 'Josue Emileano', '6', 'Autism', 'He likes taking a bath; playing with Legos; imaginative play; coloring; playing with balls; and building towers; He is cheerful; active; and runs around a lot;', '', ''),
(16, 'Leonardo Sanchez', '6', 'Autism', 'He likes puzzles; colors; geometric shapes; swimming pools; and eating alone;', '', ''),
(17, 'Luis Santiago Lopez', '8', 'Autism', 'He is a cheerful child who likes to play games on his phone; run around the house; and play in water;', 'luis.jpg', ''),
(18, 'Estudiante 1', '10', 'diagnostico', 'fun fact', '', 'sponsored'),
(19, 'Estudiante 2', '10', 'diagnostico', 'fun fact', '', 'sponsored'),
(20, 'Estudiante 3', '10', 'diagnostico', 'fun fact', '', 'sponsored');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catmensajes`
--

CREATE TABLE `catmensajes` (
  `id` int(11) NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL,
  `tipoVoluntario` text NOT NULL,
  `nombreLiderGrupo` text NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catroles`
--

CREATE TABLE `catroles` (
  `rolid` int(11) NOT NULL,
  `catRolesDescripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `catroles`
--

INSERT INTO `catroles` (`rolid`, `catRolesDescripcion`) VALUES
(1, 'Administrador'),
(2, 'Invitado'),
(3, 'Desactivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='estado de la seccionCampaign';

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Desactivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `clave` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `rolid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='estructura de tabla de usuario';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `foto`, `rolid`) VALUES
(1, 'admin', 'tesoros', '', 1),
(2, 'guest', 'tesoros', '', 2),
(3, 'MAdams', '123456', 'vista/img/usuario/U33.png', 3),
(4, 'Michelle', 'tesoros', 'vista/img/usuario/U525.jpg', 1),
(5, 'Vantol', 'Tesoros', 'vista/img/usuario/U170.jpg', 2),
(6, 'AIppel', 'Tesoros', 'vista/img/usuario/U367.png', 2),
(7, 'BVillalobos', 'Tesoros', '', 2),
(8, 'ESanchez', 'Tesoros', '', 2),
(9, 'Alexandra', 'Tesoros', '', 2),
(10, 'pamador', 'tesoros', '', 1),
(11, 'Wendy', 'tesoros', '', 2),
(12, 'Ajarquin', 'Tesoros123', '', 2),
(13, 'Mrosales', 'Tesoros456', '', 2),
(14, 'JennyA', 'Tesoros123', '', 2),
(15, 'MilenaS', 'Tesoros123', '', 2),
(16, 'AZuniga', 'AZuniga', '', 2),
(17, 'Thamara', '2808', '', 2),
(18, 'Eydy', 'tesoros2021', '', 2),
(19, 'Camryn', 'trustnGod3!+', '', 2),
(20, 'Alexandra', 'tesoros2021', '', 2),
(21, 'phernandez', 'tesoros', '', 2),
(22, 'IvaniaAndrade', 'tesoros123', '', 2),
(23, 'AMSuarez', 'tesoros123', '', 2),
(24, 'Lordian', 'tesoros123', '', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catchild`
--
ALTER TABLE `catchild`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catmensajes`
--
ALTER TABLE `catmensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catroles`
--
ALTER TABLE `catroles`
  ADD PRIMARY KEY (`rolid`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rolid` (`rolid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catchild`
--
ALTER TABLE `catchild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `catmensajes`
--
ALTER TABLE `catmensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catroles`
--
ALTER TABLE `catroles`
  MODIFY `rolid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `catroles` (`rolid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
