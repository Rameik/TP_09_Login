USE [master]
GO
/****** Object:  Database [BD_Login]    Script Date: 4/10/2023 15:10:50 ******/

GO
ALTER DATABASE [BD_Login] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Login] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Login] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Login] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Login] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Login] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Login] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Login] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Login] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Login] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Login] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Login] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Login] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Login] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Login] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_Login] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Login] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Login] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Login] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Login] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Login] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Login] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Login] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Login] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Login] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Login] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Login] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Login] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Login] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Login', N'ON'
GO
ALTER DATABASE [BD_Login] SET QUERY_STORE = OFF
GO
USE [BD_Login]
GO
/****** Object:  User [alumno]    Script Date: 4/10/2023 15:10:50 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 4/10/2023 15:10:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Username] [varchar](50) NOT NULL,
	[Contraseña] [varchar](max) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Telefono] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'adasdasd', N'123456A@', N'sdf', N'vcxvx', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'asd', N'123456A@', N'asd', N'vxcv', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'asdadsdsa', N'123456A@', N'sdf', N'bvcb', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'ASDSAD', N'123456A@', N'sfsdf', N'bvcbcv', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'CASD', N'123456A@', N'sdfsd', N'bvcbvc', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'dfg', N'123456A@', N'asd', N'vx', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'dfgasd', N'123456A@', N'vcxvxc', N'ads', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'erwred', N'123456A@', N'sdfsdf', N'zczxczxc', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'erwrer', N'123456A@', N'sdf', N'bvcbcv', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'sadsadasd', N'123456A@', N'cvbvcbvcb', N'fsfds', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'Toro_aver', N'Torobohemio4!', N'Ilan', N'ilan_correo@averbuch.com.ar', N'0')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'Toro_averr', N'Torobohemio!', N'ilan', N'ilan_correo@averbuch.com.ar', N'+54 9 11 2260-6100')
INSERT [dbo].[Usuarios] ([Username], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (N'zxczxc', N'123456A@', N'asd', N'vcxvx', N'123')
GO
USE [master]
GO
ALTER DATABASE [BD_Login] SET  READ_WRITE 
GO
