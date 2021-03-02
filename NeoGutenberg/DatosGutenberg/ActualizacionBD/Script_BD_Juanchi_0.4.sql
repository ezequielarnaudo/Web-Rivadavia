USE [Gutenberg]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_ContadorNota]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[UPDATE_ContadorNota]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TOP]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Nota_BY_TOP]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TAG]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Nota_BY_TAG]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_ID]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Nota_BY_ID]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_FECHA]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Nota_BY_FECHA]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_EDITOR]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Nota_BY_EDITOR]
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[SELECT_Editor]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_Nota]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[INSERT_Nota]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
DROP PROCEDURE [dbo].[INSERT_Editor]
GO
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK_Nota_Tag]
GO
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK_Nota_Editor]
GO
ALTER TABLE [dbo].[ContadorNota] DROP CONSTRAINT [FK_ContadorNota_Nota]
GO
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [DF_Nota_fechaPublicacion]
GO
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [DF_Nota_fechaGuardado]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 1/21/2021 6:11:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tag]') AND type in (N'U'))
DROP TABLE [dbo].[Tag]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 1/21/2021 6:11:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nota]') AND type in (N'U'))
DROP TABLE [dbo].[Nota]
GO
/****** Object:  Table [dbo].[Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Editor]') AND type in (N'U'))
DROP TABLE [dbo].[Editor]
GO
/****** Object:  Table [dbo].[ContadorNota]    Script Date: 1/21/2021 6:11:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContadorNota]') AND type in (N'U'))
DROP TABLE [dbo].[ContadorNota]
GO
/****** Object:  Table [dbo].[ContadorNota]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  Table [dbo].[Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  Table [dbo].[Nota]    Script Date: 1/21/2021 6:11:30 PM ******/
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
	[foto] [varchar](100) NOT NULL,
	[descripcionFoto] [varchar](max) NOT NULL,
	[textoCompleto] [varchar](max) NOT NULL,
	[fechaGuardado] [datetime] NOT NULL,
	[fechaPublicacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Nota] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 1/21/2021 6:11:30 PM ******/
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
SET IDENTITY_INSERT [dbo].[Editor] ON 
GO
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (1, N'Juanchi Brossa', N'Jefe Seguridad Microsoft', N'urlFoto Juanchi', N'Link1', N'Link2', N'Link3')
GO
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (2, N'Ezequiel Arnaudo', N'Programa en HTML', N'url Foto Ezequiel', N'Link 1', N'Link 2', N'Link 3')
GO
INSERT [dbo].[Editor] ([Id], [nombreEditor], [profesion], [urlFoto], [link1], [link2], [link3]) VALUES (3, N'David Chaves', N'Se come trabas', N'url del traba', N'Link2', N'Link3', N'Link5')
GO
SET IDENTITY_INSERT [dbo].[Editor] OFF
GO
SET IDENTITY_INSERT [dbo].[Nota] ON 
GO
INSERT [dbo].[Nota] ([Id], [idTag], [idEditor], [titulo], [subtitulo], [foto], [descripcionFoto], [textoCompleto], [fechaGuardado], [fechaPublicacion]) VALUES (1, 1, 1, N'Titulo Nota 1', N'Sub nota 1', N'FOto nota1', N'LALALALALA', N'LALALALALA', CAST(N'2020-10-10T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Nota] OFF
GO
SET IDENTITY_INSERT [dbo].[Tag] ON 
GO
INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (1, N'Novedades')
GO
INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (2, N'Emprendedores')
GO
INSERT [dbo].[Tag] ([Id], [nombre]) VALUES (3, N'Contexto')
GO
SET IDENTITY_INSERT [dbo].[Tag] OFF
GO
ALTER TABLE [dbo].[Nota] ADD  CONSTRAINT [DF_Nota_fechaGuardado]  DEFAULT (((2020)-(2))-(2)) FOR [fechaGuardado]
GO
ALTER TABLE [dbo].[Nota] ADD  CONSTRAINT [DF_Nota_fechaPublicacion]  DEFAULT (((2020)-(2))-(2)) FOR [fechaPublicacion]
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
/****** Object:  StoredProcedure [dbo].[INSERT_Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[INSERT_Nota]    Script Date: 1/21/2021 6:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERT_Nota](
@idTag bigint, 
@idEditor bigint, 
@titulo varchar(max), 
@subtitulo varchar(max), 
@foto varchar(100), 
@descripcionFoto varchar(max),
@textoCompleto varchar(max),
@fechaGuardado varchar(10),
@fechaPublicacion varchar(10)
)
as
begin
insert into Nota(
				idTag, 
				idEditor,
				titulo, 
				subtitulo, 
				foto, 
				descripcionFoto, 
				textoCompleto, 
				fechaGuardado, 
				fechaPublicacion)
		    values(
				@idTag,
				@idEditor,
				@titulo,
				@subtitulo,
				@foto,
				@descripcionFoto,
				@textoCompleto,
				@fechaGuardado,
				@fechaPublicacion)
				
end
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Editor]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_EDITOR]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_FECHA]    Script Date: 1/21/2021 6:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_Nota_BY_FECHA] (@fechaDesde varchar(10), @fechaHasta varchar(10))
AS
BEGIN
	SELECT * FROM Nota WHERE (fechaPublicacion BETWEEN CONVERT(datetime,@fechaDesde,120) AND CONVERT(datetime,@fechaHasta,120))
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_ID]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TAG]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SELECT_Nota_BY_TOP]    Script Date: 1/21/2021 6:11:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UPDATE_ContadorNota]    Script Date: 1/21/2021 6:11:30 PM ******/
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
