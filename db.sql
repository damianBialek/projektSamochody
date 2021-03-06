USE [master]
GO
/****** Object:  Database [projektSamochody]    Script Date: 05/28/2018 10:28:24 ******/
CREATE DATABASE [projektSamochody] ON  PRIMARY 
( NAME = N'projektSamochody', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\projektSamochody.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'projektSamochody_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\projektSamochody_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [projektSamochody] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projektSamochody].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projektSamochody] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [projektSamochody] SET ANSI_NULLS OFF
GO
ALTER DATABASE [projektSamochody] SET ANSI_PADDING OFF
GO
ALTER DATABASE [projektSamochody] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [projektSamochody] SET ARITHABORT OFF
GO
ALTER DATABASE [projektSamochody] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [projektSamochody] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [projektSamochody] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [projektSamochody] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [projektSamochody] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [projektSamochody] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [projektSamochody] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [projektSamochody] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [projektSamochody] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [projektSamochody] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [projektSamochody] SET  DISABLE_BROKER
GO
ALTER DATABASE [projektSamochody] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [projektSamochody] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [projektSamochody] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [projektSamochody] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [projektSamochody] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [projektSamochody] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [projektSamochody] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [projektSamochody] SET  READ_WRITE
GO
ALTER DATABASE [projektSamochody] SET RECOVERY SIMPLE
GO
ALTER DATABASE [projektSamochody] SET  MULTI_USER
GO
ALTER DATABASE [projektSamochody] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [projektSamochody] SET DB_CHAINING OFF
GO
USE [projektSamochody]
GO
/****** Object:  Table [dbo].[samochody]    Script Date: 05/28/2018 10:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[samochody](
	[samochody_id] [bigint] IDENTITY(1,1) NOT NULL,
	[samochody_marka] [varchar](max) NULL,
	[samochody_model] [varchar](max) NULL,
	[samochody_predkosc] [int] NULL,
	[samochody_rocznik] [int] NULL,
	[samochody_iloscPaliwaWBaku] [float] NULL,
	[samochody_pojemnoscBaku] [float] NULL,
	[samochody_srednieSpalanie] [float] NULL,
	[samochody_predkoscMaksymalna] [int] NULL,
	[samochody_silnikWlaczony] [bit] NULL,
 CONSTRAINT [PK_samochody] PRIMARY KEY CLUSTERED 
(
	[samochody_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_samochody_samochody_silnikWlaczony]    Script Date: 05/28/2018 10:28:25 ******/
ALTER TABLE [dbo].[samochody] ADD  CONSTRAINT [DF_samochody_samochody_silnikWlaczony]  DEFAULT ((0)) FOR [samochody_silnikWlaczony]
GO
