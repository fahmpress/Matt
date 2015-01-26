-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2015 at 02:18 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `dbmaulana`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbipk`
--

CREATE TABLE IF NOT EXISTS `tbipk` (
  `iduser` int(50) NOT NULL,
  `ipk` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbipk`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbjurusan`
--

CREATE TABLE IF NOT EXISTS `tbjurusan` (
  `kdjur` varchar(10) NOT NULL,
  `nama_jur` varchar(30) NOT NULL,
  PRIMARY KEY  (`kdjur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjurusan`
--

INSERT INTO `tbjurusan` (`kdjur`, `nama_jur`) VALUES
('11', 'Teknik Sipil'),
('21', 'Teknik Mesin'),
('31', 'Teknik Komputer'),
('32', 'Teknik Komputer dan Jaringan'),
('41', 'Administrasi Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `tbmatkul`
--

CREATE TABLE IF NOT EXISTS `tbmatkul` (
  `kd_matkul` varchar(20) NOT NULL,
  `na_matkul` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL,
  `nip` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmatkul`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbnilai`
--

CREATE TABLE IF NOT EXISTS `tbnilai` (
  `iduser` int(50) NOT NULL,
  `nilai_semester` int(2) NOT NULL,
  `nilai` varchar(2) NOT NULL,
  `kd_matkul` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilai`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
  `iduser` int(50) NOT NULL,
  `na_user` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` varchar(12) NOT NULL,
  `nope` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `thn_masuk` int(6) NOT NULL,
  `akses` varchar(10) NOT NULL,
  `semester` int(2) NOT NULL,
  `kd_jur` int(10) NOT NULL,
  PRIMARY KEY  (`iduser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `na_user`, `username`, `password`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `jk`, `nope`, `email`, `foto`, `thn_masuk`, `akses`, `semester`, `kd_jur`) VALUES
(1001, 'admin', 'admin', 'admin', '', '0000-00-00', '', '', '', '', '', 0, 'admin', 0, 0),
(123456789, 'Ismail Goro, ST.', 'kajur', 'kajur', '', '0000-00-00', '', '', '', '', '', 0, 'kajur', 0, 0),
(312011001, 'Ahmad Maulana Sidiq', 'maul', 'maul', 'Sukabumi', '1990-01-01', 'Gegerbitung Sumur', 'Laki-laki', '085712345678', 'maul@gmail.com', '', 2011, 'mahasiswa', 6, 322011001);
