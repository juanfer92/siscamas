-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2018 a las 16:36:39
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siscamas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `ID_AUD` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `USUARIO` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACCION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBJETO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SENTENCIA` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EQUIPO` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVEGADOR` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`ID_AUD`, `ID_USUARIO`, `USUARIO`, `ACCION`, `OBJETO`, `SENTENCIA`, `EQUIPO`, `NAVEGADOR`, `FECHA`) VALUES
(22, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"8o3yNMkIKxRFrz4EZ8hWwM15BWHWbYyCpAFfqFg5\";s:6:\"nombre\";s:12:\"Juan Criollo\";s:3:\"ruc\";s:3:\"543\";s:16:\"reg_msp_hospital\";s:17:\"43345234523452345\";s:9:\"direccion\";s:12:\"ZambizaRRRRR\";s:8:\"telefono\";s:9:\"998137344\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-11 09:33:50'),
(23, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"8o3yNMkIKxRFrz4EZ8hWwM15BWHWbYyCpAFfqFg5\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:11:\"REG_1235555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-11 09:57:24'),
(24, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', 'Prueba', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-11 09:58:49'),
(25, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-11 10:05:58'),
(26, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"8o3yNMkIKxRFrz4EZ8hWwM15BWHWbYyCpAFfqFg5\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:11:\"REG_1235555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-11 10:13:34'),
(27, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:11:\"REG_1235555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 09:11:17'),
(28, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', 'Se deshabilito la sucursal', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 10:50:14'),
(29, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 10:59:36'),
(30, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:10:\"Sucursal 2\";s:9:\"direccion\";s:45:\"Calle General Roca 33-155 y Bosmediano E-1064\";s:8:\"telefono\";s:27:\"2452-060/2453-588/ 2440-440\";s:4:\"tipo\";s:8:\"Sucursal\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:17:00'),
(31, 26, 'Juan Criollo T', 'ACTUALIZAR', 'SUCURSAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:12:\"Juan Criollo\";s:5:\"email\";s:10:\"jc@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"1\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:19:52'),
(32, 26, 'Juan Criollo', 'ACTUALIZAR', 'USUARIO', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:14:\"Juan Criollo T\";s:5:\"email\";s:10:\"jc@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"1\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:21:30'),
(33, 26, 'Juan Criollo T', 'CREAR', 'USUARIO', 'a:7:{s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:15:\"Ricardo Davalos\";s:5:\"email\";s:10:\"sp@asur.ec\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"1\";}s:10:\"idsucursal\";s:1:\"2\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:22:32'),
(34, 26, 'Juan Criollo T', 'ACTUALIZAR', 'SUCURSAL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:10:\"Supervisor\";s:4:\"slug\";s:18:\"supervisor.sistema\";s:11:\"description\";s:74:\"Este Permiso permite ver todos los elementos del sistema y crea sucursales\";s:11:\"permissions\";a:6:{i:0;s:1:\"6\";i:1;s:1:\"7\";i:2;s:2:\"11\";i:3;s:2:\"12\";i:4;s:2:\"26\";i:5;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:49:57'),
(35, 26, 'Juan Criollo T', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:10:\"Suspendido\";s:4:\"slug\";s:10:\"suspendido\";s:11:\"description\";s:46:\"Usuarios de Vacaciones sin acceso a el sistema\";s:7:\"special\";s:9:\"no-access\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:50:49'),
(36, 26, 'Juan Criollo T', 'CREAR', 'ROL', 'a:5:{s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:6:\"prueba\";s:4:\"slug\";s:6:\"prueba\";s:11:\"description\";s:9:\"ssadfasdf\";s:11:\"permissions\";a:1:{i:0;s:1:\"3\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:52:35'),
(37, 26, 'Juan Criollo T', 'DESHABILITAR', 'ROL', '5', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:53:03'),
(38, 26, 'Juan Criollo T', 'ACTUALIZAR', 'USUARIO', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"nF7xdkDEzyCD8IiEYlTWQ17ILIygOEi1skSWOxiT\";s:4:\"name\";s:12:\"Juan Criollo\";s:5:\"email\";s:10:\"jc@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"1\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 11:58:03'),
(39, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"o59z9qTRgh926DwBLkapS8EtVDuMATaHTpYnbFWQ\";s:10:\"idsucursal\";s:1:\"1\";s:11:\"descripcion\";s:41:\"Especialidades clínicas y/o quirúrgicas\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 15:12:28'),
(40, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"o59z9qTRgh926DwBLkapS8EtVDuMATaHTpYnbFWQ\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 16:00:05'),
(41, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"o59z9qTRgh926DwBLkapS8EtVDuMATaHTpYnbFWQ\";s:11:\"descripcion\";s:40:\"SILLÓN ELÉCTRICO PINTADO GINECOLÓGICO\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 16:02:28'),
(42, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 16:44:25'),
(43, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"o59z9qTRgh926DwBLkapS8EtVDuMATaHTpYnbFWQ\";s:11:\"descripcion\";s:26:\"Incubadora Neonatal BB-100\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-12 16:44:32'),
(44, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"1DNwU1ego7E2p5x1niN4kGW8mQ1eI835HGQqCbWI\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:6:\"Matriz\";s:9:\"direccion\";s:45:\"Av. De los Naranjos N44-463 y De las Azucenas\";s:8:\"telefono\";s:10:\"9545494776\";s:4:\"tipo\";s:8:\"Sucursal\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-16 11:16:12'),
(45, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-18 11:16:23'),
(46, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"OvJaIG9rMb0M8dgDJSg7WHqiqOZLBjgYKccQSRhI\";s:10:\"idsucursal\";s:1:\"2\";s:11:\"descripcion\";s:30:\"Cuidados intensivos neonatales\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-18 11:18:16'),
(47, 26, 'Juan Criollo', 'CREAR', 'UNIDAD', 'a:3:{s:6:\"_token\";s:40:\"eYjEyPd5cH6NwlGlo0tJhQ9WP8VyoKc3l4Ej0zMz\";s:10:\"idsucursal\";s:1:\"1\";s:11:\"descripcion\";s:23:\"Cuidados de enfermería\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 21:18:27'),
(48, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"eYjEyPd5cH6NwlGlo0tJhQ9WP8VyoKc3l4Ej0zMz\";s:8:\"idunidad\";s:1:\"4\";s:11:\"descripcion\";s:15:\"Hospitalizacion\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:12:\"Segundo_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 21:20:42'),
(49, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eYjEyPd5cH6NwlGlo0tJhQ9WP8VyoKc3l4Ej0zMz\";s:8:\"idunidad\";s:1:\"4\";s:11:\"descripcion\";s:16:\"Hospitalización\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:12:\"Segundo_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 21:22:20'),
(50, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 22:05:09'),
(51, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eYjEyPd5cH6NwlGlo0tJhQ9WP8VyoKc3l4Ej0zMz\";s:11:\"descripcion\";s:40:\"SILLÓN ELÉCTRICO PINTADO GINECOLÓGICO\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 22:11:25'),
(52, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 22:12:21'),
(53, 26, 'Juan Criollo', 'DESHABILITAR', 'ESTADO DE CAMA', '5', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 22:12:50'),
(54, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eYjEyPd5cH6NwlGlo0tJhQ9WP8VyoKc3l4Ej0zMz\";s:11:\"descripcion\";s:13:\"FDGF DFDFVDFV\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 22:13:04'),
(55, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-19 23:28:57'),
(56, 26, 'Juan Criollo', 'CREAR', 'ROL', 'a:5:{s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:4:{i:0;s:1:\"2\";i:1;s:1:\"7\";i:2;s:2:\"12\";i:3;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:25:54'),
(57, 26, 'Juan Criollo', 'CREAR', 'USUARIO', 'a:7:{s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:6:\"pepito\";s:5:\"email\";s:9:\"p@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"6\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:26:41'),
(58, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:7:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:27:33'),
(59, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:13:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:2:\"11\";i:8;s:2:\"12\";i:9;s:2:\"16\";i:10;s:2:\"17\";i:11;s:2:\"26\";i:12;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:28:14'),
(60, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:16:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"16\";i:13;s:2:\"17\";i:14;s:2:\"26\";i:15;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:28:43'),
(61, 26, 'Juan Criollo', 'ACTUALIZAR', 'USUARIO', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:6:\"pepito\";s:5:\"email\";s:9:\"p@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"6\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:29:57'),
(62, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"vjj3ReOjqk0z1bfPq1QoEfNhtks8haivV0NlIOJo\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:2:\"26\";i:3;s:2:\"27\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '2018-10-20 08:30:57'),
(63, 26, 'Juan Criollo', 'CREAR', 'Ingreso Quirofano', 'a:5:{s:6:\"_token\";s:40:\"B7PnAEnRGSBTnYipN5XbwtqJxSc997yeq84UANyH\";s:10:\"idhospital\";s:1:\"1\";s:5:\"fecha\";s:10:\"2018-10-26\";s:5:\"horai\";s:5:\"11:00\";s:5:\"horaf\";s:5:\"12:00\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 00:12:56'),
(64, 26, 'Juan Criollo', 'CREAR', 'Ingreso Quirofano', 'a:5:{s:6:\"_token\";s:40:\"B7PnAEnRGSBTnYipN5XbwtqJxSc997yeq84UANyH\";s:10:\"idpaciente\";s:1:\"1\";s:5:\"fecha\";s:10:\"2018-11-01\";s:5:\"horai\";s:5:\"22:00\";s:5:\"horaf\";s:8:\"23:00:00\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 00:14:28'),
(65, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '7', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 20:48:23'),
(66, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '7', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 20:58:07'),
(67, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:13:\"Cardiopatías\";s:7:\"sintoma\";s:540:\"Sepa cuáles son los síntomas de un ataque cardíaco, ya que si se actúa con rapidez, se puede salvar una vida (tal vez incluso la suya). Éstos son algunos de los síntomas:\r\n\r\nDolor o malestar en el pecho (angina de pecho); otros se asemejan más a una indigestión. También se puede sentir dolor en los hombros, los brazos, el cuello, la mandíbula o la espalda.\r\nFalta de aire (dificultad para respirar): por lo general ocurre antes o al mismo tiempo que las molestias en el pecho.\r\nOtros síntomas: sudores fríos, náuseas, mareos.\";s:11:\"diagnostico\";s:1159:\"Entre las pruebas más importantes que pueden realizarse se destacan las siguientes:\r\n\r\nElectrocardiograma (ECG o EKG): Registra la actividad eléctrica del corazón a medida que se contrae y se relaja. Permite detectar la presencia de latidos anormales y determinar también si se han lesionado ciertas áreas, si no hay un flujo adecuado de sangre, o si se ha producido un agrandamiento del músculo cardíaco.\r\nAnálisis de sangre: Permite detectar la presencia de enzimas u otras sustancias que el organismo produce cuando las células empiezan a morir. Estas sustancias constituyen \"marcadores\" que ayudan a determinar la extensión del daño sufrido por el corazón.\r\nGammagrafía cardíaca nuclear: Revela las áreas afectadas del corazón que tienen un flujo insuficiente de sangre. Igualmente, puede ayudar a determinar problemas relacionados con la capacidad de bombeo del corazón. Esta prueba utiliza radiotrazadores que permiten analizar cómo fluye la sangre en el corazón.\r\nAngiografía coronaria (o arteriografía): Esta prueba utiliza un medio de contraste y rayos X especiales para obtener imágenes del interior de las arterias coronarias.\";s:13:\"procedimiento\";s:2560:\"Para prevenir o controlar las cardiopatías coronarias, será necesario cambiar el estilo de vida. Pero en algunos casos se requiere, además, el uso de medicamentos tales como los que se describen a continuación:\r\n\r\nLos medicamentos antiplaquetarios como la aspirina, evitan la formación de coágulos en la sangre, lo que ayuda a mantener las arterias libres de bloqueos en aquellos casos en que ya se ha realizado una operación de revascularización coronaria (bypass), o alguna otra intervención para abrir las arterias como una angioplastia.\r\nLos anticoagulantes reducen el riesgo de que se formen coágulos en el corazón, en las venas o en las arterias, lo que podría ser extremadamente peligroso, ya que al bloquearse el flujo de sangre puede producir un ataque cardíaco o un accidente cerebrovascular.\r\nLos glucósidos digitálicos hacen que el corazón se contraiga con mayor fuerza y por ello se utilizan cuando capacidad de bombeo se encuentra. Además, se utilizan para reducir ciertos tipos de ritmos cardíacos acelerados.\r\nLos inhibidores de la enzima de conversión de la angiotensina (ACE inhibitors en inglés) impiden la producción de una sustancia química que causa el estrechamiento de los vasos sanguíneos. Estos fármacos controlan la presión arterial elevada y, después de un ataque cardíaco, ayudan al corazón a bombear la sangre de manera más eficaz. También se administran a veces a personas con insuficiencia cardíaca, un trastorno que le impide al corazón bombear suficiente sangre para satisfacer los requerimientos del organismo.\r\nLos betabloqueadores reducen el pulso y la fuerza de las contracciones cardíacas, lo cual reduce la presión arterial, asi el corazón realiza menos esfuerzo. Se utilizan para controlar la presión alta arterial, aliviar la angina de pecho y prevenir ataques.\r\nLos nitratos (nitroglicerina) relajan los vasos sanguíneos y alivian la angina de pecho.\r\nLos antagonistas del calcio relajan los vasos sanguíneos. Se utilizan para tratar la alta presión arterial y la angina de pecho.\r\nLos diuréticos reducen la cantidad de líquido en el organismo; se utilizan para tratar la presión arterial alta.\r\nLos fármacos reductores del colesterol disminuyen los niveles de lipoproteínas de baja densidad (LDL, o lo que coloquialmente se denomina \"colesterol malo\") en la sangre.\r\nLos agentes trombolíticos son fármacos que se administran cuando ocurre un ataque cardíaco para disolver el coágulo que se haya formado en la arteria coronaria, a fin de restablecer el flujo de sangre.\";s:9:\"tpaciente\";s:8:\"Maternal\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 20:59:59'),
(68, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:4:\"HDFH\";s:7:\"sintoma\";s:7:\"FGHDFGH\";s:11:\"diagnostico\";s:4:\"DFGH\";s:13:\"procedimiento\";s:4:\"DFHG\";s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:00:50'),
(69, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Neonatal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:11:53'),
(70, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:25:\"Lesiones durante el parto\";s:7:\"sintoma\";s:1081:\"Es posible que los bebés se lesionen durante el parto, especialmente si el trabajo de parto es particularmente largo o dificultoso, o cuando los bebés son muy grandes. Mientras que los recién nacidos se recuperan rápidamente de algunas de estas lesiones, otras persisten durante más tiempo. A menudo, la lesión es una clavícula rota, que se cura rápidamente si el brazo de ese lado se mantiene relativamente inmóvil. De hecho, puede formarse un pequeño bulto en el sitio de la fractura después de algunas semanas, pero no se asuste; este es un signo positivo de que se está formando hueso nuevo para curar la lesión.\r\n\r\nLa debilidad muscular es otra lesión de nacimiento común, causada durante el trabajo de parto por la presión o el estiramiento de los nervios conectados a los músculos. Por lo general, estos músculos, que suelen estar debilitados a un lado de la cara o de un hombro o brazo, vuelven a la normalidad después de varias semanas. Mientras tanto, pídale a su pediatra que le muestre cómo amamantar y sostener al bebé para promover la curación.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Neonatal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:12:18'),
(71, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:24:\"Síndrome del bebé azul\";s:7:\"sintoma\";s:808:\"Los bebés pueden tener las manos y los pies levemente azulados, pero es posible que esto no sea un motivo de preocupación. Si sus manos y pies se vuelven un poco azulados a causa del frío, deberían recuperar su color rosado apenas se calientan. Ocasionalmente, la cara, la lengua y los labios pueden volverse un poco azulados cuando el bebé no para de llorar, pero cuando se calma, su color en estas partes del cuerpo debe volver a la normalidad rápidamente. Sin embargo, si la piel se vuelve de un color azulado de manera persistente, especialmente con dificultades para respirar y alimentarse, esto es un signo de que el corazón o los pulmones no están funcionando correctamente, y de que el bebé no está recibiendo suficiente oxígeno en la sangre. La atención médica inmediata es fundamental.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Neonatal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:12:35'),
(72, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:13:57'),
(73, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:25:\"Lesiones durante el parto\";s:7:\"sintoma\";s:1081:\"Es posible que los bebés se lesionen durante el parto, especialmente si el trabajo de parto es particularmente largo o dificultoso, o cuando los bebés son muy grandes. Mientras que los recién nacidos se recuperan rápidamente de algunas de estas lesiones, otras persisten durante más tiempo. A menudo, la lesión es una clavícula rota, que se cura rápidamente si el brazo de ese lado se mantiene relativamente inmóvil. De hecho, puede formarse un pequeño bulto en el sitio de la fractura después de algunas semanas, pero no se asuste; este es un signo positivo de que se está formando hueso nuevo para curar la lesión.\r\n\r\nLa debilidad muscular es otra lesión de nacimiento común, causada durante el trabajo de parto por la presión o el estiramiento de los nervios conectados a los músculos. Por lo general, estos músculos, que suelen estar debilitados a un lado de la cara o de un hombro o brazo, vuelven a la normalidad después de varias semanas. Mientras tanto, pídale a su pediatra que le muestre cómo amamantar y sostener al bebé para promover la curación.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:14:07'),
(74, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:24:\"Síndrome del bebé azul\";s:7:\"sintoma\";s:808:\"Los bebés pueden tener las manos y los pies levemente azulados, pero es posible que esto no sea un motivo de preocupación. Si sus manos y pies se vuelven un poco azulados a causa del frío, deberían recuperar su color rosado apenas se calientan. Ocasionalmente, la cara, la lengua y los labios pueden volverse un poco azulados cuando el bebé no para de llorar, pero cuando se calma, su color en estas partes del cuerpo debe volver a la normalidad rápidamente. Sin embargo, si la piel se vuelve de un color azulado de manera persistente, especialmente con dificultades para respirar y alimentarse, esto es un signo de que el corazón o los pulmones no están funcionando correctamente, y de que el bebé no está recibiendo suficiente oxígeno en la sangre. La atención médica inmediata es fundamental.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:14:14'),
(75, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:3:\"Tos\";s:7:\"sintoma\";s:512:\"Si el bebé toma líquido muy rápido o trata de beber agua por primera vez, es posible que tosa y escupa un poco; pero este tipo de tos debería detenerse apenas se ajuste a una rutina de alimentación familiar. También puede estar relacionada con la fuerza o la rapidez con la que baja la leche de la mamá. Si el bebé tose continuamente o tiene arcadas rutinariamente durante las tomas, consulte con el pediatra. Estos síntomas podrían indicar un problema subyacente en los pulmones o el tracto digestivo.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:14:29'),
(76, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:15:\"Llanto excesivo\";s:7:\"sintoma\";s:681:\"Todos los recién nacidos lloran, a menudo, sin un motivo aparente. Si se ha asegurado de que su bebé se alimentó, eructó, se mantiene caliente y tiene un pañal limpio, probablemente, la mejor táctica es sostenerlo y hablarle o cantarle hasta que deje de llorar. No puede “consentir” a un bebé de esta edad prestándole mucha atención. Si esto no funciona, envuélvalo bien en una manta de manera cómoda.\r\n\r\nSe acostumbrará al patrón de llanto normal de su bebé. Si alguna vez suena extraño; por ejemplo, como alaridos de dolor, o si alguna vez persiste durante un período inusual, podría significar un problema médico. Llame al pediatra y pídale asesoramiento.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:14:46'),
(77, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:18:\"Marcas de fórceps\";s:7:\"sintoma\";s:496:\"Cuando se usan fórceps para brindar ayuda durante un parto, estos pueden dejar marcas rojas o, incluso, raspados superficiales en la cara y la cabeza de un recién nacido, en la zona donde el metal ejerció presión sobre la piel. Por lo general, estos desaparecen en pocos días. A veces, se desarrolla un bulto firme y plano en una de estas zonas debido a un daño menor en el tejido que se encuentra debajo de la piel. Sin embargo, esto también suele desaparecer en el término de dos meses.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:15:04'),
(78, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:9:\"Ictericia\";s:7:\"sintoma\";s:1327:\"Muchos recién nacidos normales y saludables tienen un tinte amarillento en la piel, que se conoce como ictericia. Esto se debe a una acumulación de una sustancia química, denominada bilirrubina, en la sangre del niño. Esto ocurre con más frecuencia cuando el hígado inmaduro aún no ha comenzado a cumplir su función de eliminar la bilirrubina del torrente sanguíneo en forma eficiente (la bilirrubina se forma por la descomposición normal de los glóbulos rojos en el cuerpo). Si bien los bebés suelen tener un caso leve de ictericia, que es inofensivo, la ictericia puede convertirse en una afección grave si la bilirrubina llega a lo que un pediatra considera como un nivel muy alto. Aunque la ictericia es bastante tratable, si el nivel de bilirrubina es muy alto y no es tratado de manera efectiva, en algunos casos, incluso puede provocar un daño en el sistema nervioso o el cerebro. Es por eso que la afección debe controlarse y tratarse adecuadamente. La ictericia tiende a ser más común en los bebés que están en período de lactancia, con más frecuencia en aquellos que no está tomando el pecho correctamente; las madres que están amamantando deben dar el pecho, al menos, entre ocho y doce veces por día, lo que ayudará a producir suficiente leche y a mantener bajos los niveles de bilirrubina.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:15:57'),
(79, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:24:\"Letargo y adormecimiento\";s:7:\"sintoma\";s:536:\"Todos los recién nacidos pasan la mayoría del tiempo durmiendo. Siempre que se despierte cada pocas horas, coma bien, parezca estar contento y esté alerta durante parte del día, es totalmente normal que duerma el resto del tiempo. Sin embargo, si rara vez está alerta, no se despierta por sí solo para alimentarse, o parece estar demasiado cansado o desinteresado en comer, debe consultar con su pediatra. Este letargo, especialmente si es un cambio repentino en su patrón habitual, puede ser un síntoma de una enfermedad grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:16:10'),
(80, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:23:\"Dificultad respiratoria\";s:7:\"sintoma\";s:1039:\"Es posible que el bebé tarde algunas horas después del nacimiento para formar un patrón normal de respiración, pero, luego, no debería tener más dificultades. Si parece estar respirando de una manera inusual, a menudo, esto se debe a un bloqueo en los conductos nasales. El uso de gotas nasales de solución salina, seguido del uso de una perilla succionadora, es lo que puede resultar necesario para solucionar el problema; ambos están disponibles sin receta en todas las farmacias.\r\n\r\nSin embargo, si su recién nacido muestra alguno de los siguientes signos de advertencia, notifique a su pediatra inmediatamente:\r\n\r\nRespiración rápida (más de sesenta respiraciones en un minuto), aunque debe tener en cuenta que, normalmente, los bebés respiran más rápido que los adultos.\r\nRetracciones (succión en los músculos que se encuentran entre las costillas con cada respiración, que hace que sus costillas sobresalgan).\r\nEnsanchamiento de la nariz.\r\nResoplidos durante la respiración.\r\nColoración azul de la piel persistente\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:16:25'),
(81, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:11:\"Preeclamcia\";s:7:\"sintoma\";s:785:\"La preeclampsia ocurre en 5% a 10% de los embarazos. El 75% de los casos son leves y el 25% son severos. Puede surgir en cualquier momento del embarazo entre  la 20ª semana  hasta unos días después del parto.\r\n\r\nLa hipertensión que se produce después de la 20ª semana  del embarazo es el síntoma más común. Sin embargo, para caracterizarse preeclampsia y no solamente hipertensión gestacional, es necesario que exista también la presencia de proteinuria (por lo menos 300 mg de proteína en urinocultivo de 24 horas. (Lee: EXAMEN DE ORINA – Leucocitos, Sangre, pH)\r\n\r\nCasi toda mujer embarazada presenta edemas (hinchazón), sin embargo, un rápido y repentino empeoramiento de los edemas, afectando especialmente a la cara y las manos, puede ser un signo de preeclampsia.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";s:1609:\"El tratamiento definitivo es la inducción del parto. No siempre la preeclampsia ocurre en edades gestacionales que permiten la inducción del parto sin daño para el feto. Por otro lado, la no finalización del embarazo puede traer graves consecuencias para la madre. Por lo tanto, la decisión de inducir al parto o prolongar el embarazo debe tener en cuenta la edad gestacional, la severidad de la preeclampsia y las condiciones de salud  de la madre y del feto.\r\n\r\nEn algunos casos se puede indicar la hospitalización de la madre para un acompañamiento  más cercano de la progresión de la enfermedad, tratando de posponer el parto a lo más cerca posible a la 40ª semana de embarazo. Siempre que sea posible, la preferencia es por el parto natural.\r\n\r\nLa hipertensión arterial debe ser controlada, pero esto no interfiere en el curso de la enfermedad o en la mortalidad materno/fetal. Es importante recordar que algunos famosos antihipertensivos como enalapril, captopril y nifedipina están contraindicados en el embarazo. El control de la presión arterial en el embarazo debe hacerse solamente bajo la supervisión del ginecólogo-obstetra.\r\n\r\nEl uso de corticoides (Lee: Glucocorticoides – Para Que Se Toma y Efectos Secundarios) está indicado para el tratamiento temporario de las complicaciones del síndrome HELLP, pero principalmente para acelerar la maduración pulmonar fetal si es necesario la inducción del parto antes del final del mismo.\r\n\r\nLa prevención de las crisis convulsivas es importante y se puede hacer con la administración del sulfato de magnesio poco antes del parto.\";s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:19:10'),
(82, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:24:\"Enfermedades infecciosas\";s:7:\"sintoma\";s:282:\"La rubéola es una de las principales causas de anomalías congénitas en el feto, sobre todo del corazón y del oído interno. La infección por citomegalovirus puede atravesar la placenta y afectar el hígado del bebé, mientras que la toxoplasmosis podría perjudicar su cerebro.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:20:46'),
(83, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:35:\"Enfermedades de transmisión sexual\";s:7:\"sintoma\";s:355:\"Pueden causar problemas durante el embarazo. La infección por clamidia puede provocar una rotura prematura de las membranas y un parto pretérmino. En cuanto al VIH, que causa sida, una cuarta parte de las embarazadas que tienen la infección la transmiten al feto. El herpes genital, por su parte, puede pasar al recién nacido durante un parto vaginal.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:20:59'),
(84, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:8:\"Diabetes\";s:7:\"sintoma\";s:898:\"La alta tendencia que existe hacia el sobrepeso y la obesidad y el hecho de que cada vez es más frecuente encontrar mujeres que se embarazan pasado los 35, constituyen un problema global en la población femenina en edad reproductiva, marcando un alza de esta patología.\r\n\r\nLa diabetes mellitus es una enfermedad del metabolismo de los hidratos de carbono, caracterizado por una falta relativa o absoluta de la insulina (hormona que regula los niveles de azúcar en la sangre) y que tiene como consecuencia final que la persona presente niveles muy elevados de glucosa en su sangre (cuando no hay un tratamiento apropiado).\r\n\r\nEn grandes rasgos existen varios tipos de diabetes:\r\n\r\n1.- Diabetes Mellitus tipo 1 o dependiente de insulina.\r\n\r\n2.- Diabetes Mellitus tipo 2 o independiente de insulina.\r\n\r\n3.- Diabetes Gestacional: se adquiere la enfermedad de manera transitoria durante el embarazo.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:23:39'),
(85, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:19:\"Hemorragia posparto\";s:7:\"sintoma\";s:681:\"Es un problema grave pero no muy común.\r\nSi cree que tiene HPP, llame inmediatamente a su profesional de la salud o al 911.\r\nEs posible que tenga PPH si el sangrado intenso de la vagina no se reduce o no se detiene; tiene la vista borrosa o escalofríos; o si se siente débil o que se está por desmayar.\r\nUsted corre más riesgo de tener hemorragia posparto si ya le sucedió antes.\r\nSi usted tiene ciertas condiciones médicas, en especial aquellos que afectan el útero (matriz) o la placenta, o que afectan la coagulación de la sangre, corre más riesgo de tener HPP. La placenta crece en su útero y suministra alimentos y oxígeno al bebé a través del cordón umbilical.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";s:2458:\"Su profesional de la salud puede utilizar estas pruebas para ver si usted tiene HPP o tratar de hallar la causa: \r\n\r\nAnálisis de sangre llamados pruebas de los factores de coagulación o análisis de factores\r\nHematocrito. Es un análisis de sangre que chequea el porcentaje de su sangre (volumen total de sangre) que está compuesta de glóbulos rojos. El sangrado puede causar un hematocrito bajo.\r\nMedición de la pérdida de sangre. Para ver cuánta sangre perdió, el profesional puede pesar o contar la cantidad de toallas sanitarias o esponjas que usó para absorber la sangre. \r\nExamen pélvico. Su profesional le controla la vagina, el útero y el cuello uterino. \r\nExamen físico. Su profesional le controla el pulso y la presión arterial.\r\nUltrasonido. Su profesional puede utilizar el ultrasonido para ver si hay problemas con la placenta o el útero. El ultrasonido es una prueba que usa ondas sonoras y una pantalla de una computadora para tomar una imagen de su bebé en la matriz o de sus órganos pélvicos.\r\nEl tratamiento depende de la causa de su sangrado. Puede incluir: \r\n\r\nRecibir líquidos, medicamento (como Pitocin) o una transfusión de sangre (cuando se le pone sangre nueva en el cuerpo). Estos tratamientos se le hacen a través de una aguja insertada en una vena (también llamada intravenosa o IV), o algunos se le pueden dar directamente en el útero.\r\nTener una cirugía como una histerectomía o una laparotomía. La histerectomía es cuando su profesional de la salud le saca el útero. En general, solo necesitará una histerectomía si otros tratamientos no surten efecto. La laparotomía es cuando su profesional le abre el abdomen para ver el origen del sangrado y lo detiene.\r\nMasajear el útero manualmente. Su profesional puede masajearle el útero para que se contraiga, se reduzca el sangrado y ayude al cuerpo a expulsar los coágulos de sangre.\r\nRecibir oxígeno con una máscara de oxígeno\r\nRetirar los pedazos restantes de placenta del útero, rellenar el útero con compresas de gasa, un globo especial o esponjas, o utilizar herramientas médicas o puntos para detener el sangrado de los vasos sanguíneos.\r\nEmbolización de los vasos sanguíneos que nutren el útero. En este procedimiento, el profesional utiliza pruebas especiales para hallar el vaso sanguíneo sangrante y le inyecta material para detener el sangrado. Se utiliza en casos especiales y puede evitar la necesidad de una histerectomía.\";s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:25:29');
INSERT INTO `auditoria` (`ID_AUD`, `ID_USUARIO`, `USUARIO`, `ACCION`, `OBJETO`, `SENTENCIA`, `EQUIPO`, `NAVEGADOR`, `FECHA`) VALUES
(86, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:25:\"Amenaza de paro prematuro\";s:7:\"sintoma\";s:839:\"Se considera parto prematuro al que ocurre antes de las 37 semanas de gestación. El límite inferior de edad gestacional que establece el límite entre parto prematuro y aborto es el de 22 semanas de gestación o 500 gramos de peso y las 36.6 semanas. \r\nEl parto prematuro espontáneo y la rotura prematura de membranas son responsables de aproximadamente el 80% de los nacimientos pretérmino\r\nEl diagnóstico de trabajo de parto prematuro se basa en la presencia de contracciones uterinas y modificaciones cervicales tales como borraiento del cuello = o > al 50% y dilatación de 2 cm o más.\r\nSu incidencia es de  8-10% del total de partos y es la causa más importante de morbi-mortalidad fetal.\r\nAunque el parto prematuro se desencadena por la puesta en marcha de mecanismos fisiológicos, debe ser considerado un proceso patológico\";s:11:\"diagnostico\";s:376:\"Contracciones uterinas: más de 4 en una hora\r\nDilatación cervical > 2 cm \r\nBorramiento cervical = o > al 50% o cambios cervicales detectados en exámenes seriados\r\nRPM\r\nSangrado vaginal\r\nDolor suprapúbico\r\n\r\nFactor de riesgo: antecedentes de partos pretérmino previos\r\nCriterios de internación: pacientes con signos y síntomas de trabajo de parto antes de las 37 semanas\";s:13:\"procedimiento\";s:737:\"Reposo\r\nHidratación con plan que no exceda los 3000 ml\r\nBetamiméticos durante 24 a 48 hs desde las 24 semanas hasta las 34 semanas\r\nIndometacina: hasta 48 hs y hasta las 32 semanas\r\nProfilaxis para estreptococo: en pacientes sin cultivo la amenaza de pp es antecedente de riesgo y corresponde profilaxis\r\nMaduración con corticoides:  entre las semanas 24 y 34 de gestación.\r\n1.- Betametasona  una ampolla de 12 mg cada 12 hs en 24 hs (total 2 dosis=  24 mg)\r\n2.- Dexametasona: una ampolla de 8 mg cada 8 hs en 24 hs (total 3 dosis = 24 mg de dexametasona).\r\n\r\nRepique: si la paciente recibió corticoterapia antes de las 28/30 semanas y pasados 10 días de esa dosis se desencadena situación de parto se realizará repique con 1 dos\";s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:27:58'),
(87, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"MEszCDeCwLED5WzF6WZS3pWU07wJaE6T793hE89z\";s:11:\"descripcion\";s:9:\"Eclampsia\";s:7:\"sintoma\";s:159:\"Es el comienzo de convulsiones o coma en una mujer embarazada con preeclampsia. Estas convulsiones no están relacionadas con una afección cerebral existente.\";s:11:\"diagnostico\";s:757:\"La causa exacta de la eclampsia no es conocida. Los siguientes factores pueden jugar un papel:\r\n\r\nProblemas vasculares\r\nFactores cerebrales y del sistema nervioso (neurológicos)\r\nDieta\r\nGenes\r\nLa eclampsia se presenta después de una afección llamada preeclampsia. Esta es una complicación del embarazo en la cual una mujer presenta presión arterial alta y otras afecciones.\r\n\r\nLa mayoría de las mujeres con preeclampsia no siguen teniendo convulsiones. Es difícil predecir cuáles mujeres sí las tendrán. Las mujeres con alto riesgo de sufrir convulsiones con frecuencia padecen preeclampsia grave con signos y síntomas como:\r\n\r\nExámenes sanguíneos anormales\r\nDolores de cabeza\r\nPresión arterial muy alta\r\nCambios en la visión\r\nDolor abdominal\";s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-26 21:38:07'),
(88, 26, 'Juan Criollo', 'CREAR', 'SERVICIO', 'a:2:{s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:17:54'),
(89, 26, 'Juan Criollo', 'DESHABILITAR', 'SERVICIO', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:20:59'),
(90, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"Gender\";s:6:\"Activa\";s:8:\"Inactiva\";s:6:\"Female\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:31:49'),
(91, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:33:09'),
(92, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:8:\"Inactiva\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:33:16'),
(93, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:33:22'),
(94, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:8:\"Inactiva\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:40:09'),
(95, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"jhG11JaPntcgitPTmLWTh8wBSYlBr2tTWUx6BuA5\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-29 23:40:15'),
(96, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"2voYC2R350EKhiR7ucDajTB3p95BVGe4k8N4ccEm\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:05:24'),
(97, 26, 'Juan Criollo', 'CREAR', 'SERVICIO', 'a:2:{s:6:\"_token\";s:40:\"2voYC2R350EKhiR7ucDajTB3p95BVGe4k8N4ccEm\";s:11:\"descripcion\";s:8:\"Limpieza\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:12:00'),
(98, 26, 'Juan Criollo', 'DESHABILITAR', 'SERVICIO', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:13:37'),
(99, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"2voYC2R350EKhiR7ucDajTB3p95BVGe4k8N4ccEm\";s:11:\"descripcion\";s:8:\"Limpieza\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:13:43'),
(100, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"2voYC2R350EKhiR7ucDajTB3p95BVGe4k8N4ccEm\";s:10:\"idservicio\";s:1:\"2\";s:11:\"descripcion\";s:32:\"La limpieza en la sala de espera\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:14:39'),
(101, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"2voYC2R350EKhiR7ucDajTB3p95BVGe4k8N4ccEm\";s:10:\"idservicio\";s:1:\"2\";s:11:\"descripcion\";s:26:\"La limpieza en la consulta\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-10-30 17:15:48'),
(102, 26, 'Juan Criollo', 'DESHABILITAR', 'SERVICIO', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 18:41:01'),
(103, 26, 'Juan Criollo', 'ACTUALIZAR', 'SERVICIO', 'a:4:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"aYmrcUFcP9SbXPYOCS25aRSl8IsejkMeMYCJsuA1\";s:11:\"descripcion\";s:13:\"Alimentación\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 18:41:09'),
(104, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 18:43:26'),
(105, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"aYmrcUFcP9SbXPYOCS25aRSl8IsejkMeMYCJsuA1\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 19:00:00'),
(106, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 19:00:05'),
(107, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"aYmrcUFcP9SbXPYOCS25aRSl8IsejkMeMYCJsuA1\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-02 19:00:13'),
(108, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-04 01:06:29'),
(109, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"uQakYQS3sxOicYGdBnl1UCs3yzxBSberwUuhsVm8\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-04 01:07:02'),
(110, 26, 'Juan Criollo', 'CREAR', 'SERVICIO', 'a:2:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:11:\"descripcion\";s:10:\"Enfermeria\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 10:54:58'),
(111, 26, 'Juan Criollo', 'CREAR', 'SERVICIO', 'a:2:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:11:\"descripcion\";s:8:\"Farmacia\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 10:55:08'),
(112, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"3\";s:11:\"descripcion\";s:56:\"El trato de la enfermer@ del hospital con usted ha sido:\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 10:56:13'),
(113, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"3\";s:11:\"descripcion\";s:93:\"La calidad de la asistencia sanitaria por parte de la enfermera que usted ha recibido ha sido\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 10:57:28'),
(114, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:93:\"La calidad de la asistencia sanitaria por parte de la enfermer@ que usted ha recibido ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 10:57:44'),
(115, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"2\";s:11:\"descripcion\";s:37:\"La limpieza en su habitación a sido:\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 11:25:36'),
(116, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:40:\"La limpieza en la sala de espera a sido:\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 11:25:48'),
(117, 26, 'Juan Criollo', 'CREAR', 'PREGUNTA', 'a:3:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:10:\"idservicio\";s:1:\"3\";s:11:\"descripcion\";s:61:\"Su opinión de la calidad y competencia de las enfermer@s es:\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 11:26:48'),
(118, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:11:\"descripcion\";s:14:\"Sin Patología\";s:7:\"sintoma\";N;s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 12:24:17'),
(119, 26, 'Juan Criollo', 'CREAR', 'PATOLOGÍA', 'a:6:{s:6:\"_token\";s:40:\"BKVrNqBcOYrZAFkAWanDyzFfpNey7kadHbHnlP1U\";s:11:\"descripcion\";s:14:\"Sin Patología\";s:7:\"sintoma\";N;s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-05 12:24:26'),
(120, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"4\";s:7:\"idncama\";s:1:\"3\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 19:59:01'),
(121, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"3\";s:7:\"idncama\";s:1:\"4\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:21:45'),
(122, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"1\";s:7:\"idncama\";s:1:\"2\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:22:14'),
(123, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"2\";s:7:\"idncama\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:46:25'),
(124, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"1\";s:7:\"idncama\";s:1:\"4\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:52:09'),
(125, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"4\";s:7:\"idncama\";s:1:\"2\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:52:20'),
(126, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"4\";s:7:\"idncama\";s:1:\"4\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:55:04'),
(127, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"4\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:55:33'),
(128, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"2\";s:7:\"idncama\";s:1:\"3\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 20:55:59'),
(129, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"5\";s:7:\"idncama\";s:1:\"4\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 21:14:04'),
(130, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"3\";s:10:\"idpaciente\";s:1:\"1\";s:7:\"idncama\";s:1:\"2\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 21:49:33'),
(131, 26, 'Juan Criollo', 'TRANSFERENCIA', 'SUCURSAL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:17:\"idhospitalizacion\";s:2:\"25\";s:6:\"idcama\";s:1:\"4\";s:9:\"idhospita\";s:2:\"44\";s:7:\"idncama\";s:1:\"3\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 21:51:46'),
(132, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:11:\"REG_1235555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 21:58:23'),
(133, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 22:00:25'),
(134, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:6:\"Matriz\";s:9:\"direccion\";s:45:\"Av. De los Naranjos N44-463 y De las Azucenas\";s:8:\"telefono\";s:10:\"9545494776\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 22:02:05'),
(135, 26, 'Juan Criollo', 'CREAR', 'SUCURSAL', 'a:5:{s:6:\"_token\";s:40:\"lQIbhuQW9MbzHcXcp5k8EtlGHC4ShfwGp5j0DddU\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:6:\"cvbdfb\";s:9:\"direccion\";s:7:\"cvbxcvb\";s:8:\"telefono\";s:12:\"cxvbxcvbxcvb\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-06 22:02:15'),
(136, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"descripcion\";s:40:\"SILLÓN ELÉCTRICO PINTADO GINECOLÓGICO\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 22:22:23'),
(137, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"descripcion\";s:10:\"Disponible\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 22:23:10'),
(138, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:19:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:8:\"Cristina\";s:8:\"nombres1\";s:9:\"Elizabeth\";s:9:\"apellidos\";s:5:\"Perez\";s:10:\"apellidos1\";s:6:\"Orozco\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"25\";s:7:\"tsangre\";s:2:\"A+\";s:9:\"direccion\";s:22:\"El inca n12 y cipreces\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:9:\"998137344\";s:7:\"celular\";s:8:\"09999999\";s:5:\"email\";s:22:\"juanfer92.jc@gmail.com\";s:9:\"contacto1\";s:12:\"Juan Criollo\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:12:\"Maria Gualpa\";s:9:\"telefono2\";s:10:\"0998274445\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:19:04'),
(139, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:26:14'),
(140, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:29:03'),
(141, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:30:27'),
(142, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:31:06'),
(143, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:31:45'),
(144, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:32:18'),
(145, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:32:35'),
(146, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:32:50'),
(147, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:8:\"Fernanda\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:11:\"Rivadeneira\";s:10:\"apellidos1\";s:5:\"Lopez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"28\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:15:\"ANTONIO CRIOLLO\";s:9:\"telefono2\";s:10:\"0998137344\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:33:15'),
(148, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:35:43'),
(149, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:8:\"Cristina\";s:8:\"nombres1\";s:9:\"Elizabeth\";s:9:\"apellidos\";s:5:\"Perez\";s:10:\"apellidos1\";s:6:\"Orozco\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"25\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:22:\"El inca n12 y cipreces\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:9:\"998137344\";s:7:\"celular\";s:8:\"09999999\";s:5:\"email\";s:22:\"juanfer92.jc@gmail.com\";s:9:\"contacto1\";s:12:\"Juan Criollo\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:12:\"Maria Gualpa\";s:9:\"telefono2\";s:10:\"0998274445\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:40:20'),
(150, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:43:50'),
(151, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:7:\"nombres\";s:8:\"Fernanda\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:11:\"Rivadeneira\";s:10:\"apellidos1\";s:5:\"Lopez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"28\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:15:\"ANTONIO CRIOLLO\";s:9:\"telefono2\";s:10:\"0998137344\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:44:00'),
(152, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"idsubunidad\";s:1:\"7\";s:10:\"idtipocama\";s:2:\"10\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-006\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-07 23:47:49'),
(153, 26, 'Juan Criollo', 'ACTULIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:17:\"idhospitalizacion\";s:1:\"2\";s:6:\"idcama\";s:1:\"1\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"3\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:01:54'),
(154, 26, 'Juan Criollo', 'ACTULIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:17:\"idhospitalizacion\";s:1:\"1\";s:6:\"idcama\";s:1:\"5\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"6\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:03:08'),
(155, 26, 'Juan Criollo', 'ACTULIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:17:\"idhospitalizacion\";s:1:\"2\";s:6:\"idcama\";s:1:\"3\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:03:20'),
(156, 26, 'Juan Criollo', 'ACTULIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:17:\"idhospitalizacion\";s:1:\"2\";s:6:\"idcama\";s:1:\"1\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"3\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:04:18'),
(157, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:29:58'),
(158, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:26:\"Ginecología y Obstetricia\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Tercer_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:48:14'),
(159, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:12:\"Ginecología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:49:27'),
(160, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:10:\"Emergencia\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:51:12'),
(161, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:17:\"Terapia Intensiva\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:11:\"Primer_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:55:04'),
(162, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:18:\"Centro quirúrgico\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:55:32'),
(163, 26, 'Juan Criollo', 'CREAR', 'UNIDAD', 'a:3:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:10:\"idsucursal\";s:1:\"1\";s:11:\"descripcion\";s:19:\"Cuidados Intensivos\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:57:15'),
(164, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:10:\"idsucursal\";s:1:\"2\";s:11:\"descripcion\";s:19:\"Cuidados Intensivos\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:58:54'),
(165, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:30:\"Cuidados intensivos Neonatales\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 00:59:39'),
(166, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"5\";s:11:\"descripcion\";s:30:\"Cuidados intensivos Neonatales\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:12:\"Segundo_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:00:19'),
(167, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:8:\"idunidad\";s:1:\"5\";s:11:\"descripcion\";s:28:\"Cuidados intensivos Maternos\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:12:\"Segundo_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:00:49'),
(168, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"descripcion\";s:30:\"Sillón Eléctrico Ginecólogo\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:05:19'),
(169, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:15:29'),
(170, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:15:42'),
(171, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"descripcion\";s:30:\"Sillón Eléctrico Ginecólogo\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:15:53'),
(172, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"rB7xPyPQxQWBNjGEvmK6ChQWoNWaE1QaPq78rxkw\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"2\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 01:21:31'),
(173, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '11', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:35:01'),
(174, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '5', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:35:31'),
(175, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:10:\"idsucursal\";s:1:\"1\";s:11:\"descripcion\";s:19:\"Cuidados Intensivos\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:35:57'),
(176, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:11:\"idsubunidad\";s:1:\"7\";s:10:\"idtipocama\";s:1:\"3\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-008\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:38:44'),
(177, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:19:{s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:7:\"nombres\";s:5:\"Keila\";s:8:\"nombres1\";s:5:\"Paola\";s:9:\"apellidos\";s:6:\"Obando\";s:10:\"apellidos1\";s:7:\"Sabando\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:10:\"Colombiana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"A+\";s:9:\"direccion\";s:26:\"San juan de Calderon n1-89\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:9:\"022997500\";s:7:\"celular\";s:10:\"0998137344\";s:5:\"email\";s:14:\"kobs@gmail.com\";s:9:\"contacto1\";s:12:\"Juan Criollo\";s:9:\"telefono1\";s:10:\"0998764543\";s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:41:22'),
(178, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:10:\"idpaciente\";s:1:\"4\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"8\";s:13:\"pidpatologian\";s:1:\"9\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:1:{i:0;s:1:\"8\";}s:12:\"idpatologian\";a:1:{i:0;s:1:\"9\";}s:11:\"observacion\";a:1:{i:0;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:44:27'),
(179, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:17:\"idhospitalizacion\";s:1:\"3\";s:6:\"idcama\";s:1:\"8\";s:9:\"idhospita\";s:1:\"2\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:45:52'),
(180, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 14:50:31'),
(181, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-004\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 15:05:59'),
(182, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"zcGerg58RCVbZHgPqxrjk4maJEt8KzCge862I6HI\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-007\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-08 15:06:24'),
(183, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:8:\"Fernanda\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:11:\"Rivadeneira\";s:10:\"apellidos1\";s:5:\"Lopez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"28\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:15:\"ANTONIO CRIOLLO\";s:9:\"telefono2\";s:10:\"0998137344\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 12:27:25');
INSERT INTO `auditoria` (`ID_AUD`, `ID_USUARIO`, `USUARIO`, `ACCION`, `OBJETO`, `SENTENCIA`, `EQUIPO`, `NAVEGADOR`, `FECHA`) VALUES
(184, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:8:\"Cristina\";s:8:\"nombres1\";s:9:\"Elizabeth\";s:9:\"apellidos\";s:5:\"Perez\";s:10:\"apellidos1\";s:6:\"Orozco\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"25\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:22:\"El inca n12 y cipreces\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:9:\"998137344\";s:7:\"celular\";s:8:\"09999999\";s:5:\"email\";s:22:\"juanfer92.jc@gmail.com\";s:9:\"contacto1\";s:12:\"Juan Criollo\";s:9:\"telefono1\";s:9:\"998137344\";s:9:\"contacto2\";s:12:\"Maria Gualpa\";s:9:\"telefono2\";s:10:\"0998274445\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 12:27:32'),
(185, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 12:27:44'),
(186, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:5:\"Keila\";s:8:\"nombres1\";s:5:\"Paola\";s:9:\"apellidos\";s:6:\"Obando\";s:10:\"apellidos1\";s:7:\"Sabando\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:26:\"San juan de Calderon n1-89\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:9:\"022997500\";s:7:\"celular\";s:10:\"0998137344\";s:5:\"email\";s:14:\"kobs@gmail.com\";s:9:\"contacto1\";s:12:\"Juan Criollo\";s:9:\"telefono1\";s:10:\"0998764543\";s:9:\"contacto2\";N;s:9:\"telefono2\";N;s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 12:27:50'),
(187, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 13:59:21'),
(188, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:2:\"11\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"qui_p1_001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:00:27'),
(189, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"1\";s:6:\"idcama\";s:1:\"6\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"9\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:01:16'),
(190, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:03:39'),
(191, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idpaciente\";s:1:\"2\";s:12:\"idpatologiam\";s:2:\"18\";s:5:\"parto\";s:7:\"Cesarea\";s:7:\"pidcama\";s:1:\"1\";s:13:\"pidpatologian\";s:1:\"9\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"1\";}s:12:\"idpatologian\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"9\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:04:37'),
(192, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"4\";s:10:\"idtipocama\";s:2:\"11\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"qui_p1_001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:09:43'),
(193, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"1\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:1:\"1\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:12:33'),
(194, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"4\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:1:\"3\";s:7:\"idncama\";s:1:\"6\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 14:13:20'),
(195, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 19:35:18'),
(196, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idsucursal\";s:1:\"2\";s:11:\"descripcion\";s:19:\"Cuidados Intensivos\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 19:35:40'),
(197, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 20:24:33'),
(198, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"7\";s:10:\"idtipocama\";s:1:\"3\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-005\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 20:26:27'),
(199, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"Qui_p2_001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 20:28:22'),
(200, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:17:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:5:\"Carla\";s:8:\"nombres1\";s:7:\"Daniela\";s:9:\"apellidos\";s:4:\"Rios\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"B+\";s:9:\"direccion\";s:41:\"El comite del pueblo juan molineros n1-89\";s:8:\"telefono\";s:7:\"2886205\";s:7:\"celular\";s:10:\"0998137344\";s:5:\"email\";s:11:\"mf@gmai.com\";s:9:\"contacto1\";s:11:\"Laura Perez\";s:9:\"telefono1\";s:10:\"0998137344\";s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 20:58:08'),
(201, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"4\";s:10:\"idtipocama\";s:2:\"11\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"Qui_p2_001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:10:37'),
(202, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"4\";s:10:\"idtipocama\";s:2:\"11\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"QUI_P1_001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:11:39'),
(203, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:16:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:27:41'),
(204, 26, 'Juan Criollo', 'ACTUALIZAR', 'USUARIO', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:6:\"pepito\";s:5:\"email\";s:9:\"p@ads.com\";s:8:\"password\";s:6:\"123456\";s:21:\"password_confirmation\";s:6:\"123456\";s:5:\"roles\";a:1:{i:0;s:1:\"6\";}s:10:\"idsucursal\";s:1:\"1\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:28:08'),
(205, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:17:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"39\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:31:23'),
(206, 28, 'pepito', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"WzvW1YtqzMsR0RLSkePjOvdiob08OSXlOScNPe2q\";s:11:\"descripcion\";s:10:\"Disponible\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:31:37'),
(207, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:16:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:31:47'),
(208, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:18:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:36:54'),
(209, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:20:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"46\";i:19;s:2:\"47\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:39:19'),
(210, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:20:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"51\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:42:04'),
(211, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:22:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"51\";i:20;s:2:\"52\";i:21;s:2:\"53\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:42:34'),
(212, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:19:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:44:20'),
(213, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:21:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:48:11'),
(214, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idpaciente\";s:1:\"5\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"5\";s:13:\"pidpatologian\";s:2:\"26\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:1:{i:0;s:1:\"5\";}s:12:\"idpatologian\";a:1:{i:0;s:2:\"26\";}s:11:\"observacion\";a:1:{i:0;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:52:56'),
(215, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:22:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:55:17'),
(216, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:23:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"61\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:56:42'),
(217, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:22:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 21:57:12'),
(218, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:24:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:00:07'),
(219, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:26:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:02:00'),
(220, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:06:04'),
(221, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:06:19'),
(222, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:28:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:06:52'),
(223, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:30:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"72\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:08:05'),
(224, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:10:53'),
(225, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:10:58'),
(226, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:31:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"76\";i:30;s:2:\"77\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:11:13'),
(227, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:31:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"76\";i:30;s:2:\"81\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:14:02'),
(228, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:33:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"76\";i:30;s:2:\"81\";i:31;s:2:\"86\";i:32;s:2:\"87\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:16:25'),
(229, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:35:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"76\";i:30;s:2:\"81\";i:31;s:2:\"86\";i:32;s:2:\"87\";i:33;s:2:\"88\";i:34;s:2:\"89\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:19:54'),
(230, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:36:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"16\";i:7;s:2:\"17\";i:8;s:2:\"21\";i:9;s:2:\"22\";i:10;s:2:\"26\";i:11;s:2:\"27\";i:12;s:2:\"31\";i:13;s:2:\"32\";i:14;s:2:\"36\";i:15;s:2:\"37\";i:16;s:2:\"41\";i:17;s:2:\"42\";i:18;s:2:\"50\";i:19;s:2:\"55\";i:20;s:2:\"56\";i:21;s:2:\"60\";i:22;s:2:\"62\";i:23;s:2:\"63\";i:24;s:2:\"64\";i:25;s:2:\"65\";i:26;s:2:\"66\";i:27;s:2:\"67\";i:28;s:2:\"71\";i:29;s:2:\"76\";i:30;s:2:\"81\";i:31;s:2:\"86\";i:32;s:2:\"87\";i:33;s:2:\"88\";i:34;s:2:\"89\";i:35;s:2:\"90\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:21:51'),
(231, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"descripcion\";s:10:\"Quirófano\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:26:50'),
(232, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:29:31'),
(233, 26, 'Juan Criollo', 'CREAR', 'SUCURSAL', 'a:5:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:4:\"gegr\";s:9:\"direccion\";s:3:\"erg\";s:8:\"telefono\";s:4:\"werg\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:30:35'),
(234, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idpaciente\";s:1:\"3\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"12\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"5\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"12\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:32:42'),
(235, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"8\";s:6:\"idcama\";s:1:\"2\";s:9:\"idhospita\";s:1:\"5\";s:7:\"idncama\";s:1:\"9\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:35:24'),
(236, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"8\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:1:\"5\";s:7:\"idncama\";s:1:\"2\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:35:59'),
(237, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:36:25'),
(238, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idpaciente\";s:1:\"4\";s:12:\"idpatologiam\";s:2:\"18\";s:5:\"parto\";s:7:\"Cesarea\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"17\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;s:2:\"17\";i:1;s:2:\"17\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:38:51'),
(239, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:17:\"idhospitalizacion\";s:1:\"9\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:1:\"6\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:39:21'),
(240, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:41:26'),
(241, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"26\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:7:\"Zambiza\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:43:20'),
(242, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"idsubunidad\";s:1:\"3\";s:10:\"idtipocama\";s:2:\"10\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:11:\"COBS_CAM001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:49:17'),
(243, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:10:\"idpaciente\";s:1:\"1\";s:12:\"idpatologiam\";s:2:\"18\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"5\";s:13:\"pidpatologian\";s:1:\"9\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:2:\"10\";i:1;s:1:\"5\";}s:12:\"idpatologian\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"9\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:50:05'),
(244, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:50:55'),
(245, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:57:11'),
(246, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"descripcion\";s:26:\"Terapia Intensiva Neonatal\";s:6:\"imagen\";s:28:\"terapiaintensivaneonatal.jpg\";s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:57:47'),
(247, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:11:\"descripcion\";s:26:\"Terapia Intensiva Neonatal\";s:6:\"imagen\";s:28:\"terapiaintensivaneonatal.jpg\";s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 22:58:15'),
(248, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 23:00:25'),
(249, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:26:\"Terapia Intensiva Maternal\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 23:01:12'),
(250, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Rd7re7Bu4OdI7tlAVF2oqjjmP9ocVT8ETMWPQTIl\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:26:\"Terapia Intensiva Maternal\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 23:01:28'),
(251, 26, 'Juan Criollo', 'CREAR', 'TIPO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 23:02:51'),
(252, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:37:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"16\";i:8;s:2:\"17\";i:9;s:2:\"21\";i:10;s:2:\"22\";i:11;s:2:\"26\";i:12;s:2:\"27\";i:13;s:2:\"31\";i:14;s:2:\"32\";i:15;s:2:\"36\";i:16;s:2:\"37\";i:17;s:2:\"41\";i:18;s:2:\"42\";i:19;s:2:\"50\";i:20;s:2:\"55\";i:21;s:2:\"56\";i:22;s:2:\"60\";i:23;s:2:\"62\";i:24;s:2:\"63\";i:25;s:2:\"64\";i:26;s:2:\"65\";i:27;s:2:\"66\";i:28;s:2:\"67\";i:29;s:2:\"71\";i:30;s:2:\"76\";i:31;s:2:\"81\";i:32;s:2:\"86\";i:33;s:2:\"87\";i:34;s:2:\"88\";i:35;s:2:\"89\";i:36;s:2:\"90\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:11:17'),
(253, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:13:42'),
(254, 26, 'Juan Criollo', 'ACTUALIZAR', 'UNIDAD', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:10:\"idsucursal\";s:1:\"1\";s:11:\"descripcion\";s:41:\"Especialidades clínicas y/o quirúrgicas\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:14:05'),
(255, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:11:\"idsubunidad\";s:1:\"4\";s:10:\"idtipocama\";s:2:\"11\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"qui_p1_002\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:16:21'),
(256, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:17:{s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:7:\"nombres\";s:5:\"MARIA\";s:8:\"nombres1\";s:8:\"FERNANDA\";s:9:\"apellidos\";s:5:\"QUILO\";s:10:\"apellidos1\";s:5:\"PEREZ\";s:2:\"ci\";s:10:\"1722044839\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"25\";s:7:\"tsangre\";s:2:\"A-\";s:9:\"direccion\";s:7:\"Zambiza\";s:8:\"telefono\";s:10:\"0998137344\";s:7:\"celular\";s:8:\"22998834\";s:5:\"email\";s:10:\"JUA@AS.COM\";s:9:\"contacto1\";s:4:\"JUAN\";s:9:\"telefono1\";s:4:\"0998\";s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:18:11'),
(257, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:10:\"idpaciente\";s:1:\"6\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"1\";s:13:\"pidpatologian\";s:2:\"26\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:2:\"11\";i:1;s:1:\"1\";}s:12:\"idpatologian\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"26\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:20:20'),
(258, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";s:17:\"idhospitalizacion\";s:2:\"13\";s:6:\"idcama\";s:2:\"11\";s:9:\"idhospita\";s:1:\"8\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:27:31'),
(259, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"Xnc0Vda2c5Q4SBaadP2VsPax68iZA3xrcueQSs0G\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-10 12:28:53'),
(260, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"2\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:15:57'),
(261, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:28:31'),
(262, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:18:\"tyyutryuyuiryiutyi\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:29:42'),
(263, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:18:\"tyyutryuyuiryiutyi\";s:6:\"imagen\";s:31:\"terapiaintensivaneonatalrrr.jpg\";s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:32:42'),
(264, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:35:27'),
(265, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', NULL, 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:36:33'),
(266, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:14:\",hdfgdfghdfghd\";s:6:\"imagen\";s:19:\"cama-para-parto.jpg\";s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:37:40'),
(267, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', 'Se a creado un nuevo estado.', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:42:14'),
(268, 26, 'Juan Criollo', 'DESHABILITAR', 'ESTADO DE CAMA', '12', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:49:05'),
(269, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:13:\"Sucursal 1iih\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:49:24'),
(270, 26, 'Juan Criollo', 'CREAR', 'ESTADO DE CAMA', 'Se a creado un nuevo estado.', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 09:49:38'),
(271, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:11:\"REG_1235555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 10:12:40'),
(272, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 10:55:25'),
(273, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 10:55:35');
INSERT INTO `auditoria` (`ID_AUD`, `ID_USUARIO`, `USUARIO`, `ACCION`, `OBJETO`, `SENTENCIA`, `EQUIPO`, `NAVEGADOR`, `FECHA`) VALUES
(274, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 10:55:44'),
(275, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:37:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"16\";i:8;s:2:\"17\";i:9;s:2:\"21\";i:10;s:2:\"22\";i:11;s:2:\"26\";i:12;s:2:\"27\";i:13;s:2:\"31\";i:14;s:2:\"32\";i:15;s:2:\"36\";i:16;s:2:\"37\";i:17;s:2:\"41\";i:18;s:2:\"42\";i:19;s:2:\"50\";i:20;s:2:\"55\";i:21;s:2:\"56\";i:22;s:2:\"60\";i:23;s:2:\"62\";i:24;s:2:\"63\";i:25;s:2:\"64\";i:26;s:2:\"65\";i:27;s:2:\"66\";i:28;s:2:\"67\";i:29;s:2:\"71\";i:30;s:2:\"76\";i:31;s:2:\"81\";i:32;s:2:\"86\";i:33;s:2:\"87\";i:34;s:2:\"88\";i:35;s:2:\"89\";i:36;s:2:\"90\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 11:11:27'),
(276, 26, 'Juan Criollo', 'ACTUALIZAR', 'ROL', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:4:\"name\";s:12:\"Solo Lectura\";s:4:\"slug\";s:11:\"sololectura\";s:11:\"description\";s:8:\"Solo ver\";s:11:\"permissions\";a:37:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"6\";i:3;s:1:\"7\";i:4;s:2:\"11\";i:5;s:2:\"12\";i:6;s:2:\"13\";i:7;s:2:\"16\";i:8;s:2:\"17\";i:9;s:2:\"21\";i:10;s:2:\"22\";i:11;s:2:\"26\";i:12;s:2:\"27\";i:13;s:2:\"31\";i:14;s:2:\"32\";i:15;s:2:\"36\";i:16;s:2:\"37\";i:17;s:2:\"41\";i:18;s:2:\"42\";i:19;s:2:\"50\";i:20;s:2:\"55\";i:21;s:2:\"56\";i:22;s:2:\"60\";i:23;s:2:\"62\";i:24;s:2:\"63\";i:25;s:2:\"64\";i:26;s:2:\"65\";i:27;s:2:\"66\";i:28;s:2:\"67\";i:29;s:2:\"71\";i:30;s:2:\"76\";i:31;s:2:\"81\";i:32;s:2:\"86\";i:33;s:2:\"87\";i:34;s:2:\"88\";i:35;s:2:\"89\";i:36;s:2:\"90\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 11:16:09'),
(277, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 11:23:33'),
(278, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 11:23:46'),
(279, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 11:28:04'),
(280, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:16:{s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:7:\"nombres\";s:4:\"asdf\";s:8:\"nombres1\";s:4:\"asdf\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"B-\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 15:29:55'),
(281, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:7:\"nombres\";s:4:\"asdf\";s:8:\"nombres1\";s:4:\"asdf\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:10:\"1719531665\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 15:30:46'),
(282, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:7:\"nombres\";N;s:8:\"nombres1\";N;s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:10:\"1719531665\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 15:35:16'),
(283, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:7:\"nombres\";N;s:8:\"nombres1\";s:2:\"kj\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:10:\"1719531665\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 16:27:33'),
(284, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"eSV3oByGpp89fOR7s9E6I7hxUUP7GWoGHImc0FXM\";s:7:\"nombres\";s:7:\"ghjfghj\";s:8:\"nombres1\";s:2:\"kj\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:9:\"171953166\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-12 17:43:11'),
(285, 26, 'Juan Criollo', 'CREAR', 'HOSPITAL', 'a:6:{s:6:\"_token\";s:40:\"XiozGPPviWiKZXbUh28LPSw4EWT052DoyxhWUc06\";s:6:\"nombre\";s:3:\"dfg\";s:3:\"ruc\";s:6:\"876543\";s:16:\"reg_msp_hospital\";s:13:\",mgjnfghgbffv\";s:9:\"direccion\";s:11:\"j,gmhfngbfv\";s:8:\"telefono\";s:11:\"jhmfngdbfdv\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 15:23:29'),
(286, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"XiozGPPviWiKZXbUh28LPSw4EWT052DoyxhWUc06\";s:6:\"nombre\";s:13:\"dfgfgbfgbdfgb\";s:3:\"ruc\";s:10:\"1234567890\";s:16:\"reg_msp_hospital\";s:13:\",mgjnfghgbffv\";s:9:\"direccion\";s:11:\"j,gmhfngbfv\";s:8:\"telefono\";s:11:\"jhmfngdbfdv\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 15:27:44'),
(287, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"XiozGPPviWiKZXbUh28LPSw4EWT052DoyxhWUc06\";s:6:\"nombre\";s:19:\"pruebas de hospital\";s:3:\"ruc\";s:10:\"1234567890\";s:16:\"reg_msp_hospital\";s:15:\"123-009-009-123\";s:9:\"direccion\";s:35:\"zambiza calle ambato y la que cruza\";s:8:\"telefono\";s:22:\"0998137344 / 022997500\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 15:30:01'),
(288, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"XiozGPPviWiKZXbUh28LPSw4EWT052DoyxhWUc06\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 16:09:05'),
(289, 26, 'Juan Criollo', 'CREAR', 'SUCURSAL', 'a:5:{s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:10:\"Sucursal 3\";s:9:\"direccion\";s:33:\"zambiza calle ambato y benalcazar\";s:8:\"telefono\";s:9:\"022997500\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:20:16'),
(290, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:10:\"Sucursal 3\";s:9:\"direccion\";s:33:\"zambiza calle ambato y benalcazar\";s:8:\"telefono\";s:9:\"022997500\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:20:43'),
(291, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:20:48'),
(292, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '3', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:21:11'),
(293, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:2:\"Ne\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:38:29'),
(294, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:38:54'),
(295, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:40:43'),
(296, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:42:20'),
(297, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:42:35'),
(298, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"Neonatología\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:44:24'),
(299, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:8:\"fdsfffff\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:46:57'),
(300, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:13:\"fdsffffffffff\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:47:06'),
(301, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '12', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:47:13'),
(302, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:28:\"Cuidados intensivos Maternos\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:47:23'),
(303, 26, 'Juan Criollo', 'CREAR', 'SUBUNIDAD', 'a:5:{s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:17:\"vb cvbcvbcbcvbcvb\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:49:44'),
(304, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:17:\"vb cvbcvbcbcvbcvb\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:50:03'),
(305, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"descripcion\";s:15:\"Cama Para Parto\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:58:26'),
(306, 26, 'Juan Criollo', 'DESHABILITAR', 'UNIDAD', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:59:26'),
(307, 26, 'Juan Criollo', 'ACTUALIZAR', 'TIPO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"descripcion\";s:30:\"Sillón Eléctrico Ginecólogo\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 22:59:33'),
(308, 26, 'Juan Criollo', 'DESHABILITAR', 'ESTADO DE CAMA', '4', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 23:25:45'),
(309, 26, 'Juan Criollo', 'ACTUALIZAR', 'ESTADO DE CAMA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"descripcion\";s:5:\"otras\";s:6:\"imagen\";N;s:6:\"estado\";s:6:\"Activo\";s:5:\"files\";s:4:\"true\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 23:25:57'),
(310, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"idsubunidad\";s:1:\"7\";s:10:\"idtipocama\";s:1:\"3\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"HOS-P2-003\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 23:44:19'),
(311, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"QUI_P1_002\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-13 23:45:18'),
(312, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-14 00:00:59'),
(313, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:16:{s:6:\"_token\";s:40:\"GHNDDBLYv3rMzIBSCEfbStsWLuexKXgk0Si3sMBo\";s:7:\"nombres\";s:6:\"Evelyn\";s:8:\"nombres1\";s:6:\"Roxana\";s:9:\"apellidos\";s:8:\"Intriago\";s:10:\"apellidos1\";s:7:\"Davalos\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"27\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:44:\"Av. 6 de diciembre y joaquin davalos esquina\";s:8:\"telefono\";N;s:7:\"celular\";N;s:5:\"email\";N;s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-14 00:50:30'),
(314, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:21:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:7:\"ghjfghj\";s:8:\"nombres1\";s:2:\"kj\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:2:\"ci\";s:9:\"171953166\";s:12:\"nacionalidad\";s:11:\"Ecuatoriana\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:9:\"provincia\";s:9:\"Pichincha\";s:6:\"canton\";s:5:\"Quito\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:4:\"dfdf\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 09:14:33'),
(315, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:18:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:7:\"ghjfghj\";s:8:\"nombres1\";s:2:\"kj\";s:9:\"apellidos\";s:4:\"asdf\";s:10:\"apellidos1\";s:4:\"asdf\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:11:\"adfasdfasdf\";s:8:\"telefono\";s:5:\"35234\";s:7:\"celular\";s:4:\"2345\";s:5:\"email\";s:12:\"dfdf@sdf.com\";s:9:\"contacto1\";s:6:\"rfsdvd\";s:9:\"telefono1\";s:5:\"45234\";s:9:\"contacto2\";s:8:\"zxcvzxcv\";s:9:\"telefono2\";s:5:\"45234\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 09:36:45'),
(316, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:18:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:8:\"Maricela\";s:8:\"nombres1\";s:8:\"Nathalia\";s:9:\"apellidos\";s:5:\"Acuna\";s:10:\"apellidos1\";s:11:\"Guanoluoisa\";s:11:\"CI_PACIENTE\";s:10:\"1717351256\";s:4:\"edad\";s:2:\"24\";s:7:\"tsangre\";s:2:\"O-\";s:9:\"direccion\";s:32:\"La florestar n1 - 89 y galapagos\";s:8:\"telefono\";s:9:\"022997500\";s:7:\"celular\";s:10:\"0998137344\";s:5:\"email\";s:12:\"dfdf@sdf.com\";s:9:\"contacto1\";s:12:\"juan Criollo\";s:9:\"telefono1\";s:7:\"2997500\";s:9:\"contacto2\";s:12:\"Maria Gualpa\";s:9:\"telefono2\";s:7:\"2997500\";s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 10:40:40'),
(317, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:10:\"idpaciente\";s:1:\"7\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"12\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:2:\"10\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;s:1:\"9\";i:1;s:2:\"12\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 10:49:00'),
(318, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:17:\"idhospitalizacion\";s:2:\"15\";s:6:\"idcama\";s:2:\"10\";s:9:\"idhospita\";s:1:\"9\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 10:51:32'),
(319, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:11:\"descripcion\";s:12:\"preeclampsia\";s:7:\"sintoma\";s:785:\"La preeclampsia ocurre en 5% a 10% de los embarazos. El 75% de los casos son leves y el 25% son severos. Puede surgir en cualquier momento del embarazo entre  la 20ª semana  hasta unos días después del parto.\r\n\r\nLa hipertensión que se produce después de la 20ª semana  del embarazo es el síntoma más común. Sin embargo, para caracterizarse preeclampsia y no solamente hipertensión gestacional, es necesario que exista también la presencia de proteinuria (por lo menos 300 mg de proteína en urinocultivo de 24 horas. (Lee: EXAMEN DE ORINA – Leucocitos, Sangre, pH)\r\n\r\nCasi toda mujer embarazada presenta edemas (hinchazón), sin embargo, un rápido y repentino empeoramiento de los edemas, afectando especialmente a la cara y las manos, puede ser un signo de preeclampsia.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";s:1609:\"El tratamiento definitivo es la inducción del parto. No siempre la preeclampsia ocurre en edades gestacionales que permiten la inducción del parto sin daño para el feto. Por otro lado, la no finalización del embarazo puede traer graves consecuencias para la madre. Por lo tanto, la decisión de inducir al parto o prolongar el embarazo debe tener en cuenta la edad gestacional, la severidad de la preeclampsia y las condiciones de salud  de la madre y del feto.\r\n\r\nEn algunos casos se puede indicar la hospitalización de la madre para un acompañamiento  más cercano de la progresión de la enfermedad, tratando de posponer el parto a lo más cerca posible a la 40ª semana de embarazo. Siempre que sea posible, la preferencia es por el parto natural.\r\n\r\nLa hipertensión arterial debe ser controlada, pero esto no interfiere en el curso de la enfermedad o en la mortalidad materno/fetal. Es importante recordar que algunos famosos antihipertensivos como enalapril, captopril y nifedipina están contraindicados en el embarazo. El control de la presión arterial en el embarazo debe hacerse solamente bajo la supervisión del ginecólogo-obstetra.\r\n\r\nEl uso de corticoides (Lee: Glucocorticoides – Para Que Se Toma y Efectos Secundarios) está indicado para el tratamiento temporario de las complicaciones del síndrome HELLP, pero principalmente para acelerar la maduración pulmonar fetal si es necesario la inducción del parto antes del final del mismo.\r\n\r\nLa prevención de las crisis convulsivas es importante y se puede hacer con la administración del sulfato de magnesio poco antes del parto.\";s:9:\"tpaciente\";s:8:\"Maternal\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:27:46'),
(320, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:11:\"descripcion\";s:12:\"Preeclampsia\";s:7:\"sintoma\";s:785:\"La preeclampsia ocurre en 5% a 10% de los embarazos. El 75% de los casos son leves y el 25% son severos. Puede surgir en cualquier momento del embarazo entre  la 20ª semana  hasta unos días después del parto.\r\n\r\nLa hipertensión que se produce después de la 20ª semana  del embarazo es el síntoma más común. Sin embargo, para caracterizarse preeclampsia y no solamente hipertensión gestacional, es necesario que exista también la presencia de proteinuria (por lo menos 300 mg de proteína en urinocultivo de 24 horas. (Lee: EXAMEN DE ORINA – Leucocitos, Sangre, pH)\r\n\r\nCasi toda mujer embarazada presenta edemas (hinchazón), sin embargo, un rápido y repentino empeoramiento de los edemas, afectando especialmente a la cara y las manos, puede ser un signo de preeclampsia.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";s:1609:\"El tratamiento definitivo es la inducción del parto. No siempre la preeclampsia ocurre en edades gestacionales que permiten la inducción del parto sin daño para el feto. Por otro lado, la no finalización del embarazo puede traer graves consecuencias para la madre. Por lo tanto, la decisión de inducir al parto o prolongar el embarazo debe tener en cuenta la edad gestacional, la severidad de la preeclampsia y las condiciones de salud  de la madre y del feto.\r\n\r\nEn algunos casos se puede indicar la hospitalización de la madre para un acompañamiento  más cercano de la progresión de la enfermedad, tratando de posponer el parto a lo más cerca posible a la 40ª semana de embarazo. Siempre que sea posible, la preferencia es por el parto natural.\r\n\r\nLa hipertensión arterial debe ser controlada, pero esto no interfiere en el curso de la enfermedad o en la mortalidad materno/fetal. Es importante recordar que algunos famosos antihipertensivos como enalapril, captopril y nifedipina están contraindicados en el embarazo. El control de la presión arterial en el embarazo debe hacerse solamente bajo la supervisión del ginecólogo-obstetra.\r\n\r\nEl uso de corticoides (Lee: Glucocorticoides – Para Que Se Toma y Efectos Secundarios) está indicado para el tratamiento temporario de las complicaciones del síndrome HELLP, pero principalmente para acelerar la maduración pulmonar fetal si es necesario la inducción del parto antes del final del mismo.\r\n\r\nLa prevención de las crisis convulsivas es importante y se puede hacer con la administración del sulfato de magnesio poco antes del parto.\";s:9:\"tpaciente\";s:8:\"Maternal\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:28:02'),
(321, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:10:\"idpaciente\";s:1:\"8\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"3\";s:13:\"pidpatologian\";N;s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:1:{i:0;s:1:\"6\";}s:12:\"idpatologian\";a:1:{i:0;N;}s:11:\"observacion\";a:1:{i:0;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:34:58'),
(322, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:46:08'),
(323, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:46:38'),
(324, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:17:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:6:\"Evelyn\";s:8:\"nombres1\";s:6:\"Roxana\";s:9:\"apellidos\";s:8:\"Intriago\";s:10:\"apellidos1\";s:7:\"Davalos\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"27\";s:9:\"direccion\";s:44:\"Av. 6 de diciembre y joaquin davalos esquina\";s:8:\"telefono\";s:7:\"2997527\";s:7:\"celular\";s:10:\"0998137244\";s:5:\"email\";s:18:\"eveintri@gmail.com\";s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:47:33'),
(325, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:18:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:6:\"Evelyn\";s:8:\"nombres1\";s:6:\"Roxana\";s:9:\"apellidos\";s:8:\"Intriago\";s:10:\"apellidos1\";s:7:\"Davalos\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"27\";s:7:\"tsangre\";s:2:\"O+\";s:9:\"direccion\";s:44:\"Av. 6 de diciembre y joaquin davalos esquina\";s:8:\"telefono\";s:7:\"2997527\";s:7:\"celular\";s:10:\"0998137244\";s:5:\"email\";s:18:\"eveintri@gmail.com\";s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:50:44'),
(326, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:10:\"idpaciente\";s:1:\"8\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"26\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"5\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;N;i:1;s:2:\"26\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 11:58:59'),
(327, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 12:14:34'),
(328, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:17:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:5:\"Maria\";s:8:\"nombres1\";s:8:\"Fernanda\";s:9:\"apellidos\";s:5:\"Quilo\";s:10:\"apellidos1\";s:5:\"Perez\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"25\";s:9:\"direccion\";s:7:\"Zambiza\";s:8:\"telefono\";s:10:\"0998137344\";s:7:\"celular\";s:8:\"22998834\";s:5:\"email\";s:10:\"JUA@AS.COM\";s:9:\"contacto1\";s:4:\"JUAN\";s:9:\"telefono1\";s:4:\"0998\";s:9:\"contacto2\";N;s:9:\"telefono2\";N;s:9:\"reingreso\";s:2:\"no\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 12:17:48'),
(329, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:16:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:6:\"Lorena\";s:8:\"nombres1\";s:8:\"Gabriela\";s:9:\"apellidos\";s:7:\"Almache\";s:10:\"apellidos1\";s:6:\"Flores\";s:11:\"CI_PACIENTE\";s:10:\"1803526993\";s:4:\"edad\";s:2:\"29\";s:7:\"tsangre\";s:2:\"O-\";s:9:\"direccion\";s:29:\"Queseras del medio el recreo.\";s:8:\"telefono\";s:9:\"022997500\";s:7:\"celular\";s:10:\"0998137344\";s:5:\"email\";s:16:\"lore@hotmail.com\";s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:19:29'),
(330, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:8:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:10:\"idpaciente\";s:1:\"9\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"26\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"5\";i:1;s:1:\"2\";}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:20:21'),
(331, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:21:37'),
(332, 26, 'Juan Criollo', 'CREAR', 'PACIENTE', 'a:16:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:7:\"nombres\";s:6:\"Monica\";s:8:\"nombres1\";s:7:\"Mariela\";s:9:\"apellidos\";s:8:\"Amaguana\";s:10:\"apellidos1\";s:4:\"Iles\";s:11:\"CI_PACIENTE\";s:10:\"1721142501\";s:4:\"edad\";s:2:\"29\";s:7:\"tsangre\";s:2:\"A-\";s:9:\"direccion\";s:31:\"Segundo cueva celi llano grande\";s:8:\"telefono\";N;s:7:\"celular\";N;s:5:\"email\";N;s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:23:44'),
(333, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:10:\"idpaciente\";s:2:\"10\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"26\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"5\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;N;i:1;s:2:\"26\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:38:28'),
(334, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:17:\"idhospitalizacion\";s:2:\"22\";s:6:\"idcama\";s:1:\"5\";s:9:\"idhospita\";s:2:\"14\";s:7:\"idncama\";s:1:\"9\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 14:59:50'),
(335, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:17:\"idhospitalizacion\";s:2:\"22\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:2:\"14\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 15:00:15'),
(336, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:17:\"idhospitalizacion\";s:2:\"22\";s:6:\"idcama\";s:1:\"5\";s:9:\"idhospita\";s:2:\"14\";s:7:\"idncama\";s:1:\"9\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 15:17:50'),
(337, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";s:17:\"idhospitalizacion\";s:2:\"22\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:2:\"14\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 15:18:18'),
(338, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"j3MuszEJDPCzDWPGQfnAEAR7XZVh3b8W5sDmtcVV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 15:48:34'),
(339, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"aYIUbKGKEAzDj0sDotkwAopMvsRpOOeXoMXuMCZr\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 23:38:38'),
(340, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"aYIUbKGKEAzDj0sDotkwAopMvsRpOOeXoMXuMCZr\";s:11:\"idsubunidad\";s:1:\"1\";s:10:\"idtipocama\";s:1:\"2\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:10:\"CAM-P1-007\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-14 23:39:29'),
(341, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:17:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"18\";s:9:\"direccion\";s:7:\"Zambiza\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 22:44:24'),
(342, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:10:\"idpaciente\";s:1:\"1\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";N;s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;N;i:1;N;}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 22:45:53'),
(343, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:17:\"idhospitalizacion\";s:2:\"24\";s:6:\"idcama\";s:1:\"9\";s:9:\"idhospita\";s:2:\"15\";s:7:\"idncama\";s:1:\"5\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 22:46:53'),
(344, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 22:49:34'),
(345, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:18:\"Centro Obstétrico\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:11:\"Tercer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 23:07:11'),
(346, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"1\";s:11:\"descripcion\";s:18:\"Centro Quirúrgico\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Tercer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-15 23:07:23'),
(347, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:28:\"Cuidados intensivos Maternos\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:09:07'),
(348, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:28:\"Cuidados Intensivos Maternal\";s:6:\"sector\";s:5:\"Norte\";s:4:\"piso\";s:11:\"Primer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:22:21'),
(349, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:30:\"Cuidados intensivos Neonatales\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:11:\"Tercer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:22:47'),
(350, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUBUNIDAD', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:8:\"idunidad\";s:1:\"2\";s:11:\"descripcion\";s:30:\"Cuidados Intensivos Neonatales\";s:6:\"sector\";s:3:\"Sur\";s:4:\"piso\";s:11:\"Tercer_Piso\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:28:31'),
(351, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:7:\"GIN-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:52:07'),
(352, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:7:\"GIN-002\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:53:10'),
(353, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:7:\"GIN-003\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 00:53:31'),
(354, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:11:\"idsubunidad\";s:2:\"10\";s:10:\"idtipocama\";s:2:\"13\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:9:\"TINEO-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 01:00:38'),
(355, 26, 'Juan Criollo', 'CREAR', 'CAMA', 'a:6:{s:6:\"_token\";s:40:\"KAER7jCEhPu9MxsQGEfEuZczeAm0HVQl5VBtqr5A\";s:11:\"idsubunidad\";s:2:\"11\";s:10:\"idtipocama\";s:2:\"14\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:9:\"TIMAT-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-16 01:02:28'),
(356, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:6:\"Matriz\";s:9:\"direccion\";s:45:\"Av. De los Naranjos N44-463 y De las Azucenas\";s:8:\"telefono\";s:10:\"9545494776\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:52:57'),
(357, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:6:\"Matriz\";s:9:\"direccion\";s:45:\"Av. De los Naranjos N44-463 y De las Azucenas\";s:8:\"telefono\";s:10:\"9545494776\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:53:25'),
(358, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:53:39');
INSERT INTO `auditoria` (`ID_AUD`, `ID_USUARIO`, `USUARIO`, `ACCION`, `OBJETO`, `SENTENCIA`, `EQUIPO`, `NAVEGADOR`, `FECHA`) VALUES
(359, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:54:04'),
(360, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:55:08'),
(361, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:55:25'),
(362, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:55:46'),
(363, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:56:22'),
(364, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 19:56:44'),
(365, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:02:27'),
(366, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:06:55'),
(367, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:07:23'),
(368, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:10:51'),
(369, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"LphALXa5phUOHPAyQYevV5YYoCFEz7dxLT6S83LJ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:10:59'),
(370, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:31:13'),
(371, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"T3NfhOLvR8hXciAOMxW4GukCFvEIKfeb9KTVBdqZ\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:31:26'),
(372, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"4XmCAxpld17WoWez8xrVCIWrzZYGgqYZLE4RPpJE\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:54:35'),
(373, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:54:42'),
(374, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"4XmCAxpld17WoWez8xrVCIWrzZYGgqYZLE4RPpJE\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:54:50'),
(375, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 20:56:16'),
(376, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:17:25'),
(377, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:19:55'),
(378, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:20:57'),
(379, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:21:11'),
(380, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:21:54'),
(381, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:22:16'),
(382, 26, 'Juan Criollo', 'CREAR', 'HOSPITAL', 'a:6:{s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:18:\"hgfdmgnsgbdsfdvsdf\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:13:\"kjhgfsdfvsdfv\";s:9:\"direccion\";s:19:\"kjhgfsdfvsdfvfgdfgh\";s:8:\"telefono\";s:12:\"876564567567\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:32:24'),
(383, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:32:32'),
(384, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:18:\"hgfdmgnsgbdsfdvsdf\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:13:\"kjhgfsdfvsdfv\";s:9:\"direccion\";s:19:\"kjhgfsdfvsdfvfgdfgh\";s:8:\"telefono\";s:12:\"876564567567\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:32:43'),
(385, 26, 'Juan Criollo', 'DESHABILITAR', 'HOSPITAL', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:35:44'),
(386, 26, 'Juan Criollo', 'ACTUALIZAR', 'HOSPITAL', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:6:\"nombre\";s:40:\"Hospital Gineco Obstétrico Isidro Ayora\";s:3:\"ruc\";s:13:\"1722044839001\";s:16:\"reg_msp_hospital\";s:12:\"REG_12355555\";s:9:\"direccion\";s:38:\"Av Gran Colombia N14-66 y Luis Sodiro.\";s:8:\"telefono\";s:10:\"02-2542935\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:35:56'),
(387, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:45:13'),
(388, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:45:45'),
(389, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:45:58'),
(390, 26, 'Juan Criollo', 'DESHABILITAR', 'PREGUNTA', '1', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:46:32'),
(391, 26, 'Juan Criollo', 'ACTUALIZAR', 'PREGUNTA', 'a:5:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:10:\"idservicio\";s:1:\"1\";s:11:\"descripcion\";s:17:\"La comida ha sido\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:46:42'),
(392, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:48:32'),
(393, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:48:56'),
(394, 26, 'Juan Criollo', 'DESHABILITAR', 'PATOLOGÍA', '9', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:57:53'),
(395, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:58:06'),
(396, 26, 'Juan Criollo', 'DESHABILITAR', 'CAMA', 'Cama Deshabilitada', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 22:59:42'),
(397, 26, 'Juan Criollo', 'ACTUALIZAR', 'CAMA', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:11:\"idsubunidad\";s:1:\"8\";s:10:\"idtipocama\";s:1:\"1\";s:12:\"idestadocama\";s:1:\"1\";s:11:\"observacion\";N;s:6:\"codigo\";s:7:\"GIN-001\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 23:00:07'),
(398, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:17:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:7:\"nombres\";s:5:\"Marta\";s:8:\"nombres1\";s:5:\"Maria\";s:9:\"apellidos\";s:5:\"Quito\";s:10:\"apellidos1\";s:5:\"Perez\";s:11:\"CI_PACIENTE\";s:10:\"1722044839\";s:4:\"edad\";s:2:\"18\";s:9:\"direccion\";s:7:\"Zambiza\";s:8:\"telefono\";s:8:\"22998834\";s:7:\"celular\";s:9:\"998137344\";s:5:\"email\";s:22:\"soporte@asegsur.com.ec\";s:9:\"contacto1\";s:15:\"Ricardo Davalos\";s:9:\"telefono1\";s:8:\"09998888\";s:9:\"contacto2\";s:4:\"Juan\";s:9:\"telefono2\";s:9:\"099887767\";s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 23:00:44'),
(399, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:12:{s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:10:\"idpaciente\";s:1:\"1\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"2\";s:13:\"pidpatologian\";s:2:\"26\";s:5:\"nvivo\";s:2:\"Si\";s:4:\"sexo\";s:9:\"Masculino\";s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:2:\"10\";i:1;s:1:\"2\";}s:12:\"idpatologian\";a:2:{i:0;N;i:1;s:2:\"26\";}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 23:01:46'),
(400, 26, 'Juan Criollo', 'ACTUALIZAR', 'TRANSFERENCIA', 'a:6:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";s:17:\"idhospitalizacion\";s:2:\"26\";s:6:\"idcama\";s:2:\"10\";s:9:\"idhospita\";s:2:\"16\";s:7:\"idncama\";s:1:\"6\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 23:02:53'),
(401, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"UyPvTFGDkBNDFppOQbHEGZgc7eZ6J50sEp865MnV\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-22 23:04:58'),
(402, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-23 10:48:56'),
(403, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"3AMOB1BjNQjR6rVDYHfB5Y9tYNfN5aJqpeH8hCJX\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-23 10:49:27'),
(404, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"3AMOB1BjNQjR6rVDYHfB5Y9tYNfN5aJqpeH8hCJX\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:7:\"Neonato\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-23 10:49:58'),
(405, 26, 'Juan Criollo', 'ACTUALIZAR', 'PATOLOGÍA', 'a:8:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"3AMOB1BjNQjR6rVDYHfB5Y9tYNfN5aJqpeH8hCJX\";s:11:\"descripcion\";s:21:\"Distensión abdominal\";s:7:\"sintoma\";s:467:\"Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.\";s:11:\"diagnostico\";N;s:13:\"procedimiento\";N;s:9:\"tpaciente\";s:8:\"Maternal\";s:6:\"estado\";s:6:\"Activa\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-23 10:53:23'),
(406, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-23 15:00:10'),
(407, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 12:17:06'),
(408, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 12:31:03'),
(409, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 16:52:34'),
(410, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:02:02'),
(411, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:05:42'),
(412, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:05:50'),
(413, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:06:52'),
(414, 26, 'Juan Criollo', 'DESHABILITAR', 'SUCURSAL', '2', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:07:01'),
(415, 26, 'Juan Criollo', 'ACTUALIZAR', 'SUCURSAL', 'a:7:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"CKDRUoLDAx3HBJ6UC81Pl1gJ5ous4T5MLBNcH5Kn\";s:10:\"idhospital\";s:1:\"1\";s:11:\"descripcion\";s:10:\"Sucursal 1\";s:9:\"direccion\";s:37:\"Duchicela N18-59 y calle Princesa Toa\";s:8:\"telefono\";s:10:\"3057169600\";s:6:\"estado\";s:6:\"Activo\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:07:24'),
(416, 26, 'Juan Criollo', 'ACTUALIZAR', 'PACIENTE', 'a:17:{s:7:\"_method\";s:3:\"PUT\";s:6:\"_token\";s:40:\"CKDRUoLDAx3HBJ6UC81Pl1gJ5ous4T5MLBNcH5Kn\";s:7:\"nombres\";s:6:\"Monica\";s:8:\"nombres1\";s:7:\"Mariela\";s:9:\"apellidos\";s:8:\"Amaguana\";s:10:\"apellidos1\";s:4:\"Iles\";s:11:\"CI_PACIENTE\";s:10:\"1721142501\";s:4:\"edad\";s:2:\"29\";s:9:\"direccion\";s:31:\"Segundo cueva celi llano grande\";s:8:\"telefono\";N;s:7:\"celular\";N;s:5:\"email\";N;s:9:\"contacto1\";N;s:9:\"telefono1\";N;s:9:\"contacto2\";N;s:9:\"telefono2\";N;s:9:\"reingreso\";s:7:\"Ingreso\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:15:04'),
(417, 26, 'Juan Criollo', 'INGRESO', 'HOSPITALIZACION', 'a:10:{s:6:\"_token\";s:40:\"CKDRUoLDAx3HBJ6UC81Pl1gJ5ous4T5MLBNcH5Kn\";s:10:\"idpaciente\";s:2:\"10\";s:12:\"idpatologiam\";s:2:\"25\";s:5:\"parto\";s:6:\"Normal\";s:7:\"pidcama\";s:1:\"8\";s:13:\"pidpatologian\";N;s:12:\"pobservacion\";N;s:6:\"idcama\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"8\";}s:12:\"idpatologian\";a:2:{i:0;N;i:1;N;}s:11:\"observacion\";a:2:{i:0;N;i:1;N;}}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:15:59'),
(418, 26, 'Juan Criollo', 'EGRESO', 'HOSPITALIZACION', 'a:2:{s:7:\"_method\";s:6:\"DELETE\";s:6:\"_token\";s:40:\"CKDRUoLDAx3HBJ6UC81Pl1gJ5ous4T5MLBNcH5Kn\";}', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-27 17:17:54'),
(419, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-28 12:17:20'),
(420, 26, 'Juan Criollo', 'INGRESO', 'ACCESO', 'Ingreso al Sistema', 'SOPORTET3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-11-29 10:53:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cama`
--

