-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2025 a las 14:06:38
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresagddcs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `estimacion` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `Id_proyecto` varchar(12) NOT NULL,
  `Id_empleado` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`estimacion`, `fecha`, `Id_proyecto`, `Id_empleado`) VALUES
(40, '2023-01-15', 'P001', 'E001'),
(30, '2023-02-20', 'P002', 'E002'),
(20, '2023-03-05', 'P003', 'E003'),
(15, '2023-03-25', 'P004', 'E004'),
(50, '2023-04-15', 'P005', 'E005'),
(60, '2023-05-10', 'P006', 'E006'),
(10, '2023-05-25', 'P007', 'E007'),
(5, '2023-06-05', 'P008', 'E008'),
(25, '2023-06-20', 'P009', 'E009'),
(35, '2023-07-05', 'P010', 'E010'),
(45, '2023-07-25', 'P011', 'E011'),
(100, '2023-08-10', 'P012', 'E012'),
(8, '2023-08-30', 'P013', 'E013'),
(40, '2023-09-15', 'P014', 'E014'),
(12, '2023-09-25', 'P015', 'E015'),
(30, '2023-10-05', 'P016', 'E016'),
(55, '2023-10-20', 'P017', 'E017'),
(4, '2023-11-05', 'P018', 'E018'),
(28, '2023-11-20', 'P019', 'E019'),
(38, '2023-12-05', 'P020', 'E020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ruc` varchar(12) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `sector` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ruc`, `nombre`, `telefono`, `direccion`, `sector`) VALUES
('20100000001', 'TechSolut', 987654321, 'Av. Lima 123', 'Tecnología'),
('20100000002', 'ConstruMax', 912345678, 'Calle Norte 45', 'Construcción'),
('20100000003', 'AgroCampo', 933445566, 'Ruta Km 12', 'Agricultura'),
('20100000004', 'EducaRed', 944556677, 'Av. Universitaria', 'Educación'),
('20100000005', 'SaludTotal', 955667788, 'Jr. Hospital 500', 'Salud'),
('20100000006', 'MineriaX', 966778899, 'Cerro Pasco S/N', 'Minería'),
('20100000007', 'BankPeru', 977889900, 'Centro Finan 10', 'Finanzas'),
('20100000008', 'ModaStyle', 988990011, 'Gamarra 456', 'Textil'),
('20100000009', 'Alimenta', 999001122, 'Av. Industrial', 'Alimentos'),
('20100000010', 'LogisTrans', 911223344, 'Puerto Callao', 'Logística'),
('20100000011', 'EnergiaSol', 922334455, 'Panamericana Sur', 'Energía'),
('20100000012', 'AquaPura', 933445566, 'Rio Blanco 22', 'Saneamiento'),
('20100000013', 'TurisViaje', 944556677, 'Cusco Principal', 'Turismo'),
('20100000014', 'MediaNews', 955667788, 'Edif. Prensa 3', 'Comunicaciones'),
('20100000015', 'SegurTec', 966778899, 'Vigilancia 44', 'Seguridad'),
('20100000016', 'AutoPeru', 977889900, 'Av. Motores 88', 'Automotriz'),
('20100000017', 'InmoCasa', 988991122, 'Residencial B', 'Inmobiliaria'),
('20100000018', 'EcoGreen', 999112233, 'Bosque Nativo', 'Ecología'),
('20100000019', 'QuimiLabs', 911334455, 'Laboratorio 5', 'Química'),
('20100000020', 'SoftPeru', 922445566, 'Parque Soft 1', 'Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` varchar(12) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `apellido` varchar(32) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `fecha`) VALUES
('E001', 'Juan', 'Perez', '1990-05-15'),
('E002', 'Maria', 'Garcia', '1985-08-20'),
('E003', 'Luis', 'Rodriguez', '1992-11-02'),
('E004', 'Ana', 'Martinez', '1988-03-25'),
('E005', 'Carlos', 'Lopez', '1995-01-12'),
('E006', 'Laura', 'Sanchez', '1993-07-30'),
('E007', 'Pedro', 'Gomez', '1982-12-05'),
('E008', 'Elena', 'Diaz', '1991-04-18'),
('E009', 'Jorge', 'Torres', '1987-09-22'),
('E010', 'Sofia', 'Ruiz', '1994-06-10'),
('E011', 'Miguel', 'Hernandez', '1989-02-14'),
('E012', 'Lucia', 'Vargas', '1996-10-28'),
('E013', 'David', 'Castro', '1984-12-31'),
('E014', 'Rosa', 'Mendoza', '1992-03-05'),
('E015', 'Diego', 'Ortiz', '1990-08-14'),
('E016', 'Paula', 'Silva', '1993-05-20'),
('E017', 'Fernando', 'Ramos', '1986-11-11'),
('E018', 'Isabel', 'Flores', '1995-04-03'),
('E019', 'Oscar', 'Morales', '1988-07-27'),
('E020', 'Gabriela', 'Rojas', '1991-01-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `nombre` varchar(12) NOT NULL,
  `estado` enum('Basico','Intermedio','Avanzado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`nombre`, `estado`) VALUES
('Analisis', 'Avanzado'),
('AWS', 'Intermedio'),
('C++', 'Basico'),
('Diseño UI', 'Basico'),
('Docker', 'Basico'),
('Excel', 'Avanzado'),
('Finanzas', 'Avanzado'),
('Gestion', 'Intermedio'),
('Ingles', 'Intermedio'),
('Java', 'Avanzado'),
('JavaScript', 'Intermedio'),
('Liderazgo', 'Avanzado'),
('Marketing', 'Basico'),
('PHP', 'Basico'),
('Python', 'Intermedio'),
('React', 'Intermedio'),
('Redes', 'Intermedio'),
('Seguridad', 'Avanzado'),
('SQL', 'Avanzado'),
('Ventas', 'Intermedio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad_e`
--

CREATE TABLE `habilidad_e` (
  `nombre_ha` varchar(12) NOT NULL,
  `empleado` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habilidad_e`
--

INSERT INTO `habilidad_e` (`nombre_ha`, `empleado`) VALUES
('Java', 'E001'),
('SQL', 'E001'),
('Python', 'E002'),
('React', 'E003'),
('Excel', 'E004'),
('PHP', 'E005'),
('Ingles', 'E006'),
('Liderazgo', 'E007'),
('Analisis', 'E008'),
('Ventas', 'E009'),
('Gestion', 'E010'),
('C++', 'E011'),
('AWS', 'E012'),
('Docker', 'E013'),
('Seguridad', 'E014'),
('Finanzas', 'E015'),
('Redes', 'E016'),
('Marketing', 'E017'),
('Diseño UI', 'E018'),
('Java', 'E019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` varchar(12) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `fecha` date NOT NULL,
  `presupuesto` double(12,2) NOT NULL,
  `cliente` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre`, `fecha`, `presupuesto`, `cliente`) VALUES
('P001', 'ERP System', '2023-01-10', 50000.00, '20100000001'),
('P002', 'Torre Norte', '2023-02-15', 120000.00, '20100000002'),
('P003', 'Riego Auto', '2023-03-01', 35000.00, '20100000003'),
('P004', 'Aula Virtual', '2023-03-20', 15000.00, '20100000004'),
('P005', 'App Medico', '2023-04-10', 25000.00, '20100000005'),
('P006', 'Excavacion A', '2023-05-05', 200000.00, '20100000006'),
('P007', 'Portal Web', '2023-05-20', 10000.00, '20100000007'),
('P008', 'Campaña Moda', '2023-06-01', 8000.00, '20100000008'),
('P009', 'Stock Alim', '2023-06-15', 12000.00, '20100000009'),
('P010', 'Ruta Optima', '2023-07-01', 18000.00, '20100000010'),
('P011', 'Panel Solar', '2023-07-20', 45000.00, '20100000011'),
('P012', 'Planta Agua', '2023-08-05', 75000.00, '20100000012'),
('P013', 'Guia Cusco', '2023-08-25', 9000.00, '20100000013'),
('P014', 'Noticiero IV', '2023-09-10', 30000.00, '20100000014'),
('P015', 'Alarma Red', '2023-09-20', 14000.00, '20100000015'),
('P016', 'Taller Mec', '2023-10-01', 22000.00, '20100000016'),
('P017', 'Venta Depa', '2023-10-15', 60000.00, '20100000017'),
('P018', 'Reforesta', '2023-11-01', 5000.00, '20100000018'),
('P019', 'Analisis Q', '2023-11-15', 27000.00, '20100000019'),
('P020', 'CRM Soft', '2023-12-01', 40000.00, '20100000020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` varchar(12) NOT NULL,
  `descripcion` varchar(12) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('Pendiente','En Proceso','Finalizado') DEFAULT NULL,
  `proyecto` varchar(12) NOT NULL,
  `empleado` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `descripcion`, `fecha`, `estado`, `proyecto`, `empleado`) VALUES
('T001', 'Análisis', '2023-01-15', 'Finalizado', 'P001', 'E001'),
('T002', 'Cimentación', '2023-02-20', 'Finalizado', 'P002', 'E002'),
('T003', 'Diseño Riego', '2023-03-05', 'En Proceso', 'P003', 'E003'),
('T004', 'Login Dev', '2023-03-25', 'Pendiente', 'P004', 'E004'),
('T005', 'BD Medics', '2023-04-15', 'Finalizado', 'P005', 'E005'),
('T006', 'Remoción', '2023-05-10', 'En Proceso', 'P006', 'E006'),
('T007', 'Wireframes', '2023-05-25', 'Pendiente', 'P007', 'E007'),
('T008', 'Fotoshoot', '2023-06-05', 'Finalizado', 'P008', 'E008'),
('T009', 'Inventario', '2023-06-20', 'En Proceso', 'P009', 'E009'),
('T010', 'Algoritmo', '2023-07-05', 'Pendiente', 'P010', 'E010'),
('T011', 'Instalación', '2023-07-25', 'Finalizado', 'P011', 'E011'),
('T012', 'Filtros', '2023-08-10', 'En Proceso', 'P012', 'E012'),
('T013', 'Redacción', '2023-08-30', 'Pendiente', 'P013', 'E013'),
('T014', 'Edición', '2023-09-15', 'Finalizado', 'P014', 'E014'),
('T015', 'Sensores', '2023-09-25', 'En Proceso', 'P015', 'E015'),
('T016', 'Reparación', '2023-10-01', 'Pendiente', 'P016', 'E016'),
('T017', 'Publicidad', '2023-10-15', 'Finalizado', 'P017', 'E017'),
('T018', 'Siembra', '2023-11-01', 'En Proceso', 'P018', 'E018'),
('T019', 'Muestreo', '2023-11-15', 'Pendiente', 'P019', 'E019'),
('T020', 'Modulos CRM', '2023-12-01', 'Finalizado', 'P020', 'E020');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD KEY `Id_proyecto` (`Id_proyecto`),
  ADD KEY `Id_empleado` (`Id_empleado`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ruc`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `habilidad_e`
--
ALTER TABLE `habilidad_e`
  ADD KEY `nombre_ha` (`nombre_ha`),
  ADD KEY `empleado` (`empleado`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente` (`cliente`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyecto` (`proyecto`),
  ADD KEY `empleado` (`empleado`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_1` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyectos` (`id`),
  ADD CONSTRAINT `asignaciones_ibfk_2` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `habilidad_e`
--
ALTER TABLE `habilidad_e`
  ADD CONSTRAINT `habilidad_e_ibfk_1` FOREIGN KEY (`nombre_ha`) REFERENCES `habilidad` (`nombre`),
  ADD CONSTRAINT `habilidad_e_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`ruc`);

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`proyecto`) REFERENCES `proyectos` (`id`),
  ADD CONSTRAINT `tareas_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
