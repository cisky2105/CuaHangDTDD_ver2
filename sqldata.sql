USE [master]
GO
/****** Object:  Database [QL_CuaHangDTDD]    Script Date: 7/3/2019 3:23:14 PM ******/
CREATE DATABASE [QL_CuaHangDTDD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_CuaHangDTDD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_CuaHangDTDD.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_CuaHangDTDD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_CuaHangDTDD_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_CuaHangDTDD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_CuaHangDTDD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET  MULTI_USER 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_CuaHangDTDD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_CuaHangDTDD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_CuaHangDTDD]
GO
/****** Object:  Table [dbo].[ChiTietHDNhap]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDNhap](
	[MaHDNhap] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuong] [bigint] NULL,
	[DonGia] [bigint] NULL,
 CONSTRAINT [PK_HDNhapHang_1] PRIMARY KEY CLUSTERED 
(
	[MaHDNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHDXuat]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDXuat](
	[MaHDXuat] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[GiaKM] [int] NULL,
 CONSTRAINT [PK_ChiTietHDXuat] PRIMARY KEY CLUSTERED 
(
	[MaHDXuat] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHA] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NULL,
	[DuongDan] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDNhap] [nvarchar](20) NOT NULL,
	[MaNCC] [nvarchar](20) NULL,
	[CMNDNV] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HoaDonNhap_1] PRIMARY KEY CLUSTERED 
(
	[MaHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[MaHDXuat] [nvarchar](20) NOT NULL,
	[SDTKH] [varchar](11) NULL,
	[CMNDNV] [int] NULL,
	[NgayXuat] [datetime] NULL,
	[TongTien] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HoaDonXuat] PRIMARY KEY CLUSTERED 
(
	[MaHDXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[SDTKH] [varchar](11) NOT NULL,
	[TenKH] [nvarchar](70) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[SDTKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiDT] [nvarchar](20) NOT NULL,
	[TenLoaiDT] [nvarchar](20) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_LoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[CMNDNV] [int] NOT NULL,
	[HoVaTen] [nvarchar](70) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [nvarchar](20) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[CMNDNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [nvarchar](20) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](20) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/3/2019 3:23:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaNSX] [nvarchar](20) NULL,
	[MaLoaiDT] [nvarchar](20) NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaBan] [bigint] NULL,
	[GiaKM] [int] NULL,
	[SLTonKho] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00001', N'SP00001', 10, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00001', N'SP00002', 10, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00001', N'SP00003', 10, 14990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00002', N'SP00001', 10, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00002', N'SP00002', 11, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00002', N'SP00003', 13, 14990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00003', N'SP00002', 10, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00004', N'SP00001', 1, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00005', N'SP00002', 1, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00006', N'SP00003', 1, 14990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00007', N'SP00001', 10, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00008', N'SP00002', 10, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00009', N'SP00003', 10, 14990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00010', N'SP00004', 50, 7990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00011', N'SP00005', 30, 7990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00012', N'SP00006', 500, 9290000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00013', N'SP00007', 30, 12490000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00013', N'SP00008', 30, 22990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00014', N'SP00009', 500, 4990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00015', N'SP00001', 300, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00016', N'SP00001', 290, 28990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00017', N'SP00002', 290, 39990000)
INSERT [dbo].[ChiTietHDNhap] ([MaHDNhap], [MaSP], [SoLuong], [DonGia]) VALUES (N'HDN00018', N'SP00009', 200, 4990000)
INSERT [dbo].[ChiTietHDXuat] ([MaHDXuat], [MaSP], [SoLuong], [DonGia], [GiaKM]) VALUES (N'HDX00001', N'SP00006', 1, 9290000, 0)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00001', N'NCC00001', 123456, CAST(N'2019-06-20 23:17:50.347' AS DateTime), 839700000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00002', N'NCC00001', 123456, CAST(N'2019-06-20 23:36:01.260' AS DateTime), 924660000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00003', N'NCC00001', 123456, CAST(N'2019-06-21 10:07:59.513' AS DateTime), 399900000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00004', N'NCC00001', 123456, CAST(N'2019-06-21 13:01:43.687' AS DateTime), 28990000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00005', N'NCC00001', 123456, CAST(N'2019-06-21 13:01:54.617' AS DateTime), 39990000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00006', N'NCC00001', 123456, CAST(N'2019-06-21 13:02:01.210' AS DateTime), 14990000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00007', N'NCC00001', 123456, CAST(N'2019-06-24 17:06:36.863' AS DateTime), 289900000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00008', N'NCC00001', 123456, CAST(N'2019-06-24 17:07:37.703' AS DateTime), 399900000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00009', N'NCC00001', 456789, CAST(N'2019-06-24 17:10:48.407' AS DateTime), 149900000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00010', N'NCC00001', 123456, CAST(N'2019-07-02 16:29:13.940' AS DateTime), 399500000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00011', N'NCC00001', 123456, CAST(N'2019-07-02 16:50:53.520' AS DateTime), 239700000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00012', N'NCC00001', 123456, CAST(N'2019-07-02 19:25:35.623' AS DateTime), 4645000000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00013', N'NCC00001', 301654121, CAST(N'2019-07-03 02:54:30.520' AS DateTime), 1064400000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00014', N'NCC00001', 301654121, CAST(N'2019-07-03 13:41:25.703' AS DateTime), 2495000000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00015', N'NCC00001', 301654121, CAST(N'2019-07-03 14:07:12.763' AS DateTime), 8697000000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00016', N'NCC00001', 301654121, CAST(N'2019-07-03 14:11:22.677' AS DateTime), 8407100000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00017', N'NCC00001', 301654121, CAST(N'2019-07-03 14:23:54.357' AS DateTime), 11597100000, 1)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [MaNCC], [CMNDNV], [NgayNhap], [TongTien], [TrangThai]) VALUES (N'HDN00018', N'NCC00001', 301654121, CAST(N'2019-07-03 14:37:03.717' AS DateTime), 998000000, 1)
INSERT [dbo].[HoaDonXuat] ([MaHDXuat], [SDTKH], [CMNDNV], [NgayXuat], [TongTien], [TrangThai]) VALUES (N'HDX00001', N'0111111111', 123456, CAST(N'2019-07-03 10:20:31.783' AS DateTime), 9290000, 1)
INSERT [dbo].[KhachHang] ([SDTKH], [TenKH], [DiaChi], [Email], [GioiTinh], [TrangThai]) VALUES (N'0111111111', N'KH01', N'HCM', N'kh01@gmail.com', 0, 1)
INSERT [dbo].[KhachHang] ([SDTKH], [TenKH], [DiaChi], [Email], [GioiTinh], [TrangThai]) VALUES (N'0222222222', N'KH02', N'HANOI', N'kh02@gmail.com', 0, 1)
INSERT [dbo].[KhachHang] ([SDTKH], [TenKH], [DiaChi], [Email], [GioiTinh], [TrangThai]) VALUES (N'0333333333', N'KH02', N'Long An', N'kh03@gmail.com', 1, 1)
INSERT [dbo].[LoaiSP] ([MaLoaiDT], [TenLoaiDT], [TrangThai]) VALUES (N'LDT00001', N'Thông thường', 1)
INSERT [dbo].[LoaiSP] ([MaLoaiDT], [TenLoaiDT], [TrangThai]) VALUES (N'LDT00002', N'Android', 1)
INSERT [dbo].[LoaiSP] ([MaLoaiDT], [TenLoaiDT], [TrangThai]) VALUES (N'LDT00003', N'iPhone (IOS)', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [TrangThai]) VALUES (N'NCC00001', N'SAMSUNG', N'01111111111', N'Hồ Chính Minh', N'samsung@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [TrangThai]) VALUES (N'NCC00002', N'Apple', N'02222222222', N'Hà Nội', N'apple@gmail..com', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [TrangThai]) VALUES (N'NCC00003', N'Asus', N'03333333333', N'Long An', N'asus@gmail.com', 0)
INSERT [dbo].[NhanVien] ([CMNDNV], [HoVaTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi], [MatKhau], [Quyen], [TrangThai]) VALUES (123456, N'ADMIN', CAST(N'1998-05-21 00:00:00.000' AS DateTime), 1, N'0111111111', N'HCM', N'456', N'MQ00001', 1)
INSERT [dbo].[NhanVien] ([CMNDNV], [HoVaTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi], [MatKhau], [Quyen], [TrangThai]) VALUES (456789, N'USER', CAST(N'1998-05-20 00:00:00.000' AS DateTime), 0, N'0222222222', N'HANOI', N'456', N'MQ00002', 1)
INSERT [dbo].[NhanVien] ([CMNDNV], [HoVaTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi], [MatKhau], [Quyen], [TrangThai]) VALUES (301654121, N'Lữ Hoàng Khang', CAST(N'1998-05-18 00:00:00.000' AS DateTime), 1, N'0362904223', N'Long An', N'cisky2105', N'MQ00001', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TrangThai]) VALUES (N'NSX00001', N'SAMSUNG', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TrangThai]) VALUES (N'NSX00002', N'APPLE', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TrangThai]) VALUES (N'NSX00003', N'ASUS', 0)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [TrangThai]) VALUES (N'MQ00001', N'Admin', 1)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [TrangThai]) VALUES (N'MQ00002', N'User', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00001', N'NSX00001', N'LDT00002', N'Samsung Galaxy S10+', 28990000, 1500000, 300, N'SP00001.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00002', N'NSX00002', N'LDT00003', N'iPhone Xs Max 512GB', 39990000, 1000000, 300, N'SP00002.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00003', N'NSX00001', N'LDT00002', N'Samsung Galaxy Note 8', 14990000, 1000000, 10, N'SP00003.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00004', N'NSX00001', N'LDT00002', N'Samsung Galaxy A7 (2018) 128GB', 7990000, 1000000, 10, N'SP00004.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00005', N'NSX00001', N'LDT00002', N'Samsung Galaxy A50 128GB', 7990000, 0, 10, N'SP00005.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00006', N'NSX00001', N'LDT00002', N'Samsung Galaxy A70', 9290000, 0, 10, N'SP00006.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00007', N'NSX00001', N'LDT00002', N'Samsung Galaxy A9 (2018)', 12490000, 3500000, 10, N'SP00007.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00008', N'NSX00001', N'LDT00002', N'Samsung Galaxy Note 9', 22990000, 3000000, 10, N'SP00008.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [MaLoaiDT], [TenSP], [GiaBan], [GiaKM], [SLTonKho], [HinhAnh], [TrangThai]) VALUES (N'SP00009', N'NSX00001', N'LDT00002', N'Samsung galaxy M20', 4990000, 0, 210, N'SP00009.jpg', 1)
ALTER TABLE [dbo].[ChiTietHDNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDNhap_HoaDonNhap] FOREIGN KEY([MaHDNhap])
REFERENCES [dbo].[HoaDonNhap] ([MaHDNhap])
GO
ALTER TABLE [dbo].[ChiTietHDNhap] CHECK CONSTRAINT [FK_ChiTietHDNhap_HoaDonNhap]
GO
ALTER TABLE [dbo].[ChiTietHDNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHDNhap] CHECK CONSTRAINT [FK_ChiTietHDNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHDXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDXuat_HoaDonXuat] FOREIGN KEY([MaHDXuat])
REFERENCES [dbo].[HoaDonXuat] ([MaHDXuat])
GO
ALTER TABLE [dbo].[ChiTietHDXuat] CHECK CONSTRAINT [FK_ChiTietHDXuat_HoaDonXuat]
GO
ALTER TABLE [dbo].[ChiTietHDXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDXuat_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHDXuat] CHECK CONSTRAINT [FK_ChiTietHDXuat_SanPham]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_SanPham]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_KhachHang] FOREIGN KEY([SDTKH])
REFERENCES [dbo].[KhachHang] ([SDTKH])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_NhanVien] FOREIGN KEY([CMNDNV])
REFERENCES [dbo].[NhanVien] ([CMNDNV])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen] FOREIGN KEY([Quyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Quyen]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiDT])
REFERENCES [dbo].[LoaiSP] ([MaLoaiDT])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [QL_CuaHangDTDD] SET  READ_WRITE 
GO
