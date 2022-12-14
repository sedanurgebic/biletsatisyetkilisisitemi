USE [master]
GO
/****** Object:  Database [ucak]    Script Date: 4.02.2021 19:00:20 ******/
CREATE DATABASE [ucak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ucak', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ucak.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ucak_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ucak_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ucak] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ucak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ucak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ucak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ucak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ucak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ucak] SET ARITHABORT OFF 
GO
ALTER DATABASE [ucak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ucak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ucak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ucak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ucak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ucak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ucak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ucak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ucak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ucak] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ucak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ucak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ucak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ucak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ucak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ucak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ucak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ucak] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ucak] SET  MULTI_USER 
GO
ALTER DATABASE [ucak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ucak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ucak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ucak] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ucak] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ucak] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ucak] SET QUERY_STORE = OFF
GO
USE [ucak]
GO
/****** Object:  Table [dbo].[firmalar]    Script Date: 4.02.2021 19:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firmalar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma_adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_firmalar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanicilar]    Script Date: 4.02.2021 19:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanicilar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
	[soyad] [nvarchar](50) NOT NULL,
	[kullanici_adi] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](50) NULL,
	[kayit_tarihi] [datetime] NULL,
	[isdeleted] [bit] NULL,
 CONSTRAINT [PK_kullanicilar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yolcular]    Script Date: 4.02.2021 19:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yolcular](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yolcu_ad] [nvarchar](50) NOT NULL,
	[yolcu_soyad] [nvarchar](50) NOT NULL,
	[yolcu_cinsiyet] [nvarchar](50) NULL,
	[yolcu_dogumyili] [int] NOT NULL,
	[nereden] [nvarchar](50) NOT NULL,
	[nereye] [nvarchar](50) NOT NULL,
	[firma_kodu] [int] NOT NULL,
	[yolcu_koltukno] [int] NOT NULL,
	[yolcu_kayit_tarihi] [datetime] NULL,
	[fotograf] [nvarchar](max) NULL,
	[Isdeleted] [bit] NULL,
 CONSTRAINT [PK_yolcular] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[firmalar] ON 

INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (1, N'TURKISHAIRLINES')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (2, N'ANADOLUJET')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (3, N'PEGASUS')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (4, N'SUNEXPRESS')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (5, N'ATLASGLOBAL')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (6, N'ONURAIR')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (7, N'AIRFRANCE')
INSERT [dbo].[firmalar] ([id], [firma_adi]) VALUES (8, N'QATAR')
SET IDENTITY_INSERT [dbo].[firmalar] OFF
GO
SET IDENTITY_INSERT [dbo].[kullanicilar] ON 

INSERT [dbo].[kullanicilar] ([id], [ad], [soyad], [kullanici_adi], [sifre], [kayit_tarihi], [isdeleted]) VALUES (11, N'Seda', N'Gebiç', N'sedanur', N'123', CAST(N'2021-02-04T18:24:29.193' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[yolcular] ON 

INSERT [dbo].[yolcular] ([ID], [yolcu_ad], [yolcu_soyad], [yolcu_cinsiyet], [yolcu_dogumyili], [nereden], [nereye], [firma_kodu], [yolcu_koltukno], [yolcu_kayit_tarihi], [fotograf], [Isdeleted]) VALUES (3, N'Sedanur', N'GEBİÇ', N'Kadın', 1998, N'Trabzon', N'Ankara', 4, 34, CAST(N'2021-02-04T18:49:45.853' AS DateTime), N'/Resimler/e2eccb6b-2580-4d76-b0a3-2766179f9fee.png', 0)
SET IDENTITY_INSERT [dbo].[yolcular] OFF
GO
ALTER TABLE [dbo].[kullanicilar] ADD  CONSTRAINT [DF_kullanicilar_kayit_tarihi]  DEFAULT (getdate()) FOR [kayit_tarihi]
GO
ALTER TABLE [dbo].[yolcular] ADD  CONSTRAINT [DF_yolcular_yolcu_kayit_tarihi]  DEFAULT (getdate()) FOR [yolcu_kayit_tarihi]
GO
ALTER TABLE [dbo].[yolcular]  WITH CHECK ADD  CONSTRAINT [FK_yolcular_firmalar] FOREIGN KEY([firma_kodu])
REFERENCES [dbo].[firmalar] ([id])
GO
ALTER TABLE [dbo].[yolcular] CHECK CONSTRAINT [FK_yolcular_firmalar]
GO
USE [master]
GO
ALTER DATABASE [ucak] SET  READ_WRITE 
GO
