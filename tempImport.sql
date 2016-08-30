-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2016 at 09:03 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a6489641_qui`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `attribute` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` VALUES('jornada', '7');
INSERT INTO `config` VALUES('editable', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `equipos`
--

INSERT INTO `equipos` VALUES(1, 'Pachuca', '', 'pachuca.png');
INSERT INTO `equipos` VALUES(2, 'América', '', 'america.png');
INSERT INTO `equipos` VALUES(3, 'Querétaro', '', 'queretaro.png');
INSERT INTO `equipos` VALUES(4, 'Tijuana', '', 'tijuana.png');
INSERT INTO `equipos` VALUES(5, 'Pumas', '', 'pumas.png');
INSERT INTO `equipos` VALUES(6, 'Toluca', '', 'toluca.png');
INSERT INTO `equipos` VALUES(7, 'Puebla', '', 'puebla.png');
INSERT INTO `equipos` VALUES(8, 'Monterrey', '', 'monterrey.png');
INSERT INTO `equipos` VALUES(9, 'Atlas', '', 'atlas.png');
INSERT INTO `equipos` VALUES(10, 'Tigres', '', 'tigres.png');
INSERT INTO `equipos` VALUES(11, 'Cruz Azul', '', 'cruzazul.png');
INSERT INTO `equipos` VALUES(12, 'Santos', '', 'santos.png');
INSERT INTO `equipos` VALUES(13, 'Necaxa', '', 'necaxa.png');
INSERT INTO `equipos` VALUES(14, 'Guadalajara', '', 'chivas.png');
INSERT INTO `equipos` VALUES(15, 'Jaguares', '', 'jaguares.png');
INSERT INTO `equipos` VALUES(16, 'Veracruz', '', 'veracruz.png');
INSERT INTO `equipos` VALUES(17, 'Morelia', '', 'morelia.png');
INSERT INTO `equipos` VALUES(18, 'León', '', 'leon.png');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `userid` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `image` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` VALUES('1', 'iVBORw0KGgoAAAANSUhEUgAAACMAAAAjCAYAAAAe2bNZAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1MDA1QkYzOTJCNjgxMUU1OTg4NUI1MDM0ODc4QjlGOSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo1MDA1QkYzQTJCNjgxMUU1OTg4NUI1MDM0ODc4QjlGOSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjUwMDVCRjM3MkI2ODExRTU5ODg1QjUwMzQ4NzhCOUY5IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjUwMDVCRjM4MkI2ODExRTU5ODg1QjUwMzQ4NzhCOUY5Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+TrAJtAAABcRJREFUeNrEmGtQE1cUgI+RN1Ly4hUhJqyNryAklpeoVBmrUh2qtoji+4V1xnas1RlRoUP7AztOK4rVWmxtq3YKlGordvzRFts6ahiNWocIovigPERAEYnGJLf33iRLAgkbpNY7c+bsnr33nG/PnpzdG0AIgTMxm54CMpvA1XWbGE1G5d2GO9V4rpJ7rgkMhqcur8NAYe5Xaw5mJClR8bGTB180zFLt+lkoDrsJUoxE5PxFwcTVfbe963cPAZqtkmNPgNauW9eF7bH/N0zsnZ/2PiAgRNJUDIUhsjl7ywNXQM8DZvn1rz5ANpDKpROR7rIW+UjCWKAVq1eZ8bxlzxNGrr97u/zCuhksyLn58ehxawOpFXS1+hriS0JYoDExSqS7WlNO1g0Yxiq+WFIetzUeqt6z0XxqdCgLot3wBjIbnyCz2YzuNTdSoM5HXWjsuBgWiEjmokWmG3W3DhE/Vn8u4w2iRAAjscRgCcRiNOo7Qrvqa1QdusrEtrMVkvbDvwFqMIFtSApWgmLtx/T4dtkuWJu7A0JTMqBop8U2d146lBWXgP0YPykJJk+a0jB58pQzKlW0VigQNGHzYCydWC5juWKj2lVf/gU6+6YaVS6bhE6nKNgMOJP7urM0E7UHcuj566PDaRZWrl5F7SUlPzhkx5nIFJFIEBaE8vI+JEv2EA6eFbzJbHis1x+tg85v/wbDqRboawzy9Ka69deTVAcEBlBd+vOPVIeEhALXuFlzA9obW6Cl9R6B6yA2FsY7OLwV3BxegWILFM+yHNcN1UN8/SyPcajEXVcQrYwid95kD6PzFg+tdmexZzwfvF4SWVM0yFFbh1AocBsmQjrsJlbX7WGqfIOlFz0nirhhwsXA8/Ltc46AHwgiSYhbMJEMcw4rjT3MAy9+SJUPE8G52Ecu611DNm2XIVkEty+ZgoHhjFyLD+/aw9Ds+EilnA58h0VSTRui0fJz73qkp7rjUSeuH9oqYIRiFKcvRiYn6qrt3B7mEl89/hqXA4F6orV4B4P/mDHgl64ABdbgHQix0Srg8SzZSYqL54R5RR1bi9VFNsPWpme5w8brhyvHxS9ALWbn9YJrKuGEFgb7DOEM1NrWBmJR3zV4QXvpiCpmbKazzIBfGFMWOD/J5WJh6msOIHeOfQY1he/D19u3QVpGJmzZupW9JhIKYeqMaS59RanHAgYpczD2eD8IbpV+Wu+q87ZofkG2gV+k6FxGnKUDK6W0q/qHCJHJZGLn7Nu7z2UHfnf9+n9IPPv4vB7A7ZLpS0s8k4S97iRguRrEsdO7f0E8D9yJPeix/xBLsxP4B+Ca6XaZtSYLIobLnWZmy+bs70k8e1tPGPDw5x8UzEjptThsTqYbXQP1siyZv7CXbVrqdAgKEn/Te7mTV3lH3eXiCpGQfTzn356KnA3NovH0enrCSJr68Eip03nMqJcdHlFFxZ/FzuLynN1fgCxqR2jOYvY8OHUuDGRkvrWAPU6bMxuSkyfscDaP52K9hlmRW+Azaxg9aT5eipuc8ZlAuvR6OFJyxBJMxIei/UUFtvbvLgypnW3MprwacvzwwHnQ5a95JpiZaTOhVmfppXs/yr8mFglzXJdc35+dCdW7N7C1g3cE/aqZDRs3sXWSNncOMSX2FY9zx4glW/teGgvU9EdpN8zCRAeYofJumIKdBSyIUhVFTNlcsdyBAfzhXahZnMQCNZ8+SgNWLk92gCGfkmQU7i5kQcJk4eiJwVDoThy3YIgYOu4Vka0JCX4qMgjVH9+PLryTaoGJH0EDR6ujUU5uLgsSHCFBDY3NB9yN4TYMBXrY+rlmyQQKUCEVU7GHsZcIRoZBGvf3x3+/YKybu/xLm9Md3lk9YRImJJJHk99f3/2Gsf37UPtlLgszz1ozdLuSlcX5b8R/DUMkqr3qTNVfyQx6NcyPgpQfP1GF7cpn9TkQGCp4r51/6JM8dKWmbvtAff0rwAAMqT/XnZguzgAAAABJRU5ErkJggg==');
INSERT INTO `images` VALUES('1605242543129802', '/9j/4AAQSkZJRgABAgAAAQABAAD/7QCcUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAIAcAmcAFDBLZFNNR3RTblo0OEZKQS1JTS1UHAIoAGJGQk1EMDEwMDBhYTAwMTAwMDAxZDAyMDAwMGNkMDIwMDAwMWUwMzAwMDA3NjAzMDAwMDc3MDQwMDAwNjUwNTAwMDBhMTA1MDAwMGY2MDUwMDAwNGEwNjAwMDBjNTA3MDAwMP/bAEMABgQFBgUEBgYFBgcHBggKEAoKCQkKFA4PDBAXFBgYFxQWFhodJR8aGyMcFhYgLCAjJicpKikZHy0wLSgwJSgpKP/bAEMBBwcHCggKEwoKEygaFhooKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKP/CABEIADIAMgMAIgABEQECEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAQIDBAYAB//EABgBAAMBAQAAAAAAAAAAAAAAAAIDBAEF/8QAGAEAAwEBAAAAAAAAAAAAAAAAAgMEAQX/2gAMAwAAARECEQAAAbsYeGZpuHLoDPXI8C817BPOezT0ZMeinMwNKPmuAdLnxZfW1wNgkFFaphRoXdHGBdIGW4OkqOC+9jrIix8Af4vXvCC4lZVeemUf/8QAIxAAAgIBBAICAwAAAAAAAAAAAgMBBAAFERMUEiEVJDEyQf/aAAgBAAABBQILrEHGpj3dRum9unWITqadRQxjn7vm+iJGvLoFXDLSLuUycd1HsbvhB+Ks1AjZa+MTObtVlUzlp0xFMOnfgsTlsAi7ALmH2WreumKheo2LQMItcsRh2zMyeMDUEeydrY+aVnej7nJn9uSM16S+WxaWZNiqayOkxpddsYOM/FLB9Or+zV+njGf/xAAdEQACAgMBAQEAAAAAAAAAAAAAAQISAxEhMhNR/9oACAECEQE/AVBN8OKOivT5EMa1030bVtRKIhldGY062RK+RbK5PwRi8Ij6Zs//xAAgEQACAQQBBQAAAAAAAAAAAAAAAQIDERIhMhMiMUFR/9oACAEBEQE/AXU1sSv3DejIcn6En5ZDjdmTKlFdRfGVbKeIpRTNDK3Nk+Jdn//EACgQAAICAQQABgEFAAAAAAAAAAECABESAyExQRATIjIzUQQjYXGRof/aAAgBAAAGPwI6lF/MFZE9x3K3xNNGOmAozFRMiMdSwY44xTOaeoG/RI2e587T1Z6KjiDzPUZd9bS1xzAJGXE1smRbSqB+5grF/wAfT2Wu9p8hi/hZ4oBk5Hc9Gq9/cOn5eYRsQYQvyP6f4+42IOYHOU2O/UvITVdhyoExVnU3dzVXT1DjmZpNrByx9xBoJMAwH7rMHIyqt+J7V/uXye5YSmmbjKj/ALCr7IRyZ5d2p9pE5HHgGHImkV7MrelNkiKUs36ca7gDJuvCjsxmWg3dz2HwHga2mp4cCf/EACQQAQADAQACAgEEAwAAAAAAAAEAESExQVFhcYGhwdHwkbHh/9oACAEAAAE/IbF7lFDksiS0DzkYiHRVrVPyR3o1J/VlCPKfTp/r/MI6uPDaf8j0up+Y6DpF/eXOtOWiX7yNrG6+Emix4OA2ADlHVx/WUxMPomsb+E/IYDtqeJuOGBavxzfXyTByy3KP8IoXw4PP5iwJWgHuBxWu9m1hlJkYPksgBIoPezS/toHlzWB55p3E3sf0nIAHiWb3b+U1COXyVlvgHte/pA1qAGZ0YHllFmbKlaYWm6i7wKn39cOc2frOReBJHoDQk35qFA0WZ7K8S00OefwxYjYTmJptq+RVzNmv2Ba9zYdd2ExWbG39qf/aAAwDAAABEQIRAAAQ/avq6jXAk9TdrgCu/8QAIBEAAgEDBQEBAAAAAAAAAAAAAAERITFBUWGRsfBxof/aAAgBAhEBPxCiFx2DJFwTxwT8xyaTI7U0REUJNwp51SHUvJ+/SIa+hvuGZHt8Op0S1P/EACARAAMAAQQCAwAAAAAAAAAAAAABESExQVFhkcGh0eH/2gAIAQERAT8QRdDmVbG2K5fgSiaC1Ss6T2voqsp1oTTMn6PXeIPWcckOw+d7NA7D/8QAIRABAQACAgIDAQEBAAAAAAAAAREAITFBUWFxgZGhsfD/2gAIAQAAAT8QRQ2AJkCr2LPgwVVzwRB+8v8A1wtJBdEAvRdmt5Q3LkPEDpswnoIki7ChqgI3s6TBFBiTqHeiLfF1m0eClj+Zu9slq3y6eL5za9gMwfJ8acvBa0snHvhyrzgEpREbq/eeBXu1WD2F+iYYo7lqGp3u/wByh2OFNfzAPpExohegnPb8YCCS5B+wwZtahqLo8o19ecUPjk6aDzsHy5DcWpFaof4wO3kLrr87yRA1Td/WOsSVjovPxMpyaB+jhMhyII7R/fHnFTnLoCe7t20MSkxRbPtHh7mLWQ9hRmi8WpngaACB45zakE3ivjqcTxlTNZiB9GCcAoaoIfmK15TxiuLgtPyF516c2KBGTgidaj4T3gULR3AbvvK3KauUAwAvDhZBE7Rt+sNhPISTYX29fObW6WiNiClNjOkwr0vlgKgPfeKmtGRPaGm+sYqSMiY2M4XKStDDeMW2qYyuPlBFpYNvv3no8Vt3LnG1ASacGvL45//Z');

-- --------------------------------------------------------

--
-- Table structure for table `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jornada` int(2) NOT NULL,
  `local` int(2) NOT NULL,
  `visitante` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `juegos`
--

INSERT INTO `juegos` VALUES(2, 1, 5, 6);
INSERT INTO `juegos` VALUES(3, 1, 18, 17);
INSERT INTO `juegos` VALUES(4, 1, 16, 15);
INSERT INTO `juegos` VALUES(5, 1, 18, 17);
INSERT INTO `juegos` VALUES(6, 2, 16, 12);
INSERT INTO `juegos` VALUES(7, 1, 14, 13);
INSERT INTO `juegos` VALUES(8, 1, 12, 11);
INSERT INTO `juegos` VALUES(9, 1, 14, 13);
INSERT INTO `juegos` VALUES(10, 1, 12, 11);
INSERT INTO `juegos` VALUES(12, 1, 8, 7);
INSERT INTO `juegos` VALUES(14, 2, 15, 1);
INSERT INTO `juegos` VALUES(15, 2, 11, 5);
INSERT INTO `juegos` VALUES(16, 2, 17, 3);
INSERT INTO `juegos` VALUES(17, 2, 10, 9);
INSERT INTO `juegos` VALUES(18, 2, 18, 13);
INSERT INTO `juegos` VALUES(19, 2, 6, 2);
INSERT INTO `juegos` VALUES(20, 2, 14, 8);
INSERT INTO `juegos` VALUES(21, 2, 7, 4);
INSERT INTO `juegos` VALUES(22, 4, 16, 2);
INSERT INTO `juegos` VALUES(23, 4, 11, 4);
INSERT INTO `juegos` VALUES(24, 4, 17, 9);
INSERT INTO `juegos` VALUES(25, 4, 10, 15);
INSERT INTO `juegos` VALUES(26, 4, 18, 8);
INSERT INTO `juegos` VALUES(27, 4, 13, 5);
INSERT INTO `juegos` VALUES(28, 4, 14, 3);
INSERT INTO `juegos` VALUES(29, 4, 6, 1);
INSERT INTO `juegos` VALUES(30, 4, 7, 12);
INSERT INTO `juegos` VALUES(31, 5, 4, 18);
INSERT INTO `juegos` VALUES(32, 5, 3, 11);
INSERT INTO `juegos` VALUES(33, 5, 8, 13);
INSERT INTO `juegos` VALUES(34, 5, 9, 7);
INSERT INTO `juegos` VALUES(35, 5, 1, 5);
INSERT INTO `juegos` VALUES(36, 5, 2, 17);
INSERT INTO `juegos` VALUES(37, 5, 6, 10);
INSERT INTO `juegos` VALUES(38, 5, 15, 16);
INSERT INTO `juegos` VALUES(39, 5, 12, 14);
INSERT INTO `juegos` VALUES(40, 6, 11, 12);
INSERT INTO `juegos` VALUES(41, 6, 10, 1);
INSERT INTO `juegos` VALUES(42, 6, 17, 15);
INSERT INTO `juegos` VALUES(43, 6, 18, 3);
INSERT INTO `juegos` VALUES(44, 6, 13, 4);
INSERT INTO `juegos` VALUES(45, 6, 14, 9);
INSERT INTO `juegos` VALUES(46, 6, 5, 8);
INSERT INTO `juegos` VALUES(47, 6, 7, 2);
INSERT INTO `juegos` VALUES(48, 6, 16, 6);
INSERT INTO `juegos` VALUES(49, 7, 4, 5);
INSERT INTO `juegos` VALUES(50, 7, 3, 13);
INSERT INTO `juegos` VALUES(51, 7, 10, 16);
INSERT INTO `juegos` VALUES(52, 7, 9, 11);
INSERT INTO `juegos` VALUES(53, 7, 1, 8);
INSERT INTO `juegos` VALUES(54, 7, 2, 14);
INSERT INTO `juegos` VALUES(55, 7, 6, 17);
INSERT INTO `juegos` VALUES(56, 7, 15, 7);
INSERT INTO `juegos` VALUES(57, 7, 12, 18);

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juego` int(11) NOT NULL,
  `resultado` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `resultados`
--

INSERT INTO `resultados` VALUES(8, 15, 'E');
INSERT INTO `resultados` VALUES(7, 14, 'V');
INSERT INTO `resultados` VALUES(6, 6, 'L');
INSERT INTO `resultados` VALUES(9, 17, 'E');
INSERT INTO `resultados` VALUES(10, 16, 'E');
INSERT INTO `resultados` VALUES(11, 18, 'E');
INSERT INTO `resultados` VALUES(12, 20, 'L');
INSERT INTO `resultados` VALUES(13, 19, 'V');
INSERT INTO `resultados` VALUES(14, 21, 'L');
INSERT INTO `resultados` VALUES(20, 25, 'L');
INSERT INTO `resultados` VALUES(19, 24, 'L');
INSERT INTO `resultados` VALUES(18, 23, 'V');
INSERT INTO `resultados` VALUES(21, 26, 'V');
INSERT INTO `resultados` VALUES(22, 22, 'V');
INSERT INTO `resultados` VALUES(23, 27, 'E');
INSERT INTO `resultados` VALUES(24, 28, 'E');
INSERT INTO `resultados` VALUES(25, 29, 'L');
INSERT INTO `resultados` VALUES(26, 30, 'E');
INSERT INTO `resultados` VALUES(27, 31, 'L');
INSERT INTO `resultados` VALUES(28, 32, 'E');
INSERT INTO `resultados` VALUES(29, 33, 'L');
INSERT INTO `resultados` VALUES(30, 34, 'L');
INSERT INTO `resultados` VALUES(31, 35, 'L');
INSERT INTO `resultados` VALUES(32, 36, 'E');
INSERT INTO `resultados` VALUES(33, 37, 'E');
INSERT INTO `resultados` VALUES(34, 39, 'V');
INSERT INTO `resultados` VALUES(35, 38, 'E');
INSERT INTO `resultados` VALUES(36, 48, 'E');
INSERT INTO `resultados` VALUES(37, 40, 'L');
INSERT INTO `resultados` VALUES(38, 41, 'L');
INSERT INTO `resultados` VALUES(39, 42, 'L');
INSERT INTO `resultados` VALUES(40, 43, 'L');
INSERT INTO `resultados` VALUES(41, 44, 'E');
INSERT INTO `resultados` VALUES(42, 45, 'E');
INSERT INTO `resultados` VALUES(43, 46, 'L');
INSERT INTO `resultados` VALUES(44, 47, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `username` varchar(250) NOT NULL,
  `partido` int(5) NOT NULL,
  `resultado` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2672 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(915, '10210149726849123', 'Cinthia Castañon', 47, 'V');
INSERT INTO `users` VALUES(2032, '10157241912470714', 'Jose Luis Gonzalez', 57, 'L');
INSERT INTO `users` VALUES(2031, '10157241912470714', 'Jose Luis Gonzalez', 56, 'L');
INSERT INTO `users` VALUES(2030, '10157241912470714', 'Jose Luis Gonzalez', 55, 'L');
INSERT INTO `users` VALUES(2029, '10157241912470714', 'Jose Luis Gonzalez', 54, 'L');
INSERT INTO `users` VALUES(2028, '10157241912470714', 'Jose Luis Gonzalez', 53, 'L');
INSERT INTO `users` VALUES(2027, '10157241912470714', 'Jose Luis Gonzalez', 52, 'E');
INSERT INTO `users` VALUES(2026, '10157241912470714', 'Jose Luis Gonzalez', 51, 'L');
INSERT INTO `users` VALUES(1591, '1294273857257430', 'Jose Luis Boeta', 57, 'L');
INSERT INTO `users` VALUES(1590, '1294273857257430', 'Jose Luis Boeta', 56, 'L');
INSERT INTO `users` VALUES(1589, '1294273857257430', 'Jose Luis Boeta', 55, 'L');
INSERT INTO `users` VALUES(1588, '1294273857257430', 'Jose Luis Boeta', 54, 'E');
INSERT INTO `users` VALUES(1587, '1294273857257430', 'Jose Luis Boeta', 53, 'L');
INSERT INTO `users` VALUES(1586, '1294273857257430', 'Jose Luis Boeta', 52, 'E');
INSERT INTO `users` VALUES(1585, '1294273857257430', 'Jose Luis Boeta', 51, 'L');
INSERT INTO `users` VALUES(1584, '1294273857257430', 'Jose Luis Boeta', 50, 'L');
INSERT INTO `users` VALUES(1583, '1294273857257430', 'Jose Luis Boeta', 49, 'E');
INSERT INTO `users` VALUES(18, '10208009048718666', 'Carlos Alberto Lira Castillo', 6, 'E');
INSERT INTO `users` VALUES(19, '10208009048718666', 'Carlos Alberto Lira Castillo', 14, 'V');
INSERT INTO `users` VALUES(20, '10208009048718666', 'Carlos Alberto Lira Castillo', 15, 'L');
INSERT INTO `users` VALUES(21, '10208009048718666', 'Carlos Alberto Lira Castillo', 16, 'E');
INSERT INTO `users` VALUES(22, '10208009048718666', 'Carlos Alberto Lira Castillo', 17, 'L');
INSERT INTO `users` VALUES(23, '10208009048718666', 'Carlos Alberto Lira Castillo', 18, 'L');
INSERT INTO `users` VALUES(24, '10208009048718666', 'Carlos Alberto Lira Castillo', 19, 'V');
INSERT INTO `users` VALUES(25, '10208009048718666', 'Carlos Alberto Lira Castillo', 20, 'V');
INSERT INTO `users` VALUES(26, '10208009048718666', 'Carlos Alberto Lira Castillo', 21, 'L');
INSERT INTO `users` VALUES(159, '1221318554569230', 'Julio GR', 27, 'V');
INSERT INTO `users` VALUES(158, '1221318554569230', 'Julio GR', 26, 'V');
INSERT INTO `users` VALUES(157, '1221318554569230', 'Julio GR', 25, 'L');
INSERT INTO `users` VALUES(156, '1221318554569230', 'Julio GR', 24, 'E');
INSERT INTO `users` VALUES(155, '1221318554569230', 'Julio GR', 23, 'E');
INSERT INTO `users` VALUES(154, '1221318554569230', 'Julio GR', 22, 'V');
INSERT INTO `users` VALUES(228, '514577728735167', 'Raul Rios', 24, 'L');
INSERT INTO `users` VALUES(227, '514577728735167', 'Raul Rios', 23, 'L');
INSERT INTO `users` VALUES(226, '514577728735167', 'Raul Rios', 22, 'V');
INSERT INTO `users` VALUES(1636, '10154353086402838', 'Carlos Lopez', 57, 'E');
INSERT INTO `users` VALUES(1635, '10154353086402838', 'Carlos Lopez', 56, 'E');
INSERT INTO `users` VALUES(1634, '10154353086402838', 'Carlos Lopez', 55, 'V');
INSERT INTO `users` VALUES(1633, '10154353086402838', 'Carlos Lopez', 54, 'L');
INSERT INTO `users` VALUES(1632, '10154353086402838', 'Carlos Lopez', 53, 'L');
INSERT INTO `users` VALUES(1631, '10154353086402838', 'Carlos Lopez', 52, 'V');
INSERT INTO `users` VALUES(1630, '10154353086402838', 'Carlos Lopez', 51, 'L');
INSERT INTO `users` VALUES(1629, '10154353086402838', 'Carlos Lopez', 50, 'V');
INSERT INTO `users` VALUES(1628, '10154353086402838', 'Carlos Lopez', 49, 'L');
INSERT INTO `users` VALUES(62, '10153848462572198', 'Luis Ortega', 21, 'L');
INSERT INTO `users` VALUES(61, '10153848462572198', 'Luis Ortega', 20, 'L');
INSERT INTO `users` VALUES(60, '10153848462572198', 'Luis Ortega', 19, 'V');
INSERT INTO `users` VALUES(59, '10153848462572198', 'Luis Ortega', 18, 'L');
INSERT INTO `users` VALUES(58, '10153848462572198', 'Luis Ortega', 17, 'L');
INSERT INTO `users` VALUES(57, '10153848462572198', 'Luis Ortega', 16, 'L');
INSERT INTO `users` VALUES(56, '10153848462572198', 'Luis Ortega', 15, 'E');
INSERT INTO `users` VALUES(55, '10153848462572198', 'Luis Ortega', 14, 'L');
INSERT INTO `users` VALUES(54, '10153848462572198', 'Luis Ortega', 6, 'E');
INSERT INTO `users` VALUES(63, '1106197956139880', 'Isaias Silva', 6, 'L');
INSERT INTO `users` VALUES(64, '1106197956139880', 'Isaias Silva', 14, 'V');
INSERT INTO `users` VALUES(65, '1106197956139880', 'Isaias Silva', 15, 'E');
INSERT INTO `users` VALUES(66, '1106197956139880', 'Isaias Silva', 16, 'L');
INSERT INTO `users` VALUES(67, '1106197956139880', 'Isaias Silva', 17, 'L');
INSERT INTO `users` VALUES(68, '1106197956139880', 'Isaias Silva', 18, 'L');
INSERT INTO `users` VALUES(69, '1106197956139880', 'Isaias Silva', 19, 'V');
INSERT INTO `users` VALUES(70, '1106197956139880', 'Isaias Silva', 20, 'L');
INSERT INTO `users` VALUES(71, '1106197956139880', 'Isaias Silva', 21, 'L');
INSERT INTO `users` VALUES(2025, '10157241912470714', 'Jose Luis Gonzalez', 50, 'L');
INSERT INTO `users` VALUES(99, '10153814844618358', 'Ale Rivera Mtz', 6, 'V');
INSERT INTO `users` VALUES(100, '10153814844618358', 'Ale Rivera Mtz', 14, 'V');
INSERT INTO `users` VALUES(101, '10153814844618358', 'Ale Rivera Mtz', 15, 'L');
INSERT INTO `users` VALUES(102, '10153814844618358', 'Ale Rivera Mtz', 16, 'L');
INSERT INTO `users` VALUES(103, '10153814844618358', 'Ale Rivera Mtz', 17, 'E');
INSERT INTO `users` VALUES(104, '10153814844618358', 'Ale Rivera Mtz', 18, 'E');
INSERT INTO `users` VALUES(105, '10153814844618358', 'Ale Rivera Mtz', 19, 'L');
INSERT INTO `users` VALUES(106, '10153814844618358', 'Ale Rivera Mtz', 20, 'E');
INSERT INTO `users` VALUES(107, '10153814844618358', 'Ale Rivera Mtz', 21, 'V');
INSERT INTO `users` VALUES(2041, '10210070247543629', 'Saúl Vázquez', 57, 'E');
INSERT INTO `users` VALUES(2040, '10210070247543629', 'Saúl Vázquez', 56, 'E');
INSERT INTO `users` VALUES(2039, '10210070247543629', 'Saúl Vázquez', 55, 'E');
INSERT INTO `users` VALUES(2038, '10210070247543629', 'Saúl Vázquez', 54, 'E');
INSERT INTO `users` VALUES(2037, '10210070247543629', 'Saúl Vázquez', 53, 'L');
INSERT INTO `users` VALUES(2036, '10210070247543629', 'Saúl Vázquez', 52, 'E');
INSERT INTO `users` VALUES(2035, '10210070247543629', 'Saúl Vázquez', 51, 'L');
INSERT INTO `users` VALUES(2034, '10210070247543629', 'Saúl Vázquez', 50, 'L');
INSERT INTO `users` VALUES(2033, '10210070247543629', 'Saúl Vázquez', 49, 'L');
INSERT INTO `users` VALUES(135, '1081999115225518', 'Yolis Herrera', 21, 'V');
INSERT INTO `users` VALUES(134, '1081999115225518', 'Yolis Herrera', 20, 'V');
INSERT INTO `users` VALUES(133, '1081999115225518', 'Yolis Herrera', 19, 'V');
INSERT INTO `users` VALUES(132, '1081999115225518', 'Yolis Herrera', 18, 'V');
INSERT INTO `users` VALUES(131, '1081999115225518', 'Yolis Herrera', 17, 'L');
INSERT INTO `users` VALUES(130, '1081999115225518', 'Yolis Herrera', 16, 'E');
INSERT INTO `users` VALUES(129, '1081999115225518', 'Yolis Herrera', 15, 'L');
INSERT INTO `users` VALUES(128, '1081999115225518', 'Yolis Herrera', 14, 'V');
INSERT INTO `users` VALUES(127, '1081999115225518', 'Yolis Herrera', 6, 'L');
INSERT INTO `users` VALUES(160, '1221318554569230', 'Julio GR', 28, 'E');
INSERT INTO `users` VALUES(161, '1221318554569230', 'Julio GR', 29, 'E');
INSERT INTO `users` VALUES(162, '1221318554569230', 'Julio GR', 30, 'L');
INSERT INTO `users` VALUES(431, '10153797738878354', 'Paco Olivares', 39, 'E');
INSERT INTO `users` VALUES(430, '10153797738878354', 'Paco Olivares', 38, 'L');
INSERT INTO `users` VALUES(429, '10153797738878354', 'Paco Olivares', 37, 'V');
INSERT INTO `users` VALUES(428, '10153797738878354', 'Paco Olivares', 36, 'L');
INSERT INTO `users` VALUES(427, '10153797738878354', 'Paco Olivares', 35, 'L');
INSERT INTO `users` VALUES(426, '10153797738878354', 'Paco Olivares', 34, 'E');
INSERT INTO `users` VALUES(425, '10153797738878354', 'Paco Olivares', 33, 'L');
INSERT INTO `users` VALUES(424, '10153797738878354', 'Paco Olivares', 32, 'E');
INSERT INTO `users` VALUES(423, '10153797738878354', 'Paco Olivares', 31, 'L');
INSERT INTO `users` VALUES(943, '1191963510834773', 'Mi-kay Salas', 48, 'L');
INSERT INTO `users` VALUES(942, '1191963510834773', 'Mi-kay Salas', 47, 'E');
INSERT INTO `users` VALUES(941, '1191963510834773', 'Mi-kay Salas', 46, 'V');
INSERT INTO `users` VALUES(940, '1191963510834773', 'Mi-kay Salas', 45, 'E');
INSERT INTO `users` VALUES(939, '1191963510834773', 'Mi-kay Salas', 44, 'E');
INSERT INTO `users` VALUES(938, '1191963510834773', 'Mi-kay Salas', 43, 'L');
INSERT INTO `users` VALUES(937, '1191963510834773', 'Mi-kay Salas', 42, 'L');
INSERT INTO `users` VALUES(936, '1191963510834773', 'Mi-kay Salas', 41, 'V');
INSERT INTO `users` VALUES(935, '1191963510834773', 'Mi-kay Salas', 40, 'L');
INSERT INTO `users` VALUES(217, '1112605052138060', 'Carlos Garcia', 22, 'V');
INSERT INTO `users` VALUES(218, '1112605052138060', 'Carlos Garcia', 23, 'L');
INSERT INTO `users` VALUES(219, '1112605052138060', 'Carlos Garcia', 24, 'L');
INSERT INTO `users` VALUES(220, '1112605052138060', 'Carlos Garcia', 25, 'L');
INSERT INTO `users` VALUES(221, '1112605052138060', 'Carlos Garcia', 26, 'V');
INSERT INTO `users` VALUES(222, '1112605052138060', 'Carlos Garcia', 27, 'L');
INSERT INTO `users` VALUES(223, '1112605052138060', 'Carlos Garcia', 28, 'E');
INSERT INTO `users` VALUES(224, '1112605052138060', 'Carlos Garcia', 29, 'L');
INSERT INTO `users` VALUES(225, '1112605052138060', 'Carlos Garcia', 30, 'L');
INSERT INTO `users` VALUES(229, '514577728735167', 'Raul Rios', 25, 'L');
INSERT INTO `users` VALUES(230, '514577728735167', 'Raul Rios', 26, 'L');
INSERT INTO `users` VALUES(231, '514577728735167', 'Raul Rios', 27, 'V');
INSERT INTO `users` VALUES(232, '514577728735167', 'Raul Rios', 28, 'L');
INSERT INTO `users` VALUES(233, '514577728735167', 'Raul Rios', 29, 'V');
INSERT INTO `users` VALUES(234, '514577728735167', 'Raul Rios', 30, 'V');
INSERT INTO `users` VALUES(1166, '11110001', 'Isaias Silva', 46, 'L');
INSERT INTO `users` VALUES(1165, '11110001', 'Isaias Silva', 45, 'V');
INSERT INTO `users` VALUES(1164, '11110001', 'Isaias Silva', 44, 'V');
INSERT INTO `users` VALUES(1163, '11110001', 'Isaias Silva', 43, 'E');
INSERT INTO `users` VALUES(1162, '11110001', 'Isaias Silva', 42, 'L');
INSERT INTO `users` VALUES(1161, '11110001', 'Isaias Silva', 41, 'L');
INSERT INTO `users` VALUES(1160, '11110001', 'Isaias Silva', 40, 'L');
INSERT INTO `users` VALUES(2671, '10209357430188588', 'Ivonne Rayadicta', 57, 'E');
INSERT INTO `users` VALUES(1528, '10157242352295023', 'Sandra Ramírez', 57, 'E');
INSERT INTO `users` VALUES(1527, '10157242352295023', 'Sandra Ramírez', 56, 'E');
INSERT INTO `users` VALUES(1526, '10157242352295023', 'Sandra Ramírez', 55, 'E');
INSERT INTO `users` VALUES(1525, '10157242352295023', 'Sandra Ramírez', 54, 'L');
INSERT INTO `users` VALUES(916, '10210149726849123', 'Cinthia Castañon', 48, 'E');
INSERT INTO `users` VALUES(1753, '1567764366859712', 'Arturo Garza', 57, 'L');
INSERT INTO `users` VALUES(1609, '10153644586385064', 'Mayra De Luna', 57, 'E');
INSERT INTO `users` VALUES(1524, '10157242352295023', 'Sandra Ramírez', 53, 'E');
INSERT INTO `users` VALUES(1523, '10157242352295023', 'Sandra Ramírez', 52, 'E');
INSERT INTO `users` VALUES(1522, '10157242352295023', 'Sandra Ramírez', 51, 'L');
INSERT INTO `users` VALUES(1752, '1567764366859712', 'Arturo Garza', 56, 'L');
INSERT INTO `users` VALUES(1751, '1567764366859712', 'Arturo Garza', 55, 'V');
INSERT INTO `users` VALUES(1750, '1567764366859712', 'Arturo Garza', 54, 'L');
INSERT INTO `users` VALUES(1749, '1567764366859712', 'Arturo Garza', 53, 'L');
INSERT INTO `users` VALUES(1748, '1567764366859712', 'Arturo Garza', 52, 'V');
INSERT INTO `users` VALUES(1747, '1567764366859712', 'Arturo Garza', 51, 'L');
INSERT INTO `users` VALUES(1746, '1567764366859712', 'Arturo Garza', 50, 'L');
INSERT INTO `users` VALUES(1745, '1567764366859712', 'Arturo Garza', 49, 'L');
INSERT INTO `users` VALUES(1521, '10157242352295023', 'Sandra Ramírez', 50, 'L');
INSERT INTO `users` VALUES(1608, '10153644586385064', 'Mayra De Luna', 56, 'V');
INSERT INTO `users` VALUES(1607, '10153644586385064', 'Mayra De Luna', 55, 'E');
INSERT INTO `users` VALUES(1606, '10153644586385064', 'Mayra De Luna', 54, 'L');
INSERT INTO `users` VALUES(1605, '10153644586385064', 'Mayra De Luna', 53, 'L');
INSERT INTO `users` VALUES(1604, '10153644586385064', 'Mayra De Luna', 52, 'V');
INSERT INTO `users` VALUES(1603, '10153644586385064', 'Mayra De Luna', 51, 'L');
INSERT INTO `users` VALUES(1602, '10153644586385064', 'Mayra De Luna', 50, 'E');
INSERT INTO `users` VALUES(1601, '10153644586385064', 'Mayra De Luna', 49, 'L');
INSERT INTO `users` VALUES(2104, '10154350348907208', 'Carlos Garcia', 57, 'L');
INSERT INTO `users` VALUES(2103, '10154350348907208', 'Carlos Garcia', 56, 'L');
INSERT INTO `users` VALUES(2102, '10154350348907208', 'Carlos Garcia', 55, 'L');
INSERT INTO `users` VALUES(2101, '10154350348907208', 'Carlos Garcia', 54, 'V');
INSERT INTO `users` VALUES(2100, '10154350348907208', 'Carlos Garcia', 53, 'V');
INSERT INTO `users` VALUES(2099, '10154350348907208', 'Carlos Garcia', 52, 'V');
INSERT INTO `users` VALUES(2098, '10154350348907208', 'Carlos Garcia', 51, 'L');
INSERT INTO `users` VALUES(2097, '10154350348907208', 'Carlos Garcia', 50, 'V');
INSERT INTO `users` VALUES(2096, '10154350348907208', 'Carlos Garcia', 49, 'L');
INSERT INTO `users` VALUES(1987, '10209314882326424', 'Laura Torres', 57, 'V');
INSERT INTO `users` VALUES(1986, '10209314882326424', 'Laura Torres', 56, 'E');
INSERT INTO `users` VALUES(1985, '10209314882326424', 'Laura Torres', 55, 'V');
INSERT INTO `users` VALUES(1984, '10209314882326424', 'Laura Torres', 54, 'L');
INSERT INTO `users` VALUES(1983, '10209314882326424', 'Laura Torres', 53, 'E');
INSERT INTO `users` VALUES(1982, '10209314882326424', 'Laura Torres', 52, 'E');
INSERT INTO `users` VALUES(1981, '10209314882326424', 'Laura Torres', 51, 'L');
INSERT INTO `users` VALUES(1980, '10209314882326424', 'Laura Torres', 50, 'E');
INSERT INTO `users` VALUES(1979, '10209314882326424', 'Laura Torres', 49, 'L');
INSERT INTO `users` VALUES(1582, '1282468041795940', 'Martha Laura Gomez', 57, 'L');
INSERT INTO `users` VALUES(1581, '1282468041795940', 'Martha Laura Gomez', 56, 'L');
INSERT INTO `users` VALUES(1580, '1282468041795940', 'Martha Laura Gomez', 55, 'L');
INSERT INTO `users` VALUES(1579, '1282468041795940', 'Martha Laura Gomez', 54, 'L');
INSERT INTO `users` VALUES(1578, '1282468041795940', 'Martha Laura Gomez', 53, 'L');
INSERT INTO `users` VALUES(1577, '1282468041795940', 'Martha Laura Gomez', 52, 'V');
INSERT INTO `users` VALUES(1576, '1282468041795940', 'Martha Laura Gomez', 51, 'L');
INSERT INTO `users` VALUES(1575, '1282468041795940', 'Martha Laura Gomez', 50, 'E');
INSERT INTO `users` VALUES(1574, '1282468041795940', 'Martha Laura Gomez', 49, 'V');
INSERT INTO `users` VALUES(1618, '10153596504540356', 'Nestor Mendoza', 57, 'E');
INSERT INTO `users` VALUES(1617, '10153596504540356', 'Nestor Mendoza', 56, 'E');
INSERT INTO `users` VALUES(1616, '10153596504540356', 'Nestor Mendoza', 55, 'L');
INSERT INTO `users` VALUES(1615, '10153596504540356', 'Nestor Mendoza', 54, 'L');
INSERT INTO `users` VALUES(1614, '10153596504540356', 'Nestor Mendoza', 53, 'L');
INSERT INTO `users` VALUES(1613, '10153596504540356', 'Nestor Mendoza', 52, 'E');
INSERT INTO `users` VALUES(1612, '10153596504540356', 'Nestor Mendoza', 51, 'L');
INSERT INTO `users` VALUES(1611, '10153596504540356', 'Nestor Mendoza', 50, 'L');
INSERT INTO `users` VALUES(1610, '10153596504540356', 'Nestor Mendoza', 49, 'L');
INSERT INTO `users` VALUES(1933, '1108622539199661', 'Lizzita Vzz', 57, 'E');
INSERT INTO `users` VALUES(1932, '1108622539199661', 'Lizzita Vzz', 56, 'V');
INSERT INTO `users` VALUES(1931, '1108622539199661', 'Lizzita Vzz', 55, 'L');
INSERT INTO `users` VALUES(1930, '1108622539199661', 'Lizzita Vzz', 54, 'L');
INSERT INTO `users` VALUES(1929, '1108622539199661', 'Lizzita Vzz', 53, 'L');
INSERT INTO `users` VALUES(1928, '1108622539199661', 'Lizzita Vzz', 52, 'L');
INSERT INTO `users` VALUES(1927, '1108622539199661', 'Lizzita Vzz', 51, 'L');
INSERT INTO `users` VALUES(1926, '1108622539199661', 'Lizzita Vzz', 50, 'V');
INSERT INTO `users` VALUES(1925, '1108622539199661', 'Lizzita Vzz', 49, 'E');
INSERT INTO `users` VALUES(1520, '10157242352295023', 'Sandra Ramírez', 49, 'L');
INSERT INTO `users` VALUES(531, '10153632208390738', 'Laura Gb', 31, 'L');
INSERT INTO `users` VALUES(532, '10153632208390738', 'Laura Gb', 32, 'L');
INSERT INTO `users` VALUES(533, '10153632208390738', 'Laura Gb', 33, 'L');
INSERT INTO `users` VALUES(534, '10153632208390738', 'Laura Gb', 34, 'E');
INSERT INTO `users` VALUES(535, '10153632208390738', 'Laura Gb', 35, 'E');
INSERT INTO `users` VALUES(536, '10153632208390738', 'Laura Gb', 36, 'L');
INSERT INTO `users` VALUES(537, '10153632208390738', 'Laura Gb', 37, 'V');
INSERT INTO `users` VALUES(538, '10153632208390738', 'Laura Gb', 38, 'L');
INSERT INTO `users` VALUES(539, '10153632208390738', 'Laura Gb', 39, 'E');
INSERT INTO `users` VALUES(2670, '10209357430188588', 'Ivonne Rayadicta', 56, 'L');
INSERT INTO `users` VALUES(2669, '10209357430188588', 'Ivonne Rayadicta', 55, 'L');
INSERT INTO `users` VALUES(2668, '10209357430188588', 'Ivonne Rayadicta', 54, 'L');
INSERT INTO `users` VALUES(2667, '10209357430188588', 'Ivonne Rayadicta', 53, 'V');
INSERT INTO `users` VALUES(2666, '10209357430188588', 'Ivonne Rayadicta', 52, 'E');
INSERT INTO `users` VALUES(2665, '10209357430188588', 'Ivonne Rayadicta', 51, 'L');
INSERT INTO `users` VALUES(2664, '10209357430188588', 'Ivonne Rayadicta', 50, 'L');
INSERT INTO `users` VALUES(2663, '10209357430188588', 'Ivonne Rayadicta', 49, 'L');
INSERT INTO `users` VALUES(2059, '1134997743190471', 'Yady Torres Nilo', 57, 'V');
INSERT INTO `users` VALUES(2058, '1134997743190471', 'Yady Torres Nilo', 56, 'L');
INSERT INTO `users` VALUES(2057, '1134997743190471', 'Yady Torres Nilo', 55, 'V');
INSERT INTO `users` VALUES(2056, '1134997743190471', 'Yady Torres Nilo', 54, 'L');
INSERT INTO `users` VALUES(2055, '1134997743190471', 'Yady Torres Nilo', 53, 'L');
INSERT INTO `users` VALUES(2054, '1134997743190471', 'Yady Torres Nilo', 52, 'E');
INSERT INTO `users` VALUES(2053, '1134997743190471', 'Yady Torres Nilo', 51, 'L');
INSERT INTO `users` VALUES(2052, '1134997743190471', 'Yady Torres Nilo', 50, 'L');
INSERT INTO `users` VALUES(2051, '1134997743190471', 'Yady Torres Nilo', 49, 'L');
INSERT INTO `users` VALUES(1978, '10153701777910868', 'Erick Rodriguez', 57, 'E');
INSERT INTO `users` VALUES(1977, '10153701777910868', 'Erick Rodriguez', 56, 'V');
INSERT INTO `users` VALUES(1976, '10153701777910868', 'Erick Rodriguez', 55, 'L');
INSERT INTO `users` VALUES(1975, '10153701777910868', 'Erick Rodriguez', 54, 'E');
INSERT INTO `users` VALUES(1974, '10153701777910868', 'Erick Rodriguez', 53, 'L');
INSERT INTO `users` VALUES(1973, '10153701777910868', 'Erick Rodriguez', 52, 'E');
INSERT INTO `users` VALUES(1972, '10153701777910868', 'Erick Rodriguez', 51, 'L');
INSERT INTO `users` VALUES(1971, '10153701777910868', 'Erick Rodriguez', 50, 'V');
INSERT INTO `users` VALUES(1970, '10153701777910868', 'Erick Rodriguez', 49, 'L');
INSERT INTO `users` VALUES(1546, '10206773496159273', 'Ley Didi', 57, 'V');
INSERT INTO `users` VALUES(1545, '10206773496159273', 'Ley Didi', 56, 'V');
INSERT INTO `users` VALUES(1544, '10206773496159273', 'Ley Didi', 55, 'L');
INSERT INTO `users` VALUES(1543, '10206773496159273', 'Ley Didi', 54, 'L');
INSERT INTO `users` VALUES(1542, '10206773496159273', 'Ley Didi', 53, 'L');
INSERT INTO `users` VALUES(1541, '10206773496159273', 'Ley Didi', 52, 'V');
INSERT INTO `users` VALUES(1540, '10206773496159273', 'Ley Didi', 51, 'L');
INSERT INTO `users` VALUES(1539, '10206773496159273', 'Ley Didi', 50, 'L');
INSERT INTO `users` VALUES(1538, '10206773496159273', 'Ley Didi', 49, 'L');
INSERT INTO `users` VALUES(630, '10209178213884953', 'Victor Chavez Rodriguez', 31, 'V');
INSERT INTO `users` VALUES(631, '10209178213884953', 'Victor Chavez Rodriguez', 32, 'V');
INSERT INTO `users` VALUES(632, '10209178213884953', 'Victor Chavez Rodriguez', 33, 'L');
INSERT INTO `users` VALUES(633, '10209178213884953', 'Victor Chavez Rodriguez', 34, 'V');
INSERT INTO `users` VALUES(634, '10209178213884953', 'Victor Chavez Rodriguez', 35, 'L');
INSERT INTO `users` VALUES(635, '10209178213884953', 'Victor Chavez Rodriguez', 36, 'L');
INSERT INTO `users` VALUES(636, '10209178213884953', 'Victor Chavez Rodriguez', 37, 'V');
INSERT INTO `users` VALUES(637, '10209178213884953', 'Victor Chavez Rodriguez', 38, 'E');
INSERT INTO `users` VALUES(638, '10209178213884953', 'Victor Chavez Rodriguez', 39, 'L');
INSERT INTO `users` VALUES(648, '1394360403913878', 'Emma Aguirre-Saldaña', 31, 'L');
INSERT INTO `users` VALUES(649, '1394360403913878', 'Emma Aguirre-Saldaña', 32, 'E');
INSERT INTO `users` VALUES(650, '1394360403913878', 'Emma Aguirre-Saldaña', 33, 'E');
INSERT INTO `users` VALUES(651, '1394360403913878', 'Emma Aguirre-Saldaña', 34, 'E');
INSERT INTO `users` VALUES(652, '1394360403913878', 'Emma Aguirre-Saldaña', 35, 'L');
INSERT INTO `users` VALUES(653, '1394360403913878', 'Emma Aguirre-Saldaña', 36, 'L');
INSERT INTO `users` VALUES(654, '1394360403913878', 'Emma Aguirre-Saldaña', 37, 'V');
INSERT INTO `users` VALUES(655, '1394360403913878', 'Emma Aguirre-Saldaña', 38, 'L');
INSERT INTO `users` VALUES(656, '1394360403913878', 'Emma Aguirre-Saldaña', 39, 'V');
INSERT INTO `users` VALUES(914, '10210149726849123', 'Cinthia Castañon', 46, 'V');
INSERT INTO `users` VALUES(913, '10210149726849123', 'Cinthia Castañon', 45, 'E');
INSERT INTO `users` VALUES(912, '10210149726849123', 'Cinthia Castañon', 44, 'V');
INSERT INTO `users` VALUES(911, '10210149726849123', 'Cinthia Castañon', 43, 'V');
INSERT INTO `users` VALUES(910, '10210149726849123', 'Cinthia Castañon', 42, 'L');
INSERT INTO `users` VALUES(909, '10210149726849123', 'Cinthia Castañon', 41, 'L');
INSERT INTO `users` VALUES(908, '10210149726849123', 'Cinthia Castañon', 40, 'L');
INSERT INTO `users` VALUES(2024, '10157241912470714', 'Jose Luis Gonzalez', 49, 'L');
INSERT INTO `users` VALUES(1951, '1680747495580926', 'Ventasfor Tampico', 57, 'E');
INSERT INTO `users` VALUES(1950, '1680747495580926', 'Ventasfor Tampico', 56, 'L');
INSERT INTO `users` VALUES(1949, '1680747495580926', 'Ventasfor Tampico', 55, 'E');
INSERT INTO `users` VALUES(1948, '1680747495580926', 'Ventasfor Tampico', 54, 'E');
INSERT INTO `users` VALUES(1947, '1680747495580926', 'Ventasfor Tampico', 53, 'L');
INSERT INTO `users` VALUES(1946, '1680747495580926', 'Ventasfor Tampico', 52, 'E');
INSERT INTO `users` VALUES(1945, '1680747495580926', 'Ventasfor Tampico', 51, 'L');
INSERT INTO `users` VALUES(1944, '1680747495580926', 'Ventasfor Tampico', 50, 'L');
INSERT INTO `users` VALUES(1943, '1680747495580926', 'Ventasfor Tampico', 49, 'L');
INSERT INTO `users` VALUES(1167, '11110001', 'Isaias Silva', 47, 'L');
INSERT INTO `users` VALUES(1168, '11110001', 'Isaias Silva', 48, 'L');
INSERT INTO `users` VALUES(1169, '11121001', 'Sra Anita(1)', 40, 'L');
INSERT INTO `users` VALUES(1170, '11121001', 'Sra Anita(1)', 41, 'L');
INSERT INTO `users` VALUES(1171, '11121001', 'Sra Anita(1)', 42, 'E');
INSERT INTO `users` VALUES(1172, '11121001', 'Sra Anita(1)', 43, 'V');
INSERT INTO `users` VALUES(1173, '11121001', 'Sra Anita(1)', 44, 'E');
INSERT INTO `users` VALUES(1174, '11121001', 'Sra Anita(1)', 45, 'V');
INSERT INTO `users` VALUES(1175, '11121001', 'Sra Anita(1)', 46, 'E');
INSERT INTO `users` VALUES(1176, '11121001', 'Sra Anita(1)', 47, 'V');
INSERT INTO `users` VALUES(1177, '11121001', 'Sra Anita(1)', 48, 'L');
INSERT INTO `users` VALUES(1204, '11110002', 'Fidel Arriaga DHL 1', 48, 'E');
INSERT INTO `users` VALUES(1203, '11110002', 'Fidel Arriaga DHL 1', 47, 'V');
INSERT INTO `users` VALUES(1202, '11110002', 'Fidel Arriaga DHL 1', 46, 'V');
INSERT INTO `users` VALUES(1201, '11110002', 'Fidel Arriaga DHL 1', 45, 'L');
INSERT INTO `users` VALUES(1200, '11110002', 'Fidel Arriaga DHL 1', 44, 'V');
INSERT INTO `users` VALUES(1199, '11110002', 'Fidel Arriaga DHL 1', 43, 'L');
INSERT INTO `users` VALUES(1198, '11110002', 'Fidel Arriaga DHL 1', 42, 'L');
INSERT INTO `users` VALUES(1197, '11110002', 'Fidel Arriaga DHL 1', 41, 'L');
INSERT INTO `users` VALUES(1196, '11110002', 'Fidel Arriaga DHL 1', 40, 'L');
INSERT INTO `users` VALUES(1205, '11121002', 'Sra Anita(2)', 40, 'V');
INSERT INTO `users` VALUES(1206, '11121002', 'Sra Anita(2)', 41, 'V');
INSERT INTO `users` VALUES(1207, '11121002', 'Sra Anita(2)', 42, 'L');
INSERT INTO `users` VALUES(1208, '11121002', 'Sra Anita(2)', 43, 'L');
INSERT INTO `users` VALUES(1209, '11121002', 'Sra Anita(2)', 44, 'V');
INSERT INTO `users` VALUES(1210, '11121002', 'Sra Anita(2)', 45, 'L');
INSERT INTO `users` VALUES(1211, '11121002', 'Sra Anita(2)', 46, 'V');
INSERT INTO `users` VALUES(1212, '11121002', 'Sra Anita(2)', 47, 'E');
INSERT INTO `users` VALUES(1213, '11121002', 'Sra Anita(2)', 48, 'V');
INSERT INTO `users` VALUES(1214, '11121003', 'Ralfy DHL', 40, 'L');
INSERT INTO `users` VALUES(1215, '11121003', 'Ralfy DHL', 41, 'L');
INSERT INTO `users` VALUES(1216, '11121003', 'Ralfy DHL', 42, 'V');
INSERT INTO `users` VALUES(1217, '11121003', 'Ralfy DHL', 43, 'L');
INSERT INTO `users` VALUES(1218, '11121003', 'Ralfy DHL', 44, 'V');
INSERT INTO `users` VALUES(1219, '11121003', 'Ralfy DHL', 45, 'V');
INSERT INTO `users` VALUES(1220, '11121003', 'Ralfy DHL', 46, 'L');
INSERT INTO `users` VALUES(1221, '11121003', 'Ralfy DHL', 47, 'V');
INSERT INTO `users` VALUES(1222, '11121003', 'Ralfy DHL', 48, 'V');
INSERT INTO `users` VALUES(1223, '11110003', 'Fidel Arriaga DHL 2', 40, 'E');
INSERT INTO `users` VALUES(1224, '11110003', 'Fidel Arriaga DHL 2', 41, 'L');
INSERT INTO `users` VALUES(1225, '11110003', 'Fidel Arriaga DHL 2', 42, 'V');
INSERT INTO `users` VALUES(1226, '11110003', 'Fidel Arriaga DHL 2', 43, 'L');
INSERT INTO `users` VALUES(1227, '11110003', 'Fidel Arriaga DHL 2', 44, 'L');
INSERT INTO `users` VALUES(1228, '11110003', 'Fidel Arriaga DHL 2', 45, 'V');
INSERT INTO `users` VALUES(1229, '11110003', 'Fidel Arriaga DHL 2', 46, 'V');
INSERT INTO `users` VALUES(1230, '11110003', 'Fidel Arriaga DHL 2', 47, 'L');
INSERT INTO `users` VALUES(1231, '11110003', 'Fidel Arriaga DHL 2', 48, 'L');
INSERT INTO `users` VALUES(1232, '11121004', 'Ramon DHL', 40, 'L');
INSERT INTO `users` VALUES(1233, '11121004', 'Ramon DHL', 41, 'L');
INSERT INTO `users` VALUES(1234, '11121004', 'Ramon DHL', 42, 'E');
INSERT INTO `users` VALUES(1235, '11121004', 'Ramon DHL', 43, 'L');
INSERT INTO `users` VALUES(1236, '11121004', 'Ramon DHL', 44, 'E');
INSERT INTO `users` VALUES(1237, '11121004', 'Ramon DHL', 45, 'E');
INSERT INTO `users` VALUES(1238, '11121004', 'Ramon DHL', 46, 'L');
INSERT INTO `users` VALUES(1239, '11121004', 'Ramon DHL', 47, 'V');
INSERT INTO `users` VALUES(1240, '11121004', 'Ramon DHL', 48, 'E');
INSERT INTO `users` VALUES(1268, '11121005', 'Parra', 40, 'E');
INSERT INTO `users` VALUES(1269, '11121005', 'Parra', 41, 'L');
INSERT INTO `users` VALUES(1270, '11121005', 'Parra', 42, 'E');
INSERT INTO `users` VALUES(1271, '11121005', 'Parra', 43, 'L');
INSERT INTO `users` VALUES(1272, '11121005', 'Parra', 44, 'V');
INSERT INTO `users` VALUES(1273, '11121005', 'Parra', 45, 'L');
INSERT INTO `users` VALUES(1274, '11121005', 'Parra', 46, 'L');
INSERT INTO `users` VALUES(1275, '11121005', 'Parra', 47, 'V');
INSERT INTO `users` VALUES(1276, '11121005', 'Parra', 48, 'L');
INSERT INTO `users` VALUES(1277, '11121006', 'Edmundo Lopez', 40, 'L');
INSERT INTO `users` VALUES(1278, '11121006', 'Edmundo Lopez', 41, 'V');
INSERT INTO `users` VALUES(1279, '11121006', 'Edmundo Lopez', 42, 'L');
INSERT INTO `users` VALUES(1280, '11121006', 'Edmundo Lopez', 43, 'V');
INSERT INTO `users` VALUES(1281, '11121006', 'Edmundo Lopez', 44, 'L');
INSERT INTO `users` VALUES(1282, '11121006', 'Edmundo Lopez', 45, 'V');
INSERT INTO `users` VALUES(1283, '11121006', 'Edmundo Lopez', 46, 'V');
INSERT INTO `users` VALUES(1284, '11121006', 'Edmundo Lopez', 47, 'E');
INSERT INTO `users` VALUES(1285, '11121006', 'Edmundo Lopez', 48, 'E');
INSERT INTO `users` VALUES(1286, '11121007', 'Reyna Bernabel', 40, 'V');
INSERT INTO `users` VALUES(1287, '11121007', 'Reyna Bernabel', 41, 'E');
INSERT INTO `users` VALUES(1288, '11121007', 'Reyna Bernabel', 42, 'L');
INSERT INTO `users` VALUES(1289, '11121007', 'Reyna Bernabel', 43, 'L');
INSERT INTO `users` VALUES(1290, '11121007', 'Reyna Bernabel', 44, 'V');
INSERT INTO `users` VALUES(1291, '11121007', 'Reyna Bernabel', 45, 'E');
INSERT INTO `users` VALUES(1292, '11121007', 'Reyna Bernabel', 46, 'E');
INSERT INTO `users` VALUES(1293, '11121007', 'Reyna Bernabel', 47, 'V');
INSERT INTO `users` VALUES(1294, '11121007', 'Reyna Bernabel', 48, 'V');
INSERT INTO `users` VALUES(1295, '11121008', 'Marlene Galván', 40, 'L');
INSERT INTO `users` VALUES(1296, '11121008', 'Marlene Galván', 41, 'L');
INSERT INTO `users` VALUES(1297, '11121008', 'Marlene Galván', 42, 'E');
INSERT INTO `users` VALUES(1298, '11121008', 'Marlene Galván', 43, 'L');
INSERT INTO `users` VALUES(1299, '11121008', 'Marlene Galván', 44, 'V');
INSERT INTO `users` VALUES(1300, '11121008', 'Marlene Galván', 45, 'E');
INSERT INTO `users` VALUES(1301, '11121008', 'Marlene Galván', 46, 'V');
INSERT INTO `users` VALUES(1302, '11121008', 'Marlene Galván', 47, 'V');
INSERT INTO `users` VALUES(1303, '11121008', 'Marlene Galván', 48, 'E');
INSERT INTO `users` VALUES(1304, '11121009', 'Lucy', 40, 'L');
INSERT INTO `users` VALUES(1305, '11121009', 'Lucy', 41, 'L');
INSERT INTO `users` VALUES(1306, '11121009', 'Lucy', 42, 'V');
INSERT INTO `users` VALUES(1307, '11121009', 'Lucy', 43, 'V');
INSERT INTO `users` VALUES(1308, '11121009', 'Lucy', 44, 'L');
INSERT INTO `users` VALUES(1309, '11121009', 'Lucy', 45, 'V');
INSERT INTO `users` VALUES(1310, '11121009', 'Lucy', 46, 'L');
INSERT INTO `users` VALUES(1311, '11121009', 'Lucy', 47, 'L');
INSERT INTO `users` VALUES(1312, '11121009', 'Lucy', 48, 'E');
INSERT INTO `users` VALUES(1313, '11121010', 'Kandy', 40, 'L');
INSERT INTO `users` VALUES(1314, '11121010', 'Kandy', 41, 'L');
INSERT INTO `users` VALUES(1315, '11121010', 'Kandy', 42, 'L');
INSERT INTO `users` VALUES(1316, '11121010', 'Kandy', 43, 'L');
INSERT INTO `users` VALUES(1317, '11121010', 'Kandy', 44, 'V');
INSERT INTO `users` VALUES(1318, '11121010', 'Kandy', 45, 'E');
INSERT INTO `users` VALUES(1319, '11121010', 'Kandy', 46, 'L');
INSERT INTO `users` VALUES(1320, '11121010', 'Kandy', 47, 'V');
INSERT INTO `users` VALUES(1321, '11121010', 'Kandy', 48, 'E');
INSERT INTO `users` VALUES(1322, '11121011', 'Chuy Vega', 40, 'L');
INSERT INTO `users` VALUES(1323, '11121011', 'Chuy Vega', 41, 'E');
INSERT INTO `users` VALUES(1324, '11121011', 'Chuy Vega', 42, 'L');
INSERT INTO `users` VALUES(1325, '11121011', 'Chuy Vega', 43, 'E');
INSERT INTO `users` VALUES(1326, '11121011', 'Chuy Vega', 44, 'E');
INSERT INTO `users` VALUES(1327, '11121011', 'Chuy Vega', 45, 'L');
INSERT INTO `users` VALUES(1328, '11121011', 'Chuy Vega', 46, 'E');
INSERT INTO `users` VALUES(1329, '11121011', 'Chuy Vega', 47, 'V');
INSERT INTO `users` VALUES(1330, '11121011', 'Chuy Vega', 48, 'V');
INSERT INTO `users` VALUES(1331, '11121012', 'Ronaldo Obregon', 40, 'L');
INSERT INTO `users` VALUES(1332, '11121012', 'Ronaldo Obregon', 41, 'L');
INSERT INTO `users` VALUES(1333, '11121012', 'Ronaldo Obregon', 42, 'E');
INSERT INTO `users` VALUES(1334, '11121012', 'Ronaldo Obregon', 43, 'L');
INSERT INTO `users` VALUES(1335, '11121012', 'Ronaldo Obregon', 44, 'V');
INSERT INTO `users` VALUES(1336, '11121012', 'Ronaldo Obregon', 45, 'L');
INSERT INTO `users` VALUES(1337, '11121012', 'Ronaldo Obregon', 46, 'L');
INSERT INTO `users` VALUES(1338, '11121012', 'Ronaldo Obregon', 47, 'V');
INSERT INTO `users` VALUES(1339, '11121012', 'Ronaldo Obregon', 48, 'L');
INSERT INTO `users` VALUES(1340, '11121013', 'Susano Gurrero', 40, 'V');
INSERT INTO `users` VALUES(1341, '11121013', 'Susano Gurrero', 41, 'L');
INSERT INTO `users` VALUES(1342, '11121013', 'Susano Gurrero', 42, 'L');
INSERT INTO `users` VALUES(1343, '11121013', 'Susano Gurrero', 43, 'L');
INSERT INTO `users` VALUES(1344, '11121013', 'Susano Gurrero', 44, 'V');
INSERT INTO `users` VALUES(1345, '11121013', 'Susano Gurrero', 45, 'L');
INSERT INTO `users` VALUES(1346, '11121013', 'Susano Gurrero', 46, 'L');
INSERT INTO `users` VALUES(1347, '11121013', 'Susano Gurrero', 47, 'V');
INSERT INTO `users` VALUES(1348, '11121013', 'Susano Gurrero', 48, 'V');
INSERT INTO `users` VALUES(1349, '11121014', 'Alessandro Arriaga', 40, 'L');
INSERT INTO `users` VALUES(1350, '11121014', 'Alessandro Arriaga', 41, 'L');
INSERT INTO `users` VALUES(1351, '11121014', 'Alessandro Arriaga', 42, 'L');
INSERT INTO `users` VALUES(1352, '11121014', 'Alessandro Arriaga', 43, 'E');
INSERT INTO `users` VALUES(1353, '11121014', 'Alessandro Arriaga', 44, 'E');
INSERT INTO `users` VALUES(1354, '11121014', 'Alessandro Arriaga', 45, 'E');
INSERT INTO `users` VALUES(1355, '11121014', 'Alessandro Arriaga', 46, 'V');
INSERT INTO `users` VALUES(1356, '11121014', 'Alessandro Arriaga', 47, 'V');
INSERT INTO `users` VALUES(1357, '11121014', 'Alessandro Arriaga', 48, 'L');
INSERT INTO `users` VALUES(1375, '11110100', 'Carlos Cristerna', 48, 'L');
INSERT INTO `users` VALUES(1374, '11110100', 'Carlos Cristerna', 47, 'E');
INSERT INTO `users` VALUES(1373, '11110100', 'Carlos Cristerna', 46, 'E');
INSERT INTO `users` VALUES(1372, '11110100', 'Carlos Cristerna', 45, 'V');
INSERT INTO `users` VALUES(1371, '11110100', 'Carlos Cristerna', 44, 'L');
INSERT INTO `users` VALUES(1370, '11110100', 'Carlos Cristerna', 43, 'E');
INSERT INTO `users` VALUES(1369, '11110100', 'Carlos Cristerna', 42, 'L');
INSERT INTO `users` VALUES(1368, '11110100', 'Carlos Cristerna', 41, 'L');
INSERT INTO `users` VALUES(1367, '11110100', 'Carlos Cristerna', 40, 'V');
INSERT INTO `users` VALUES(1376, '11110101', 'Arturo Sanchez', 40, 'L');
INSERT INTO `users` VALUES(1377, '11110101', 'Arturo Sanchez', 41, 'E');
INSERT INTO `users` VALUES(1378, '11110101', 'Arturo Sanchez', 42, 'L');
INSERT INTO `users` VALUES(1379, '11110101', 'Arturo Sanchez', 43, 'L');
INSERT INTO `users` VALUES(1380, '11110101', 'Arturo Sanchez', 44, 'V');
INSERT INTO `users` VALUES(1381, '11110101', 'Arturo Sanchez', 45, 'L');
INSERT INTO `users` VALUES(1382, '11110101', 'Arturo Sanchez', 46, 'V');
INSERT INTO `users` VALUES(1383, '11110101', 'Arturo Sanchez', 47, 'V');
INSERT INTO `users` VALUES(1384, '11110101', 'Arturo Sanchez', 48, 'L');
INSERT INTO `users` VALUES(1385, '11110102', 'Julio Cesar', 40, 'L');
INSERT INTO `users` VALUES(1386, '11110102', 'Julio Cesar', 41, 'L');
INSERT INTO `users` VALUES(1387, '11110102', 'Julio Cesar', 42, 'L');
INSERT INTO `users` VALUES(1388, '11110102', 'Julio Cesar', 43, 'L');
INSERT INTO `users` VALUES(1389, '11110102', 'Julio Cesar', 44, 'L');
INSERT INTO `users` VALUES(1390, '11110102', 'Julio Cesar', 45, 'L');
INSERT INTO `users` VALUES(1391, '11110102', 'Julio Cesar', 46, 'L');
INSERT INTO `users` VALUES(1392, '11110102', 'Julio Cesar', 47, 'V');
INSERT INTO `users` VALUES(1393, '11110102', 'Julio Cesar', 48, 'L');
INSERT INTO `users` VALUES(1394, '11110103', 'Marco Gonzalez', 40, 'L');
INSERT INTO `users` VALUES(1395, '11110103', 'Marco Gonzalez', 41, 'L');
INSERT INTO `users` VALUES(1396, '11110103', 'Marco Gonzalez', 42, 'E');
INSERT INTO `users` VALUES(1397, '11110103', 'Marco Gonzalez', 43, 'E');
INSERT INTO `users` VALUES(1398, '11110103', 'Marco Gonzalez', 44, 'L');
INSERT INTO `users` VALUES(1399, '11110103', 'Marco Gonzalez', 45, 'E');
INSERT INTO `users` VALUES(1400, '11110103', 'Marco Gonzalez', 46, 'L');
INSERT INTO `users` VALUES(1401, '11110103', 'Marco Gonzalez', 47, 'V');
INSERT INTO `users` VALUES(1402, '11110103', 'Marco Gonzalez', 48, 'L');
INSERT INTO `users` VALUES(1403, '11110104', 'Cristobal', 40, 'V');
INSERT INTO `users` VALUES(1404, '11110104', 'Cristobal', 41, 'L');
INSERT INTO `users` VALUES(1405, '11110104', 'Cristobal', 42, 'L');
INSERT INTO `users` VALUES(1406, '11110104', 'Cristobal', 43, 'E');
INSERT INTO `users` VALUES(1407, '11110104', 'Cristobal', 44, 'V');
INSERT INTO `users` VALUES(1408, '11110104', 'Cristobal', 45, 'L');
INSERT INTO `users` VALUES(1409, '11110104', 'Cristobal', 46, 'V');
INSERT INTO `users` VALUES(1410, '11110104', 'Cristobal', 47, 'V');
INSERT INTO `users` VALUES(1411, '11110104', 'Cristobal', 48, 'L');
INSERT INTO `users` VALUES(1412, '11110106', 'Lalo Garcia', 40, 'L');
INSERT INTO `users` VALUES(1413, '11110106', 'Lalo Garcia', 41, 'V');
INSERT INTO `users` VALUES(1414, '11110106', 'Lalo Garcia', 42, 'E');
INSERT INTO `users` VALUES(1415, '11110106', 'Lalo Garcia', 43, 'L');
INSERT INTO `users` VALUES(1416, '11110106', 'Lalo Garcia', 44, 'E');
INSERT INTO `users` VALUES(1417, '11110106', 'Lalo Garcia', 45, 'L');
INSERT INTO `users` VALUES(1418, '11110106', 'Lalo Garcia', 46, 'V');
INSERT INTO `users` VALUES(1419, '11110106', 'Lalo Garcia', 47, 'E');
INSERT INTO `users` VALUES(1420, '11110106', 'Lalo Garcia', 48, 'V');
INSERT INTO `users` VALUES(1421, '11110107', 'Hugo Sanchez', 40, 'L');
INSERT INTO `users` VALUES(1422, '11110107', 'Hugo Sanchez', 41, 'L');
INSERT INTO `users` VALUES(1423, '11110107', 'Hugo Sanchez', 42, 'E');
INSERT INTO `users` VALUES(1424, '11110107', 'Hugo Sanchez', 43, 'V');
INSERT INTO `users` VALUES(1425, '11110107', 'Hugo Sanchez', 44, 'E');
INSERT INTO `users` VALUES(1426, '11110107', 'Hugo Sanchez', 45, 'V');
INSERT INTO `users` VALUES(1427, '11110107', 'Hugo Sanchez', 46, 'E');
INSERT INTO `users` VALUES(1428, '11110107', 'Hugo Sanchez', 47, 'L');
INSERT INTO `users` VALUES(1429, '11110107', 'Hugo Sanchez', 48, 'L');
INSERT INTO `users` VALUES(1466, '11110105', 'Saul Morales', 40, 'L');
INSERT INTO `users` VALUES(1467, '11110105', 'Saul Morales', 41, 'L');
INSERT INTO `users` VALUES(1468, '11110105', 'Saul Morales', 42, 'L');
INSERT INTO `users` VALUES(1469, '11110105', 'Saul Morales', 43, 'L');
INSERT INTO `users` VALUES(1470, '11110105', 'Saul Morales', 44, 'L');
INSERT INTO `users` VALUES(1471, '11110105', 'Saul Morales', 45, 'E');
INSERT INTO `users` VALUES(1472, '11110105', 'Saul Morales', 46, 'E');
INSERT INTO `users` VALUES(1473, '11110105', 'Saul Morales', 47, 'V');
INSERT INTO `users` VALUES(1474, '11110105', 'Saul Morales', 48, 'E');
INSERT INTO `users` VALUES(1475, '11110108', 'Hugo de La Rosa', 40, 'L');
INSERT INTO `users` VALUES(1476, '11110108', 'Hugo de La Rosa', 41, 'L');
INSERT INTO `users` VALUES(1477, '11110108', 'Hugo de La Rosa', 42, 'L');
INSERT INTO `users` VALUES(1478, '11110108', 'Hugo de La Rosa', 43, 'L');
INSERT INTO `users` VALUES(1479, '11110108', 'Hugo de La Rosa', 44, 'V');
INSERT INTO `users` VALUES(1480, '11110108', 'Hugo de La Rosa', 45, 'E');
INSERT INTO `users` VALUES(1481, '11110108', 'Hugo de La Rosa', 46, 'V');
INSERT INTO `users` VALUES(1482, '11110108', 'Hugo de La Rosa', 47, 'V');
INSERT INTO `users` VALUES(1483, '11110108', 'Hugo de La Rosa', 48, 'L');
INSERT INTO `users` VALUES(1501, '10206537351741940', 'Fidel Garza', 48, 'V');
INSERT INTO `users` VALUES(1500, '10206537351741940', 'Fidel Garza', 47, 'V');
INSERT INTO `users` VALUES(1499, '10206537351741940', 'Fidel Garza', 46, 'L');
INSERT INTO `users` VALUES(1498, '10206537351741940', 'Fidel Garza', 45, 'V');
INSERT INTO `users` VALUES(1497, '10206537351741940', 'Fidel Garza', 44, 'L');
INSERT INTO `users` VALUES(1496, '10206537351741940', 'Fidel Garza', 43, 'L');
INSERT INTO `users` VALUES(1495, '10206537351741940', 'Fidel Garza', 42, 'L');
INSERT INTO `users` VALUES(1494, '10206537351741940', 'Fidel Garza', 41, 'L');
INSERT INTO `users` VALUES(1493, '10206537351741940', 'Fidel Garza', 40, 'E');
INSERT INTO `users` VALUES(2617, '1605242543129802', 'Fernando Valero', 57, 'L');
INSERT INTO `users` VALUES(2616, '1605242543129802', 'Fernando Valero', 56, 'E');
INSERT INTO `users` VALUES(2615, '1605242543129802', 'Fernando Valero', 55, 'L');
INSERT INTO `users` VALUES(2614, '1605242543129802', 'Fernando Valero', 54, 'L');
INSERT INTO `users` VALUES(2613, '1605242543129802', 'Fernando Valero', 53, 'L');
INSERT INTO `users` VALUES(2612, '1605242543129802', 'Fernando Valero', 52, 'E');
INSERT INTO `users` VALUES(2611, '1605242543129802', 'Fernando Valero', 51, 'L');
INSERT INTO `users` VALUES(2610, '1605242543129802', 'Fernando Valero', 50, 'L');
INSERT INTO `users` VALUES(2609, '1605242543129802', 'Fernando Valero', 49, 'L');
INSERT INTO `users` VALUES(1654, '1137851796282472', 'Alfredo De la Rosa', 57, 'E');
INSERT INTO `users` VALUES(1653, '1137851796282472', 'Alfredo De la Rosa', 56, 'L');
INSERT INTO `users` VALUES(1652, '1137851796282472', 'Alfredo De la Rosa', 55, 'E');
INSERT INTO `users` VALUES(1651, '1137851796282472', 'Alfredo De la Rosa', 54, 'L');
INSERT INTO `users` VALUES(1650, '1137851796282472', 'Alfredo De la Rosa', 53, 'L');
INSERT INTO `users` VALUES(1649, '1137851796282472', 'Alfredo De la Rosa', 52, 'E');
INSERT INTO `users` VALUES(1648, '1137851796282472', 'Alfredo De la Rosa', 51, 'L');
INSERT INTO `users` VALUES(1647, '1137851796282472', 'Alfredo De la Rosa', 50, 'L');
INSERT INTO `users` VALUES(1646, '1137851796282472', 'Alfredo De la Rosa', 49, 'E');
INSERT INTO `users` VALUES(1673, '1151192374942071', 'Alessandro Arriaga', 49, 'L');
INSERT INTO `users` VALUES(1674, '1151192374942071', 'Alessandro Arriaga', 50, 'L');
INSERT INTO `users` VALUES(1675, '1151192374942071', 'Alessandro Arriaga', 51, 'L');
INSERT INTO `users` VALUES(1676, '1151192374942071', 'Alessandro Arriaga', 52, 'E');
INSERT INTO `users` VALUES(1677, '1151192374942071', 'Alessandro Arriaga', 53, 'V');
INSERT INTO `users` VALUES(1678, '1151192374942071', 'Alessandro Arriaga', 54, 'L');
INSERT INTO `users` VALUES(1679, '1151192374942071', 'Alessandro Arriaga', 55, 'E');
INSERT INTO `users` VALUES(1680, '1151192374942071', 'Alessandro Arriaga', 56, 'V');
INSERT INTO `users` VALUES(1681, '1151192374942071', 'Alessandro Arriaga', 57, 'E');
INSERT INTO `users` VALUES(1699, '10208867196932425', 'Saul Ivan Morales Garcia', 57, 'L');
INSERT INTO `users` VALUES(1698, '10208867196932425', 'Saul Ivan Morales Garcia', 56, 'E');
INSERT INTO `users` VALUES(1697, '10208867196932425', 'Saul Ivan Morales Garcia', 55, 'L');
INSERT INTO `users` VALUES(1696, '10208867196932425', 'Saul Ivan Morales Garcia', 54, 'E');
INSERT INTO `users` VALUES(1695, '10208867196932425', 'Saul Ivan Morales Garcia', 53, 'L');
INSERT INTO `users` VALUES(1694, '10208867196932425', 'Saul Ivan Morales Garcia', 52, 'E');
INSERT INTO `users` VALUES(1693, '10208867196932425', 'Saul Ivan Morales Garcia', 51, 'L');
INSERT INTO `users` VALUES(1692, '10208867196932425', 'Saul Ivan Morales Garcia', 50, 'L');
INSERT INTO `users` VALUES(1691, '10208867196932425', 'Saul Ivan Morales Garcia', 49, 'L');
INSERT INTO `users` VALUES(1735, '1769537303327194', 'Mely Castañeda', 57, 'L');
INSERT INTO `users` VALUES(1734, '1769537303327194', 'Mely Castañeda', 56, 'L');
INSERT INTO `users` VALUES(1733, '1769537303327194', 'Mely Castañeda', 55, 'L');
INSERT INTO `users` VALUES(1732, '1769537303327194', 'Mely Castañeda', 54, 'L');
INSERT INTO `users` VALUES(1731, '1769537303327194', 'Mely Castañeda', 53, 'L');
INSERT INTO `users` VALUES(1730, '1769537303327194', 'Mely Castañeda', 52, 'L');
INSERT INTO `users` VALUES(1729, '1769537303327194', 'Mely Castañeda', 51, 'E');
INSERT INTO `users` VALUES(1728, '1769537303327194', 'Mely Castañeda', 50, 'E');
INSERT INTO `users` VALUES(1727, '1769537303327194', 'Mely Castañeda', 49, 'L');
INSERT INTO `users` VALUES(1915, '1178061575586364', 'Roberto Barrientos Reyes', 57, 'V');
INSERT INTO `users` VALUES(1914, '1178061575586364', 'Roberto Barrientos Reyes', 56, 'V');
INSERT INTO `users` VALUES(1913, '1178061575586364', 'Roberto Barrientos Reyes', 55, 'L');
INSERT INTO `users` VALUES(1912, '1178061575586364', 'Roberto Barrientos Reyes', 54, 'L');
INSERT INTO `users` VALUES(1911, '1178061575586364', 'Roberto Barrientos Reyes', 53, 'L');
INSERT INTO `users` VALUES(1910, '1178061575586364', 'Roberto Barrientos Reyes', 52, 'V');
INSERT INTO `users` VALUES(1909, '1178061575586364', 'Roberto Barrientos Reyes', 51, 'L');
INSERT INTO `users` VALUES(1908, '1178061575586364', 'Roberto Barrientos Reyes', 50, 'L');
INSERT INTO `users` VALUES(1907, '1178061575586364', 'Roberto Barrientos Reyes', 49, 'L');
INSERT INTO `users` VALUES(2194, '10205044810840247', 'Pablo Lari', 57, 'L');
INSERT INTO `users` VALUES(2193, '10205044810840247', 'Pablo Lari', 56, 'L');
INSERT INTO `users` VALUES(2192, '10205044810840247', 'Pablo Lari', 55, 'L');
INSERT INTO `users` VALUES(2191, '10205044810840247', 'Pablo Lari', 54, 'L');
INSERT INTO `users` VALUES(2190, '10205044810840247', 'Pablo Lari', 53, 'L');
INSERT INTO `users` VALUES(2189, '10205044810840247', 'Pablo Lari', 52, 'E');
INSERT INTO `users` VALUES(2188, '10205044810840247', 'Pablo Lari', 51, 'L');
INSERT INTO `users` VALUES(2187, '10205044810840247', 'Pablo Lari', 50, 'L');
INSERT INTO `users` VALUES(2186, '10205044810840247', 'Pablo Lari', 49, 'L');
INSERT INTO `users` VALUES(2478, '10154436177357812', 'Moreno\\\\\\\\', 53, 'L');
INSERT INTO `users` VALUES(2477, '10154436177357812', 'Moreno\\\\\\\\', 52, 'E');
INSERT INTO `users` VALUES(2476, '10154436177357812', 'Moreno\\\\\\\\', 51, 'L');
INSERT INTO `users` VALUES(2475, '10154436177357812', 'Moreno\\\\\\\\', 50, 'E');
INSERT INTO `users` VALUES(2474, '10154436177357812', 'Moreno\\\\\\\\', 49, 'L');
INSERT INTO `users` VALUES(2077, '10153920282812683', 'Luis Miranda', 57, 'E');
INSERT INTO `users` VALUES(2076, '10153920282812683', 'Luis Miranda', 56, 'V');
INSERT INTO `users` VALUES(2075, '10153920282812683', 'Luis Miranda', 55, 'V');
INSERT INTO `users` VALUES(2074, '10153920282812683', 'Luis Miranda', 54, 'E');
INSERT INTO `users` VALUES(2073, '10153920282812683', 'Luis Miranda', 53, 'L');
INSERT INTO `users` VALUES(2072, '10153920282812683', 'Luis Miranda', 52, 'L');
INSERT INTO `users` VALUES(2071, '10153920282812683', 'Luis Miranda', 51, 'L');
INSERT INTO `users` VALUES(2070, '10153920282812683', 'Luis Miranda', 50, 'E');
INSERT INTO `users` VALUES(2069, '10153920282812683', 'Luis Miranda', 49, 'L');
INSERT INTO `users` VALUES(2221, '10157271846300507', 'Raul Ibanez', 57, 'L');
INSERT INTO `users` VALUES(2220, '10157271846300507', 'Raul Ibanez', 56, 'V');
INSERT INTO `users` VALUES(2219, '10157271846300507', 'Raul Ibanez', 55, 'V');
INSERT INTO `users` VALUES(2218, '10157271846300507', 'Raul Ibanez', 54, 'E');
INSERT INTO `users` VALUES(2217, '10157271846300507', 'Raul Ibanez', 53, 'E');
INSERT INTO `users` VALUES(2216, '10157271846300507', 'Raul Ibanez', 52, 'E');
INSERT INTO `users` VALUES(2215, '10157271846300507', 'Raul Ibanez', 51, 'L');
INSERT INTO `users` VALUES(2214, '10157271846300507', 'Raul Ibanez', 50, 'E');
INSERT INTO `users` VALUES(2213, '10157271846300507', 'Raul Ibanez', 49, 'L');
INSERT INTO `users` VALUES(2222, '2016082601', 'Hugo de la Rosa', 49, 'L');
INSERT INTO `users` VALUES(2223, '2016082601', 'Hugo de la Rosa', 50, 'L');
INSERT INTO `users` VALUES(2224, '2016082601', 'Hugo de la Rosa', 51, 'L');
INSERT INTO `users` VALUES(2225, '2016082601', 'Hugo de la Rosa', 52, 'L');
INSERT INTO `users` VALUES(2226, '2016082601', 'Hugo de la Rosa', 53, 'L');
INSERT INTO `users` VALUES(2227, '2016082601', 'Hugo de la Rosa', 54, 'L');
INSERT INTO `users` VALUES(2228, '2016082601', 'Hugo de la Rosa', 55, 'E');
INSERT INTO `users` VALUES(2229, '2016082601', 'Hugo de la Rosa', 56, 'L');
INSERT INTO `users` VALUES(2230, '2016082601', 'Hugo de la Rosa', 57, 'E');
INSERT INTO `users` VALUES(2231, '2016082650', 'Tobal', 49, 'L');
INSERT INTO `users` VALUES(2232, '2016082650', 'Tobal', 50, 'L');
INSERT INTO `users` VALUES(2233, '2016082650', 'Tobal', 51, 'L');
INSERT INTO `users` VALUES(2234, '2016082650', 'Tobal', 52, 'L');
INSERT INTO `users` VALUES(2235, '2016082650', 'Tobal', 53, 'L');
INSERT INTO `users` VALUES(2236, '2016082650', 'Tobal', 54, 'L');
INSERT INTO `users` VALUES(2237, '2016082650', 'Tobal', 55, 'V');
INSERT INTO `users` VALUES(2238, '2016082650', 'Tobal', 56, 'L');
INSERT INTO `users` VALUES(2239, '2016082650', 'Tobal', 57, 'L');
INSERT INTO `users` VALUES(2240, '2016082602', 'Gilgardo', 49, 'L');
INSERT INTO `users` VALUES(2241, '2016082602', 'Gilgardo', 50, 'E');
INSERT INTO `users` VALUES(2242, '2016082602', 'Gilgardo', 51, 'L');
INSERT INTO `users` VALUES(2243, '2016082602', 'Gilgardo', 52, 'L');
INSERT INTO `users` VALUES(2244, '2016082602', 'Gilgardo', 53, 'V');
INSERT INTO `users` VALUES(2245, '2016082602', 'Gilgardo', 54, 'L');
INSERT INTO `users` VALUES(2246, '2016082602', 'Gilgardo', 55, 'L');
INSERT INTO `users` VALUES(2247, '2016082602', 'Gilgardo', 56, 'E');
INSERT INTO `users` VALUES(2248, '2016082602', 'Gilgardo', 57, 'L');
INSERT INTO `users` VALUES(2249, '2016082603', 'Hugo Sanchez', 49, 'V');
INSERT INTO `users` VALUES(2250, '2016082603', 'Hugo Sanchez', 50, 'L');
INSERT INTO `users` VALUES(2251, '2016082603', 'Hugo Sanchez', 51, 'L');
INSERT INTO `users` VALUES(2252, '2016082603', 'Hugo Sanchez', 52, 'E');
INSERT INTO `users` VALUES(2253, '2016082603', 'Hugo Sanchez', 53, 'L');
INSERT INTO `users` VALUES(2254, '2016082603', 'Hugo Sanchez', 54, 'E');
INSERT INTO `users` VALUES(2255, '2016082603', 'Hugo Sanchez', 55, 'L');
INSERT INTO `users` VALUES(2256, '2016082603', 'Hugo Sanchez', 56, 'L');
INSERT INTO `users` VALUES(2257, '2016082603', 'Hugo Sanchez', 57, 'V');
INSERT INTO `users` VALUES(2258, '2016082651', 'La Mazter', 49, 'L');
INSERT INTO `users` VALUES(2259, '2016082651', 'La Mazter', 50, 'E');
INSERT INTO `users` VALUES(2260, '2016082651', 'La Mazter', 51, 'L');
INSERT INTO `users` VALUES(2261, '2016082651', 'La Mazter', 52, 'E');
INSERT INTO `users` VALUES(2262, '2016082651', 'La Mazter', 53, 'L');
INSERT INTO `users` VALUES(2263, '2016082651', 'La Mazter', 54, 'L');
INSERT INTO `users` VALUES(2264, '2016082651', 'La Mazter', 55, 'L');
INSERT INTO `users` VALUES(2265, '2016082651', 'La Mazter', 56, 'E');
INSERT INTO `users` VALUES(2266, '2016082651', 'La Mazter', 57, 'L');
INSERT INTO `users` VALUES(2267, '2016082604', 'Kandy', 49, 'L');
INSERT INTO `users` VALUES(2268, '2016082604', 'Kandy', 50, 'L');
INSERT INTO `users` VALUES(2269, '2016082604', 'Kandy', 51, 'L');
INSERT INTO `users` VALUES(2270, '2016082604', 'Kandy', 52, 'E');
INSERT INTO `users` VALUES(2271, '2016082604', 'Kandy', 53, 'L');
INSERT INTO `users` VALUES(2272, '2016082604', 'Kandy', 54, 'L');
INSERT INTO `users` VALUES(2273, '2016082604', 'Kandy', 55, 'L');
INSERT INTO `users` VALUES(2274, '2016082604', 'Kandy', 56, 'E');
INSERT INTO `users` VALUES(2275, '2016082604', 'Kandy', 57, 'E');
INSERT INTO `users` VALUES(2276, '2016082605', 'Mauricio Scott', 49, 'L');
INSERT INTO `users` VALUES(2277, '2016082605', 'Mauricio Scott', 50, 'L');
INSERT INTO `users` VALUES(2278, '2016082605', 'Mauricio Scott', 51, 'L');
INSERT INTO `users` VALUES(2279, '2016082605', 'Mauricio Scott', 52, 'E');
INSERT INTO `users` VALUES(2280, '2016082605', 'Mauricio Scott', 53, 'V');
INSERT INTO `users` VALUES(2281, '2016082605', 'Mauricio Scott', 54, 'L');
INSERT INTO `users` VALUES(2282, '2016082605', 'Mauricio Scott', 55, 'E');
INSERT INTO `users` VALUES(2283, '2016082605', 'Mauricio Scott', 56, 'L');
INSERT INTO `users` VALUES(2284, '2016082605', 'Mauricio Scott', 57, 'L');
INSERT INTO `users` VALUES(2285, '2016082606', 'Antonio Rodriguez', 49, 'L');
INSERT INTO `users` VALUES(2286, '2016082606', 'Antonio Rodriguez', 50, 'L');
INSERT INTO `users` VALUES(2287, '2016082606', 'Antonio Rodriguez', 51, 'L');
INSERT INTO `users` VALUES(2288, '2016082606', 'Antonio Rodriguez', 52, 'E');
INSERT INTO `users` VALUES(2289, '2016082606', 'Antonio Rodriguez', 53, 'L');
INSERT INTO `users` VALUES(2290, '2016082606', 'Antonio Rodriguez', 54, 'L');
INSERT INTO `users` VALUES(2291, '2016082606', 'Antonio Rodriguez', 55, 'L');
INSERT INTO `users` VALUES(2292, '2016082606', 'Antonio Rodriguez', 56, 'E');
INSERT INTO `users` VALUES(2293, '2016082606', 'Antonio Rodriguez', 57, 'E');
INSERT INTO `users` VALUES(2294, '2016082652', 'Susano', 49, 'V');
INSERT INTO `users` VALUES(2295, '2016082652', 'Susano', 50, 'L');
INSERT INTO `users` VALUES(2296, '2016082652', 'Susano', 51, 'L');
INSERT INTO `users` VALUES(2297, '2016082652', 'Susano', 52, 'V');
INSERT INTO `users` VALUES(2298, '2016082652', 'Susano', 53, 'L');
INSERT INTO `users` VALUES(2299, '2016082652', 'Susano', 54, 'L');
INSERT INTO `users` VALUES(2300, '2016082652', 'Susano', 55, 'L');
INSERT INTO `users` VALUES(2301, '2016082652', 'Susano', 56, 'L');
INSERT INTO `users` VALUES(2302, '2016082652', 'Susano', 57, 'V');
INSERT INTO `users` VALUES(2303, '2016082607', 'Edgar Montañez', 49, 'L');
INSERT INTO `users` VALUES(2304, '2016082607', 'Edgar Montañez', 50, 'L');
INSERT INTO `users` VALUES(2305, '2016082607', 'Edgar Montañez', 51, 'L');
INSERT INTO `users` VALUES(2306, '2016082607', 'Edgar Montañez', 52, 'V');
INSERT INTO `users` VALUES(2307, '2016082607', 'Edgar Montañez', 53, 'L');
INSERT INTO `users` VALUES(2308, '2016082607', 'Edgar Montañez', 54, 'E');
INSERT INTO `users` VALUES(2309, '2016082607', 'Edgar Montañez', 55, 'L');
INSERT INTO `users` VALUES(2310, '2016082607', 'Edgar Montañez', 56, 'L');
INSERT INTO `users` VALUES(2311, '2016082607', 'Edgar Montañez', 57, 'L');
INSERT INTO `users` VALUES(2312, '2016082653', 'Brenda Garza', 49, 'E');
INSERT INTO `users` VALUES(2313, '2016082653', 'Brenda Garza', 50, 'L');
INSERT INTO `users` VALUES(2314, '2016082653', 'Brenda Garza', 51, 'L');
INSERT INTO `users` VALUES(2315, '2016082653', 'Brenda Garza', 52, 'V');
INSERT INTO `users` VALUES(2316, '2016082653', 'Brenda Garza', 53, 'L');
INSERT INTO `users` VALUES(2317, '2016082653', 'Brenda Garza', 54, 'L');
INSERT INTO `users` VALUES(2318, '2016082653', 'Brenda Garza', 55, 'V');
INSERT INTO `users` VALUES(2319, '2016082653', 'Brenda Garza', 56, 'V');
INSERT INTO `users` VALUES(2320, '2016082653', 'Brenda Garza', 57, 'L');
INSERT INTO `users` VALUES(2321, '2016082608', 'Juan Antonio Rodriguez', 49, 'E');
INSERT INTO `users` VALUES(2322, '2016082608', 'Juan Antonio Rodriguez', 50, 'L');
INSERT INTO `users` VALUES(2323, '2016082608', 'Juan Antonio Rodriguez', 51, 'L');
INSERT INTO `users` VALUES(2324, '2016082608', 'Juan Antonio Rodriguez', 52, 'V');
INSERT INTO `users` VALUES(2325, '2016082608', 'Juan Antonio Rodriguez', 53, 'L');
INSERT INTO `users` VALUES(2326, '2016082608', 'Juan Antonio Rodriguez', 54, 'L');
INSERT INTO `users` VALUES(2327, '2016082608', 'Juan Antonio Rodriguez', 55, 'L');
INSERT INTO `users` VALUES(2328, '2016082608', 'Juan Antonio Rodriguez', 56, 'E');
INSERT INTO `users` VALUES(2329, '2016082608', 'Juan Antonio Rodriguez', 57, 'E');
INSERT INTO `users` VALUES(2330, '2016082609', 'Marlene Galvan', 49, 'E');
INSERT INTO `users` VALUES(2331, '2016082609', 'Marlene Galvan', 50, 'E');
INSERT INTO `users` VALUES(2332, '2016082609', 'Marlene Galvan', 51, 'L');
INSERT INTO `users` VALUES(2333, '2016082609', 'Marlene Galvan', 52, 'E');
INSERT INTO `users` VALUES(2334, '2016082609', 'Marlene Galvan', 53, 'E');
INSERT INTO `users` VALUES(2335, '2016082609', 'Marlene Galvan', 54, 'E');
INSERT INTO `users` VALUES(2336, '2016082609', 'Marlene Galvan', 55, 'L');
INSERT INTO `users` VALUES(2337, '2016082609', 'Marlene Galvan', 56, 'E');
INSERT INTO `users` VALUES(2338, '2016082609', 'Marlene Galvan', 57, 'L');
INSERT INTO `users` VALUES(2339, '2016082654', 'Juan Perez', 49, 'E');
INSERT INTO `users` VALUES(2340, '2016082654', 'Juan Perez', 50, 'L');
INSERT INTO `users` VALUES(2341, '2016082654', 'Juan Perez', 51, 'L');
INSERT INTO `users` VALUES(2342, '2016082654', 'Juan Perez', 52, 'E');
INSERT INTO `users` VALUES(2343, '2016082654', 'Juan Perez', 53, 'L');
INSERT INTO `users` VALUES(2344, '2016082654', 'Juan Perez', 54, 'L');
INSERT INTO `users` VALUES(2345, '2016082654', 'Juan Perez', 55, 'E');
INSERT INTO `users` VALUES(2346, '2016082654', 'Juan Perez', 56, 'E');
INSERT INTO `users` VALUES(2347, '2016082654', 'Juan Perez', 57, 'L');
INSERT INTO `users` VALUES(2348, '2016082610', 'Julio Cesar L', 49, 'L');
INSERT INTO `users` VALUES(2349, '2016082610', 'Julio Cesar L', 50, 'L');
INSERT INTO `users` VALUES(2350, '2016082610', 'Julio Cesar L', 51, 'L');
INSERT INTO `users` VALUES(2351, '2016082610', 'Julio Cesar L', 52, 'L');
INSERT INTO `users` VALUES(2352, '2016082610', 'Julio Cesar L', 53, 'L');
INSERT INTO `users` VALUES(2353, '2016082610', 'Julio Cesar L', 54, 'L');
INSERT INTO `users` VALUES(2354, '2016082610', 'Julio Cesar L', 55, 'E');
INSERT INTO `users` VALUES(2355, '2016082610', 'Julio Cesar L', 56, 'L');
INSERT INTO `users` VALUES(2356, '2016082610', 'Julio Cesar L', 57, 'E');
INSERT INTO `users` VALUES(2357, '2016082611', 'Sergio Mendez', 49, 'E');
INSERT INTO `users` VALUES(2358, '2016082611', 'Sergio Mendez', 50, 'L');
INSERT INTO `users` VALUES(2359, '2016082611', 'Sergio Mendez', 51, 'L');
INSERT INTO `users` VALUES(2360, '2016082611', 'Sergio Mendez', 52, 'E');
INSERT INTO `users` VALUES(2361, '2016082611', 'Sergio Mendez', 53, 'E');
INSERT INTO `users` VALUES(2362, '2016082611', 'Sergio Mendez', 54, 'L');
INSERT INTO `users` VALUES(2363, '2016082611', 'Sergio Mendez', 55, 'L');
INSERT INTO `users` VALUES(2364, '2016082611', 'Sergio Mendez', 56, 'L');
INSERT INTO `users` VALUES(2365, '2016082611', 'Sergio Mendez', 57, 'L');
INSERT INTO `users` VALUES(2366, '2016082655', 'Parra', 49, 'L');
INSERT INTO `users` VALUES(2367, '2016082655', 'Parra', 50, 'L');
INSERT INTO `users` VALUES(2368, '2016082655', 'Parra', 51, 'L');
INSERT INTO `users` VALUES(2369, '2016082655', 'Parra', 52, 'L');
INSERT INTO `users` VALUES(2370, '2016082655', 'Parra', 53, 'L');
INSERT INTO `users` VALUES(2371, '2016082655', 'Parra', 54, 'L');
INSERT INTO `users` VALUES(2372, '2016082655', 'Parra', 55, 'L');
INSERT INTO `users` VALUES(2373, '2016082655', 'Parra', 56, 'V');
INSERT INTO `users` VALUES(2374, '2016082655', 'Parra', 57, 'L');
INSERT INTO `users` VALUES(2375, '2016082612', 'Lalo Mk', 49, 'E');
INSERT INTO `users` VALUES(2376, '2016082612', 'Lalo Mk', 50, 'L');
INSERT INTO `users` VALUES(2377, '2016082612', 'Lalo Mk', 51, 'E');
INSERT INTO `users` VALUES(2378, '2016082612', 'Lalo Mk', 52, 'L');
INSERT INTO `users` VALUES(2379, '2016082612', 'Lalo Mk', 53, 'V');
INSERT INTO `users` VALUES(2380, '2016082612', 'Lalo Mk', 54, 'L');
INSERT INTO `users` VALUES(2381, '2016082612', 'Lalo Mk', 55, 'L');
INSERT INTO `users` VALUES(2382, '2016082612', 'Lalo Mk', 56, 'L');
INSERT INTO `users` VALUES(2383, '2016082612', 'Lalo Mk', 57, 'E');
INSERT INTO `users` VALUES(2384, '2016082613', 'Heberto Lopez', 49, 'L');
INSERT INTO `users` VALUES(2385, '2016082613', 'Heberto Lopez', 50, 'L');
INSERT INTO `users` VALUES(2386, '2016082613', 'Heberto Lopez', 51, 'L');
INSERT INTO `users` VALUES(2387, '2016082613', 'Heberto Lopez', 52, 'L');
INSERT INTO `users` VALUES(2388, '2016082613', 'Heberto Lopez', 53, 'L');
INSERT INTO `users` VALUES(2389, '2016082613', 'Heberto Lopez', 54, 'L');
INSERT INTO `users` VALUES(2390, '2016082613', 'Heberto Lopez', 55, 'V');
INSERT INTO `users` VALUES(2391, '2016082613', 'Heberto Lopez', 56, 'V');
INSERT INTO `users` VALUES(2392, '2016082613', 'Heberto Lopez', 57, 'V');
INSERT INTO `users` VALUES(2393, '2016082656', 'Abel Vallejo', 49, 'L');
INSERT INTO `users` VALUES(2394, '2016082656', 'Abel Vallejo', 50, 'L');
INSERT INTO `users` VALUES(2395, '2016082656', 'Abel Vallejo', 51, 'V');
INSERT INTO `users` VALUES(2396, '2016082656', 'Abel Vallejo', 52, 'E');
INSERT INTO `users` VALUES(2397, '2016082656', 'Abel Vallejo', 53, 'V');
INSERT INTO `users` VALUES(2398, '2016082656', 'Abel Vallejo', 54, 'L');
INSERT INTO `users` VALUES(2399, '2016082656', 'Abel Vallejo', 55, 'L');
INSERT INTO `users` VALUES(2400, '2016082656', 'Abel Vallejo', 56, 'E');
INSERT INTO `users` VALUES(2401, '2016082656', 'Abel Vallejo', 57, 'V');
INSERT INTO `users` VALUES(2402, '2016082614', 'Chuy Vega', 49, 'L');
INSERT INTO `users` VALUES(2403, '2016082614', 'Chuy Vega', 50, 'E');
INSERT INTO `users` VALUES(2404, '2016082614', 'Chuy Vega', 51, 'L');
INSERT INTO `users` VALUES(2405, '2016082614', 'Chuy Vega', 52, 'V');
INSERT INTO `users` VALUES(2406, '2016082614', 'Chuy Vega', 53, 'E');
INSERT INTO `users` VALUES(2407, '2016082614', 'Chuy Vega', 54, 'L');
INSERT INTO `users` VALUES(2408, '2016082614', 'Chuy Vega', 55, 'L');
INSERT INTO `users` VALUES(2409, '2016082614', 'Chuy Vega', 56, 'E');
INSERT INTO `users` VALUES(2410, '2016082614', 'Chuy Vega', 57, 'L');
INSERT INTO `users` VALUES(2411, '2016082657', 'Ronaldo Obregon', 49, 'L');
INSERT INTO `users` VALUES(2412, '2016082657', 'Ronaldo Obregon', 50, 'L');
INSERT INTO `users` VALUES(2413, '2016082657', 'Ronaldo Obregon', 51, 'L');
INSERT INTO `users` VALUES(2414, '2016082657', 'Ronaldo Obregon', 52, 'V');
INSERT INTO `users` VALUES(2415, '2016082657', 'Ronaldo Obregon', 53, 'L');
INSERT INTO `users` VALUES(2416, '2016082657', 'Ronaldo Obregon', 54, 'V');
INSERT INTO `users` VALUES(2417, '2016082657', 'Ronaldo Obregon', 55, 'V');
INSERT INTO `users` VALUES(2418, '2016082657', 'Ronaldo Obregon', 56, 'L');
INSERT INTO `users` VALUES(2419, '2016082657', 'Ronaldo Obregon', 57, 'V');
INSERT INTO `users` VALUES(2420, '2016082615', 'Marco Antonio(Zaragoza)', 49, 'E');
INSERT INTO `users` VALUES(2421, '2016082615', 'Marco Antonio(Zaragoza)', 50, 'E');
INSERT INTO `users` VALUES(2422, '2016082615', 'Marco Antonio(Zaragoza)', 51, 'L');
INSERT INTO `users` VALUES(2423, '2016082615', 'Marco Antonio(Zaragoza)', 52, 'E');
INSERT INTO `users` VALUES(2424, '2016082615', 'Marco Antonio(Zaragoza)', 53, 'L');
INSERT INTO `users` VALUES(2425, '2016082615', 'Marco Antonio(Zaragoza)', 54, 'L');
INSERT INTO `users` VALUES(2426, '2016082615', 'Marco Antonio(Zaragoza)', 55, 'L');
INSERT INTO `users` VALUES(2427, '2016082615', 'Marco Antonio(Zaragoza)', 56, 'E');
INSERT INTO `users` VALUES(2428, '2016082615', 'Marco Antonio(Zaragoza)', 57, 'L');
INSERT INTO `users` VALUES(2429, '2016082616', 'Arturo Sanchez', 49, 'L');
INSERT INTO `users` VALUES(2430, '2016082616', 'Arturo Sanchez', 50, 'V');
INSERT INTO `users` VALUES(2431, '2016082616', 'Arturo Sanchez', 51, 'L');
INSERT INTO `users` VALUES(2432, '2016082616', 'Arturo Sanchez', 52, 'V');
INSERT INTO `users` VALUES(2433, '2016082616', 'Arturo Sanchez', 53, 'L');
INSERT INTO `users` VALUES(2434, '2016082616', 'Arturo Sanchez', 54, 'L');
INSERT INTO `users` VALUES(2435, '2016082616', 'Arturo Sanchez', 55, 'V');
INSERT INTO `users` VALUES(2436, '2016082616', 'Arturo Sanchez', 56, 'L');
INSERT INTO `users` VALUES(2437, '2016082616', 'Arturo Sanchez', 57, 'L');
INSERT INTO `users` VALUES(2438, '2016082658', 'Javier Limas', 49, 'V');
INSERT INTO `users` VALUES(2439, '2016082658', 'Javier Limas', 50, 'E');
INSERT INTO `users` VALUES(2440, '2016082658', 'Javier Limas', 51, 'L');
INSERT INTO `users` VALUES(2441, '2016082658', 'Javier Limas', 52, 'L');
INSERT INTO `users` VALUES(2442, '2016082658', 'Javier Limas', 53, 'E');
INSERT INTO `users` VALUES(2443, '2016082658', 'Javier Limas', 54, 'L');
INSERT INTO `users` VALUES(2444, '2016082658', 'Javier Limas', 55, 'L');
INSERT INTO `users` VALUES(2445, '2016082658', 'Javier Limas', 56, 'V');
INSERT INTO `users` VALUES(2446, '2016082658', 'Javier Limas', 57, 'L');
INSERT INTO `users` VALUES(2447, '2016082617', 'Nestor Renteria', 49, 'L');
INSERT INTO `users` VALUES(2448, '2016082617', 'Nestor Renteria', 50, 'E');
INSERT INTO `users` VALUES(2449, '2016082617', 'Nestor Renteria', 51, 'L');
INSERT INTO `users` VALUES(2450, '2016082617', 'Nestor Renteria', 52, 'V');
INSERT INTO `users` VALUES(2451, '2016082617', 'Nestor Renteria', 53, 'L');
INSERT INTO `users` VALUES(2452, '2016082617', 'Nestor Renteria', 54, 'L');
INSERT INTO `users` VALUES(2453, '2016082617', 'Nestor Renteria', 55, 'E');
INSERT INTO `users` VALUES(2454, '2016082617', 'Nestor Renteria', 56, 'E');
INSERT INTO `users` VALUES(2455, '2016082617', 'Nestor Renteria', 57, 'L');
INSERT INTO `users` VALUES(2456, '2016082659', 'Alessandro Arriaga 2', 49, 'E');
INSERT INTO `users` VALUES(2457, '2016082659', 'Alessandro Arriaga 2', 50, 'V');
INSERT INTO `users` VALUES(2458, '2016082659', 'Alessandro Arriaga 2', 51, 'L');
INSERT INTO `users` VALUES(2459, '2016082659', 'Alessandro Arriaga 2', 52, 'E');
INSERT INTO `users` VALUES(2460, '2016082659', 'Alessandro Arriaga 2', 53, 'L');
INSERT INTO `users` VALUES(2461, '2016082659', 'Alessandro Arriaga 2', 54, 'L');
INSERT INTO `users` VALUES(2462, '2016082659', 'Alessandro Arriaga 2', 55, 'V');
INSERT INTO `users` VALUES(2463, '2016082659', 'Alessandro Arriaga 2', 56, 'V');
INSERT INTO `users` VALUES(2464, '2016082659', 'Alessandro Arriaga 2', 57, 'V');
INSERT INTO `users` VALUES(2479, '10154436177357812', 'Moreno\\\\\\\\', 54, 'E');
INSERT INTO `users` VALUES(2480, '10154436177357812', 'Moreno\\\\\\\\', 55, 'L');
INSERT INTO `users` VALUES(2481, '10154436177357812', 'Moreno\\\\\\\\', 56, 'L');
INSERT INTO `users` VALUES(2482, '10154436177357812', 'Moreno\\\\\\\\', 57, 'E');
