-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2015 at 01:12 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `invisible-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode_barang` int(11) NOT NULL AUTO_INCREMENT,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_barang`),
  UNIQUE KEY `kode_barang` (`kode_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `harga`, `qty`, `nama_barang`) VALUES
(1, 10000, 5, ''),
(2, 10000, 41, ''),
(3, 20000, 20, ''),
(4, 40000, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `jenis_transaksi` varchar(15) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `qty` int(100) NOT NULL,
  `tgl` date NOT NULL,
  `kode_barang` int(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`nama_pelanggan`, `alamat`, `no_telp`) VALUES
('doni', 'garut', 1234),
('yayat', 'bandung', 987);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  UNIQUE KEY `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('0', '0'),
('admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
