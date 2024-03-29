USE [master]
GO
/****** Object:  Database [Kino]    Script Date: 28.01.2023 9:43:22 ******/
CREATE DATABASE [Kino]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kino', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Kino.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kino_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Kino_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Kino] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kino].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kino] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kino] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kino] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kino] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kino] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kino] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Kino] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kino] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kino] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kino] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kino] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kino] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kino] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kino] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kino] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Kino] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kino] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kino] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kino] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kino] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kino] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kino] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kino] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kino] SET  MULTI_USER 
GO
ALTER DATABASE [Kino] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kino] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kino] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kino] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kino] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kino] SET QUERY_STORE = OFF
GO
USE [Kino]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[login] [varchar](10) NOT NULL,
	[password] [varchar](6) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[afish]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[afish](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[length] [time](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kassir]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kassir](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[login] [varchar](10) NOT NULL,
	[password] [varchar](6) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otchot]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otchot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mes] [int] NOT NULL,
	[countTicket] [int] NOT NULL,
	[sumTicketPrice] [int] NOT NULL,
	[sumProdPrice] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seans]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[afish_id] [int] NOT NULL,
	[zall_id] [int] NOT NULL,
	[selectPlant] [varchar](500) NULL,
	[time] [varchar](13) NULL,
	[price] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[snacks]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[tara] [varchar](5) NOT NULL,
	[price] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zall]    Script Date: 28.01.2023 9:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zall](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[countRyd] [int] NOT NULL,
	[countPlant] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [name], [login], [password]) VALUES (1, N'Иванов Иван Админович', N'ИвановИА', N'123456')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[afish] ON 

INSERT [dbo].[afish] ([id], [name], [length]) VALUES (1, N'Фильм о том, как птица петь училась', CAST(N'01:10:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (2, N'Фильм про птицу. Часть вторая', CAST(N'01:40:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (3, N'2+3. История четырех друзей', CAST(N'02:30:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (4, N'Третий лишний. История глазами четвертого', CAST(N'02:40:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (5, N'Будни студента', CAST(N'01:35:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (6, N'Боец KFC. Начало', CAST(N'02:25:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (7, N'Всё хоршо? Всё хорошо!', CAST(N'02:55:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (8, N'Как не допускать очепятки', CAST(N'01:40:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (9, N'Путь самурая или Новая папка', CAST(N'02:50:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (10, N'Матрица. Начало... Или середина... - Вышмат', CAST(N'02:40:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (11, N'Приключенгия марио 3D (2D)', CAST(N'01:30:00' AS Time))
INSERT [dbo].[afish] ([id], [name], [length]) VALUES (12, N'Утиные истории или в поисках бага', CAST(N'02:10:00' AS Time))
SET IDENTITY_INSERT [dbo].[afish] OFF
GO
SET IDENTITY_INSERT [dbo].[kassir] ON 

INSERT [dbo].[kassir] ([id], [name], [login], [password]) VALUES (1, N'Петров Александр Абрамович', N'ПетровАА', N'123456')
INSERT [dbo].[kassir] ([id], [name], [login], [password]) VALUES (2, N'Хитров Семен Генадиевич', N'ХитровСГ', N'123456')
INSERT [dbo].[kassir] ([id], [name], [login], [password]) VALUES (3, N'Мочалов Михаил Ждановч', N'МочаловМЖ', N'123456')
SET IDENTITY_INSERT [dbo].[kassir] OFF
GO
SET IDENTITY_INSERT [dbo].[snacks] ON 

INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (1, N'Попкорн', N'мал', 150)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (2, N'Попкорн', N'сред', 200)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (3, N'Попкорн', N'бол', 300)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (4, N'Кола', N'0,2', 60)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (5, N'Кола', N'0,5', 100)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (6, N'Кола', N'0,7', 150)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (7, N'Чипсы', N'мал', 100)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (8, N'Чипсы', N'сред', 130)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (9, N'Чипсы', N'бол', 160)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (10, N'Чай липтон', N'0,2', 60)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (11, N'Чай липтон', N'0,5', 100)
INSERT [dbo].[snacks] ([id], [name], [tara], [price]) VALUES (12, N'Чай липтон', N'0,7', 150)
SET IDENTITY_INSERT [dbo].[snacks] OFF
GO
SET IDENTITY_INSERT [dbo].[zall] ON 

INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (1, 5, 12)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (2, 6, 10)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (3, 6, 10)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (4, 8, 15)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (5, 10, 20)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (6, 11, 22)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (7, 10, 20)
INSERT [dbo].[zall] ([id], [countRyd], [countPlant]) VALUES (8, 12, 23)
SET IDENTITY_INSERT [dbo].[zall] OFF
GO
USE [master]
GO
ALTER DATABASE [Kino] SET  READ_WRITE 
GO
