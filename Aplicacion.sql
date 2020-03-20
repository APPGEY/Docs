SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `indicador` (
  `Id_indicador` int(11) NOT NULL,
  `nom_indicador` varchar(160) NOT NULL,
  `indiXmodel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `indicador` (`Id_indicador`, `nom_indicador`, `indiXmodel`) VALUES
(1, 'Proyección a futuro', 1),
(2, 'Preferencias ', 1),
(3, 'Tipos de inteligencia ', 1),
(4, 'Preferencias núcleo familiar', 1),
(5, 'Inclinación hacia profesiones ', 1),
(6, 'Identificación del rol', 1),
(7, 'Autoconocimiento ', 2),
(8, 'Visualización a futuro', 2),
(9, 'Educación ', 2),
(10, 'Vida laboral', 2),
(11, 'Aptitud vocacional', 2),
(12, 'Medicina veterinaria Zootecnia Ingeniería agronómica', 3),
(13, 'Artes visuales, Comunicación social, Derecho, Filosofía, Educación artística, Música\r\n', 4),
(14, 'Pedagogía infantil, Lic. En educación física, Lic. En lengua castellana, Lic. En lenguas extranjeras, Lic. En ciencias sociales \r\n', 5),
(15, 'Ingeniería electrónica, Ingeniería en sistemas, Ingeniería civil, Ingeniería mecatrónica, Arquitectura \r\n', 6),
(16, 'Psicología, Nutrición, Fonoaudiología, Terapia ocupacional, Medicina, Enfermería, Fisioterapia, Bacteriología\r\n', 7),
(17, 'Biología, Microbiología, Física, Matemáticas, Química \r\n', 8);

CREATE TABLE `modelo` (
  `Id_modelo` int(11) NOT NULL,
  `nom_modelo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `modelo` (`Id_modelo`, `nom_modelo`) VALUES
(1, 'Proyecto de vida '),
(2, 'Orientación vocacional '),
(3, 'Ciencias agrarias'),
(4, 'Artes y humanidades'),
(5, 'Facultad de ciencias de la educación'),
(6, 'Facultad de ingenierías y arquitectura'),
(7, 'Facultad de salud'),
(8, 'Facultad de ciencias básicas');

CREATE TABLE `pregunta` (
  `Id_pregunta` int(11) NOT NULL,
  `pregunta` varchar(160) NOT NULL,
  `PregxIndi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `pregunta` (`Id_pregunta`, `pregunta`, `PregxIndi`) VALUES
(1, '‘Se proyecta hacia una profesión en 10 años?', 1),
(2, '¿Se identifica trabajando en algún establecimiento?', 1),
(3, '¿Quisiera continuar con sus estudios en posteridad?', 1),
(4, '¿Está pensando en adjudicar a alguna entidad educativa?', 1),
(5, '¿Piensa en ingresar a algún instituto militar?', 1),
(6, '¿Después del colegio preferiría trabajar?', 1),
(7, '¿Prefiere las actividades al aire libre?', 2),
(8, '¿Práctica algún deporte?', 2),
(9, '¿Prefiere las canciones suaves a las movidas?', 2),
(10, '¿Dedica parte de su tiempo a leer?', 2),
(11, '¿Piensas dedicar parte de tu tiempo libre a actividades como cocina o culinaria?', 2),
(12, '¿Prefiere la danza antes de la pintura?', 2),
(13, '¿Los juegos de lógica la interesan?', 3),
(14, '¿En su tiempo libre le gusta resolver problemas matemáticos?', 3),
(15, '¿Le gusta realizar ensayos en su asignatura de español?', 3),
(16, '¿Soy bueno (a) en las exposiciones?', 3),
(17, '¿Soy bueno realizando actividades que requieren de coordinación?', 3),
(18, '¿Me gustan los ejercicios que requieren de velocidad y flexibilidad pues considero que soy muy bueno?', 3),
(19, '¿Puedo tocar algún instrumento en mí tiempo libre?', 3),
(20, '¿Prefiero cantar antes de bailar?', 3),
(21, '¿Considero que el ritmo, el tono y la melodía de una canción son importantes?', 3),
(22, '¿Puedo entender las emociones de los demás fácilmente?', 3),
(23, 'Me gusta ponerme en el zapato del otro pues así siento que puedo ayudarlo más', 3),
(24, 'Me considero una persona muy empática con los demás', 3),
(25, 'Conozco mis estados de ánimo y se discernir entre la tristeza y la nostalgia', 3),
(26, 'Considero que tengo conocimiento de lo que soy y quiero ser ', 3),
(27, '¿Cuándo me siento muy triste busco herramientas para que mí estado de ánimo mejore?', 3),
(28, '¿En mí familia las profesiones deben ser las mismas?', 4),
(29, 'Mi familia prefiere que me incline por una carrera del área de la salud', 4),
(30, 'Mis familiares expresan que les gustaría que estudiara una carrera desde el área de artes y humanidades', 4),
(31, 'Mis familiares expresan que debería interesarme por las carreras técnicas o tecnológicas', 4),
(32, 'Mis familiares piensan que las carreras de educación son las más opcionales', 4),
(33, 'Mis familiares prefieren que me dedique a oficios que me permita obtener dinero rápido', 4),
(34, 'Mi familia prefiere profesiones desde el área de la salud', 5),
(35, 'En mí familia lo más importante son las Carreras de ingenierías', 5),
(36, 'En mí familia se prefieren los estudios técnicos o tecnológicos', 5),
(37, 'El estudio universitario es importante para mí familia', 5),
(38, 'Prefiero trabajar a futuro como oficinista', 6),
(39, 'Prefiero el estudio antes que el trabajo', 6),
(40, 'En las actividades de liderazgo me desenvuelvo de manera óptima', 6),
(41, 'Me gusta escuchar y dar mis opiniones acerca de temas sociales', 6),
(42, '¿Trabajaría escribiendo artículos en la sección económica de un diario?', 11),
(43, '¿se ofrecería para organizar fiestas de sus amigos?', 11),
(44, '¿Dirigiría un proyecto de urbanización en la Ciudad u otro lugar?', 11),
(45, '¿Se dedicaría a socorrer a personas en cualquier estado?', 11),
(46, '¿Le interesa saber cómo están construidos los objetos?', 11),
(47, '¿Le interesa el trabajo con la naturaleza?', 11),
(48, '¿Es atento a las problemáticas que suceden en su medio?', 11),
(49, '¿Le gusta explicar a sus compañeros temas de clase que no comprenden?', 11),
(50, '¿Es exigente y crítico con su equipo de trabajo?', 11),
(51, '¿Le atrae armar rompecabezas o puzzles?', 11),
(52, '¿Le interesa la economía o la contabilidad?', 11),
(53, '¿Usar uniforme le hace sentir distinto, importante?', 11),
(54, '¿Preferiría el trabajo con objetos o con personas?', 11),
(55, '¿le atraen los cálculos matemáticos o ciencias exactas?', 11),
(56, '¿Le interesa la agronomía como carrera para estudiar a futuro?', 12),
(57, '¿Tiene conocimientos sobre producción en la actualidad?', 12),
(58, '¿Le gustaría desempeñarse como zootecnista en el futuro?', 12),
(59, '¿se visiona como trabajador del sector productivo?', 12),
(60, '¿Le interesa el trabajo en el campo?', 12),
(61, '¿La naturaleza hace parte de sus intereses?', 12),
(62, '¿Le gustaría trabajar como médico veterinario en el futuro?', 12),
(63, '¿Es su de agrado el trabajo con animales?', 12),
(64, '¿Le interesan las enfermedades o afecciones que presentan los animales?', 12),
(65, '¿Le interesa el bienestar animal?', 12),
(66, '¿El sector agrícola, agrónomo u otro le llaman la atención?', 12),
(67, '¿Le interesa la gestión ambiental?', 12),
(68, '¿Quisiera hacer parte de proyectos de mejoramiento animal?', 12),
(69, '¿Le interesa el tratamiento del suelo y el cultivo?', 12),
(70, '¿Le interesa el aprovechamiento de los recursos del medio?', 12),
(71, '¿Cree que los seres humanos deben basar su vida en valores?', 13),
(72, '¿Está de acuerdo en que los seres humanos deben promover los valores y la solidaridad?', 13),
(73, '¿Piensa que todos los habitantes de este planeta deben ser representantes de la dignidad humana?', 13),
(74, '¿Es más importante la conciencia colectiva que la individual para la toma de decisiones de su contexto?', 13),
(75, '¿Es más importante la conciencia individual que la colectiva para la toma de decisiones en su contexto? ', 13),
(76, '¿La conciencia individual y colectiva tienen la misma importancia para la toma de decisiones en su contexto?', 13),
(77, '¿Se considera bueno en las áreas artísticas?', 13),
(78, '¿Cree usted que es importante la conservación del patrimonio cultural, regional y local en el campo artístico-humanístico?', 13),
(79, '¿Considera que es importante la creación de proyectos sociales para la comunidad de carácter artístico y humanístico?', 13),
(80, '¿Cree que tiene la capacidad para organizar proyectos y actividades novedosas o creativas?', 13),
(81, '¿Tiene interés hacia la investigación?', 13),
(82, '¿Presenta interés y consciencia de los avances científicos con base humanístico que se realizan actualmente?', 13),
(83, '¿Está de acuerdo en que los avances científicos deben contribuir ética y estéticamente a la sociedad?', 13),
(84, '¿Cree que el dialogo en los sectores sociales es importante para mejorar las condiciones y calidad de vida de las comunidades?', 13),
(85, '¿Tiene capacidad para solucionar conflictos que se presentan en su contexto?', 13),
(86, 'Cree usted que tiene deberes éticos con la sociedad y el estado de su país?', 13),
(87, '¿piensa que los valores morales son importantes para la toma de decisiones?', 13),
(88, '¿Para usted la constitución nacional de su país debe ser respetada y cumplida?', 13),
(89, '¿cree que una mentalidad crítica y sensibilidad social dan un aporte significativo para su nación?', 13),
(90, '¿Cree usted que es importante tener conocimientos sobre todas las áreas del saber?', 13),
(91, '¿considera que las escuelas filosóficas dan aportes importantes en la sociedad?', 13),
(92, '¿Cree que es importante que exista una generación que tenga conciencia personal y ciudadana?', 13),
(93, '¿Los seres humanos deberían contribuir a la consolidación, cultivo y respeto por la dignidad de las personas y por el medio ambiente?', 13),
(94, '¿cree que es esencial promover el patrimonio histórico en nuestra sociedad para así fortalecer la identidad local, regional y nacional?', 13),
(95, '¿Posee una excelente redacción y ortografía?', 13),
(96, '¿Tiene usted una buena comprensión lectora?', 13),
(97, '¿Es importante contribuir al mejoramiento constante del arte musical tanto local como regional y nacional?', 13),
(98, '¿Tiene importancia promover y orientar el arte musical?', 13),
(99, '¿El avance científico y al trato humanizante promueve la comprensión a través del arte musical y le da un sentido social y humanitario a la ciencia y ', 13),
(100, '¿Cree usted que es importante la estimulación, el aprendizaje musical, la autoevaluación y la construcción de autoestima, autonomía y responsabilidad?', 13),
(101, '¿Es bueno enseñando?', 14),
(102, '¿Se considera una persona responsable y consciente? ', 14),
(103, '¿Considera que es una persona con valores éticos altos y firmes?', 14),
(104, '¿Es abierto a los cambios que se le presenten?', 14),
(105, '¿Para usted es un tema importante el desarrollo educativo de su país?', 14),
(106, '¿siente interés por aprender nuevos idiomas?', 14),
(107, '¿considera que es importante aprender nuevos idiomas?', 14),
(108, '¿Es bueno en el área de inglés?', 14),
(109, '¿Le gustaría conocer nuevos países?', 14),
(110, '¿Le atrae realizar lectura crítica? ', 14),
(111, '¿Se le facilita la comprensión lectora?', 14),
(112, '¿Le gusta la escritura y ortografía?', 14),
(113, '¿Se considera una persona innovadora?', 14),
(114, '¿Le atrae la investigación de las ciencias sociales y las humanidades?', 14),
(115, '¿Tiene iniciativa por la creación y expansión de la cultura?', 14),
(116, '¿Se considera una persona independiente y racional?', 14),
(117, '¿Le gusta servir a la comunidad?', 14),
(118, '¿Se considera una persona activa o inquieta?', 14),
(119, '¿Le gustan los deportes?', 14),
(120, '¿Le gusta la actividad física?', 14),
(121, '¿Le gusta el baile?', 14),
(122, '¿Tiene la capacidad de autoaprendizaje?', 15),
(123, '¿Se considera una persona de mente abierta?', 15),
(124, '¿Se le facilita trabajar en equipo?', 15),
(125, '¿Es bueno expresando sus ideas?', 15),
(126, '¿Se considera una persona creativa?', 15),
(127, '¿Es una persona innovadora?', 15),
(128, '¿Se considera una persona buena tomando decisiones?', 15),
(129, '¿Es capaz de afrontar las consecuencias de sus decisiones?', 15),
(130, '¿Es capaz de trabajar bajo presión?', 15),
(131, '¿Sabe lidiar con sus emociones?', 15),
(132, '¿Se considera una persona con liderazgo?', 15),
(133, '¿Es una persona minuciosa, con atención a los detalles?', 15),
(134, '¿Cree que es una persona estratégica? ', 15),
(135, '¿Es bueno en matemáticas?', 15),
(136, '¿Considera que tiene amor por la ciencia?', 15),
(137, '¿Es bueno para las diferentes ciencias?', 15),
(138, '¿Es una persona analítica? ', 15),
(139, '¿Se le facilita el análisis de las situaciones?', 15),
(140, '¿Se considera una persona con mente lógica?', 15),
(141, '¿Se toma en serio la educación?', 15),
(142, '¿Le interesa la promoción de la salud?', 16),
(143, '¿Quisiera trabajar en una entidad que preste servicios de salud?', 16),
(144, '¿Le interesa la prevención de enfermedades?', 16),
(145, '¿Le interesan los servicios sociales?', 16),
(146, '¿Le interesa la educación sobre una buena alimentaria?', 16),
(147, '¿Promovería el cambio social?', 16),
(148, '¿Le interesa el conocimiento sobre el ser humano en general?', 16),
(149, '¿Le interesa el estudio de la vida y de la salud?', 16),
(150, '¿Le interesa estudiar la prevalencia de enfermedades en una comunidad?', 16),
(151, '¿Le llama la atención el estudio de la genética y el medio ambiente?', 16),
(152, '¿Le interesan los aspectos psicológicos de un ser humano?', 16),
(153, '¿Le interesaría estudiar las conductas de las personas en sus diferentes ámbitos de vida?', 16),
(154, '¿Le llama la atención el estudio del hombre y su relación con su medio ambiente?', 16),
(155, '¿En un futuro se ve como profesional de la vida alimenticia?', 16),
(156, '¿Se ha interesado por el bienestar de la comunidad?', 16),
(157, '¿Le llama la atención el estudio de los procesos vitales del ser humano?', 16),
(158, '¿Considera interesante estudiar las etapas del desarrollo del individuo?', 16),
(159, '¿Cree que es importante tener una buena vida alimenticia?', 16),
(160, '¿Se interesa por conocer los distintos factores que intervienen en la salud del ser humano?', 16),
(161, '¿Se ve como farmacéutico en un futuro?', 16),
(162, '¿Le interesa el estudio de las propiedades de la materia?', 17),
(163, '¿Hace parte de sus intereses estudiar la tabla periódica?', 17),
(164, '¿Le llaman la atención las reacciones químicas?', 17),
(165, '¿Considera interesantes los cambios en los estados de la materia?', 17),
(166, '¿De acuerdo a su percepción el método científico es interesante?', 17),
(167, '¿Le interesa el comportamiento de la energía?', 17),
(168, '¿Considera importante el estudio de la física?', 17),
(169, '¿Es importante para usted estudiar el tiempo y el espacio?', 17),
(170, '¿Le interesa explicar los fenómenos naturales?', 17),
(171, '¿Estudiaré los cambios físicos en los cuerpos?', 17),
(172, '¿Le interesan los fenómenos que ocurren en el universo?', 17),
(173, '¿Le interesa el razonamiento lógico?', 17),
(174, '¿Son importantes los números en la vida del hombre?', 17),
(175, '¿Le llaman la atención las figuras geométricas?', 17),
(176, '¿Le interesa el uso de símbolos?', 17),
(177, '¿Se considera bueno en la resolución de problemas matemáticos?', 17),
(178, '¿Le interesa el desarrollo de la teoría científica?', 17),
(179, '¿Le interesa la biología?', 17),
(180, '¿Disfruta de los paisajes en su diario vivir?', 17),
(181, '¿Prefiere explicar los fenómenos por método del método científico?', 17);


ALTER TABLE `indicador`
  ADD PRIMARY KEY (`Id_indicador`),
  ADD KEY `indicadorxmodelo` (`indiXmodel`);

ALTER TABLE `modelo`
  ADD PRIMARY KEY (`Id_modelo`);

ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`Id_pregunta`),
  ADD KEY `PreguntaxIndicador` (`PregxIndi`);


ALTER TABLE `pregunta`
  MODIFY `Id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;


ALTER TABLE `indicador`
  ADD CONSTRAINT `indicadorxmodelo` FOREIGN KEY (`indiXmodel`) REFERENCES `modelo` (`Id_modelo`) ON UPDATE CASCADE;

ALTER TABLE `pregunta`
  ADD CONSTRAINT `PreguntaxIndicador` FOREIGN KEY (`PregxIndi`) REFERENCES `indicador` (`Id_indicador`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
