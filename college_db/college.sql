-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2020 г., 20:52
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_classroom`
--

CREATE TABLE `grishin_classroom` (
  `classroom_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_course`
--

CREATE TABLE `grishin_course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `hours` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_day`
--

CREATE TABLE `grishin_day` (
  `day_id` tinyint(4) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_graduate`
--

CREATE TABLE `grishin_graduate` (
  `graduate_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_graduate_time`
--

CREATE TABLE `grishin_graduate_time` (
  `graduate_time_id` int(11) NOT NULL,
  `graduate_id` int(11) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `lesson_num_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_groups`
--

CREATE TABLE `grishin_groups` (
  `group_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `date_begin` int(11) NOT NULL,
  `date_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_lesson_num`
--

CREATE TABLE `grishin_lesson_num` (
  `lesson_num_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_otdel`
--

CREATE TABLE `grishin_otdel` (
  `otdel_id` smallint(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_special`
--

CREATE TABLE `grishin_special` (
  `special_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_students`
--

CREATE TABLE `grishin_students` (
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `num_zach` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_teacher`
--

CREATE TABLE `grishin_teacher` (
  `user_id` bigint(20) NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishin_user`
--

CREATE TABLE `grishin_user` (
  `user_id` bigint(20) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronomic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` tinyint(4) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `grishn_gender`
--

CREATE TABLE `grishn_gender` (
  `gender_id` tinyint(4) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `grishin_classroom`
--
ALTER TABLE `grishin_classroom`
  ADD PRIMARY KEY (`classroom_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `classroom_id_2` (`classroom_id`);

--
-- Индексы таблицы `grishin_course`
--
ALTER TABLE `grishin_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `grishin_day`
--
ALTER TABLE `grishin_day`
  ADD PRIMARY KEY (`day_id`),
  ADD KEY `day_id` (`day_id`);

--
-- Индексы таблицы `grishin_graduate`
--
ALTER TABLE `grishin_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `grishin_graduate_time`
--
ALTER TABLE `grishin_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `graduate_time_id` (`graduate_time_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`),
  ADD KEY `day_id` (`day_id`);

--
-- Индексы таблицы `grishin_groups`
--
ALTER TABLE `grishin_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `grishin_lesson_num`
--
ALTER TABLE `grishin_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `grishin_otdel`
--
ALTER TABLE `grishin_otdel`
  ADD PRIMARY KEY (`otdel_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `grishin_special`
--
ALTER TABLE `grishin_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `special_id` (`special_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `grishin_students`
--
ALTER TABLE `grishin_students`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `grishin_teacher`
--
ALTER TABLE `grishin_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `grishin_user`
--
ALTER TABLE `grishin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Индексы таблицы `grishn_gender`
--
ALTER TABLE `grishn_gender`
  ADD PRIMARY KEY (`gender_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `grishin_classroom`
--
ALTER TABLE `grishin_classroom`
  MODIFY `classroom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_course`
--
ALTER TABLE `grishin_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_day`
--
ALTER TABLE `grishin_day`
  MODIFY `day_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_graduate`
--
ALTER TABLE `grishin_graduate`
  MODIFY `graduate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_graduate_time`
--
ALTER TABLE `grishin_graduate_time`
  MODIFY `graduate_time_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_groups`
--
ALTER TABLE `grishin_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_lesson_num`
--
ALTER TABLE `grishin_lesson_num`
  MODIFY `lesson_num_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_otdel`
--
ALTER TABLE `grishin_otdel`
  MODIFY `otdel_id` smallint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_special`
--
ALTER TABLE `grishin_special`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishin_user`
--
ALTER TABLE `grishin_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `grishn_gender`
--
ALTER TABLE `grishn_gender`
  MODIFY `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `grishin_course`
--
ALTER TABLE `grishin_course`
  ADD CONSTRAINT `grishin_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `grishin_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_graduate`
--
ALTER TABLE `grishin_graduate`
  ADD CONSTRAINT `grishin_graduate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `grishin_course` (`course_id`),
  ADD CONSTRAINT `grishin_graduate_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `grishin_groups` (`group_id`),
  ADD CONSTRAINT `grishin_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `grishin_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_graduate_time`
--
ALTER TABLE `grishin_graduate_time`
  ADD CONSTRAINT `grishin_graduate_time_ibfk_1` FOREIGN KEY (`graduate_id`) REFERENCES `grishin_graduate` (`graduate_id`),
  ADD CONSTRAINT `grishin_graduate_time_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `grishin_classroom` (`classroom_id`),
  ADD CONSTRAINT `grishin_graduate_time_ibfk_3` FOREIGN KEY (`lesson_num_id`) REFERENCES `grishin_lesson_num` (`lesson_num_id`),
  ADD CONSTRAINT `grishin_graduate_time_ibfk_4` FOREIGN KEY (`day_id`) REFERENCES `grishin_day` (`day_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_groups`
--
ALTER TABLE `grishin_groups`
  ADD CONSTRAINT `grishin_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `grishin_groups` (`group_id`),
  ADD CONSTRAINT `grishin_groups_ibfk_2` FOREIGN KEY (`special_id`) REFERENCES `grishin_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_special`
--
ALTER TABLE `grishin_special`
  ADD CONSTRAINT `grishin_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `grishin_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_students`
--
ALTER TABLE `grishin_students`
  ADD CONSTRAINT `grishin_students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `grishin_user` (`user_id`),
  ADD CONSTRAINT `grishin_students_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `grishin_groups` (`group_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_teacher`
--
ALTER TABLE `grishin_teacher`
  ADD CONSTRAINT `grishin_teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `grishin_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `grishin_user`
--
ALTER TABLE `grishin_user`
  ADD CONSTRAINT `grishin_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `grishn_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
