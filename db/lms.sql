-- phpmMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host:127.0.0.1
-- Generation Time :Feb 09 2024,at 11:55 PM
-- Server version :10.1.38-MariaDB
--PHP Version :7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION ;
SET time_zone ="+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_SET_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--Database:'lms'
--

-- -----------------------------------------------------------------------

--
-- Table structure for table 'admin'
--

CREATE TABLE 'admin'(
    'id' int (11) NOT NULL,
    'email' varchar(255) NOT NULL,
    'password' varchar(1000) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table 'admin'
--

INSERT INTO 'admin' ('id','email','password') VALUES
(1,'ahmedafaa017@gmail.com','025db420560617303c2ba988d050ec62562343bc0fb03583d31d2f0bae8dbede8');

-- -----------------------------------------------------------------------------
 
--
-- Table structure for table 'books'
--

CREATE TABLE 'books' (
    'id' int (11) NOT NULL,
    'name' varchar(255) NOT NULL,
    'desc' longtext NOT NULL,
    'author' varchar(255) NOT NULL,
    'availability' tinyint(1)NOT NULL,
    'edition' varchar(255) NOT NULL,
    'count' int (11) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = latin1;

--
--Dumping data for table 'books'
-- 

INSERT INTO TABLE 'books' ('id','name','desc','author','availability','edition','count') VALUES
(1,'69 Ways To Be A Cybersecurity Engineer','Lorem ipsum dolor sit amet,consectet ur adipsicing elit.Aut repudiandae as sumenda distinction quas tempore , voulpt atibus accusamus dolores temporibus,re cusandae eligendi similique.Optio,eius? Sint vel nem,quisquam architecto fugit odio!','Mr.Johnny Test',1,'1','3'),
(2,'JAVA For Absolute Beginners Step into the basics of java programming along with globally famed programmer','',1,'1',5);

-- --------------------------------------------------------------------------------

-- 
--Table structure for table 'reserve'
--

CREATE TABLE 'reserve' (
    'id' int (11) NOT NULL,
    'user_id' int (11) NOT NULL,
    'book_id' int (11) NOT NULL,
)ENGINE= InnoDB DEFAULT CHARSET =latin1;

--
--Dumping data for table 'reserve'
--

INSERT INTO 'reserve' ('id','user_id','book_id') VALUES
(1,1,1),(2,6,1);

-- ------------------------------------------------------------------------------------

--
-- Table structure for table 'users'
--

CREATE TABLE 'users'(
    'id' int (11) NOT NULL,
    'name' varchar(255)COLLATE utf8mb4_unicode_520_ci NOT NULL,
    'email' varchar(255)COLLATE utf8mb4_unicode_520_ci NOT NULL,
    'bio' longest COLLATE utf8mb4_unicode_520_ci NOT NULL,
    'mob' varchar(255)COLLATE utf8mb4_unicode_520_ci NOT NULL,
    'lock' tinyint(1) NOT NULL,
    'created_at' datetime NOT NULL DEFAULT CURRENT_TIMESTAMP 
    )ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE =utf8mb4_unicode_520_ci;

--
--Dumping data for table 'users'
--

INSERT INTO 'users' ('id','name','email','password','bio','mob','lock','created_at') VALUESJ
(1,'Afaan Ahmed','ahmedafaa017@gmail.com','025db42056017303c2ba988d050ec62562643bc0fb0358d31d2f0bae8dbede8','Wake up to reality! Nothing ever goes as planned in this accursed world . The longer you live .the more you realize that the only things that truly exists in this reality are merely pain ,suffering and futility .Listen,everywhere you look in this world, wherever there is light , there will always be shadows to be found as well. As long as there is a concept of victors. the vanquished will aslo exist . The selfish intent of wanting to preserve peace initiates war and hatred is born in order to preotect love .There are nexuses casual relationships that cannot be separated-MADARA UCHIHA','',0,'2025-02-07 00:00:00'),
(6,'Ahmed afaan','ahmedafaa017@gmail.com','025db42056017303c2ba988d050ec62562643bc0fb0358d31d2f0bae8dbede8','Hishashiburidana Mugiwara','',0,'2025-02-09'23:09:46);

--
-- Indexes for dumped tables
-- 

--
-- Indexes for table 'admin'

--
ALTER TABLE 'admin'
    ADD PRIMARY KEY('id');

--
-- Indexes for table 'books'
--
ALTER TABLE 'books'
    ADD PRIMARY KEY('id');

--
-- Indexes for table 'reserve'
--
ALTER TABLE 'reserve' 
    ADD PRIMARY KEY('id');

--
-- Indexes for table 'users'
--
ALTER TABLE 'users'
    ADD PRIMARY KEY('id');

--
-- AUTO_INCREMENT  for dumped tables 
--

--
-- AUTO_INCREMENT for tables 'admin'
--
ALTER TABLE 'admin'
    MODIFY 'id' int (11) NOT NULL
    AUTO_INCREMENT,AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table 'books'
--
ALTER TABLE for table 'books'
    MODIFY 'id' int (11) NOT NULL
    AUTO_INCREMENT,AUTO_INCREMENT =3;

--
-- AUTO_INCREMENT for table 'reserve'
--
ALTER TABLE 'reserve'
    MODIFY 'id' int (11) NOT NULL
    AUTO_INCREMENT,AUTO_INCREMENT=3;

--
--AUTO_INCREMENT for table 'users'
--
ALTER TABLE 'users'
    MODIFY 'id' int (11) NOT NULL
    AUTO_INCREMENT,AUTO_INCREMENT=7;
    COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT =@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS =@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET_COLLATION_CONNECTION =@OLD_COLLATION_CONNECTION */;
