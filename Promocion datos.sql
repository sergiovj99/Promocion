USE [master]
GO
/****** Object:  Database [Promocion]    Script Date: 15/08/2022 19:46:41 ******/
CREATE DATABASE [Promocion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Promocion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Promocion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Promocion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Promocion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Promocion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Promocion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Promocion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Promocion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Promocion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Promocion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Promocion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Promocion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Promocion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Promocion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Promocion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Promocion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Promocion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Promocion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Promocion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Promocion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Promocion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Promocion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Promocion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Promocion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Promocion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Promocion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Promocion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Promocion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Promocion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Promocion] SET  MULTI_USER 
GO
ALTER DATABASE [Promocion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Promocion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Promocion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Promocion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Promocion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Promocion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Promocion] SET QUERY_STORE = OFF
GO
USE [Promocion]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 15/08/2022 19:46:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[IdArea] [int] NOT NULL,
	[Area] [nchar](10) NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionColor]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionColor](
	[IdColor] [int] NOT NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClasificacionColor] PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodigoDepartamental]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodigoDepartamental](
	[CodigoDep] [int] NOT NULL,
	[Departamento] [nvarchar](50) NULL,
 CONSTRAINT [PK_CodigoDepartamental] PRIMARY KEY CLUSTERED 
(
	[CodigoDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodigoEntidad]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodigoEntidad](
	[Codigo] [int] NOT NULL,
	[Entidad] [nvarchar](50) NULL,
 CONSTRAINT [PK_CodigoEntidad] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionAudicionLenguaje]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionAudicionLenguaje](
	[PuntuacionDirecta] [int] NULL,
	[IdRangos] [int] NULL,
	[ValorRango] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionMotricidadFinoAdaptativa]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionMotricidadFinoAdaptativa](
	[PuntuacionDirecta] [int] NULL,
	[IdRangos] [int] NULL,
	[ValorRango] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionMotricidadGruesa]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionMotricidadGruesa](
	[PuntuacionDirecta] [int] NULL,
	[IdRangos] [int] NULL,
	[ValorRango] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionPersonalSocial]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionPersonalSocial](
	[PuntuacionDirecta] [int] NULL,
	[IdRangos] [int] NULL,
	[ValorRango] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosGeneralesAdulto]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosGeneralesAdulto](
	[IdTipo] [int] NULL,
	[PrimerNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NULL,
	[IdEtnia] [int] NULL,
	[IdDepartamento] [int] NULL,
	[DireccionAdulto] [nvarchar](200) NULL,
	[TelefonoFijoAdulto] [int] NULL,
	[NumIdentificacion] [int] NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[IdTipoPobla] [int] NULL,
	[IdMunicipio] [int] NULL,
	[Celular] [int] NULL,
	[IdEPS] [int] NULL,
	[IdIPS] [int] NULL,
	[IdRegimen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosGeneralesGestante]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosGeneralesGestante](
	[IdTipo] [int] NULL,
	[PrimerNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NULL,
	[IdEtnia] [int] NULL,
	[IdDepartamento] [int] NULL,
	[Direccion] [nvarchar](200) NULL,
	[TelefonoFijo] [int] NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[IdMunicipio] [int] NULL,
	[Celular] [nchar](10) NULL,
	[IdTipoPobla] [int] NULL,
	[IdIps] [int] NULL,
	[IdEps] [int] NULL,
	[IdRegimen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosGeneralesNiño]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosGeneralesNiño](
	[CertificadoNacidoVivo] [int] NULL,
	[IdDepartamentoNac] [int] NULL,
	[LugarAtencionParto] [nvarchar](50) NULL,
	[FechaNacimiento] [int] NULL,
	[PesoAlNacer] [int] NULL,
	[EdadGestacional] [int] NULL,
	[Genero] [nvarchar](50) NULL,
	[PrimerNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NULL,
	[IdRegimen] [int] NULL,
	[IdEps] [int] NULL,
	[IdDepartamento] [int] NULL,
	[DireccionNiño] [nvarchar](200) NULL,
	[TelefonoFijo] [int] NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[IdMunicipio] [int] NULL,
	[Celular] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeptoNacimiento]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeptoNacimiento](
	[IdDepartamentoNac] [int] NOT NULL,
	[Departamento] [nchar](10) NULL,
 CONSTRAINT [PK_DeptoNacimiento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamentoNac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadPrestadoraSalud]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadPrestadoraSalud](
	[IdEps] [int] NOT NULL,
	[Eps] [nvarchar](50) NULL,
 CONSTRAINT [PK_EntidadPrestadoraSalud] PRIMARY KEY CLUSTERED 
(
	[IdEps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EscalaColor]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EscalaColor](
	[Rango] [int] NULL,
	[IdArea] [int] NULL,
	[IdColor] [int] NULL,
	[Puntuacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsquemaVacunacionAdultos]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsquemaVacunacionAdultos](
	[IdPaciente] [int] NULL,
	[IdVacuna] [int] NULL,
	[IdTipoDosis] [int] NULL,
	[FechaAplicacion] [date] NULL,
	[IdLaboratorio] [int] NULL,
	[NLote] [nvarchar](50) NULL,
	[IdIPS] [int] NULL,
	[IdVacunador] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsquemaVacunacionNiños]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsquemaVacunacionNiños](
	[Edad] [nvarchar](50) NULL,
	[IdPaciente] [int] NULL,
	[IdVacuna] [int] NULL,
	[IdTipoDosis] [int] NULL,
	[FechaAplicacion] [date] NULL,
	[IdLaboratorio] [int] NULL,
	[NLote] [nvarchar](50) NULL,
	[IdIPS] [int] NULL,
	[IdVacunador] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsquemaVirusPapilomaHumano]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsquemaVirusPapilomaHumano](
	[Edad] [nvarchar](50) NULL,
	[IdPaciente] [int] NULL,
	[IdVacuna] [int] NULL,
	[IdTipoDosis] [int] NULL,
	[FechaAplicacion] [date] NULL,
	[IdLaboratorio] [int] NULL,
	[NLote] [nvarchar](50) NULL,
	[IdIPS] [int] NULL,
	[IdVacunador] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etnia]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etnia](
	[IdEtnia] [int] NOT NULL,
	[Etnia] [nvarchar](50) NULL,
 CONSTRAINT [PK_Etnia] PRIMARY KEY CLUSTERED 
(
	[IdEtnia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaProximaVacunacion]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaProximaVacunacion](
	[IdPaciente] [int] NULL,
	[FechaProximaCita] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoDiferencial]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoDiferencial](
	[IdGrupoDif] [int] NOT NULL,
	[GrupoDiferencial] [nvarchar](50) NULL,
 CONSTRAINT [PK_GrupoDiferencial] PRIMARY KEY CLUSTERED 
(
	[IdGrupoDif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPS]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPS](
	[IdIPS] [int] NOT NULL,
	[IPS] [nvarchar](50) NULL,
 CONSTRAINT [PK_IPS] PRIMARY KEY CLUSTERED 
(
	[IdIPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[IdItem] [int] NOT NULL,
	[Item] [int] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laboratorios]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laboratorios](
	[IdLaboratorio] [int] NULL,
	[Laboratorio] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[IdMunicipio] [int] NOT NULL,
	[Municipio] [nvarchar](50) NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[IdPaciente] [int] NOT NULL,
	[Paciente] [varchar](50) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PuntuacionEscala]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuntuacionEscala](
	[IdTipoDoc] [int] NULL,
	[NumeroIdentificacion] [int] NOT NULL,
	[PromerNombre] [nvarchar](50) NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[CodigoEntidad] [int] NULL,
	[IdTipoUsuario] [int] NULL,
	[IdEtnia] [int] NULL,
	[IdGrupoDif] [int] NULL,
	[CodigDep] [int] NULL,
	[IdZona] [int] NULL,
	[Sexo] [nvarchar](50) NULL,
	[Edad] [int] NULL,
 CONSTRAINT [PK_PuntuacionEscala] PRIMARY KEY CLUSTERED 
(
	[NumeroIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangoEdad]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangoEdad](
	[IdRango] [int] NOT NULL,
	[Rango] [varchar](50) NULL,
 CONSTRAINT [PK_RangoEdad] PRIMARY KEY CLUSTERED 
(
	[IdRango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rangos]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rangos](
	[IdRango] [int] NOT NULL,
	[Rango] [nchar](10) NULL,
 CONSTRAINT [PK_Rangos] PRIMARY KEY CLUSTERED 
(
	[IdRango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegimenAfiliacion]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegimenAfiliacion](
	[IdRegimen] [int] NOT NULL,
	[Regimen] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegimenAfiliacion] PRIMARY KEY CLUSTERED 
(
	[IdRegimen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestaAL]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestaAL](
	[IdPaciente] [int] NULL,
	[IdRango] [int] NULL,
	[IdItem] [int] NULL,
	[Respuesta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestaFA]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestaFA](
	[IdPaciente] [int] NOT NULL,
	[IdRango] [int] NULL,
	[IdItem] [int] NULL,
	[Respuesta] [int] NULL,
 CONSTRAINT [PK_RespuestaFA] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestaMG]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestaMG](
	[IdPaciente] [int] NULL,
	[IdRango] [int] NULL,
	[IdItem] [int] NULL,
	[Respuesta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestaPS]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestaPS](
	[IdPaciente] [int] NULL,
	[IdRango] [int] NULL,
	[IdItem] [int] NULL,
	[Respuesta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadosTitulacionAnticuerpos]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadosTitulacionAnticuerpos](
	[IdPaciente] [int] NULL,
	[IdTitulacionAnticuerpos] [int] NULL,
	[ValorResultado] [nvarchar](50) NULL,
	[FechaResultado] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[IdSexo] [int] NOT NULL,
	[Sexo] [nchar](10) NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[IdSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDePoblacion]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDePoblacion](
	[IdTipoPobla] [int] NOT NULL,
	[TipoPoblacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoDePoblacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoPobla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDosis]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDosis](
	[IdTipoDosis] [int] NULL,
	[Dosis] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoId]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoId](
	[IdTipodDoc] [int] NOT NULL,
	[TipoId] [nvarchar](max) NULL,
 CONSTRAINT [PK_TipoId] PRIMARY KEY CLUSTERED 
(
	[IdTipodDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[IdTipoUsuario] [int] NOT NULL,
	[TipoUsuario] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TitulacionAnticuerpos]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TitulacionAnticuerpos](
	[IdTitulacionAnticuerpos] [int] NULL,
	[TitulacionAnticuerpos] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacunadores]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacunadores](
	[IdVacunador] [int] NULL,
	[Nombre] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunasAdultos]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunasAdultos](
	[IdVacuna] [int] NULL,
	[Vacuna] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunasNiños]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunasNiños](
	[IdVacuna] [int] NULL,
	[Vacuna] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunasVirusPapilomaHumano]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunasVirusPapilomaHumano](
	[IdVacuna] [int] NULL,
	[Vacuna] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonaResidencial]    Script Date: 15/08/2022 19:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonaResidencial](
	[IdZona] [int] NOT NULL,
	[Zona] [nvarchar](50) NULL,
 CONSTRAINT [PK_ZonaResidencial] PRIMARY KEY CLUSTERED 
(
	[IdZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Area] ([IdArea], [Area]) VALUES (101, N'MG        ')
INSERT [dbo].[Area] ([IdArea], [Area]) VALUES (102, N'MF        ')
INSERT [dbo].[Area] ([IdArea], [Area]) VALUES (103, N'AL        ')
INSERT [dbo].[Area] ([IdArea], [Area]) VALUES (104, N'PS        ')
GO
INSERT [dbo].[ClasificacionColor] ([IdColor], [Color]) VALUES (101, N'Rojo')
INSERT [dbo].[ClasificacionColor] ([IdColor], [Color]) VALUES (102, N'Amarillo')
INSERT [dbo].[ClasificacionColor] ([IdColor], [Color]) VALUES (103, N'Verde')
GO
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (105, N'Antioquia')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (108, N'Atlantico')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (109, N'Barranquilla')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (111, N'Santa fe de bogota')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (113, N'Bolivar')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (114, N'Cartagena')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (115, N'Boyaca')
INSERT [dbo].[CodigoDepartamental] ([CodigoDep], [Departamento]) VALUES (117, N'Caldas')
GO
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (102, N'Salud Total')
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (103, N'Cafe Salud')
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (105, N'Sanitas')
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (106, N'Nueva EPS')
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (107, N'Medimas')
INSERT [dbo].[CodigoEntidad] ([Codigo], [Entidad]) VALUES (108, N'SaludVida')
GO
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (1, 101, 10)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (2, 102, 3)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (3, 103, 1)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (4, 104, 6)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (5, 105, 4)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (6, 106, 5)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (7, 107, 3)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (8, 108, 1)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (9, 109, 4)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (10, 110, 2)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (11, 111, 1)
INSERT [dbo].[ConversionAudicionLenguaje] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (12, 112, 6)
GO
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (1, 101, 5)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (2, 102, 2)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (3, 103, 3)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (4, 104, 9)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (5, 105, 5)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (6, 106, 11)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (7, 107, 13)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (8, 108, 29)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (9, 109, 7)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (10, 110, NULL)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (11, 111, NULL)
INSERT [dbo].[ConversionMotricidadFinoAdaptativa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (12, 112, NULL)
GO
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (1, 101, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (2, 102, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (3, 103, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (304, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (305, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (308, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (309, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (310, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (311, NULL, NULL)
INSERT [dbo].[ConversionMotricidadGruesa] ([PuntuacionDirecta], [IdRangos], [ValorRango]) VALUES (312, NULL, NULL)
GO
INSERT [dbo].[DatosGeneralesAdulto] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [DireccionAdulto], [TelefonoFijoAdulto], [NumIdentificacion], [SegundoNombre], [SegundoApellido], [IdTipoPobla], [IdMunicipio], [Celular], [IdEPS], [IdIPS], [IdRegimen]) VALUES (101, N'Sergio', N'Vanegas', 1, 105, N'123', 5673452, 1020, N'Alberto', N'Perez', 101, 101, 4562378, NULL, NULL, NULL)
INSERT [dbo].[DatosGeneralesAdulto] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [DireccionAdulto], [TelefonoFijoAdulto], [NumIdentificacion], [SegundoNombre], [SegundoApellido], [IdTipoPobla], [IdMunicipio], [Celular], [IdEPS], [IdIPS], [IdRegimen]) VALUES (102, N'Juanita', N'Arango', 5, 105, N'Calle 113 Sur', 4989413, 1030, N'Maria', N'Arango', 102, 105, 9865478, NULL, NULL, NULL)
INSERT [dbo].[DatosGeneralesAdulto] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [DireccionAdulto], [TelefonoFijoAdulto], [NumIdentificacion], [SegundoNombre], [SegundoApellido], [IdTipoPobla], [IdMunicipio], [Celular], [IdEPS], [IdIPS], [IdRegimen]) VALUES (103, N'Paola', N'Cardona', 2, 108, N'Cra 15 calle b', 5698437, 1040, N'Cindy', N'Tapia', 104, 107, 7650937, NULL, NULL, NULL)
INSERT [dbo].[DatosGeneralesAdulto] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [DireccionAdulto], [TelefonoFijoAdulto], [NumIdentificacion], [SegundoNombre], [SegundoApellido], [IdTipoPobla], [IdMunicipio], [Celular], [IdEPS], [IdIPS], [IdRegimen]) VALUES (104, N'Jonatan', N'Rojas', 4, 109, N'Carrera 95B', 5673967, 1050, N'Mauricio', N'Tabarez', 105, 109, 5649671, NULL, NULL, NULL)
GO
INSERT [dbo].[DatosGeneralesGestante] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [Direccion], [TelefonoFijo], [SegundoNombre], [SegundoApellido], [IdMunicipio], [Celular], [IdTipoPobla], [IdIps], [IdEps], [IdRegimen]) VALUES (101, N'Yexine', N'Tapia', 1, 104, N'Cra 20 calle 3', 6489678, N'Maria', N'Barbosa', 103, N'5674890   ', 106, NULL, NULL, NULL)
INSERT [dbo].[DatosGeneralesGestante] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [Direccion], [TelefonoFijo], [SegundoNombre], [SegundoApellido], [IdMunicipio], [Celular], [IdTipoPobla], [IdIps], [IdEps], [IdRegimen]) VALUES (102, N'Daniela', N'Gonzales', 2, 109, N'Calle 10 b 45', 67574893, NULL, N'Ramirez', 106, N'5678456   ', 104, NULL, NULL, NULL)
INSERT [dbo].[DatosGeneralesGestante] ([IdTipo], [PrimerNombre], [PrimerApellido], [IdEtnia], [IdDepartamento], [Direccion], [TelefonoFijo], [SegundoNombre], [SegundoApellido], [IdMunicipio], [Celular], [IdTipoPobla], [IdIps], [IdEps], [IdRegimen]) VALUES (103, N'Sofia', N'Arenas', 4, 101, N'Cra 96 b 6', 5643456, NULL, N'Vasquez', 109, N'5647895   ', 103, NULL, NULL, NULL)
GO
INSERT [dbo].[DatosGeneralesNiño] ([CertificadoNacidoVivo], [IdDepartamentoNac], [LugarAtencionParto], [FechaNacimiento], [PesoAlNacer], [EdadGestacional], [Genero], [PrimerNombre], [PrimerApellido], [IdRegimen], [IdEps], [IdDepartamento], [DireccionNiño], [TelefonoFijo], [SegundoNombre], [SegundoApellido], [IdMunicipio], [Celular]) VALUES (4569, 91, N'Leticia', 417, 45, 9, N'M', N'Steven', N'Jurado', 1, 102, 113, N'Calle 110 Sur', 5675467, N'Alberto', N'Palacio', 107, 5674567)
GO
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (5, N'Antioquia ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (8, N'Atlantico ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (11, N'Bogota    ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (13, N'Bolivar   ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (15, N'Boyaca    ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (81, N'Arauca    ')
INSERT [dbo].[DeptoNacimiento] ([IdDepartamentoNac], [Departamento]) VALUES (91, N'Amazonas  ')
GO
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (102, N'Salud Total')
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (105, N'Sanitas')
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (106, N'Nueva EPS')
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (107, N'Medimas')
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (108, N'Salud Vida')
INSERT [dbo].[EntidadPrestadoraSalud] ([IdEps], [Eps]) VALUES (193, N'Cafe Salud')
GO
INSERT [dbo].[EscalaColor] ([Rango], [IdArea], [IdColor], [Puntuacion]) VALUES (1, 101, 101, 35)
INSERT [dbo].[EscalaColor] ([Rango], [IdArea], [IdColor], [Puntuacion]) VALUES (2, 102, 102, 12)
INSERT [dbo].[EscalaColor] ([Rango], [IdArea], [IdColor], [Puntuacion]) VALUES (3, 103, 103, 16)
GO
INSERT [dbo].[EsquemaVacunacionAdultos] ([IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (101, 101, 101, CAST(N'2018-08-01' AS Date), 101, N'1567', 104, 1545)
INSERT [dbo].[EsquemaVacunacionAdultos] ([IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (102, 103, 103, CAST(N'2020-01-31' AS Date), 103, N'4534', 101, 7645)
GO
INSERT [dbo].[EsquemaVacunacionNiños] ([Edad], [IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (N'10', 105, 101, 103, CAST(N'2020-01-19' AS Date), 104, N'4567', 107, 3556)
INSERT [dbo].[EsquemaVacunacionNiños] ([Edad], [IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (N'8', 102, 103, 101, CAST(N'2021-12-07' AS Date), 101, N'8987', 101, 5678)
GO
INSERT [dbo].[EsquemaVirusPapilomaHumano] ([Edad], [IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (N'33', 104, 102, 104, CAST(N'2015-01-15' AS Date), 103, N'5432', 103, 1545)
INSERT [dbo].[EsquemaVirusPapilomaHumano] ([Edad], [IdPaciente], [IdVacuna], [IdTipoDosis], [FechaAplicacion], [IdLaboratorio], [NLote], [IdIPS], [IdVacunador]) VALUES (N'23', 105, 101, 102, CAST(N'2013-03-28' AS Date), 102, N'6545', 102, 3456)
GO
INSERT [dbo].[Etnia] ([IdEtnia], [Etnia]) VALUES (1, N'Afrodescendiente')
INSERT [dbo].[Etnia] ([IdEtnia], [Etnia]) VALUES (2, N'Indigena')
INSERT [dbo].[Etnia] ([IdEtnia], [Etnia]) VALUES (3, N'Raizal')
INSERT [dbo].[Etnia] ([IdEtnia], [Etnia]) VALUES (4, N'Palenquero')
INSERT [dbo].[Etnia] ([IdEtnia], [Etnia]) VALUES (5, N'Gitano')
GO
INSERT [dbo].[FechaProximaVacunacion] ([IdPaciente], [FechaProximaCita]) VALUES (101, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[FechaProximaVacunacion] ([IdPaciente], [FechaProximaCita]) VALUES (102, CAST(N'2022-09-09' AS Date))
INSERT [dbo].[FechaProximaVacunacion] ([IdPaciente], [FechaProximaCita]) VALUES (103, CAST(N'2023-07-20' AS Date))
GO
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (101, N'Discapacitado')
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (102, N'Desplazado')
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (103, N'Migrante')
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (104, N'Institucionalizado')
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (105, N'A cargo del ICBF')
INSERT [dbo].[GrupoDiferencial] ([IdGrupoDif], [GrupoDiferencial]) VALUES (106, N'Victima Violencia Armada')
GO
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (101, N'Clinica Cardiovascular')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (102, N'San Vicente Fundacion')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (103, N'Clinica Soma')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (104, N'Clinica Ces')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (105, N'Clinica del Norte')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (106, N'Clinica las Americas')
INSERT [dbo].[IPS] ([IdIPS], [IPS]) VALUES (107, N'Clinica el Rosario')
GO
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (101, 1)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (102, 2)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (103, 3)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (104, 4)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (105, 5)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (106, 6)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (107, 7)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (108, 8)
INSERT [dbo].[Item] ([IdItem], [Item]) VALUES (109, 9)
GO
INSERT [dbo].[laboratorios] ([IdLaboratorio], [Laboratorio]) VALUES (101, N'Pfizer')
INSERT [dbo].[laboratorios] ([IdLaboratorio], [Laboratorio]) VALUES (102, N'Moderna')
INSERT [dbo].[laboratorios] ([IdLaboratorio], [Laboratorio]) VALUES (103, N'AstraZeneca')
INSERT [dbo].[laboratorios] ([IdLaboratorio], [Laboratorio]) VALUES (104, N'JYJ')
INSERT [dbo].[laboratorios] ([IdLaboratorio], [Laboratorio]) VALUES (105, N'Sinovac')
GO
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (101, N'Medellin')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (102, N'Sabaneta')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (103, N'Itagui')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (104, N'Rionegro')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (105, N'Caldas')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (106, N'Santa Barbara')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (107, N'Jardin')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (108, N'Cisneros')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (109, N'La Estrella')
INSERT [dbo].[Municipio] ([IdMunicipio], [Municipio]) VALUES (110, N'Cardalito')
GO
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (101, N'Sergio')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (102, N'Steven')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (103, N'Yexine')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (104, N'Daniela')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (105, N'Sofia')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (106, N'Juanita')
INSERT [dbo].[Paciente] ([IdPaciente], [Paciente]) VALUES (107, N'Paola')
GO
INSERT [dbo].[PuntuacionEscala] ([IdTipoDoc], [NumeroIdentificacion], [PromerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [CodigoEntidad], [IdTipoUsuario], [IdEtnia], [IdGrupoDif], [CodigDep], [IdZona], [Sexo], [Edad]) VALUES (101, 1020, N'Marcela', NULL, N'Reyes', N'Acosta', 102, 101, 2, 101, 114, 104, N'F', 45)
INSERT [dbo].[PuntuacionEscala] ([IdTipoDoc], [NumeroIdentificacion], [PromerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [CodigoEntidad], [IdTipoUsuario], [IdEtnia], [IdGrupoDif], [CodigDep], [IdZona], [Sexo], [Edad]) VALUES (103, 5678, N'Ramon', NULL, N'Perez', N'Robledo', 103, 103, 4, 105, 117, 102, N'M', 67)
GO
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (101, N'1')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (102, N'2')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (103, N'3')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (104, N'4')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (105, N'5')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (106, N'6')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (107, N'7')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (108, N'8')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (109, N'9')
INSERT [dbo].[RangoEdad] ([IdRango], [Rango]) VALUES (110, N'10')
GO
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (101, N'1         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (102, N'2         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (103, N'3         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (104, N'4         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (105, N'5         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (106, N'6         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (107, N'7         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (108, N'8         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (109, N'9         ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (110, N'10        ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (111, N'11        ')
INSERT [dbo].[Rangos] ([IdRango], [Rango]) VALUES (112, N'12        ')
GO
INSERT [dbo].[RegimenAfiliacion] ([IdRegimen], [Regimen]) VALUES (1, N'Contributivo')
INSERT [dbo].[RegimenAfiliacion] ([IdRegimen], [Regimen]) VALUES (2, N'Subsidiado')
INSERT [dbo].[RegimenAfiliacion] ([IdRegimen], [Regimen]) VALUES (3, N'Vinculado')
GO
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (101, N'1')
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (102, N'2')
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (103, N'3')
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (104, N'4')
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (105, N'5')
INSERT [dbo].[TipoDePoblacion] ([IdTipoPobla], [TipoPoblacion]) VALUES (106, N'6')
GO
INSERT [dbo].[TipoDosis] ([IdTipoDosis], [Dosis]) VALUES (101, N'1')
INSERT [dbo].[TipoDosis] ([IdTipoDosis], [Dosis]) VALUES (102, N'2')
INSERT [dbo].[TipoDosis] ([IdTipoDosis], [Dosis]) VALUES (103, N'3')
INSERT [dbo].[TipoDosis] ([IdTipoDosis], [Dosis]) VALUES (104, N'4')
GO
INSERT [dbo].[TipoId] ([IdTipodDoc], [TipoId]) VALUES (101, N'1')
INSERT [dbo].[TipoId] ([IdTipodDoc], [TipoId]) VALUES (102, N'2')
INSERT [dbo].[TipoId] ([IdTipodDoc], [TipoId]) VALUES (103, N'3')
INSERT [dbo].[TipoId] ([IdTipodDoc], [TipoId]) VALUES (104, N'4')
GO
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (101, N'Contributivo')
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (102, N'Subsidiado')
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (103, N'Vinculado')
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (104, N'Particular')
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (105, N'Desplazado')
INSERT [dbo].[TipoUsuario] ([IdTipoUsuario], [TipoUsuario]) VALUES (106, N'Otro')
GO
INSERT [dbo].[TitulacionAnticuerpos] ([IdTitulacionAnticuerpos], [TitulacionAnticuerpos]) VALUES (101, N'Varicela ')
INSERT [dbo].[TitulacionAnticuerpos] ([IdTitulacionAnticuerpos], [TitulacionAnticuerpos]) VALUES (102, N'Hepatitis B')
GO
INSERT [dbo].[Vacunadores] ([IdVacunador], [Nombre]) VALUES (1545, N'Sara')
INSERT [dbo].[Vacunadores] ([IdVacunador], [Nombre]) VALUES (5678, N'Eugenia')
INSERT [dbo].[Vacunadores] ([IdVacunador], [Nombre]) VALUES (3456, N'Marcela')
INSERT [dbo].[Vacunadores] ([IdVacunador], [Nombre]) VALUES (7645, N'Nancy')
GO
INSERT [dbo].[VacunasAdultos] ([IdVacuna], [Vacuna]) VALUES (101, N'Comirnaty')
INSERT [dbo].[VacunasAdultos] ([IdVacuna], [Vacuna]) VALUES (102, N'ARNm-1273')
INSERT [dbo].[VacunasAdultos] ([IdVacuna], [Vacuna]) VALUES (103, N'Vaxzevria')
INSERT [dbo].[VacunasAdultos] ([IdVacuna], [Vacuna]) VALUES (104, N'Ad26.COV2.S')
INSERT [dbo].[VacunasAdultos] ([IdVacuna], [Vacuna]) VALUES (105, N'CoronaVac')
GO
INSERT [dbo].[VacunasNiños] ([IdVacuna], [Vacuna]) VALUES (101, N'Polio')
INSERT [dbo].[VacunasNiños] ([IdVacuna], [Vacuna]) VALUES (102, N'RotaVirus')
INSERT [dbo].[VacunasNiños] ([IdVacuna], [Vacuna]) VALUES (103, N'Neumococo')
INSERT [dbo].[VacunasNiños] ([IdVacuna], [Vacuna]) VALUES (104, N'Varicela')
GO
INSERT [dbo].[VacunasVirusPapilomaHumano] ([IdVacuna], [Vacuna]) VALUES (101, N'Papiloma')
GO
INSERT [dbo].[ZonaResidencial] ([IdZona], [Zona]) VALUES (101, N'Aranjuez')
INSERT [dbo].[ZonaResidencial] ([IdZona], [Zona]) VALUES (102, N'San Javier')
INSERT [dbo].[ZonaResidencial] ([IdZona], [Zona]) VALUES (103, N'Antonio Narino')
INSERT [dbo].[ZonaResidencial] ([IdZona], [Zona]) VALUES (104, N'Candelaria')
INSERT [dbo].[ZonaResidencial] ([IdZona], [Zona]) VALUES (105, N'Prado')
GO
ALTER TABLE [dbo].[ConversionAudicionLenguaje]  WITH CHECK ADD  CONSTRAINT [FK_ConversionAudicionLenguaje_Rangos] FOREIGN KEY([IdRangos])
REFERENCES [dbo].[Rangos] ([IdRango])
GO
ALTER TABLE [dbo].[ConversionAudicionLenguaje] CHECK CONSTRAINT [FK_ConversionAudicionLenguaje_Rangos]
GO
ALTER TABLE [dbo].[ConversionMotricidadFinoAdaptativa]  WITH CHECK ADD  CONSTRAINT [FK_ConversionMotricidadFinoAdaptativa_Rangos] FOREIGN KEY([IdRangos])
REFERENCES [dbo].[Rangos] ([IdRango])
GO
ALTER TABLE [dbo].[ConversionMotricidadFinoAdaptativa] CHECK CONSTRAINT [FK_ConversionMotricidadFinoAdaptativa_Rangos]
GO
ALTER TABLE [dbo].[ConversionMotricidadGruesa]  WITH CHECK ADD  CONSTRAINT [FK_ConversionMotricidadGruesa_Rangos] FOREIGN KEY([IdRangos])
REFERENCES [dbo].[Rangos] ([IdRango])
GO
ALTER TABLE [dbo].[ConversionMotricidadGruesa] CHECK CONSTRAINT [FK_ConversionMotricidadGruesa_Rangos]
GO
ALTER TABLE [dbo].[ConversionPersonalSocial]  WITH CHECK ADD  CONSTRAINT [FK_ConversionPersonalSocial_Rangos] FOREIGN KEY([IdRangos])
REFERENCES [dbo].[Rangos] ([IdRango])
GO
ALTER TABLE [dbo].[ConversionPersonalSocial] CHECK CONSTRAINT [FK_ConversionPersonalSocial_Rangos]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_CodigoDepartamental] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[CodigoDepartamental] ([CodigoDep])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_CodigoDepartamental]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_EntidadPrestadoraSalud] FOREIGN KEY([IdEPS])
REFERENCES [dbo].[EntidadPrestadoraSalud] ([IdEps])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_EntidadPrestadoraSalud]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_Etnia] FOREIGN KEY([IdEtnia])
REFERENCES [dbo].[Etnia] ([IdEtnia])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_Etnia]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_IPS] FOREIGN KEY([IdIPS])
REFERENCES [dbo].[IPS] ([IdIPS])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_IPS]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_Municipio] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[Municipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_Municipio]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_RegimenAfiliacion] FOREIGN KEY([IdRegimen])
REFERENCES [dbo].[RegimenAfiliacion] ([IdRegimen])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_RegimenAfiliacion]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_TipoDePoblacion] FOREIGN KEY([IdTipoPobla])
REFERENCES [dbo].[TipoDePoblacion] ([IdTipoPobla])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_TipoDePoblacion]
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesAdulto_TipoId] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoId] ([IdTipodDoc])
GO
ALTER TABLE [dbo].[DatosGeneralesAdulto] CHECK CONSTRAINT [FK_DatosGeneralesAdulto_TipoId]
GO
ALTER TABLE [dbo].[DatosGeneralesNiño]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesNiño_DeptoNacimiento] FOREIGN KEY([IdDepartamentoNac])
REFERENCES [dbo].[DeptoNacimiento] ([IdDepartamentoNac])
GO
ALTER TABLE [dbo].[DatosGeneralesNiño] CHECK CONSTRAINT [FK_DatosGeneralesNiño_DeptoNacimiento]
GO
ALTER TABLE [dbo].[DatosGeneralesNiño]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesNiño_EntidadPrestadoraSalud] FOREIGN KEY([IdEps])
REFERENCES [dbo].[EntidadPrestadoraSalud] ([IdEps])
GO
ALTER TABLE [dbo].[DatosGeneralesNiño] CHECK CONSTRAINT [FK_DatosGeneralesNiño_EntidadPrestadoraSalud]
GO
ALTER TABLE [dbo].[DatosGeneralesNiño]  WITH CHECK ADD  CONSTRAINT [FK_DatosGeneralesNiño_RegimenAfiliacion] FOREIGN KEY([IdRegimen])
REFERENCES [dbo].[RegimenAfiliacion] ([IdRegimen])
GO
ALTER TABLE [dbo].[DatosGeneralesNiño] CHECK CONSTRAINT [FK_DatosGeneralesNiño_RegimenAfiliacion]
GO
ALTER TABLE [dbo].[EscalaColor]  WITH CHECK ADD  CONSTRAINT [FK_EscalaColor_Area] FOREIGN KEY([IdArea])
REFERENCES [dbo].[Area] ([IdArea])
GO
ALTER TABLE [dbo].[EscalaColor] CHECK CONSTRAINT [FK_EscalaColor_Area]
GO
ALTER TABLE [dbo].[EscalaColor]  WITH CHECK ADD  CONSTRAINT [FK_EscalaColor_ClasificacionColor] FOREIGN KEY([IdColor])
REFERENCES [dbo].[ClasificacionColor] ([IdColor])
GO
ALTER TABLE [dbo].[EscalaColor] CHECK CONSTRAINT [FK_EscalaColor_ClasificacionColor]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_CodigoDepartamental] FOREIGN KEY([CodigDep])
REFERENCES [dbo].[CodigoDepartamental] ([CodigoDep])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_CodigoDepartamental]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_CodigoEntidad] FOREIGN KEY([CodigoEntidad])
REFERENCES [dbo].[CodigoEntidad] ([Codigo])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_CodigoEntidad]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_Etnia] FOREIGN KEY([IdEtnia])
REFERENCES [dbo].[Etnia] ([IdEtnia])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_Etnia]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_GrupoDiferencial] FOREIGN KEY([IdGrupoDif])
REFERENCES [dbo].[GrupoDiferencial] ([IdGrupoDif])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_GrupoDiferencial]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_TipoId] FOREIGN KEY([IdTipoDoc])
REFERENCES [dbo].[TipoId] ([IdTipodDoc])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_TipoId]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_TipoUsuario] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[TipoUsuario] ([IdTipoUsuario])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_TipoUsuario]
GO
ALTER TABLE [dbo].[PuntuacionEscala]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionEscala_ZonaResidencial] FOREIGN KEY([IdZona])
REFERENCES [dbo].[ZonaResidencial] ([IdZona])
GO
ALTER TABLE [dbo].[PuntuacionEscala] CHECK CONSTRAINT [FK_PuntuacionEscala_ZonaResidencial]
GO
ALTER TABLE [dbo].[RespuestaAL]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAL_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[RespuestaAL] CHECK CONSTRAINT [FK_RespuestaAL_Item]
GO
ALTER TABLE [dbo].[RespuestaAL]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAL_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[RespuestaAL] CHECK CONSTRAINT [FK_RespuestaAL_Paciente]
GO
ALTER TABLE [dbo].[RespuestaAL]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAL_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdad] ([IdRango])
GO
ALTER TABLE [dbo].[RespuestaAL] CHECK CONSTRAINT [FK_RespuestaAL_RangoEdad]
GO
ALTER TABLE [dbo].[RespuestaFA]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaFA_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[RespuestaFA] CHECK CONSTRAINT [FK_RespuestaFA_Item]
GO
ALTER TABLE [dbo].[RespuestaFA]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaFA_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[RespuestaFA] CHECK CONSTRAINT [FK_RespuestaFA_Paciente]
GO
ALTER TABLE [dbo].[RespuestaFA]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaFA_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdad] ([IdRango])
GO
ALTER TABLE [dbo].[RespuestaFA] CHECK CONSTRAINT [FK_RespuestaFA_RangoEdad]
GO
ALTER TABLE [dbo].[RespuestaMG]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaMG_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[RespuestaMG] CHECK CONSTRAINT [FK_RespuestaMG_Item]
GO
ALTER TABLE [dbo].[RespuestaMG]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaMG_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[RespuestaMG] CHECK CONSTRAINT [FK_RespuestaMG_Paciente]
GO
ALTER TABLE [dbo].[RespuestaMG]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaMG_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdad] ([IdRango])
GO
ALTER TABLE [dbo].[RespuestaMG] CHECK CONSTRAINT [FK_RespuestaMG_RangoEdad]
GO
ALTER TABLE [dbo].[RespuestaPS]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaPS_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[RespuestaPS] CHECK CONSTRAINT [FK_RespuestaPS_Item]
GO
ALTER TABLE [dbo].[RespuestaPS]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaPS_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[RespuestaPS] CHECK CONSTRAINT [FK_RespuestaPS_Paciente]
GO
ALTER TABLE [dbo].[RespuestaPS]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaPS_RangoEdad] FOREIGN KEY([IdRango])
REFERENCES [dbo].[RangoEdad] ([IdRango])
GO
ALTER TABLE [dbo].[RespuestaPS] CHECK CONSTRAINT [FK_RespuestaPS_RangoEdad]
GO
USE [master]
GO
ALTER DATABASE [Promocion] SET  READ_WRITE 
GO
