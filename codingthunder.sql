-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2025 at 06:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'abc@example.com', '12345', 'hi this is first message', '2025-01-15 20:44:05'),
(2, 'rana', 'rana@email.com', '1234567890', 'hi there', '2025-01-16 09:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s learn about stock market now', 'This is first post now', 'first-post', 'A stock market NOW, equity market, or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange as well as stock that is only traded privately, such as shares of private companies that are sold to investors through equity crowdfunding platforms. Investments are usually made with an investment strategy in mind.', 'post-bg.jpg', '2025-01-25 10:31:19'),
(2, 'This is Second post', 'This is coolest post ever', 'second-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', '', '2025-01-19 11:23:28'),
(3, 'Flask (web framework)', 'Web development using Flask 💻🕸', 'third-post', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries.[2] It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. However, Flask supports extensions that can add application features as if they were implemented in Flask itself. Extensions exist for object-relational mappers, form validation, upload handling, various open authentication technologies and several common framework related tools.\r\n\r\nApplications that use the Flask framework include Pinterest and LinkedIn.', 'about-bg.jpg', '2025-01-19 15:14:11'),
(4, 'History of Flask web framework', 'Learn more about flask web framework\'s history.', 'fourth-post', 'Flask was created by Armin Ronacher of Pocoo, an international group of Python enthusiasts formed in 2004.[6] According to Ronacher, the idea was originally an April Fool\'s joke that was popular enough to make into a serious application.[7][8][9] The name is a play on the earlier Bottle framework.[7]\r\n\r\nWhen Ronacher and Georg Brandl created a bulletin board system written in Python in 2004, the Pocoo projects Werkzeug and Jinja were developed.[10]\r\n\r\nIn April 2016, the Pocoo team was disbanded and development of Flask and related libraries passed to the newly formed Pallets project. Since 2018, Flask-related data and objects can be rendered with Bootstrap.\r\n\r\nFlask has become popular among Python enthusiasts. As of October 2020, it has the second-most number of stars on GitHub among Python web-development frameworks, only slightly behind Django,[14] and was voted the most popular web framework in the Python Developers Survey for years between and including 2018 and 2022', 'about-bg.jpg', '2025-01-19 15:14:11'),
(5, 'Component of Flask framework', 'Learn more about components of Flask.😎', 'fifth-post', 'The microframework Flask is part of the Pallets Projects (formerly Pocoo), and based on several others of them, all under a BSD license.\r\n\r\nWerkzeug\r\nWerkzeug (German for \"tool\") is a utility library for the Python programming language for Web Server Gateway Interface (WSGI) applications. Werkzeug can instantiate objects for request, response, and utility functions. It can be used as the basis for a custom software framework and supports Python 2.7 and 3.5 and later.[20][21]\r\n\r\nJinja\r\nMain article: Jinja (template engine)\r\nJinja, also by Ronacher, is a template engine for the Python programming language. Similar to the Django web framework, it handles templates in a sandbox.\r\n\r\nMarkupSafe\r\nMarkupSafe is a string handling library for the Python programming language. The eponymous MarkupSafe type extends the Python string type and marks its contents as \"safe\"; combining MarkupSafe with regular strings automatically escapes the unmarked strings, while avoiding double escaping of already marked strings.\r\n\r\nItsDangerous\r\nItsDangerous is a safe data serialization library for the Python programming language. It is used to store the session of a Flask application in a cookie without allowing users to tamper with the session contents.', 'post-bg.jpg', '2025-01-19 15:19:56'),
(6, 'Features of Flask', 'Learn more about flask features.😊', 'sixth-post', 'Development server and debugger\r\nIntegrated support for unit testing\r\nRESTful request dispatching\r\nUses Jinja templating\r\nSupport for secure cookies (client side sessions)\r\n100% WSGI 1.0 compliant\r\nUnicode-based\r\nComplete documentation\r\nGoogle App Engine compatibility\r\nExtensions available to extend functionality😍😍', '', '2025-01-25 09:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
