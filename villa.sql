-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 09:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `villa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(0, 'Admin', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `food` varchar(20) NOT NULL,
  `number_people` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foreigners`
--

CREATE TABLE `foreigners` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `country` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foreigners`
--

INSERT INTO `foreigners` (`id`, `fname`, `lname`, `email`, `country`, `pwd`, `dob`, `gender`, `tel`) VALUES
(0, 'User', 'One', 'userone@gmail.com', 'USA', 'User1', '1994-06-02', 'on', '0777777777'),
(1, 'User', 'Two', 'usertwo@gmail.com', 'india', 'User2', '2019-06-07', 'on', '0766666666'),
(2, 'User', 'Three', 'userthree@gmail.com', 'usa', 'User3', '2019-06-07', 'on', '0711717177'),
(3, 'User', 'Four', 'userfour@gmail.com', 'sri lanka', 'User4', '2019-06-12', 'on', '0745696147');

-- --------------------------------------------------------

--
-- Table structure for table `locals`
--

CREATE TABLE `locals` (
  `id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `nic` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locals`
--

INSERT INTO `locals` (`id`, `fname`, `lname`, `email`, `nic`, `pwd`, `dob`, `gender`, `tel`, `status`) VALUES
(0, 'User', 'One', 'userone@gmail.com', '19865452648', 'User1', '1997-07-07', 'on', '0777777777', 'yes'),
(1, 'User', 'Two', 'usertwo@gmail.com', '45691254697', 'User2', '2019-05-30', 'female', '0745696147', 'yes'),
(2, 'User', 'Three', 'userthree@gmail.com', '45557578674', 'User3', '2019-06-20', 'male', '074546466', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `img`, `uid`) VALUES
(0, 'Cinnamon Red Colombo', 'We stayed one night and we wanted to extend out stay. The location is perfect, in the heart of colombo. The view of city, bere lake and the indian ocean is the best view i ever had. Its unbelievably luxurious and modern. Clean rooms with modern facilities. Roof top pool is amazing. Friendly staff and good food. Good value for money. Only problem we had was they charge you extra 5000 rupees from your credit card and they deduct the bills from that at d they re deposited it within 4-5 days. We were not aware of this. They have to stop this. But the hotel is one of the best hotels in sri lanka. Superb stay :)', '\\271280.jpg', 0),
(1, 'Trinco Blu by Cinnamon', 'prices for food and beverage were expensive considering sri lanka is quite cheap. food was always fresh although the menu could have been a bit more exciting if your staying there for a week or more. the rooms were cleaned daily to a good standard. bathrooms, were also good considering most hotels in sri lanka have a problems with ventilation.this hotel had no problems with that, the only thing i can say the laundry service was not good. the hotel needs a internet / business centre and a kids club then it would have all the ticks. it offered snorkingling and diving which made it easy to organise your day.', '\\288639.jpg', 2),
(2, 'Amagi Aria', 'Amagi Lagoon Resort & Spa is a perfect choice if you are looking for a good hotel near the airport. It is like 10 min drive away from the airport and located in a very quiet and private location. Hotel was new and very modern. rooms were good sized and clean. beds were very comfortable. While I was traveling around sri lanka I stayed in 6 different hotels and I must say that I had the best food at Amagi plus the best massage in sri lanka, so if you have time for a massage I would advise you to book one while you are staying at Amagi', '\\415641.jpg', 2),
(3, 'Ramada by Wyndham Colombo', 'I last stayed at this hotel when it was under another brand name. The refurbished rooms under the Ramada brand are excellent and very comfortable. The location near Galle Green is very good and with the new highway it is only 30 minutes from the airport. The check in as for most hotels did not ask for a credit card deposit. However when I put a bar account on my room number I was subsequently phoned and told I would receive services on a cash basis only. I felt like I was going to do a runner and I am honest and always pay my bills upon check out.', '\\438193.jpg', 1),
(4, 'Nsbm is not good', 'Hello nsbm', 'hannah-montez-2VslRz5G8fo-unsplash.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreigners`
--
ALTER TABLE `foreigners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locals`
--
ALTER TABLE `locals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
