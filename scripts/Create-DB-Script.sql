USE [master]
GO

/****** Object:  Database [GVTC-Pavan,Chandra,Nithin]    Script Date: 8/20/2024 6:13:16 PM ******/
CREATE DATABASE [GVTC-Pavan,Chandra,Nithin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GVTC-Pavan,Chandra,Nithin', FILENAME = N'S:\SQLData\MSSQL15.CIS655\MSSQL\Data\GVTC-Pavan,Chandra,Nithin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'GVTC-Pavan,Chandra,Nithin_log', FILENAME = N'L:\SQLLogs\MSSQL15.CIS655\MSSQL\Logs\GVTC-Pavan,Chandra,Nithin_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GVTC-Pavan,Chandra,Nithin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ARITHABORT OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET  DISABLE_BROKER 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET  MULTI_USER 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET DB_CHAINING OFF 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET QUERY_STORE = OFF
GO

ALTER DATABASE [GVTC-Pavan,Chandra,Nithin] SET  READ_WRITE 
GO

