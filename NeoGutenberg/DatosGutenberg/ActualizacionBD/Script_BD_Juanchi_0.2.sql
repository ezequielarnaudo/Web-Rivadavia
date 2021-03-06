USE [master]
GO
/****** Object:  Database [Gutenberg]    Script Date: 21/1/2021 16:05:04 ******/
CREATE DATABASE [Gutenberg]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gutenberg', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gutenberg.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gutenberg_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gutenberg_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gutenberg].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gutenberg] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gutenberg] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gutenberg] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gutenberg] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gutenberg] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gutenberg] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gutenberg] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gutenberg] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gutenberg] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gutenberg] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gutenberg] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gutenberg] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gutenberg] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gutenberg] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gutenberg] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gutenberg] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gutenberg] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gutenberg] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gutenberg] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gutenberg] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gutenberg] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gutenberg] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gutenberg] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gutenberg] SET  MULTI_USER 
GO
ALTER DATABASE [Gutenberg] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gutenberg] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gutenberg] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gutenberg] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Gutenberg]
GO
/****** Object:  Table [dbo].[ContadorNota]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContadorNota](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[idNota] [bigint] NOT NULL,
	[contador] [bigint] NOT NULL,
 CONSTRAINT [PK_ContadorNota] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editor]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreEditor] [varchar](50) NOT NULL,
	[profesion] [varchar](50) NOT NULL,
	[urlFoto] [varchar](100) NOT NULL,
	[link1] [varchar](100) NULL,
	[link2] [varchar](100) NULL,
	[link3] [varchar](100) NULL,
 CONSTRAINT [PK_Editor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[idTag] [bigint] NOT NULL,
	[idEditor] [bigint] NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[subtitulo] [varchar](max) NOT NULL,
	[fecha] [varchar](10) NOT NULL,
	[foto] [varchar](100) NOT NULL,
	[descripcionFoto] [varchar](max) NOT NULL,
	[textoCompleto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Nota] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ContadorNota] ON 

INSERT [dbo].[ContadorNota] ([Id], [idNota], [contador]) VALUES (1, 1, 6)
INSERT [dbo].[ContadorNota] ([Id], [idNota], [contador]) VALUES (2, 2, 10)
INSERT [dbo].[ContadorNota] ([Id], [idNota], [contador]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[ContadorNota] OFF
GO
SET IDENTITY_INSERT [dbo].[Editor] ON 

INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (2, N'Damian Stupenengo', N'CEO MUNDO EMPRESAS', N'fotos-columnistas/Damian 01 EDIT.png', N'linkFace', N'linkLinkedin', N'damu@bla.ch')
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (3, N'William Bergese', N'Analista Técnico en Mercados de Capitales', N'fotos-columnistas/William Bergese.png', N'link1', N'link2', N'tuti@bla.ch')
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (4, N'Agustin Telgarez', N'Coach de Marketing', N'fotos-columnistas/Tuti Telgarecz.png', N'link1', N'link2', N'tuti@bla.ch')
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (5, N'Alfredo Koncurat', N'Economista, MBA Administración de Empresas', N'fotos-columnistas/Alfredo Koncurat 01.png', N'link1', N'link2', N'tuti@bla.ch')
SET IDENTITY_INSERT [dbo].[Editor] OFF
GO
SET IDENTITY_INSERT [dbo].[Nota] ON 

INSERT [dbo].[Nota] ([Id], [idTag], [idEditor], [titulo], [subtitulo], [fecha], [foto], [descripcionFoto], [textoCompleto]) VALUES (1, 1, 3, N'Nota sobre emprendedores', N'Subtítulo de la nota', N'20/1/2021', N'URL de la foto', N'Foto sobre la nota', N'Texto completo de la nota')
INSERT [dbo].[Nota] ([Id], [idTag], [idEditor], [titulo], [subtitulo], [fecha], [foto], [descripcionFoto], [textoCompleto]) VALUES (2, 3, 2, N'Nota sobre Arroyo Cabral', N'Subtítulo Arroyo Cabral', N'20/1/2021', N'URL Arroyo Cabral', N'Foto Arroyo Cabral', N'Texto completo de Arroyo Cabral')
INSERT [dbo].[Nota] ([Id], [idTag], [idEditor], [titulo], [subtitulo], [fecha], [foto], [descripcionFoto], [textoCompleto]) VALUES (3, 1, 5, N'Nota sobre otro emprendedor', N'Subtítulo otro emprendedor', N'19/1/2021', N'URL otro emprendedor', N'Foto sobre otro emprendedor', N'Texto completo otro emprendedor')
SET IDENTITY_INSERT [dbo].[Nota] OFF
GO
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (1, N'Emprendedores')
INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (2, N'Economía')
INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (3, N'Locales')
SET IDENTITY_INSERT [dbo].[Tag] OFF
GO
ALTER TABLE [dbo].[ContadorNota]  WITH CHECK ADD  CONSTRAINT [FK_ContadorNota_Nota] FOREIGN KEY([idNota])
REFERENCES [dbo].[Nota] ([Id])
GO
ALTER TABLE [dbo].[ContadorNota] CHECK CONSTRAINT [FK_ContadorNota_Nota]
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Editor] FOREIGN KEY([idEditor])
REFERENCES [dbo].[Editor] ([Id])
GO
ALTER TABLE [dbo].[Nota] CHECK CONSTRAINT [FK_Nota_Editor]
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Tag] FOREIGN KEY([idTag])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[Nota] CHECK CONSTRAINT [FK_Nota_Tag]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_Editor]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERT_Editor] (@nombreEditor varchar(50), @profesion varchar(50), @urlFoto varchar(100), @link1 varchar(100), @link2 varchar(100), @link3 varchar(100))
AS
BEGIN

INSERT INTO Editor (nombreEditor, profesion, urlFoto, link1, link2, link3) VALUES (@nombreEditor, @profesion, @urlFoto, @link1, @link2, @link3)

END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Editor]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Editor]
AS
BEGIN
SELECT * FROM Editor
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_EDITOR]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_EDITOR] (@idEditor bigint)
AS
BEGIN
	SELECT * FROM Nota WHERE idEditor=@idEditor
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_FECHA]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_FECHA] (@fechaDesde varchar(10), @fechaHasta varchar(10))
AS
BEGIN
	SELECT * FROM Nota WHERE (fecha BETWEEN @fechaDesde AND @fechaHasta)
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_ID]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_ID] (@idNota bigint)
AS
BEGIN
	SELECT * FROM Nota WHERE Id=@idNota
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TAG]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_TAG] (@idTag bigint)
AS
BEGIN
	SELECT * FROM Nota WHERE idTag=@idTag
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TOP]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_TOP]
AS
BEGIN
	SELECT TOP 10 Nota.titulo, ContadorNota.contador FROM Nota INNER JOIN ContadorNota ON Nota.Id=ContadorNota.idNota ORDER BY contador DESC
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_ContadorNota]    Script Date: 21/1/2021 16:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_ContadorNota] (@idNota bigint)
AS
BEGIN
	UPDATE ContadorNota SET contador+=1 WHERE idNota IN (SELECT idNota FROM ContadorNota WHERE idNota=@idNota);
END
GO
USE [master]
GO
ALTER DATABASE [Gutenberg] SET  READ_WRITE 
GO