CREATE TABLE `cama` (
  `ID_CAMA` int(11) NOT NULL,
  `ID_SUBUNIDAD` int(11) DEFAULT NULL,
  `ID_TCAMA` int(11) DEFAULT NULL,
  `ID_ESTCAM` int(11) DEFAULT NULL,
  `COD_CAMA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBSER_CAMA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cama`
--

INSERT INTO `cama` (`ID_CAMA`, `ID_SUBUNIDAD`, `ID_TCAMA`, `ID_ESTCAM`, `COD_CAMA`, `OBSER_CAMA`, `updated_at`, `created_at`) VALUES
(1, 8, 1, 1, 'GIN-001', NULL, '2018-11-23 04:00:07', '2018-09-27 16:11:39'),
(2, 1, 2, 1, 'CAM-P1-002', NULL, '2018-11-27 22:17:53', '2018-10-11 16:16:36'),
(3, 1, 2, 1, 'CAM-P1-003', NULL, '2018-11-09 19:03:39', '2018-10-18 19:41:38'),
(4, 8, 1, 1, 'GIN-002', NULL, '2018-11-16 05:53:09', '2018-10-20 03:35:19'),
(5, 7, 3, 1, 'CAM-P1-005', NULL, '2018-11-16 03:49:34', '2018-10-20 04:30:01'),
(6, 7, 3, 1, 'CAM-P1-006', NULL, '2018-11-23 04:04:57', '2018-11-08 04:47:21'),
(7, 8, 1, 1, 'GIN-003', NULL, '2018-11-16 05:53:31', '2018-11-08 04:47:49'),
(8, 7, 3, 1, 'CAM-P1-008', NULL, '2018-11-27 22:17:53', '2018-11-08 19:38:44'),
(9, 4, 11, 1, 'QUI_P1_001', NULL, '2018-11-16 03:46:53', '2018-11-09 19:00:27'),
(10, 3, 10, 1, 'COBS_CAM001', NULL, '2018-11-23 04:02:53', '2018-11-10 03:49:17'),
(11, 1, 2, 1, 'CAM-P1-007', NULL, '2018-11-15 04:39:29', '2018-11-10 17:16:21'),
(12, 7, 3, 1, 'HOS-P2-003', NULL, '2018-11-14 04:44:19', '2018-11-14 04:44:19'),
(13, 10, 13, 1, 'TINEO-001', NULL, '2018-11-16 06:00:38', '2018-11-16 06:00:38'),
(14, 11, 14, 1, 'TIMAT-001', NULL, '2018-11-16 06:02:27', '2018-11-16 06:02:27');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `camas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `camas` (
`camasdispo` bigint(21)
,`camasocu` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cama_his`
--

CREATE TABLE `cama_his` (
  `ID_HCAMA` int(11) NOT NULL,
  `ID_CAMA` int(11) DEFAULT NULL,
  `ID_HOSPITALIZACION` int(11) DEFAULT NULL,
  `TRANSFERENCIA` varchar(25) COLLATE utf8_bin DEFAULT 'Asignación',
  `FECHA_ESTADO` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cama_his`
--

INSERT INTO `cama_his` (`ID_HCAMA`, `ID_CAMA`, `ID_HOSPITALIZACION`, `TRANSFERENCIA`, `FECHA_ESTADO`, `updated_at`, `created_at`) VALUES
(2, 1, 1, 'Asignación', '2018-11-07', '2018-11-16 03:12:58', '2018-11-08 04:59:09'),
(3, 3, 1, 'Tranferencia', '2018-11-08', '2018-11-08 05:01:54', '2018-11-08 05:01:54'),
(4, 6, 1, 'Tranferencia', '2018-11-08', '2018-11-08 05:03:08', '2018-11-08 05:03:08'),
(5, 1, 1, 'Tranferencia', '2018-11-08', '2018-11-08 05:03:19', '2018-11-08 05:03:19'),
(6, 3, 1, 'Tranferencia', '2018-11-08', '2018-11-08 05:04:18', '2018-11-08 05:04:18'),
(7, 8, 2, 'Asignación', '2018-11-08', '2018-11-16 03:13:07', '2018-11-08 19:44:27'),
(8, 5, 2, 'Tranferencia', '2018-11-08', '2018-11-08 19:45:52', '2018-11-08 19:45:52'),
(9, 9, 1, 'Tranferencia', '2018-11-09', '2018-11-09 19:01:16', '2018-11-09 19:01:16'),
(10, 9, 3, 'Asignación', '2018-11-09', '2018-11-16 03:13:13', '2018-11-09 19:04:37'),
(11, 1, 3, 'Asignación', '2018-11-09', '2018-11-16 03:13:19', '2018-11-09 19:04:37'),
(12, 5, 1, 'Tranferencia', '2018-11-09', '2018-11-09 19:12:33', '2018-11-09 19:12:33'),
(13, 6, 3, 'Tranferencia', '2018-11-09', '2018-11-09 19:13:20', '2018-11-09 19:13:20'),
(14, 5, 4, 'Asignación', '2018-11-09', '2018-11-16 03:13:10', '2018-11-10 02:52:56'),
(15, 5, 5, 'Asignación', '2018-11-09', '2018-11-16 03:13:17', '2018-11-10 03:32:42'),
(16, 2, 5, 'Asignación', '2018-11-09', '2018-11-16 03:13:24', '2018-11-10 03:32:42'),
(17, 9, 5, 'Tranferencia', '2018-11-09', '2018-11-10 03:35:24', '2018-11-10 03:35:24'),
(18, 2, 5, 'Tranferencia', '2018-11-09', '2018-11-10 03:35:59', '2018-11-10 03:35:59'),
(19, 9, 6, 'Asignación', '2018-11-09', '2018-11-16 03:13:34', '2018-11-10 03:38:51'),
(20, 2, 6, 'Asignación', '2018-11-09', '2018-11-16 03:13:27', '2018-11-10 03:38:51'),
(21, 5, 6, 'Tranferencia', '2018-11-09', '2018-11-10 03:39:21', '2018-11-10 03:39:21'),
(22, 10, 7, 'Asignación', '2018-11-09', '2018-11-16 03:13:40', '2018-11-10 03:50:05'),
(23, 5, 7, 'Asignación', '2018-11-09', '2018-11-16 03:13:29', '2018-11-10 03:50:05'),
(24, 11, 8, 'Asignación', '2018-11-10', '2018-11-16 03:14:02', '2018-11-10 17:20:20'),
(25, 1, 8, 'Asignación', '2018-11-10', '2018-11-16 03:13:44', '2018-11-10 17:20:20'),
(26, 5, 8, 'Tranferencia', '2018-11-10', '2018-11-10 17:27:31', '2018-11-10 17:27:31'),
(27, 10, 9, 'Asignación', '2018-11-14', '2018-11-16 03:14:05', '2018-11-14 15:49:00'),
(28, 2, 9, 'Asignación', '2018-11-14', '2018-11-16 03:14:12', '2018-11-14 15:49:00'),
(29, 5, 9, 'Tranferencia', '2018-11-14', '2018-11-14 15:51:32', '2018-11-14 15:51:32'),
(30, 6, 11, 'Asignación', '2018-11-14', '2018-11-16 03:14:07', '2018-11-14 16:34:58'),
(31, 5, 12, 'Asignación', '2018-11-14', '2018-11-16 03:14:24', '2018-11-14 16:58:58'),
(32, 2, 12, 'Asignación', '2018-11-14', '2018-11-16 03:14:17', '2018-11-14 16:58:58'),
(33, 5, 13, 'Asignación', '2018-11-14', '2018-11-16 03:14:34', '2018-11-14 19:20:21'),
(34, 2, 13, 'Asignación', '2018-11-14', '2018-11-16 03:14:14', '2018-11-14 19:20:21'),
(35, 5, 14, 'Asignación', '2018-11-14', '2018-11-16 03:14:20', '2018-11-14 19:38:28'),
(36, 2, 14, 'Asignación', '2018-11-14', '2018-11-16 03:14:27', '2018-11-14 19:38:28'),
(37, 9, 14, 'Tranferencia', '2018-11-14', '2018-11-14 19:59:50', '2018-11-14 19:59:50'),
(38, 5, 14, 'Tranferencia', '2018-11-14', '2018-11-14 20:00:15', '2018-11-14 20:00:15'),
(39, 9, 14, 'Tranferencia', '2018-11-14', '2018-11-14 20:17:50', '2018-11-14 20:17:50'),
(40, 5, 14, 'Tranferencia', '2018-11-14', '2018-11-14 20:18:18', '2018-11-14 20:18:18'),
(41, 9, 15, 'Asignación', '2018-11-15', '2018-11-16 03:45:53', '2018-11-16 03:45:53'),
(42, 2, 15, 'Asignación', '2018-11-15', '2018-11-16 03:45:53', '2018-11-16 03:45:53'),
(43, 5, 15, 'Tranferencia', '2018-11-15', '2018-11-16 03:46:53', '2018-11-16 03:46:53'),
(44, 10, 16, 'Asignación', '2018-11-22', '2018-11-23 04:01:45', '2018-11-23 04:01:45'),
(45, 2, 16, 'Asignación', '2018-11-22', '2018-11-23 04:01:45', '2018-11-23 04:01:45'),
(46, 6, 16, 'Tranferencia', '2018-11-22', '2018-11-23 04:02:53', '2018-11-23 04:02:53'),
(47, 2, 17, 'Asignación', '2018-11-27', '2018-11-27 22:15:57', '2018-11-27 22:15:57'),
(48, 8, 17, 'Asignación', '2018-11-27', '2018-11-27 22:15:58', '2018-11-27 22:15:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_hospitalizacion`
--

CREATE TABLE `detalle_hospitalizacion` (
  `ID_DET_HOSPITALIZACION` int(11) NOT NULL,
  `ID_PATOLOGIA` int(11) DEFAULT NULL,
  `ID_HOSPITALIZACION` int(11) DEFAULT NULL,
  `ID_CAMA` int(11) DEFAULT NULL,
  `nvivo` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sexorn` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `OBSERVACION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `detalle_hospitalizacion`
--

INSERT INTO `detalle_hospitalizacion` (`ID_DET_HOSPITALIZACION`, `ID_PATOLOGIA`, `ID_HOSPITALIZACION`, `ID_CAMA`, `nvivo`, `sexorn`, `OBSERVACION`, `updated_at`, `created_at`) VALUES
(1, 9, 1, 5, NULL, NULL, NULL, '2018-11-09 19:12:32', '2018-11-08 04:59:09'),
(2, 26, 1, 3, NULL, NULL, NULL, '2018-11-08 05:04:16', '2018-11-08 04:59:09'),
(3, 9, 2, 5, NULL, NULL, NULL, '2018-11-08 19:45:50', '2018-11-08 19:44:27'),
(4, 9, 3, 6, NULL, NULL, NULL, '2018-11-09 19:13:19', '2018-11-09 19:04:37'),
(5, 9, 3, 1, NULL, NULL, NULL, '2018-11-09 19:04:37', '2018-11-09 19:04:37'),
(6, 26, 4, 5, NULL, NULL, NULL, '2018-11-10 02:52:55', '2018-11-10 02:52:55'),
(7, 26, 5, 5, NULL, NULL, NULL, '2018-11-10 03:32:41', '2018-11-10 03:32:41'),
(8, 12, 5, 2, NULL, NULL, NULL, '2018-11-10 03:35:58', '2018-11-10 03:32:42'),
(9, 17, 6, 5, NULL, NULL, NULL, '2018-11-10 03:39:21', '2018-11-10 03:38:51'),
(10, 17, 6, 2, NULL, NULL, NULL, '2018-11-10 03:38:51', '2018-11-10 03:38:51'),
(11, 9, 7, 10, NULL, NULL, NULL, '2018-11-10 03:50:04', '2018-11-10 03:50:04'),
(12, 9, 7, 5, NULL, NULL, NULL, '2018-11-10 03:50:05', '2018-11-10 03:50:05'),
(13, 26, 8, 5, NULL, NULL, NULL, '2018-11-10 17:27:30', '2018-11-10 17:20:20'),
(14, 26, 8, 1, NULL, NULL, NULL, '2018-11-10 17:20:20', '2018-11-10 17:20:20'),
(15, 9, 9, 5, NULL, NULL, NULL, '2018-11-14 15:51:32', '2018-11-14 15:49:00'),
(16, 12, 9, 2, NULL, NULL, NULL, '2018-11-14 15:49:00', '2018-11-14 15:49:00'),
(17, NULL, 11, 6, NULL, NULL, NULL, '2018-11-14 16:34:58', '2018-11-14 16:34:58'),
(18, NULL, 12, 5, NULL, NULL, NULL, '2018-11-14 16:58:58', '2018-11-14 16:58:58'),
(19, 26, 12, 2, NULL, NULL, NULL, '2018-11-14 16:58:58', '2018-11-14 16:58:58'),
(20, NULL, 13, 5, NULL, NULL, NULL, '2018-11-14 19:20:21', '2018-11-14 19:20:21'),
(21, NULL, 13, 2, NULL, NULL, NULL, '2018-11-14 19:20:21', '2018-11-14 19:20:21'),
(22, NULL, 14, 5, NULL, NULL, NULL, '2018-11-14 20:18:18', '2018-11-14 19:38:28'),
(23, 26, 14, 2, NULL, NULL, NULL, '2018-11-14 19:38:28', '2018-11-14 19:38:28'),
(24, NULL, 15, 5, NULL, NULL, NULL, '2018-11-16 03:46:53', '2018-11-16 03:45:53'),
(25, NULL, 15, 2, NULL, NULL, NULL, '2018-11-16 03:45:53', '2018-11-16 03:45:53'),
(26, NULL, 16, 6, NULL, NULL, NULL, '2018-11-23 04:02:53', '2018-11-23 04:01:45'),
(27, 26, 16, 2, NULL, NULL, NULL, '2018-11-23 04:01:45', '2018-11-23 04:01:45'),
(28, NULL, 17, 2, NULL, NULL, NULL, '2018-11-27 22:15:57', '2018-11-27 22:15:57'),
(29, NULL, 17, 8, NULL, NULL, NULL, '2018-11-27 22:15:57', '2018-11-27 22:15:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_reg`
--

CREATE TABLE `encuesta_reg` (
  `ID_ENCUESTA` int(11) NOT NULL,
  `ID_PREGUNTA` int(11) DEFAULT NULL,
  `ID_PACIENTE` int(11) DEFAULT NULL,
  `VALOR` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `FECHA_REG_ENCUESTA` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `encuesta_reg`
--

INSERT INTO `encuesta_reg` (`ID_ENCUESTA`, `ID_PREGUNTA`, `ID_PACIENTE`, `VALOR`, `FECHA_REG_ENCUESTA`, `updated_at`, `created_at`) VALUES
(36, 1, 2, 'Buena', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(37, 2, 2, 'Regular', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(38, 3, 2, 'Mala', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(39, 4, 2, 'Mala', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(40, 5, 2, 'Mala', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(41, 6, 2, 'Buena', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(42, 7, 2, 'Mala', NULL, '2018-11-09 16:03:40', '2018-11-09 16:03:40'),
(43, 1, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(44, 2, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(45, 3, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(46, 4, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(47, 5, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(48, 6, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(49, 7, 3, 'Buena', NULL, '2018-11-09 16:51:30', '2018-11-09 16:51:30'),
(50, 1, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(51, 2, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(52, 3, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(53, 4, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(54, 5, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(55, 6, 1, 'Buena', NULL, '2018-11-09 19:03:18', '2018-11-09 19:03:18'),
(56, 7, 1, 'Buena', NULL, '2018-11-09 19:03:19', '2018-11-09 19:03:19'),
(57, 1, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(58, 2, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(59, 3, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(60, 4, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(61, 5, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(62, 6, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(63, 7, 2, 'Buena', NULL, '2018-11-10 01:24:16', '2018-11-10 01:24:16'),
(64, 1, 3, 'Buena', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(65, 2, 3, 'Regular', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(66, 3, 3, 'Buena', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(67, 4, 3, 'Buena', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(68, 5, 3, 'Regular', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(69, 6, 3, 'Regular', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(70, 7, 3, 'Buena', NULL, '2018-11-10 03:24:27', '2018-11-10 03:24:27'),
(71, 1, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(72, 2, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(73, 3, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(74, 4, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(75, 5, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(76, 6, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(77, 7, 5, 'Buena', NULL, '2018-11-10 03:28:55', '2018-11-10 03:28:55'),
(78, 1, 4, 'Regular', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(79, 2, 4, 'Buena', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(80, 3, 4, 'Buena', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(81, 4, 4, 'Buena', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(82, 5, 4, 'Buena', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(83, 6, 4, 'Buena', NULL, '2018-11-10 03:40:34', '2018-11-10 03:40:34'),
(84, 7, 4, 'Buena', NULL, '2018-11-10 03:40:35', '2018-11-10 03:40:35'),
(85, 1, 1, 'Buena', NULL, '2018-11-10 03:50:35', '2018-11-10 03:50:35'),
(86, 2, 1, 'Buena', NULL, '2018-11-10 03:50:35', '2018-11-10 03:50:35'),
(87, 3, 1, 'Buena', NULL, '2018-11-10 03:50:35', '2018-11-10 03:50:35'),
(88, 4, 1, 'Buena', NULL, '2018-11-10 03:50:35', '2018-11-10 03:50:35'),
(89, 5, 1, 'Buena', NULL, '2018-11-10 03:50:35', '2018-11-10 03:50:35'),
(90, 6, 1, 'Buena', NULL, '2018-11-10 03:50:36', '2018-11-10 03:50:36'),
(91, 7, 1, 'Buena', NULL, '2018-11-10 03:50:36', '2018-11-10 03:50:36'),
(92, 1, 6, 'Buena', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(93, 2, 6, 'Regular', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(94, 3, 6, 'Buena', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(95, 4, 6, 'Regular', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(96, 5, 6, 'Buena', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(97, 6, 6, 'Buena', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(98, 7, 6, 'Buena', NULL, '2018-11-10 17:28:33', '2018-11-10 17:28:33'),
(99, 1, 7, 'Buena', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(100, 2, 7, 'Regular', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(101, 3, 7, 'Regular', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(102, 4, 7, 'Buena', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(103, 5, 7, 'Regular', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(104, 6, 7, 'Buena', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(105, 7, 7, 'Buena', NULL, '2018-11-14 16:45:28', '2018-11-14 16:45:28'),
(106, 1, 8, 'Buena', NULL, '2018-11-14 16:45:47', '2018-11-14 16:45:47'),
(107, 2, 8, 'Regular', NULL, '2018-11-14 16:45:47', '2018-11-14 16:45:47'),
(108, 3, 8, 'Buena', NULL, '2018-11-14 16:45:47', '2018-11-14 16:45:47'),
(109, 4, 8, 'Buena', NULL, '2018-11-14 16:45:47', '2018-11-14 16:45:47'),
(110, 5, 8, 'Regular', NULL, '2018-11-14 16:45:48', '2018-11-14 16:45:48'),
(111, 6, 8, 'Regular', NULL, '2018-11-14 16:45:48', '2018-11-14 16:45:48'),
(112, 7, 8, 'Regular', NULL, '2018-11-14 16:45:48', '2018-11-14 16:45:48'),
(113, 1, 8, 'Buena', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(114, 2, 8, 'Regular', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(115, 3, 8, 'Regular', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(116, 4, 8, 'Regular', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(117, 5, 8, 'Buena', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(118, 6, 8, 'Mala', NULL, '2018-11-14 17:14:16', '2018-11-14 17:14:16'),
(119, 7, 8, 'Mala', NULL, '2018-11-14 17:14:17', '2018-11-14 17:14:17'),
(120, 1, 9, 'Buena', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(121, 2, 9, 'Regular', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(122, 3, 9, 'Buena', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(123, 4, 9, 'Buena', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(124, 5, 9, 'Buena', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(125, 6, 9, 'Regular', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(126, 7, 9, 'Buena', NULL, '2018-11-14 19:21:26', '2018-11-14 19:21:26'),
(127, 1, 10, 'Buena', NULL, '2018-11-14 20:45:36', '2018-11-14 20:45:36'),
(128, 2, 10, 'Regular', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(129, 3, 10, 'Regular', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(130, 4, 10, 'Buena', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(131, 5, 10, 'Regular', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(132, 6, 10, 'Regular', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(133, 7, 10, 'Buena', NULL, '2018-11-14 20:45:37', '2018-11-14 20:45:37'),
(134, 1, 1, 'Buena', NULL, '2018-11-16 03:48:51', '2018-11-16 03:48:51'),
(135, 2, 1, 'Regular', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(136, 3, 1, 'Buena', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(137, 4, 1, 'Regular', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(138, 5, 1, 'Buena', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(139, 6, 1, 'Regular', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(140, 7, 1, 'Mala', NULL, '2018-11-16 03:48:52', '2018-11-16 03:48:52'),
(141, 1, 1, 'Buena', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(142, 2, 1, 'Regular', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(143, 3, 1, 'Buena', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(144, 4, 1, 'Buena', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(145, 5, 1, 'Regular', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(146, 6, 1, 'Regular', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(147, 7, 1, 'Regular', NULL, '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(148, 1, 10, 'Buena', NULL, '2018-11-27 22:16:57', '2018-11-27 22:16:57'),
(149, 2, 10, 'Regular', NULL, '2018-11-27 22:16:57', '2018-11-27 22:16:57'),
(150, 3, 10, 'Buena', NULL, '2018-11-27 22:16:58', '2018-11-27 22:16:58'),
(151, 4, 10, 'Buena', NULL, '2018-11-27 22:16:58', '2018-11-27 22:16:58'),
(152, 5, 10, 'Buena', NULL, '2018-11-27 22:16:58', '2018-11-27 22:16:58'),
(153, 6, 10, 'Buena', NULL, '2018-11-27 22:16:58', '2018-11-27 22:16:58'),
(154, 7, 10, 'Regular', NULL, '2018-11-27 22:16:58', '2018-11-27 22:16:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cama`
--

CREATE TABLE `estado_cama` (
  `ID_ESTCAM` int(11) NOT NULL,
  `DESC_ESTCAM` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IMG_ESTCAMA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `EST_ESTCAMA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `estado_cama`
--

INSERT INTO `estado_cama` (`ID_ESTCAM`, `DESC_ESTCAM`, `IMG_ESTCAMA`, `EST_ESTCAMA`, `updated_at`, `created_at`) VALUES
(1, 'Disponible', 'disponible.png', 'Activo', '2018-09-25 19:18:10', '2018-09-21 01:16:26'),
(2, 'Ocupada', 'ocupado.png', 'Activo', '2018-09-21 14:51:08', '2018-09-21 14:51:08'),
(3, 'Mantenimiento', 'mantenimiento.png', 'Activo', '2018-09-21 14:51:23', '2018-09-21 14:51:23'),
(4, 'otras', 'otras.png', 'Activo', '2018-11-14 04:25:57', '2018-09-25 19:21:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_paciente`
--

CREATE TABLE `historia_paciente` (
  `ID_HIS_PACIENTE` int(11) NOT NULL,
  `ID_PACIENTE` int(11) DEFAULT NULL,
  `ID_PAT_PROC` int(11) DEFAULT NULL,
  `DESC_HIS_PACIENTE` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospital`
--

CREATE TABLE `hospital` (
  `ID_HOSPITAL` int(11) NOT NULL,
  `NOM_HOSPITAL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RUC_HOSPITAL` varchar(13) COLLATE utf8_bin NOT NULL,
  `REG_MSP_HOSPITAL` varchar(20) COLLATE utf8_bin NOT NULL,
  `DIR_HOSPITAL` varchar(100) COLLATE utf8_bin NOT NULL,
  `TELF_HOSPITAL` varchar(50) COLLATE utf8_bin NOT NULL,
  `IMG_HOSPITAL` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `EST_HOSPITAL` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `hospital`
--

INSERT INTO `hospital` (`ID_HOSPITAL`, `NOM_HOSPITAL`, `RUC_HOSPITAL`, `REG_MSP_HOSPITAL`, `DIR_HOSPITAL`, `TELF_HOSPITAL`, `IMG_HOSPITAL`, `EST_HOSPITAL`) VALUES
(1, 'Hospital Gineco Obstétrico Isidro Ayora', '1722044839001', 'REG_12355555', 'Av Gran Colombia N14-66 y Luis Sodiro.', '02-2542935', NULL, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitalizacion`
--

CREATE TABLE `hospitalizacion` (
  `ID_HOSPITALIZACION` int(11) NOT NULL,
  `ID_PACIENTE` int(11) DEFAULT NULL,
  `ID_PATOLOGIA` int(11) DEFAULT NULL,
  `TPARTO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `FECHA_INGRESO` datetime DEFAULT NULL,
  `FECHA_EGRESO` datetime DEFAULT NULL,
  `EST_HOSPITALIZACION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `hospitalizacion`
--

INSERT INTO `hospitalizacion` (`ID_HOSPITALIZACION`, `ID_PACIENTE`, `ID_PATOLOGIA`, `TPARTO`, `FECHA_INGRESO`, `FECHA_EGRESO`, `EST_HOSPITALIZACION`, `updated_at`, `created_at`) VALUES
(1, 1, 25, 'Normal', '2018-11-07 23:59:09', '2018-11-09 14:03:39', 'Egreso', '2018-11-09 19:03:39', '2018-11-08 04:59:09'),
(2, 4, 25, 'Normal', '2018-11-08 14:44:27', '2018-11-08 14:50:30', 'Egreso', '2018-11-08 19:50:30', '2018-11-08 19:44:27'),
(3, 2, 18, 'Cesarea', '2018-11-09 14:04:37', '2018-11-09 20:24:33', 'Egreso', '2018-11-10 01:24:33', '2018-11-09 19:04:37'),
(4, 5, 25, 'Normal', '2018-11-09 21:52:55', '2018-11-09 22:29:31', 'Egreso', '2018-11-10 03:29:31', '2018-11-10 02:52:55'),
(5, 3, 25, 'Normal', '2018-11-09 22:32:41', '2018-11-09 22:36:24', 'Egreso', '2018-11-10 03:36:24', '2018-11-10 03:32:41'),
(6, 4, 18, 'Cesarea', '2018-11-09 22:38:51', '2018-11-09 22:41:26', 'Egreso', '2018-11-10 03:41:26', '2018-11-10 03:38:51'),
(7, 1, 18, 'Normal', '2018-11-09 22:50:04', '2018-11-09 22:50:54', 'Egreso', '2018-11-10 03:50:54', '2018-11-10 03:50:04'),
(8, 6, 25, 'Normal', '2018-11-10 12:20:20', '2018-11-10 12:28:52', 'Egreso', '2018-11-10 17:28:52', '2018-11-10 17:20:20'),
(9, 7, 25, 'Normal', '2018-11-14 10:49:00', '2018-11-14 11:46:38', 'Egreso', '2018-11-14 16:46:38', '2018-11-14 15:49:00'),
(11, 8, 25, 'Normal', '2018-11-14 11:34:58', '2018-11-14 11:46:08', 'Egreso', '2018-11-14 16:46:08', '2018-11-14 16:34:58'),
(12, 8, 25, 'Normal', '2018-11-14 11:58:58', '2018-11-14 12:14:34', 'Egreso', '2018-11-14 17:14:34', '2018-11-14 16:58:58'),
(13, 9, 25, 'Normal', '2018-11-14 14:20:21', '2018-11-14 14:21:35', 'Egreso', '2018-11-14 19:21:35', '2018-11-14 19:20:21'),
(14, 10, 25, 'Normal', '2018-11-14 14:38:28', '2018-11-14 15:48:32', 'Egreso', '2018-11-14 20:48:32', '2018-11-14 19:38:28'),
(15, 1, 25, 'Normal', '2018-11-15 22:45:53', '2018-11-15 22:49:33', 'Egreso', '2018-11-16 03:49:33', '2018-11-16 03:45:53'),
(16, 1, 25, 'Normal', '2018-11-22 23:01:45', '2018-11-22 23:04:57', 'Egreso', '2018-11-23 04:04:57', '2018-11-23 04:01:45'),
(17, 10, 25, 'Normal', '2018-11-27 17:15:57', '2018-11-27 17:17:53', 'Egreso', '2018-11-27 22:17:53', '2018-11-27 22:15:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_tratante`
--

CREATE TABLE `medico_tratante` (
  `ID_MEDICO` int(11) NOT NULL,
  `NOM_MEDICO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `APE_MEDICO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `CI_MEDICO` varchar(13) COLLATE utf8_bin DEFAULT NULL,
  `TELF_MEDICO` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DIR_MEDICO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2015_01_20_084450_create_roles_table', 1),
(31, '2015_01_20_084525_create_role_user_table', 1),
(32, '2015_01_24_080208_create_permissions_table', 1),
(33, '2015_01_24_080433_create_permission_role_table', 1),
(34, '2015_12_04_003040_add_special_role_column', 1),
(35, '2017_10_17_170735_create_permission_user_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `ID_PACIENTE` int(11) NOT NULL,
  `ID_SUCURSAL` int(11) DEFAULT NULL,
  `NOM_PACIENTE` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `APE_PACIENTE` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `NOM_PACIENTE1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `CI_PACIENTE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `NAC_PACIENTE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DIR_PACIENTE` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `TEL_PACIENTE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `CEL_PACIENTE` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_PACIENTE` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `NOM_FAMILIAR` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `TELF_CONTACTO` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NOM_FAMILIAR1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TELF_CONTACTO1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `NOM_FAMILIAR2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TELF_CONTACTO2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `EST_INGRE_EGRESO` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `FECHA_INGRESO` datetime DEFAULT NULL,
  `FECHA_EGRESO` datetime DEFAULT NULL,
  `APE_PACIENTE1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `uuid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `EDAD_PACIENTE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `TSAN_PACIENTE` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `reg_encuesta` int(11) DEFAULT NULL,
  `ASIG_PACIENTE` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`ID_PACIENTE`, `ID_SUCURSAL`, `NOM_PACIENTE`, `APE_PACIENTE`, `NOM_PACIENTE1`, `CI_PACIENTE`, `NAC_PACIENTE`, `DIR_PACIENTE`, `TEL_PACIENTE`, `CEL_PACIENTE`, `EMAIL_PACIENTE`, `NOM_FAMILIAR`, `TELF_CONTACTO`, `NOM_FAMILIAR1`, `TELF_CONTACTO1`, `NOM_FAMILIAR2`, `TELF_CONTACTO2`, `EST_INGRE_EGRESO`, `FECHA_INGRESO`, `FECHA_EGRESO`, `APE_PACIENTE1`, `uuid`, `EDAD_PACIENTE`, `TSAN_PACIENTE`, `reg_encuesta`, `ASIG_PACIENTE`, `updated_at`, `created_at`) VALUES
(1, 2, 'Marta', 'Quito', 'Maria', '1722044839', NULL, 'Zambiza', '22998834', '998137344', 'soporte@asegsur.com.ec', NULL, NULL, 'Ricardo Davalos', '09998888', 'Juan', '099887767', 'Egreso', '2018-11-22 23:00:44', '2018-11-22 23:04:57', 'Perez', '53394e23-2c58-46b1-a088-246ba7982481', '18', NULL, 1, 1, '2018-11-23 04:04:57', '2018-10-23 03:31:53'),
(2, 2, 'Fernanda', 'Rivadeneira', 'Maria', '1722044839', 'Ecuatoriana', 'Zambiza', '22998834', '998137344', 'soporte@asegsur.com.ec', NULL, NULL, 'Ricardo Davalos', '998137344', 'ANTONIO CRIOLLO', '0998137344', 'Egreso', '2018-11-09 12:27:25', '2018-11-09 20:24:33', 'Lopez', '5702dce7-2838-46b8-8fc2-79a875857580', '47', 'O+', 1, 1, '2018-11-15 02:09:48', '2018-11-03 15:16:44'),
(3, 2, 'Cristina', 'Perez', 'Elizabeth', '1722044839', 'Ecuatoriana', 'El inca n12 y cipreces', '998137344', '09999999', 'juanfer92.jc@gmail.com', NULL, NULL, 'Juan Criollo', '998137344', 'Maria Gualpa', '0998274445', 'Egreso', '2018-11-09 12:27:32', '2018-11-09 22:36:24', 'Orozco', 'd017ab3b-af2b-4b44-8984-8c34e80290c0', '25', 'O+', 1, 1, '2018-11-14 16:21:39', '2018-11-08 04:19:04'),
(4, 2, 'Keila', 'Obando', 'Paola', '1722044839', 'Ecuatoriana', 'San juan de Calderon n1-89', '022997500', '0998137344', 'kobs@gmail.com', NULL, NULL, 'Juan Criollo', '0998764543', NULL, NULL, 'Egreso', '2018-11-09 12:27:50', '2018-11-09 22:41:26', 'Sabando', 'd7b63fe1-0565-472b-b989-cb3b2b0ab9be', '26', 'O+', 1, 1, '2018-11-14 16:21:44', '2018-11-08 19:41:22'),
(5, 2, 'Carla', 'Rios', 'Daniela', '1722044839', 'Ecuatoriana', 'El comite del pueblo juan molineros n1-89', '2886205', '0998137344', 'mf@gmai.com', NULL, NULL, 'Laura Perez', '0998137344', NULL, NULL, 'Egreso', '2018-11-09 20:58:08', '2018-11-09 22:29:31', 'Perez', 'bf6e1c9f-1e49-4bc0-8271-05281c911dd3', '24', 'B+', 1, 1, '2018-11-14 16:21:49', '2018-11-10 01:58:08'),
(6, 2, 'Maria', 'Quilo', 'Fernanda', '1722044839', NULL, 'Zambiza', '0998137344', '22998834', 'JUA@AS.COM', NULL, NULL, 'JUAN', '0998', NULL, NULL, 'Egreso', '2018-11-10 12:18:11', '2018-11-10 12:28:53', 'Perez', 'b728dc35-5a2f-405d-b0e4-fd432496359f', '25', NULL, 1, 1, '2018-11-14 17:17:47', '2018-11-10 17:18:11'),
(7, 2, 'Maricela', 'Acuna', 'Nathalia', '1717351256', NULL, 'La florestar n1 - 89 y galapagos', '022997500', '0998137344', 'dfdf@sdf.com', NULL, NULL, 'juan Criollo', '2997500', 'Maria Gualpa', '2997500', 'Egreso', '2018-11-12 15:29:54', '2018-11-14 11:46:38', 'Guanoluoisa', '934555d6-40bf-4ab1-9496-953ae3cadbce', '24', 'O-', 1, 1, '2018-11-14 16:46:38', '2018-11-12 20:29:54'),
(8, 2, 'Evelyn', 'Intriago', 'Roxana', '1722044839', NULL, 'Av. 6 de diciembre y joaquin davalos esquina', '2997527', '0998137244', 'eveintri@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Egreso', '2018-11-14 11:47:33', '2018-11-14 12:14:34', 'Davalos', '9c86e966-ffba-47bd-a16d-9133e53d9125', '27', 'O+', 1, 1, '2018-11-14 17:14:34', '2018-11-14 05:50:30'),
(9, 2, 'Lorena', 'Almache', 'Gabriela', '1803526993', NULL, 'Queseras del medio el recreo.', '022997500', '0998137344', 'lore@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Egreso', '2018-11-14 14:19:28', '2018-11-14 14:21:36', 'Flores', '1db4741d-599e-4fad-ad37-2855a2ec0ee3', '29', 'O-', 1, 1, '2018-11-14 19:21:36', '2018-11-14 19:19:28'),
(10, 2, 'Monica', 'Amaguana', 'Mariela', '1721142501', NULL, 'Segundo cueva celi llano grande', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Egreso', '2018-11-27 17:15:03', '2018-11-27 17:17:53', 'Iles', '02ea053b-6272-43be-b990-b39e1bb77fff', '29', NULL, 1, 1, '2018-11-27 22:17:53', '2018-11-14 19:23:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE `patologia` (
  `ID_PATOLOGIA` int(11) NOT NULL,
  `DESC_PATOLOGIA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SINTOMA` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DIAGNOSTICO` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PROCEDIMIENTO` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TPACIENTE` varchar(25) COLLATE utf8_bin NOT NULL,
  `EST_PATOLOGIA` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `patologia`
--

INSERT INTO `patologia` (`ID_PATOLOGIA`, `DESC_PATOLOGIA`, `SINTOMA`, `DIAGNOSTICO`, `PROCEDIMIENTO`, `TPACIENTE`, `EST_PATOLOGIA`, `updated_at`, `created_at`) VALUES
(9, 'Distensión abdominal', 'Por lo general, las barrigas de la mayoría de los bebés sobresalen, especialmente después de una toma abundante. Sin embargo, entre las tomas, deben sentirse bastante blandas. Si el abdomen de su hijo se siente hinchado y duro, y si no ha tenido una deposición durante más de uno o dos días, o tiene vómitos, llame a su pediatra. Es muy probable que el problema se deba a gases o estreñimiento, pero también podría indicar un problema intestinal más grave.', NULL, NULL, 'Maternal', 'Activa', '2018-11-23 15:53:22', '2018-10-27 02:11:53'),
(10, 'Lesiones durante el parto', 'Es posible que los bebés se lesionen durante el parto, especialmente si el trabajo de parto es particularmente largo o dificultoso, o cuando los bebés son muy grandes. Mientras que los recién nacidos se recuperan rápidamente de algunas de estas lesiones, otras persisten durante más tiempo. A menudo, la lesión es una clavícula rota, que se cura rápidamente si el brazo de ese lado se mantiene relativamente inmóvil. De hecho, puede formarse un pequeño bulto en el sitio de la fractura después de algunas semanas, pero no se asuste; este es un signo positivo de que se está formando hueso nuevo para curar la lesión.\r\n\r\nLa debilidad muscular es otra lesión de nacimiento común, causada durante el trabajo de parto por la presión o el estiramiento de los nervios conectados a los músculos. Por lo general, estos músculos, que suelen estar debilitados a un lado de la cara o de un hombro o brazo, vuelven a la normalidad después de varias semanas. Mientras tanto, pídale a su pediatra que le muestre cómo amamantar y sostener al bebé para promover la curación.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:14:07', '2018-10-27 02:12:18'),
(11, 'Síndrome del bebé azul', 'Los bebés pueden tener las manos y los pies levemente azulados, pero es posible que esto no sea un motivo de preocupación. Si sus manos y pies se vuelven un poco azulados a causa del frío, deberían recuperar su color rosado apenas se calientan. Ocasionalmente, la cara, la lengua y los labios pueden volverse un poco azulados cuando el bebé no para de llorar, pero cuando se calma, su color en estas partes del cuerpo debe volver a la normalidad rápidamente. Sin embargo, si la piel se vuelve de un color azulado de manera persistente, especialmente con dificultades para respirar y alimentarse, esto es un signo de que el corazón o los pulmones no están funcionando correctamente, y de que el bebé no está recibiendo suficiente oxígeno en la sangre. La atención médica inmediata es fundamental.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:14:14', '2018-10-27 02:12:35'),
(12, 'Tos', 'Si el bebé toma líquido muy rápido o trata de beber agua por primera vez, es posible que tosa y escupa un poco; pero este tipo de tos debería detenerse apenas se ajuste a una rutina de alimentación familiar. También puede estar relacionada con la fuerza o la rapidez con la que baja la leche de la mamá. Si el bebé tose continuamente o tiene arcadas rutinariamente durante las tomas, consulte con el pediatra. Estos síntomas podrían indicar un problema subyacente en los pulmones o el tracto digestivo.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:14:29', '2018-10-27 02:14:29'),
(13, 'Llanto excesivo', 'Todos los recién nacidos lloran, a menudo, sin un motivo aparente. Si se ha asegurado de que su bebé se alimentó, eructó, se mantiene caliente y tiene un pañal limpio, probablemente, la mejor táctica es sostenerlo y hablarle o cantarle hasta que deje de llorar. No puede “consentir” a un bebé de esta edad prestándole mucha atención. Si esto no funciona, envuélvalo bien en una manta de manera cómoda.\r\n\r\nSe acostumbrará al patrón de llanto normal de su bebé. Si alguna vez suena extraño; por ejemplo, como alaridos de dolor, o si alguna vez persiste durante un período inusual, podría significar un problema médico. Llame al pediatra y pídale asesoramiento.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:14:46', '2018-10-27 02:14:46'),
(14, 'Marcas de fórceps', 'Cuando se usan fórceps para brindar ayuda durante un parto, estos pueden dejar marcas rojas o, incluso, raspados superficiales en la cara y la cabeza de un recién nacido, en la zona donde el metal ejerció presión sobre la piel. Por lo general, estos desaparecen en pocos días. A veces, se desarrolla un bulto firme y plano en una de estas zonas debido a un daño menor en el tejido que se encuentra debajo de la piel. Sin embargo, esto también suele desaparecer en el término de dos meses.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:15:04', '2018-10-27 02:15:04'),
(15, 'Ictericia', 'Muchos recién nacidos normales y saludables tienen un tinte amarillento en la piel, que se conoce como ictericia. Esto se debe a una acumulación de una sustancia química, denominada bilirrubina, en la sangre del niño. Esto ocurre con más frecuencia cuando el hígado inmaduro aún no ha comenzado a cumplir su función de eliminar la bilirrubina del torrente sanguíneo en forma eficiente (la bilirrubina se forma por la descomposición normal de los glóbulos rojos en el cuerpo). Si bien los bebés suelen tener un caso leve de ictericia, que es inofensivo, la ictericia puede convertirse en una afección grave si la bilirrubina llega a lo que un pediatra considera como un nivel muy alto. Aunque la ictericia es bastante tratable, si el nivel de bilirrubina es muy alto y no es tratado de manera efectiva, en algunos casos, incluso puede provocar un daño en el sistema nervioso o el cerebro. Es por eso que la afección debe controlarse y tratarse adecuadamente. La ictericia tiende a ser más común en los bebés que están en período de lactancia, con más frecuencia en aquellos que no está tomando el pecho correctamente; las madres que están amamantando deben dar el pecho, al menos, entre ocho y doce veces por día, lo que ayudará a producir suficiente leche y a mantener bajos los niveles de bilirrubina.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:15:57', '2018-10-27 02:15:57'),
(16, 'Letargo y adormecimiento', 'Todos los recién nacidos pasan la mayoría del tiempo durmiendo. Siempre que se despierte cada pocas horas, coma bien, parezca estar contento y esté alerta durante parte del día, es totalmente normal que duerma el resto del tiempo. Sin embargo, si rara vez está alerta, no se despierta por sí solo para alimentarse, o parece estar demasiado cansado o desinteresado en comer, debe consultar con su pediatra. Este letargo, especialmente si es un cambio repentino en su patrón habitual, puede ser un síntoma de una enfermedad grave.', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:16:10', '2018-10-27 02:16:10'),
(17, 'Dificultad respiratoria', 'Es posible que el bebé tarde algunas horas después del nacimiento para formar un patrón normal de respiración, pero, luego, no debería tener más dificultades. Si parece estar respirando de una manera inusual, a menudo, esto se debe a un bloqueo en los conductos nasales. El uso de gotas nasales de solución salina, seguido del uso de una perilla succionadora, es lo que puede resultar necesario para solucionar el problema; ambos están disponibles sin receta en todas las farmacias.\r\n\r\nSin embargo, si su recién nacido muestra alguno de los siguientes signos de advertencia, notifique a su pediatra inmediatamente:\r\n\r\nRespiración rápida (más de sesenta respiraciones en un minuto), aunque debe tener en cuenta que, normalmente, los bebés respiran más rápido que los adultos.\r\nRetracciones (succión en los músculos que se encuentran entre las costillas con cada respiración, que hace que sus costillas sobresalgan).\r\nEnsanchamiento de la nariz.\r\nResoplidos durante la respiración.\r\nColoración azul de la piel persistente', NULL, NULL, 'Neonato', 'Activa', '2018-10-27 02:16:25', '2018-10-27 02:16:25'),
(18, 'Preeclampsia', 'La preeclampsia ocurre en 5% a 10% de los embarazos. El 75% de los casos son leves y el 25% son severos. Puede surgir en cualquier momento del embarazo entre  la 20ª semana  hasta unos días después del parto.\r\n\r\nLa hipertensión que se produce después de la 20ª semana  del embarazo es el síntoma más común. Sin embargo, para caracterizarse preeclampsia y no solamente hipertensión gestacional, es necesario que exista también la presencia de proteinuria (por lo menos 300 mg de proteína en urinocultivo de 24 horas. (Lee: EXAMEN DE ORINA – Leucocitos, Sangre, pH)\r\n\r\nCasi toda mujer embarazada presenta edemas (hinchazón), sin embargo, un rápido y repentino empeoramiento de los edemas, afectando especialmente a la cara y las manos, puede ser un signo de preeclampsia.', NULL, 'El tratamiento definitivo es la inducción del parto. No siempre la preeclampsia ocurre en edades gestacionales que permiten la inducción del parto sin daño para el feto. Por otro lado, la no finalización del embarazo puede traer graves consecuencias para la madre. Por lo tanto, la decisión de inducir al parto o prolongar el embarazo debe tener en cuenta la edad gestacional, la severidad de la preeclampsia y las condiciones de salud  de la madre y del feto.\r\n\r\nEn algunos casos se puede indicar la hospitalización de la madre para un acompañamiento  más cercano de la progresión de la enfermedad, tratando de posponer el parto a lo más cerca posible a la 40ª semana de embarazo. Siempre que sea posible, la preferencia es por el parto natural.\r\n\r\nLa hipertensión arterial debe ser controlada, pero esto no interfiere en el curso de la enfermedad o en la mortalidad materno/fetal. Es importante recordar que algunos famosos antihipertensivos como enalapril, captopril y nifedipina están contraindicados en el embarazo. El control de la presión arterial en el embarazo debe hacerse solamente bajo la supervisión del ginecólogo-obstetra.\r\n\r\nEl uso de corticoides (Lee: Glucocorticoides – Para Que Se Toma y Efectos Secundarios) está indicado para el tratamiento temporario de las complicaciones del síndrome HELLP, pero principalmente para acelerar la maduración pulmonar fetal si es necesario la inducción del parto antes del final del mismo.\r\n\r\nLa prevención de las crisis convulsivas es importante y se puede hacer con la administración del sulfato de magnesio poco antes del parto.', 'Maternal', 'Activa', '2018-11-14 16:28:02', '2018-10-27 02:19:10'),
(19, 'Enfermedades infecciosas', 'La rubéola es una de las principales causas de anomalías congénitas en el feto, sobre todo del corazón y del oído interno. La infección por citomegalovirus puede atravesar la placenta y afectar el hígado del bebé, mientras que la toxoplasmosis podría perjudicar su cerebro.', NULL, NULL, 'Maternal', 'Activa', '2018-10-27 02:20:46', '2018-10-27 02:20:46'),
(20, 'Enfermedades de transmisión sexual', 'Pueden causar problemas durante el embarazo. La infección por clamidia puede provocar una rotura prematura de las membranas y un parto pretérmino. En cuanto al VIH, que causa sida, una cuarta parte de las embarazadas que tienen la infección la transmiten al feto. El herpes genital, por su parte, puede pasar al recién nacido durante un parto vaginal.', NULL, NULL, 'Maternal', 'Activa', '2018-10-27 02:20:59', '2018-10-27 02:20:59'),
(21, 'Diabetes', 'La alta tendencia que existe hacia el sobrepeso y la obesidad y el hecho de que cada vez es más frecuente encontrar mujeres que se embarazan pasado los 35, constituyen un problema global en la población femenina en edad reproductiva, marcando un alza de esta patología.\r\n\r\nLa diabetes mellitus es una enfermedad del metabolismo de los hidratos de carbono, caracterizado por una falta relativa o absoluta de la insulina (hormona que regula los niveles de azúcar en la sangre) y que tiene como consecuencia final que la persona presente niveles muy elevados de glucosa en su sangre (cuando no hay un tratamiento apropiado).\r\n\r\nEn grandes rasgos existen varios tipos de diabetes:\r\n\r\n1.- Diabetes Mellitus tipo 1 o dependiente de insulina.\r\n\r\n2.- Diabetes Mellitus tipo 2 o independiente de insulina.\r\n\r\n3.- Diabetes Gestacional: se adquiere la enfermedad de manera transitoria durante el embarazo.', NULL, NULL, 'Maternal', 'Activa', '2018-10-27 02:23:39', '2018-10-27 02:23:39'),
(22, 'Hemorragia posparto', 'Es un problema grave pero no muy común.\r\nSi cree que tiene HPP, llame inmediatamente a su profesional de la salud o al 911.\r\nEs posible que tenga PPH si el sangrado intenso de la vagina no se reduce o no se detiene; tiene la vista borrosa o escalofríos; o si se siente débil o que se está por desmayar.\r\nUsted corre más riesgo de tener hemorragia posparto si ya le sucedió antes.\r\nSi usted tiene ciertas condiciones médicas, en especial aquellos que afectan el útero (matriz) o la placenta, o que afectan la coagulación de la sangre, corre más riesgo de tener HPP. La placenta crece en su útero y suministra alimentos y oxígeno al bebé a través del cordón umbilical.', NULL, 'Su profesional de la salud puede utilizar estas pruebas para ver si usted tiene HPP o tratar de hallar la causa: \r\n\r\nAnálisis de sangre llamados pruebas de los factores de coagulación o análisis de factores\r\nHematocrito. Es un análisis de sangre que chequea el porcentaje de su sangre (volumen total de sangre) que está compuesta de glóbulos rojos. El sangrado puede causar un hematocrito bajo.\r\nMedición de la pérdida de sangre. Para ver cuánta sangre perdió, el profesional puede pesar o contar la cantidad de toallas sanitarias o esponjas que usó para absorber la sangre. \r\nExamen pélvico. Su profesional le controla la vagina, el útero y el cuello uterino. \r\nExamen físico. Su profesional le controla el pulso y la presión arterial.\r\nUltrasonido. Su profesional puede utilizar el ultrasonido para ver si hay problemas con la placenta o el útero. El ultrasonido es una prueba que usa ondas sonoras y una pantalla de una computadora para tomar una imagen de su bebé en la matriz o de sus órganos pélvicos.\r\nEl tratamiento depende de la causa de su sangrado. Puede incluir: \r\n\r\nRecibir líquidos, medicamento (como Pitocin) o una transfusión de sangre (cuando se le pone sangre nueva en el cuerpo). Estos tratamientos se le hacen a través de una aguja insertada en una vena (también llamada intravenosa o IV), o algunos se le pueden dar directamente en el útero.\r\nTener una cirugía como una histerectomía o una laparotomía. La histerectomía es cuando su profesional de la salud le saca el útero. En general, solo necesitará una histerectomía si otros tratamientos no surten efecto. La laparotomía es cuando su profesional le abre el abdomen para ver el origen del sangrado y lo detiene.\r\nMasajear el útero manualmente. Su profesional puede masajearle el útero para que se contraiga, se reduzca el sangrado y ayude al cuerpo a expulsar los coágulos de sangre.\r\nRecibir oxígeno con una máscara de oxígeno\r\nRetirar los pedazos restantes de placenta del útero, rellenar el útero con compresas de gasa, un globo especial o esponjas, o utilizar herramientas médicas o puntos para detener el sangrado de los vasos sanguíneos.\r\nEmbolización de los vasos sanguíneos que nutren el útero. En este procedimiento, el profesional utiliza pruebas especiales para hallar el vaso sanguíneo sangrante y le inyecta material para detener el sangrado. Se utiliza en casos especiales y puede evitar la necesidad de una histerectomía.', 'Maternal', 'Activa', '2018-10-27 02:25:29', '2018-10-27 02:25:29'),
(23, 'Amenaza de paro prematuro', 'Se considera parto prematuro al que ocurre antes de las 37 semanas de gestación. El límite inferior de edad gestacional que establece el límite entre parto prematuro y aborto es el de 22 semanas de gestación o 500 gramos de peso y las 36.6 semanas. \r\nEl parto prematuro espontáneo y la rotura prematura de membranas son responsables de aproximadamente el 80% de los nacimientos pretérmino\r\nEl diagnóstico de trabajo de parto prematuro se basa en la presencia de contracciones uterinas y modificaciones cervicales tales como borraiento del cuello = o > al 50% y dilatación de 2 cm o más.\r\nSu incidencia es de  8-10% del total de partos y es la causa más importante de morbi-mortalidad fetal.\r\nAunque el parto prematuro se desencadena por la puesta en marcha de mecanismos fisiológicos, debe ser considerado un proceso patológico', 'Contracciones uterinas: más de 4 en una hora\r\nDilatación cervical > 2 cm \r\nBorramiento cervical = o > al 50% o cambios cervicales detectados en exámenes seriados\r\nRPM\r\nSangrado vaginal\r\nDolor suprapúbico\r\n\r\nFactor de riesgo: antecedentes de partos pretérmino previos\r\nCriterios de internación: pacientes con signos y síntomas de trabajo de parto antes de las 37 semanas', 'Reposo\r\nHidratación con plan que no exceda los 3000 ml\r\nBetamiméticos durante 24 a 48 hs desde las 24 semanas hasta las 34 semanas\r\nIndometacina: hasta 48 hs y hasta las 32 semanas\r\nProfilaxis para estreptococo: en pacientes sin cultivo la amenaza de pp es antecedente de riesgo y corresponde profilaxis\r\nMaduración con corticoides:  entre las semanas 24 y 34 de gestación.\r\n1.- Betametasona  una ampolla de 12 mg cada 12 hs en 24 hs (total 2 dosis=  24 mg)\r\n2.- Dexametasona: una ampolla de 8 mg cada 8 hs en 24 hs (total 3 dosis = 24 mg de dexametasona).\r\n\r\nRepique: si la paciente recibió corticoterapia antes de las 28/30 semanas y pasados 10 días de esa dosis se desencadena situación de parto se realizará repique con 1 dos', 'Maternal', 'Activa', '2018-10-27 02:27:58', '2018-10-27 02:27:58'),
(24, 'Eclampsia', 'Es el comienzo de convulsiones o coma en una mujer embarazada con preeclampsia. Estas convulsiones no están relacionadas con una afección cerebral existente.', 'La causa exacta de la eclampsia no es conocida. Los siguientes factores pueden jugar un papel:\r\n\r\nProblemas vasculares\r\nFactores cerebrales y del sistema nervioso (neurológicos)\r\nDieta\r\nGenes\r\nLa eclampsia se presenta después de una afección llamada preeclampsia. Esta es una complicación del embarazo en la cual una mujer presenta presión arterial alta y otras afecciones.\r\n\r\nLa mayoría de las mujeres con preeclampsia no siguen teniendo convulsiones. Es difícil predecir cuáles mujeres sí las tendrán. Las mujeres con alto riesgo de sufrir convulsiones con frecuencia padecen preeclampsia grave con signos y síntomas como:\r\n\r\nExámenes sanguíneos anormales\r\nDolores de cabeza\r\nPresión arterial muy alta\r\nCambios en la visión\r\nDolor abdominal', NULL, 'Maternal', 'Activa', '2018-10-27 02:38:07', '2018-10-27 02:38:07'),
(25, 'Sin Patología', NULL, NULL, NULL, 'Maternal', 'Activa', '2018-11-05 17:24:17', '2018-11-05 17:24:17'),
(26, 'Sin Patología', NULL, NULL, NULL, 'Neonato', 'Activa', '2018-11-05 17:24:26', '2018-11-05 17:24:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega por las sucursales', NULL, NULL),
(2, 'Ver detalle usuarios', 'users.show', 'ver detalle usuario', NULL, NULL),
(3, 'Crear usuarios', 'users.create', 'crear usuarios', NULL, NULL),
(4, 'Edita usuarios', 'users.edit', 'Edita usuarios', NULL, NULL),
(5, 'Elimina usuarios', 'users.destroy', 'Elimina usuario', NULL, NULL),
(6, 'Navegar roles', 'roles.index', 'Lista y navega por las sucursales', NULL, NULL),
(7, 'Ver detalle roles', 'roles.show', 'ver detalle usuario', NULL, NULL),
(8, 'Crear roles', 'roles.create', 'crear roles', NULL, NULL),
(9, 'Edita roles', 'roles.edit', 'Edita roles', NULL, NULL),
(10, 'Elimina roles', 'roles.destroy', 'Elimina usuario', NULL, NULL),
(11, 'Navegar sucursales', 'sucursal.index', 'Lista y navega por las sucursales', NULL, NULL),
(12, 'Ver detalle sucursales', 'sucursal.show', 'ver detalle sucursal', NULL, NULL),
(13, 'Crea sucursal', 'sucursal.create', 'crea sucursal', NULL, NULL),
(14, 'Edita sucursal', 'sucursal.edit', 'Edita roles', NULL, NULL),
(15, 'Elimina sucursal', 'sucursal.destroy', 'Elimina sucursal', NULL, NULL),
(16, 'Navegar hospital', 'hospital.index', 'Lista y navega por las hospitales', NULL, NULL),
(17, 'Ver detalle hospital', 'hospital.show', 'ver detalle hospital', NULL, NULL),
(18, 'Crear hospital', 'hospital.create', 'crear hospital', NULL, NULL),
(19, 'Edita hospital', 'hospital.edit', 'Edita hospital', NULL, NULL),
(20, 'Elimina hospital', 'hospital.destroy', 'Elimina hospital', NULL, NULL),
(21, 'Navegar unidad', 'unidad.index', 'Lista y navega por las unidades', NULL, NULL),
(22, 'Ver detalle unidad', 'unidad.show', 'ver detalle unidad', NULL, NULL),
(23, 'Crear unidad', 'unidad.create', 'crear unidad', NULL, NULL),
(24, 'Edita unidad', 'unidad.edit', 'Edita unidad', NULL, NULL),
(25, 'Elimina unidad', 'unidad.destroy', 'Elimina unidad', NULL, NULL),
(26, 'Navegar subunidad', 'subunidad.index', 'Lista y navega por las subunidades', NULL, NULL),
(27, 'Ver detalle subunidad', 'subunidad.show', 'ver detalle subunidad', NULL, NULL),
(28, 'Crear subunidad', 'subunidad.create', 'crear subunidad', NULL, NULL),
(29, 'Edita subunidad', 'subunidad.edit', 'Edita subunidad', NULL, NULL),
(30, 'Elimina subunidad', 'subunidad.destroy', 'Elimina subunidad', NULL, NULL),
(31, 'Navegar tipocama', 'tipocama.index', 'Lista y navega por las tipocamaes', NULL, NULL),
(32, 'Ver detalle tipocama', 'tipocama.show', 'ver detalle tipocama', NULL, NULL),
(33, 'Crear tipocama', 'tipocama.create', 'crear tipocama', NULL, NULL),
(34, 'Edita tipocama', 'tipocama.edit', 'Edita tipocama', NULL, NULL),
(35, 'Elimina tipocama', 'tipocama.destroy', 'Elimina tipocama', NULL, NULL),
(36, 'Navegar estadocama', 'estadocama.index', 'Lista y navega por las estadocamaes', NULL, NULL),
(37, 'Ver detalle estadocama', 'estadocama.show', 'ver detalle estadocama', NULL, NULL),
(38, 'Crear estadocama', 'estadocama.create', 'crear estadocama', NULL, NULL),
(39, 'Edita estadocama', 'estadocama.edit', 'Edita estadocama', NULL, NULL),
(40, 'Elimina estadocama', 'estadocama.destroy', 'Elimina estadocama', NULL, NULL),
(41, 'Navegar cama', 'cama.index', 'Lista y navega por las cama', NULL, NULL),
(42, 'Ver detalle cama', 'cama.show', 'ver detalle cama', NULL, NULL),
(43, 'Crear cama', 'cama.create', 'crear cama', NULL, NULL),
(44, 'Edita cama', 'cama.edit', 'Edita cama', NULL, NULL),
(45, 'Elimina cama', 'cama.destroy', 'Elimina cama', NULL, NULL),
(50, 'Navegar paciente', 'paciente.index', 'Lista y navega por las paciente', NULL, NULL),
(52, 'Crear paciente', 'paciente.create', 'crear paciente', NULL, NULL),
(53, 'Edita paciente', 'paciente.edit', 'Edita paciente', NULL, NULL),
(55, 'Navegar hospitalizacion', 'hospitalizacion.index', 'Lista y navega por las hospitalizacion', NULL, NULL),
(56, 'Ver detalle hospitalizacion', 'hospitalizacion.show', 'ver detalle hospitalizacion', NULL, NULL),
(57, 'Crear hospitalizacion', 'hospitalizacion.create', 'crear hospitalizacion', NULL, NULL),
(58, 'Edita hospitalizacion', 'hospitalizacion.edit', 'Edita hospitalizacion', NULL, NULL),
(59, 'Egreso hospitalizacion', 'hospitalizacion.destroy', 'Egreso hospitalizacion', NULL, NULL),
(60, 'Navegar transferencia', 'transferencia.index', 'Lista y navega por las transferencia', NULL, NULL),
(61, 'Realiza transferencia', 'transferencia.edit', 'Realiza transferencia', NULL, NULL),
(62, 'Navegar historial cama', 'camahis.index', 'Lista y navega por el historial cama', NULL, NULL),
(63, 'Ver detalle historial cama', 'camahis.show', 'ver detalle historial cama', NULL, NULL),
(64, 'Navegar historial auditoria', 'auditoria.index', 'Lista y navega por el historial auditoria', NULL, NULL),
(65, 'Ver detalle historial auditoria', 'auditoria.show', 'ver detalle historial auditoria', NULL, NULL),
(66, 'Navegar patologia', 'patologia.index', 'Lista y navega por las patologia', NULL, NULL),
(67, 'Ver detalle patologia', 'patologia.show', 'ver detalle patologia', NULL, NULL),
(68, 'Crear patologia', 'patologia.create', 'crear patologia', NULL, NULL),
(69, 'Edita patologia', 'patologia.edit', 'Edita patologia', NULL, NULL),
(70, 'Elimina patologia', 'patologia.destroy', 'Elimina patologia', NULL, NULL),
(71, 'Navegar servicio', 'servicio.index', 'Lista y navega por las servicio', NULL, NULL),
(73, 'Crear servicio', 'servicio.create', 'crear servicio', NULL, NULL),
(74, 'Edita servicio', 'servicio.edit', 'Edita servicio', NULL, NULL),
(75, 'Elimina servicio', 'servicio.destroy', 'Elimina servicio', NULL, NULL),
(76, 'Navegar pregunta', 'pregunta.index', 'Lista y navega por las pregunta', NULL, NULL),
(78, 'Crear pregunta', 'pregunta.create', 'crear pregunta', NULL, NULL),
(79, 'Edita pregunta', 'pregunta.edit', 'Edita pregunta', NULL, NULL),
(80, 'Elimina pregunta', 'pregunta.destroy', 'Elimina pregunta', NULL, NULL),
(81, 'Navegar encuesta', 'encuesta.index', 'Lista y navega por las encuesta', NULL, NULL),
(84, 'Edita encuesta', 'encuesta.edit', 'Edita encuesta', NULL, NULL),
(86, 'Navegar historial encuestarealizada', 'encuestarealizada.index', 'Lista y navega por el historial encuestarealizada', NULL, NULL),
(87, 'Ver detalle historial encuesta realizada', 'encuestarealizada.show', 'ver detalle historial encuesta realizada', NULL, NULL),
(88, 'Navegar historial informacion cama', 'infocamas.index', 'Lista y navega informacion cama', NULL, NULL),
(89, 'Ver detalle informacion cama ', 'infocamas.show', 'ver detalle informacion cama', NULL, NULL),
(90, 'Navegar reportes', 'reportes.index', 'Lista y navega reportes', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(12, 6, 4, '2018-09-24 02:49:10', '2018-09-24 02:49:10'),
(13, 7, 4, '2018-09-24 02:49:10', '2018-09-24 02:49:10'),
(14, 11, 4, '2018-09-24 02:49:10', '2018-09-24 02:49:10'),
(15, 12, 4, '2018-09-24 02:49:10', '2018-09-24 02:49:10'),
(16, 26, 4, '2018-09-25 02:59:49', '2018-09-25 02:59:49'),
(17, 27, 4, '2018-09-25 02:59:49', '2018-09-25 02:59:49'),
(19, 2, 6, '2018-10-20 13:25:53', '2018-10-20 13:25:53'),
(22, 27, 6, '2018-10-20 13:25:53', '2018-10-20 13:25:53'),
(23, 1, 6, '2018-10-20 13:27:32', '2018-10-20 13:27:32'),
(31, 26, 6, '2018-10-20 13:28:14', '2018-10-20 13:28:14'),
(32, 6, 6, '2018-11-10 02:27:39', '2018-11-10 02:27:39'),
(33, 7, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(34, 11, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(35, 12, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(36, 16, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(37, 17, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(38, 21, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(39, 22, 6, '2018-11-10 02:27:40', '2018-11-10 02:27:40'),
(40, 31, 6, '2018-11-10 02:27:41', '2018-11-10 02:27:41'),
(41, 32, 6, '2018-11-10 02:27:41', '2018-11-10 02:27:41'),
(42, 36, 6, '2018-11-10 02:27:41', '2018-11-10 02:27:41'),
(43, 37, 6, '2018-11-10 02:27:41', '2018-11-10 02:27:41'),
(45, 41, 6, '2018-11-10 02:36:53', '2018-11-10 02:36:53'),
(46, 42, 6, '2018-11-10 02:36:53', '2018-11-10 02:36:53'),
(49, 50, 6, '2018-11-10 02:42:04', '2018-11-10 02:42:04'),
(53, 55, 6, '2018-11-10 02:48:11', '2018-11-10 02:48:11'),
(54, 56, 6, '2018-11-10 02:48:11', '2018-11-10 02:48:11'),
(55, 60, 6, '2018-11-10 02:55:17', '2018-11-10 02:55:17'),
(57, 62, 6, '2018-11-10 03:00:06', '2018-11-10 03:00:06'),
(58, 63, 6, '2018-11-10 03:00:06', '2018-11-10 03:00:06'),
(59, 64, 6, '2018-11-10 03:02:00', '2018-11-10 03:02:00'),
(60, 65, 6, '2018-11-10 03:02:00', '2018-11-10 03:02:00'),
(61, 66, 6, '2018-11-10 03:06:52', '2018-11-10 03:06:52'),
(62, 67, 6, '2018-11-10 03:06:52', '2018-11-10 03:06:52'),
(63, 71, 6, '2018-11-10 03:08:05', '2018-11-10 03:08:05'),
(65, 76, 6, '2018-11-10 03:11:12', '2018-11-10 03:11:12'),
(67, 81, 6, '2018-11-10 03:14:01', '2018-11-10 03:14:01'),
(68, 86, 6, '2018-11-10 03:16:25', '2018-11-10 03:16:25'),
(69, 87, 6, '2018-11-10 03:16:25', '2018-11-10 03:16:25'),
(70, 88, 6, '2018-11-10 03:19:54', '2018-11-10 03:19:54'),
(71, 89, 6, '2018-11-10 03:19:54', '2018-11-10 03:19:54'),
(72, 90, 6, '2018-11-10 03:21:51', '2018-11-10 03:21:51'),
(73, 13, 6, '2018-11-10 17:11:17', '2018-11-10 17:11:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `ID_PREGUNTA` int(11) NOT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ESTADO` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID_SERVICIO` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`ID_PREGUNTA`, `DESCRIPCION`, `ESTADO`, `ID_SERVICIO`, `updated_at`, `created_at`) VALUES
(1, 'La comida ha sido', 'Activa', 1, '2018-11-23 03:46:42', '2018-10-30 22:05:23'),
(2, 'La limpieza en la sala de espera a sido:', 'Activa', 1, '2018-11-05 16:25:48', '2018-10-30 22:14:39'),
(3, 'La calidad de la asistencia sanitaria por parte de la enfermer@ que usted ha recibido ha sido', 'Activa', 1, '2018-11-05 15:57:44', '2018-10-30 22:15:48'),
(4, 'El trato de la enfermer@ del hospital con usted ha sido:', 'Activa', 3, '2018-11-05 15:56:13', '2018-11-05 15:56:13'),
(5, 'La calidad de la asistencia sanitaria por parte de la enfermera que usted ha recibido ha sido', 'Activa', 3, '2018-11-05 15:57:28', '2018-11-05 15:57:28'),
(6, 'La limpieza en su habitación a sido:', 'Activa', 2, '2018-11-05 16:25:36', '2018-11-05 16:25:36'),
(7, 'Su opinión de la calidad y competencia de las enfermer@s es:', 'Activa', 3, '2018-11-05 16:26:48', '2018-11-05 16:26:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimiento`
--

CREATE TABLE `procedimiento` (
  `ID_PROCEDIMIENTO` int(11) NOT NULL,
  `DESC_PROCEDIMIENTO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `EST_PROCEDIMIENTO` char(1) COLLATE utf8_bin DEFAULT NULL,
  `FECH_PROCEDIMIENTO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quirofano`
--

CREATE TABLE `quirofano` (
  `ID_QUIRIFANO` int(11) NOT NULL,
  `ID_MEDICO` int(11) DEFAULT NULL,
  `ID_PACIENTE` int(11) DEFAULT NULL,
  `ESTADO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `FECHA_UTLIZACION` date DEFAULT NULL,
  `HORA_INICIO` time DEFAULT NULL,
  `HORA_FIN` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `quirofano`
--

INSERT INTO `quirofano` (`ID_QUIRIFANO`, `ID_MEDICO`, `ID_PACIENTE`, `ESTADO`, `FECHA_UTLIZACION`, `HORA_INICIO`, `HORA_FIN`) VALUES
(2, NULL, 1, 'Ingreso', '2018-11-01', '22:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `respuestas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `respuestas` (
`buena` bigint(21)
,`regular` bigint(21)
,`mala` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'Admin', NULL, '2018-09-23 01:32:29', '2018-09-23 01:32:29', 'all-access'),
(2, 'Suspendido', 'suspendido', 'Usuarios de Vacaciones sin acceso a el sistema', NULL, '2018-10-12 16:50:48', 'no-access'),
(4, 'Supervisor', 'supervisor.sistema', 'Este Permiso permite ver todos los elementos del sistema y crea sucursales', '2018-09-24 02:49:09', '2018-09-25 02:59:48', NULL),
(6, 'Solo Lectura', 'sololectura', 'Solo ver', '2018-10-20 13:25:53', '2018-10-20 13:25:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 26, NULL, NULL),
(7, 6, 28, '2018-10-20 13:29:57', '2018-10-20 13:29:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_SERVICIO` int(11) NOT NULL,
  `DESC_SERVICIO` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `EST_SERVICIO` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_SERVICIO`, `DESC_SERVICIO`, `EST_SERVICIO`, `updated_at`, `created_at`) VALUES
(1, 'Alimentación', 'Activa', '2018-11-02 23:41:08', '2018-10-30 04:17:54'),
(2, 'Limpieza', 'Activa', '2018-10-30 22:13:43', '2018-10-30 22:11:59'),
(3, 'Enfermeria', 'Activa', '2018-11-05 15:54:57', '2018-11-05 15:54:57'),
(4, 'Farmacia', 'Activa', '2018-11-05 15:55:07', '2018-11-05 15:55:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subunidad`
--

CREATE TABLE `subunidad` (
  `ID_SUBUNIDAD` int(11) NOT NULL,
  `ID_UNIDAD` int(11) DEFAULT NULL,
  `DESC_SUBUNIDAD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SECTOR_SUBUNIDAD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PISO_SUBUNIDAD` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EST_SUBUNIDAD` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `subunidad`
--

INSERT INTO `subunidad` (`ID_SUBUNIDAD`, `ID_UNIDAD`, `DESC_SUBUNIDAD`, `SECTOR_SUBUNIDAD`, `PISO_SUBUNIDAD`, `EST_SUBUNIDAD`, `updated_at`, `created_at`) VALUES
(1, 1, 'Neonatología', 'Norte', 'Primer_Piso', 'Activo', '2018-11-14 03:42:34', '2018-09-25 02:10:22'),
(3, 1, 'Centro Obstétrico', 'Sur', 'Tercer_Piso', 'Activo', '2018-11-16 04:07:11', '2018-10-04 20:10:24'),
(4, 1, 'Centro Quirúrgico', 'Norte', 'Tercer_Piso', 'Activo', '2018-11-16 04:07:23', '2018-10-04 20:10:54'),
(7, 4, 'Hospitalización', 'Sur', 'Segundo_Piso', 'Activo', '2018-10-20 02:22:20', '2018-10-20 02:20:42'),
(8, 1, 'Ginecología', 'Norte', 'Primer_Piso', 'Activo', '2018-11-08 05:49:27', '2018-11-08 05:48:14'),
(9, 1, 'Emergencia', 'Norte', 'Primer_Piso', 'Activo', '2018-11-08 05:51:12', '2018-11-08 05:51:12'),
(10, 2, 'Cuidados Intensivos Neonatales', 'Sur', 'Tercer_Piso', 'Activo', '2018-11-16 05:28:31', '2018-11-08 05:55:04'),
(11, 2, 'Cuidados intensivos Maternos', 'Norte', 'Primer_Piso', 'Activo', '2018-11-16 05:09:07', '2018-11-08 06:00:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `ID_SUCURSAL` int(11) NOT NULL,
  `ID_HOSPITAL` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIR_SUCURSAL` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELF_SUCURSAL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TIPO` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `EST_SUCURSAL` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`ID_SUCURSAL`, `ID_HOSPITAL`, `DESCRIPCION`, `DIR_SUCURSAL`, `TELF_SUCURSAL`, `TIPO`, `EST_SUCURSAL`, `updated_at`, `created_at`) VALUES
(1, 1, 'Matriz', 'Av. De los Naranjos N44-463 y De las Azucenas', '9545494776', NULL, 'Activo', '2018-11-07 03:02:05', '2018-09-23 04:25:58'),
(2, 1, 'Sucursal 1', 'Duchicela N18-59 y calle Princesa Toa', '3057169600', NULL, 'Activo', '2018-11-27 22:07:24', '2018-09-23 04:27:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cama`
--

CREATE TABLE `tipo_cama` (
  `ID_TCAMA` int(11) NOT NULL,
  `DESC_TCAMA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IMG_TCAMA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `EST_TCAMA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipo_cama`
--

INSERT INTO `tipo_cama` (`ID_TCAMA`, `DESC_TCAMA`, `IMG_TCAMA`, `EST_TCAMA`, `updated_at`, `created_at`) VALUES
(1, 'Sillón Eléctrico Ginecólogo', 'CAMILLA-GINECOLOGICA-ELECTRICA.jpg', 'Activo', '2018-11-14 03:59:33', '2018-09-25 03:22:38'),
(2, 'Incubadora Neonatal BB-100', 'incubadoraneonatal.jpg', 'Activo', '2018-10-12 21:44:32', '2018-10-11 16:14:51'),
(3, 'Cama de Hospitalización', 'campahospitalizacion.jpg', 'Activo', '2018-10-20 02:40:51', '2018-10-20 02:40:51'),
(10, 'Cama Para Parto', 'cama-para-parto.jpg', 'Activo', '2018-11-14 03:58:26', '2018-10-20 04:28:57'),
(11, 'Quirófano', 'quirofanogrande.jpg', 'Activo', '2018-11-10 03:26:50', '2018-11-09 18:59:21'),
(13, 'Terapia Intensiva Neonatal', 'terapiaintensivaneonatal.jpg', 'Activo', '2018-11-10 04:00:25', '2018-11-10 04:00:25'),
(14, 'Terapia Intensiva Maternal', 'camaterapiaintensiva.jpg', 'Activo', '2018-11-10 04:02:50', '2018-11-10 04:02:50');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `totpacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `totpacientes` (
`numtocpac` bigint(21)
,`numtocpaci` bigint(21)
,`numtocpace` bigint(21)
,`camasdispo` bigint(21)
,`camasocu` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `ID_UNIDAD` int(11) NOT NULL,
  `ID_SUCURSAL` int(11) DEFAULT NULL,
  `DESC_UNIDAD` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EST_UNIDAD` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`ID_UNIDAD`, `ID_SUCURSAL`, `DESC_UNIDAD`, `EST_UNIDAD`, `updated_at`, `created_at`) VALUES
(1, 1, 'Especialidades clínicas y/o quirúrgicas', 'Activo', '2018-11-10 17:14:05', '2018-09-24 21:00:03'),
(2, 1, 'Diagnostico y terapéutico', 'Activo', '2018-10-04 17:05:31', '2018-10-04 17:05:31'),
(3, 2, 'Cuidados Intensivos', 'Activo', '2018-11-10 00:35:40', '2018-10-04 17:05:57'),
(4, 1, 'Cuidados de enfermería', 'Activo', '2018-10-20 02:18:27', '2018-10-20 02:18:27'),
(5, 1, 'Cuidados Intensivos', 'Activo', '2018-11-08 19:35:57', '2018-11-08 05:57:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ID_SUCURSAL` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `ID_SUCURSAL`) VALUES
(26, 'Juan Criollo', 'jc@ads.com', NULL, '$2y$10$TJnfnPxwCYWlGXcRuJyEo.NskwO.fCcjhn/dZ9FIDoRJTJ7Afv9qi', 'wdSZj8lERPV075lMoeEZhbFuItjsBilBBGzz3UP9bEeekJ0yFiVAremJOd5Y', '2018-10-10 02:25:27', '2018-10-12 16:58:03', 2),
(27, 'Ricardo Davalos', 'sp@asur.ec', NULL, '$2y$10$ixWvV9iM7IieKz/rOJ9/4.aYyD1C7yk2w6iSdfMPOYmqVCELsnUKS', NULL, '2018-10-12 16:22:32', '2018-10-12 16:22:32', 1),
(28, 'pepito', 'p@ads.com', NULL, '$2y$10$1u7cVLwmYvw3B1tqEZZo5uf8o07DtM1ZvISOVICi.frNj4B3Meb8e', 'rSBOqkJGIPCxV87zr4yZVNwycH7C6Hfs84HAibwk6V7mG2r5mRBR17NUMqD3', '2018-10-20 13:26:41', '2018-11-10 02:28:07', 2);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vreporte`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vreporte` (
`IDHOSPITALIZACION` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vsucunisub`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vsucunisub` (
`idsuc` int(11)
,`sucursal` varchar(30)
,`iduni` int(11)
,`unidad` varchar(80)
,`idsubu` int(11)
,`subunidad` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `camas`
--
DROP TABLE IF EXISTS `camas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `camas`  AS  select (select count(0) from `cama` where (`cama`.`ID_ESTCAM` = 1)) AS `camasdispo`,(select count(0) from `cama` where (`cama`.`ID_ESTCAM` = 2)) AS `camasocu` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `respuestas`
--
DROP TABLE IF EXISTS `respuestas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `respuestas`  AS  select (select count(0) from ((`servicio` `s` join `preguntas` `p` on((`s`.`ID_SERVICIO` = `p`.`ID_SERVICIO`))) join `encuesta_reg` `er` on((`p`.`ID_PREGUNTA` = `er`.`ID_PREGUNTA`))) where (`er`.`VALOR` = 'Buena')) AS `buena`,(select count(0) from ((`servicio` `s` join `preguntas` `p` on((`s`.`ID_SERVICIO` = `p`.`ID_SERVICIO`))) join `encuesta_reg` `er` on((`p`.`ID_PREGUNTA` = `er`.`ID_PREGUNTA`))) where (`er`.`VALOR` = 'Regular')) AS `regular`,(select count(0) from ((`servicio` `s` join `preguntas` `p` on((`s`.`ID_SERVICIO` = `p`.`ID_SERVICIO`))) join `encuesta_reg` `er` on((`p`.`ID_PREGUNTA` = `er`.`ID_PREGUNTA`))) where (`er`.`VALOR` = 'Mala')) AS `mala` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `totpacientes`
--
DROP TABLE IF EXISTS `totpacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totpacientes`  AS  select (select count(0) from `pacientes`) AS `numtocpac`,(select count(0) from `pacientes` `p` where (`p`.`EST_INGRE_EGRESO` = 'Ingreso')) AS `numtocpaci`,(select count(0) from `pacientes` `p` where (`p`.`EST_INGRE_EGRESO` = 'Egreso')) AS `numtocpace`,(select count(0) from `cama` where (`cama`.`ID_ESTCAM` = 1)) AS `camasdispo`,(select count(0) from `cama` where (`cama`.`ID_ESTCAM` = 2)) AS `camasocu` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vreporte`
--
DROP TABLE IF EXISTS `vreporte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vreporte`  AS  select `h`.`ID_HOSPITALIZACION` AS `IDHOSPITALIZACION` from (((`cama_his` `ch` join `cama` `c` on((`ch`.`ID_CAMA` = `c`.`ID_CAMA`))) join `hospitalizacion` `h` on((`ch`.`ID_HOSPITALIZACION` = `h`.`ID_HOSPITALIZACION`))) join `pacientes` `p` on((`h`.`ID_PACIENTE` = `p`.`ID_PACIENTE`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vsucunisub`
--
DROP TABLE IF EXISTS `vsucunisub`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsucunisub`  AS  select `su`.`ID_SUCURSAL` AS `idsuc`,`su`.`DESCRIPCION` AS `sucursal`,`u`.`ID_UNIDAD` AS `iduni`,`u`.`DESC_UNIDAD` AS `unidad`,`s`.`ID_SUBUNIDAD` AS `idsubu`,`s`.`DESC_SUBUNIDAD` AS `subunidad` from (`subunidad` `s` join (`unidad` `u` join `sucursales` `su`)) where ((`s`.`ID_UNIDAD` = `u`.`ID_UNIDAD`) and (`u`.`ID_SUCURSAL` = `su`.`ID_SUCURSAL`) and (`s`.`EST_SUBUNIDAD` = 'Activo') and (`u`.`EST_UNIDAD` = 'Activo') and (`su`.`EST_SUCURSAL` = 'Activo')) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`ID_AUD`);

--
-- Indices de la tabla `cama`
--
ALTER TABLE `cama`
  ADD PRIMARY KEY (`ID_CAMA`),
  ADD KEY `FK_SUBUNI_CAMAS` (`ID_SUBUNIDAD`),
  ADD KEY `FK_TIPO_CAMA` (`ID_TCAMA`),
  ADD KEY `FK_cama_ID_ESTCAM` (`ID_ESTCAM`);

--
-- Indices de la tabla `cama_his`
--
ALTER TABLE `cama_his`
  ADD PRIMARY KEY (`ID_HCAMA`),
  ADD KEY `FK_HISTORIAL_CAMAS` (`ID_CAMA`),
  ADD KEY `FK_cama_his_ID_HOSPITALIZACION` (`ID_HOSPITALIZACION`);

--
-- Indices de la tabla `detalle_hospitalizacion`
--
ALTER TABLE `detalle_hospitalizacion`
  ADD PRIMARY KEY (`ID_DET_HOSPITALIZACION`),
  ADD KEY `FK_detalle_hospitalizacion_ID_` (`ID_HOSPITALIZACION`),
  ADD KEY `FK_detalle_hospitalizacion_ID2` (`ID_CAMA`),
  ADD KEY `FK_detalle_hospitalizacion_ID3` (`ID_PATOLOGIA`);

--
-- Indices de la tabla `encuesta_reg`
--
ALTER TABLE `encuesta_reg`
  ADD PRIMARY KEY (`ID_ENCUESTA`),
  ADD KEY `FK_encuesta_reg_ID_PREGUNTA` (`ID_PREGUNTA`),
  ADD KEY `FK_encuesta_reg_ID_PACIENTE` (`ID_PACIENTE`);

--
-- Indices de la tabla `estado_cama`
--
ALTER TABLE `estado_cama`
  ADD PRIMARY KEY (`ID_ESTCAM`);

--
-- Indices de la tabla `historia_paciente`
--
ALTER TABLE `historia_paciente`
  ADD PRIMARY KEY (`ID_HIS_PACIENTE`),
  ADD KEY `FK_PACIENTE_HIS_PAC2` (`ID_PACIENTE`);

--
-- Indices de la tabla `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`ID_HOSPITAL`);

--
-- Indices de la tabla `hospitalizacion`
--
ALTER TABLE `hospitalizacion`
  ADD PRIMARY KEY (`ID_HOSPITALIZACION`),
  ADD KEY `FK_hospitalizacion_ID_PACIENT2` (`ID_PACIENTE`),
  ADD KEY `FK_hospitalizacion_ID_PATOLOGI` (`ID_PATOLOGIA`);

--
-- Indices de la tabla `medico_tratante`
--
ALTER TABLE `medico_tratante`
  ADD PRIMARY KEY (`ID_MEDICO`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID_PACIENTE`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `patologia`
--
ALTER TABLE `patologia`
  ADD PRIMARY KEY (`ID_PATOLOGIA`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`ID_PREGUNTA`),
  ADD KEY `FK_preguntas_ID_SERVICIO` (`ID_SERVICIO`);

--
-- Indices de la tabla `quirofano`
--
ALTER TABLE `quirofano`
  ADD PRIMARY KEY (`ID_QUIRIFANO`),
  ADD KEY `FK_quirofano_ID_PACIENTE` (`ID_PACIENTE`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_SERVICIO`);

--
-- Indices de la tabla `subunidad`
--
ALTER TABLE `subunidad`
  ADD PRIMARY KEY (`ID_SUBUNIDAD`),
  ADD KEY `FK_subunidad_ID_UNIDAD` (`ID_UNIDAD`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`ID_SUCURSAL`),
  ADD KEY `FK_sucursales_ID_HOSPITAL` (`ID_HOSPITAL`);

--
-- Indices de la tabla `tipo_cama`
--
ALTER TABLE `tipo_cama`
  ADD PRIMARY KEY (`ID_TCAMA`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`ID_UNIDAD`),
  ADD KEY `FK_unidad_ID_SUCURSAL` (`ID_SUCURSAL`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `FK_users_ID_SUCURSAL` (`ID_SUCURSAL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `ID_AUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT de la tabla `cama`
--
ALTER TABLE `cama`
  MODIFY `ID_CAMA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cama_his`
--
ALTER TABLE `cama_his`
  MODIFY `ID_HCAMA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `detalle_hospitalizacion`
--
ALTER TABLE `detalle_hospitalizacion`
  MODIFY `ID_DET_HOSPITALIZACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `encuesta_reg`
--
ALTER TABLE `encuesta_reg`
  MODIFY `ID_ENCUESTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `estado_cama`
--
ALTER TABLE `estado_cama`
  MODIFY `ID_ESTCAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `hospital`
--
ALTER TABLE `hospital`
  MODIFY `ID_HOSPITAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hospitalizacion`
--
ALTER TABLE `hospitalizacion`
  MODIFY `ID_HOSPITALIZACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `ID_PACIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `patologia`
--
ALTER TABLE `patologia`
  MODIFY `ID_PATOLOGIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `ID_PREGUNTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `quirofano`
--
ALTER TABLE `quirofano`
  MODIFY `ID_QUIRIFANO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_SERVICIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subunidad`
--
ALTER TABLE `subunidad`
  MODIFY `ID_SUBUNIDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `ID_SUCURSAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_cama`
--
ALTER TABLE `tipo_cama`
  MODIFY `ID_TCAMA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `ID_UNIDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cama`
--
ALTER TABLE `cama`
  ADD CONSTRAINT `FK_cama_ID_ESTCAM` FOREIGN KEY (`ID_ESTCAM`) REFERENCES `estado_cama` (`ID_ESTCAM`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_cama_ID_SUBUNIDAD` FOREIGN KEY (`ID_SUBUNIDAD`) REFERENCES `subunidad` (`ID_SUBUNIDAD`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_cama_ID_TCAMA` FOREIGN KEY (`ID_TCAMA`) REFERENCES `tipo_cama` (`ID_TCAMA`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `cama_his`
--
ALTER TABLE `cama_his`
  ADD CONSTRAINT `FK_cama_his_ID_CAMA` FOREIGN KEY (`ID_CAMA`) REFERENCES `cama` (`ID_CAMA`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_cama_his_ID_HOSPITALIZACION` FOREIGN KEY (`ID_HOSPITALIZACION`) REFERENCES `hospitalizacion` (`ID_HOSPITALIZACION`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `detalle_hospitalizacion`
--
ALTER TABLE `detalle_hospitalizacion`
  ADD CONSTRAINT `FK_detalle_hospitalizacion_ID2` FOREIGN KEY (`ID_CAMA`) REFERENCES `cama` (`ID_CAMA`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_detalle_hospitalizacion_ID3` FOREIGN KEY (`ID_PATOLOGIA`) REFERENCES `patologia` (`ID_PATOLOGIA`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_detalle_hospitalizacion_ID_` FOREIGN KEY (`ID_HOSPITALIZACION`) REFERENCES `hospitalizacion` (`ID_HOSPITALIZACION`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `encuesta_reg`
--
ALTER TABLE `encuesta_reg`
  ADD CONSTRAINT `FK_encuesta_reg_ID_PACIENTE` FOREIGN KEY (`ID_PACIENTE`) REFERENCES `pacientes` (`ID_PACIENTE`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_encuesta_reg_ID_PREGUNTA` FOREIGN KEY (`ID_PREGUNTA`) REFERENCES `preguntas` (`ID_PREGUNTA`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `hospitalizacion`
--
ALTER TABLE `hospitalizacion`
  ADD CONSTRAINT `FK_hospitalizacion_ID_PACIENT2` FOREIGN KEY (`ID_PACIENTE`) REFERENCES `pacientes` (`ID_PACIENTE`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_hospitalizacion_ID_PATOLOGI` FOREIGN KEY (`ID_PATOLOGIA`) REFERENCES `patologia` (`ID_PATOLOGIA`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `FK_preguntas_ID_SERVICIO` FOREIGN KEY (`ID_SERVICIO`) REFERENCES `servicio` (`ID_SERVICIO`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `quirofano`
--
ALTER TABLE `quirofano`
  ADD CONSTRAINT `FK_quirofano_ID_PACIENTE` FOREIGN KEY (`ID_PACIENTE`) REFERENCES `pacientes` (`ID_PACIENTE`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subunidad`
--
ALTER TABLE `subunidad`
  ADD CONSTRAINT `FK_subunidad_ID_UNIDAD` FOREIGN KEY (`ID_UNIDAD`) REFERENCES `unidad` (`ID_UNIDAD`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `FK_sucursales_ID_HOSPITAL` FOREIGN KEY (`ID_HOSPITAL`) REFERENCES `hospital` (`ID_HOSPITAL`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `FK_unidad_ID_SUCURSAL` FOREIGN KEY (`ID_SUCURSAL`) REFERENCES `sucursales` (`ID_SUCURSAL`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_ID_SUCURSAL` FOREIGN KEY (`ID_SUCURSAL`) REFERENCES `sucursales` (`ID_SUCURSAL`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
