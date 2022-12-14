USE [master]
GO
/****** Object:  Database [petshopboys_db]    Script Date: 18/10/2022 19:37:59 ******/
CREATE DATABASE [petshopboys_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'petshopboys_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\petshopboys_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'petshopboys_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\petshopboys_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [petshopboys_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [petshopboys_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [petshopboys_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [petshopboys_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [petshopboys_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [petshopboys_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [petshopboys_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [petshopboys_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [petshopboys_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [petshopboys_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [petshopboys_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [petshopboys_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [petshopboys_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [petshopboys_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [petshopboys_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [petshopboys_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [petshopboys_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [petshopboys_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [petshopboys_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [petshopboys_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [petshopboys_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [petshopboys_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [petshopboys_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [petshopboys_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [petshopboys_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [petshopboys_db] SET  MULTI_USER 
GO
ALTER DATABASE [petshopboys_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [petshopboys_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [petshopboys_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [petshopboys_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [petshopboys_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [petshopboys_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [petshopboys_db] SET QUERY_STORE = OFF
GO
USE [petshopboys_db]
GO
/****** Object:  Table [dbo].[admin_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](256) NOT NULL,
	[displayName] [nvarchar](80) NOT NULL,
	[mail] [nvarchar](80) NOT NULL,
	[accountStatus] [nvarchar](50) NOT NULL,
	[failedLogons] [int] NOT NULL,
 CONSTRAINT [PK_admin_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dvv_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dvv_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [nvarchar](50) NOT NULL,
	[digVerif] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dvv_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[severity] [int] NOT NULL,
	[message] [nvarchar](256) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[principalId] [nvarchar](50) NOT NULL,
	[eventId] [int] NOT NULL,
	[category] [nchar](20) NOT NULL,
	[dvh] [nvarchar](256) NULL,
 CONSTRAINT [PK_log_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[right_right_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[right_right_tbl](
	[idParentRight] [int] NOT NULL,
	[idChildRight] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[right_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[right_tbl](
	[idRight] [int] NOT NULL,
	[rightName] [nvarchar](50) NOT NULL,
	[rightPolicy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_right_tbl] PRIMARY KEY CLUSTERED 
(
	[idRight] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_tbl]    Script Date: 18/10/2022 19:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](256) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](80) NOT NULL,
	[phoneNumber] [bigint] NOT NULL,
	[province] [nvarchar](30) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[postalCode] [int] NOT NULL,
	[fullAddress] [nvarchar](max) NOT NULL,
	[accountStatus] [nvarchar](50) NOT NULL,
	[failedLogons] [int] NOT NULL,
	[dvh] [nvarchar](256) NULL,
 CONSTRAINT [PK_user_tbl_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [petshopboys_db] SET  READ_WRITE 
GO
