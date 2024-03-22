
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `globalhitss`
--
CREATE DATABASE GLOBALHITSS
GO;

DELIMITER $$
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `fecha`, `marca`, `modelo`, `nombre`, `precio`) VALUES
(1, '2024-01-01', 'Lenovo', 'ThinkPad', 'Laptop', 4000),
(2, '2024-01-02', 'DLG', 'OLED', 'MONITOR', 4000),
(3, '2024-01-03', 'LOGITECH', 'K2100', 'TECLADO', 100),
(4, '2024-01-10', 'Asus', 'VivoBook', 'Laptop', 5000),
(5, '2024-01-09', 'TPLINK', 'ARCHERC5', 'Modem', 100);

--
-- Ã?ndices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `lista_procedure` ()  READS SQL DATA SELECT * FROM producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `save_procedure` (IN `nombreIn` VARCHAR(255), IN `marcaIn` VARCHAR(255), IN `modeloIn` VARCHAR(255), IN `precioIn` INT(5), IN `fechaIn` DATE)  MODIFIES SQL DATA INSERT INTO producto(nombre,marca,modelo,precio,fecha) VALUES(nombreIn,marcaIn,modeloIn,precioIn,fechaIn)$$

DELIMITER ;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
