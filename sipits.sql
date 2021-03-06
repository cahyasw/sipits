USE [master]
GO
/****** Object:  Database [sipits]    Script Date: 26/07/2020 01.25.11 ******/
CREATE DATABASE [sipits]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sipits', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sipits.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sipits_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\sipits_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sipits] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sipits].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sipits] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sipits] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sipits] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sipits] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sipits] SET ARITHABORT OFF 
GO
ALTER DATABASE [sipits] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sipits] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sipits] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sipits] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sipits] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sipits] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sipits] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sipits] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sipits] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sipits] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sipits] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sipits] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sipits] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sipits] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sipits] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sipits] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sipits] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sipits] SET RECOVERY FULL 
GO
ALTER DATABASE [sipits] SET  MULTI_USER 
GO
ALTER DATABASE [sipits] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sipits] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sipits] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sipits] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sipits] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sipits', N'ON'
GO
ALTER DATABASE [sipits] SET QUERY_STORE = OFF
GO
USE [sipits]
GO
/****** Object:  Table [dbo].[data_kmpi]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_kmpi](
	[id_kmpi] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[nomor_induk] [varchar](100) NOT NULL,
	[dept] [varchar](200) NOT NULL,
	[univ] [varchar](200) NOT NULL,
	[alamat_kantor] [varchar](250) NOT NULL,
	[telepon_kantor] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[no_hp] [varchar](50) NOT NULL,
	[nama_pembimbing] [varchar](100) NOT NULL,
	[nomor_pembimbing] [varchar](200) NOT NULL,
	[departemen_pembimbing] [varchar](100) NOT NULL,
	[fakultas_pembimbing] [varchar](100) NOT NULL,
	[email_pembimbing] [varchar](100) NOT NULL,
	[hp_pembimbing] [varchar](100) NOT NULL,
	[judul_publikasi] [varchar](250) NOT NULL,
	[publisher] [varchar](100) NOT NULL,
	[draft_publikasi] [varchar](100) NOT NULL,
	[luaran_publikasi] [varchar](100) NOT NULL,
	[mou_publikasi] [varchar](100) NOT NULL,
	[status] [int] NOT NULL,
	[tanggal_submit] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_kmpi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_kp]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_kp](
	[id_kp] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[nomor_induk] [varchar](100) NOT NULL,
	[departemen] [varchar](200) NOT NULL,
	[universitas] [varchar](200) NOT NULL,
	[alamat_kantor] [varchar](250) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[no_hp] [varchar](50) NOT NULL,
	[ketua] [varchar](100) NOT NULL,
	[judul] [varchar](200) NOT NULL,
	[skema] [varchar](50) NOT NULL,
	[sumber] [varchar](50) NOT NULL,
	[lama_penelitian] [int] NOT NULL,
	[anggota] [varchar](250) NOT NULL,
	[proposal] [varchar](100) NOT NULL,
	[mou] [varchar](100) NOT NULL,
	[moa] [varchar](100) NOT NULL,
	[status] [int] NOT NULL,
	[tanggal_submit] [date] NOT NULL,
	[kategori] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_kp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_p3i]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_p3i](
	[id_p3i] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[nomor_induk] [varchar](100) NOT NULL,
	[departemen] [varchar](200) NOT NULL,
	[universitas] [varchar](200) NOT NULL,
	[alamat_kantor] [varchar](250) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[no_hp] [varchar](50) NOT NULL,
	[hindex] [varchar](100) NOT NULL,
	[pernyataan] [varchar](100) NOT NULL,
	[draf] [varchar](100) NOT NULL,
	[npwp] [varchar](100) NOT NULL,
	[tabungan] [varchar](100) NOT NULL,
	[judul1] [varchar](100) NULL,
	[skema1] [varchar](100) NULL,
	[sumber1] [varchar](100) NULL,
	[judul2] [varchar](100) NULL,
	[skema2] [varchar](100) NULL,
	[sumber2] [varchar](100) NULL,
	[judul3] [varchar](100) NULL,
	[skema3] [varchar](100) NULL,
	[sumber3] [varchar](100) NULL,
	[status] [int] NOT NULL,
	[tanggal_submit] [date] NOT NULL,
	[kategori] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_p3i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_pap]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_pap](
	[id_pap] [int] NOT NULL,
	[nama_ketua] [varchar](100) NOT NULL,
	[nomor_induk_ketua] [varchar](100) NOT NULL,
	[departemen_ketua] [varchar](100) NOT NULL,
	[universitas_ketua] [varchar](100) NOT NULL,
	[alamat_ketua] [varchar](100) NOT NULL,
	[email_ketua] [varchar](100) NOT NULL,
	[no_hp_ketua] [varchar](100) NOT NULL,
	[nama_ap] [varchar](100) NOT NULL,
	[nomor_induk_ap] [varchar](100) NOT NULL,
	[alamat_ktp_ap] [varchar](100) NOT NULL,
	[alamat_domisili_ap] [varchar](100) NOT NULL,
	[email_ap] [varchar](100) NOT NULL,
	[no_hp_ap] [varchar](100) NOT NULL,
	[judul] [varchar](100) NOT NULL,
	[nomor_kontrak] [varchar](100) NOT NULL,
	[tanggal_kontrak] [varchar](100) NOT NULL,
	[skema] [varchar](100) NOT NULL,
	[pendanaan] [varchar](100) NOT NULL,
	[jumlah_hibah] [varchar](100) NOT NULL,
	[target_luaran] [varchar](100) NOT NULL,
	[honor] [varchar](100) NOT NULL,
	[lama_bulan] [varchar](100) NOT NULL,
	[total_honor] [varchar](100) NOT NULL,
	[pernyataan] [varchar](100) NOT NULL,
	[ktp] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dosen]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dosen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [text] NULL,
	[NIDN] [varchar](25) NULL,
	[NIP] [varchar](25) NULL,
	[Alamat] [text] NULL,
	[email] [varchar](100) NULL,
	[telepon] [varchar](25) NULL,
	[departemen] [varchar](100) NULL,
	[fakultas] [text] NULL,
	[universitas] [text] NULL,
	[H_index_scopus] [varchar](5) NULL,
 CONSTRAINT [PK_dosen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 26/07/2020 01.25.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id_user] [int] NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [judul1]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [skema1]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [sumber1]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [judul2]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [skema2]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [sumber2]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [judul3]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [skema3]
GO
ALTER TABLE [dbo].[data_p3i] ADD  DEFAULT (NULL) FOR [sumber3]
GO
USE [master]
GO
ALTER DATABASE [sipits] SET  READ_WRITE 
GO
