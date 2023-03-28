USE [master]
GO
/****** Object:  Database [EmpleadosCrud]    Script Date: 27/03/2023 06:57:34 p. m. ******/
CREATE DATABASE [EmpleadosCrud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpleadosCrud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EmpleadosCrud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpleadosCrud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EmpleadosCrud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EmpleadosCrud] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpleadosCrud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpleadosCrud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpleadosCrud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpleadosCrud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmpleadosCrud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpleadosCrud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET RECOVERY FULL 
GO
ALTER DATABASE [EmpleadosCrud] SET  MULTI_USER 
GO
ALTER DATABASE [EmpleadosCrud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpleadosCrud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpleadosCrud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpleadosCrud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpleadosCrud] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpleadosCrud] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmpleadosCrud', N'ON'
GO
ALTER DATABASE [EmpleadosCrud] SET QUERY_STORE = ON
GO
ALTER DATABASE [EmpleadosCrud] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EmpleadosCrud]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[IdArea] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](50) NULL,
	[Estatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Correo] [varchar](255) NOT NULL,
	[Fecha_Ingreso] [varchar](255) NOT NULL,
	[Estatus] [int] NOT NULL,
	[IdArea] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Area] ON 
GO
INSERT [dbo].[Area] ([IdArea], [Area], [Estatus]) VALUES (1, N'Contabilidad', 1)
GO
INSERT [dbo].[Area] ([IdArea], [Area], [Estatus]) VALUES (2, N'Operaciones', 1)
GO
INSERT [dbo].[Area] ([IdArea], [Area], [Estatus]) VALUES (3, N'Ventas', 1)
GO
INSERT [dbo].[Area] ([IdArea], [Area], [Estatus]) VALUES (4, N'Sistemas', 1)
GO
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (1, N'Jiraya', N'Pascal', N'pedro.pascal@gmail.com', N'Mar 21 2023  2:51PM', 1, 4)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (2, N'Sasuke', N'Uchiha', N'sasuke.uchiha@hoja.com', N'Mar 21 2023  2:51PM', 0, 1)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (3, N'Alejandro', N'Montiel', N'alex.montiel@gmail.com', N'Mar 21 2023  2:51PM', 1, 4)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (4, N'Yordi', N'Rosado', N'yordi.rosado@gmail.com', N'Mar 21 2023  3:26PM', 0, 4)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (5, N'Naruto', N'Uzumaki', N'naruto.uzumaki@hoja.com', N'Mar 22 2023 11:51AM', 1, 2)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (6, N'Ibai', N'Llanos', N'ibai.llano@twitch.com', N'Mar 25 2023  8:12PM', 1, 1)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (7, N'Kun', N'Aguero', N'kun.aguero@twitch.com', N'Mar 25 2023  8:49PM', 1, 2)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (8, N'Ari', N'Gameplays', N'ari.gameplays@twitch.com', N'Mar 25 2023  8:51PM', 1, 3)
GO
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Correo], [Fecha_Ingreso], [Estatus], [IdArea]) VALUES (9, N'Ama', N'blitz', N'ama.blitz@twitch.com', N'Mar 25 2023  9:00PM', 0, 2)
GO
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IdArea])
REFERENCES [dbo].[Area] ([IdArea])
GO
/****** Object:  StoredProcedure [dbo].[Areas_All]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Areas_All]
AS
SELECT *
FROM Area
GO
/****** Object:  StoredProcedure [dbo].[Empleados_Add]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Empleados_Add]
@Nombre			VARCHAR(255),
@Apellido		VARCHAR(255),
@Correo			VARCHAR(255),
@IdArea			INT
AS
INSERT INTO Empleados (Nombre,Apellido,Correo,Fecha_Ingreso,Estatus, IdArea)
VALUES (@Nombre, @Apellido,@Correo,GETDATE(),1, @IdArea)
GO
/****** Object:  StoredProcedure [dbo].[Empleados_All]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Empleados_All]
AS
SELECT e.IdEmpleado, e.Nombre, e.Apellido, e.Correo, e.Fecha_Ingreso, e.Estatus, e.IdArea, a.Area
FROM Empleados e
INNER JOIN Area a ON a.IdArea = e.IdArea
WHERE e.Estatus =1 ;


GO
/****** Object:  StoredProcedure [dbo].[Empleados_Delete]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Empleados_Delete]
@IdEmpleado		int
AS
UPDATE Empleados
SET
Estatus = 0
WHERE IdEmpleado = @IdEmpleado
GO
/****** Object:  StoredProcedure [dbo].[Empleados_GetId]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Empleados_GetId]
@IdEmpleado int
AS
SELECT e.IdEmpleado, e.Nombre, e.Apellido, e.Correo, e.Fecha_Ingreso, e.Estatus, e.IdArea, a.Area
FROM Empleados e
INNER JOIN Area a ON a.IdArea = e.IdArea
WHERE e.Estatus =1 AND e.IdEmpleado = @IdEmpleado;
GO
/****** Object:  StoredProcedure [dbo].[Empleados_Update]    Script Date: 27/03/2023 06:57:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Empleados_Update]
@IdEmpleado		int,
@Nombre			VARCHAR(255),
@Apellido		VARCHAR(255),
@Correo			VARCHAR(255),
@IdArea			int
AS
UPDATE Empleados
SET
Nombre = @Nombre,
Apellido = @Apellido,
Correo = @Correo,
IdArea = @IdArea
WHERE idEmpleado = @IdEmpleado
GO
USE [master]
GO
ALTER DATABASE [EmpleadosCrud] SET  READ_WRITE 
GO
