USE [master]
GO
/****** Object:  Database [J2EE_SALES]    Script Date: 6/27/2015 1:09:34 PM ******/
CREATE DATABASE [J2EE_SALES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J2EE_SALES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J2EE_SALES.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J2EE_SALES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J2EE_SALES_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J2EE_SALES] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J2EE_SALES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J2EE_SALES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J2EE_SALES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J2EE_SALES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J2EE_SALES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J2EE_SALES] SET ARITHABORT OFF 
GO
ALTER DATABASE [J2EE_SALES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J2EE_SALES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J2EE_SALES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J2EE_SALES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J2EE_SALES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J2EE_SALES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J2EE_SALES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J2EE_SALES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J2EE_SALES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J2EE_SALES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [J2EE_SALES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J2EE_SALES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J2EE_SALES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J2EE_SALES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J2EE_SALES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J2EE_SALES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J2EE_SALES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J2EE_SALES] SET RECOVERY FULL 
GO
ALTER DATABASE [J2EE_SALES] SET  MULTI_USER 
GO
ALTER DATABASE [J2EE_SALES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J2EE_SALES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J2EE_SALES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J2EE_SALES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [J2EE_SALES] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'J2EE_SALES', N'ON'
GO
USE [J2EE_SALES]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Type] [nvarchar](15) NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Customer_Phone] [nvarchar](12) NULL,
	[Customer_Addres] [nvarchar](100) NULL,
	[Customer_Email] [nvarchar](50) NULL,
	[Customer_Passwords] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrder](
	[CustomerOrder_ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerOrder_Name] [nvarchar](50) NULL,
	[CustomerOrder_Date] [nvarchar](50) NULL,
	[CustomerOrder_State] [nvarchar](50) NULL,
	[CustomerOrder_PaymentID] [int] NULL,
	[CustomerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerOrder_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerOrderDetail]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrderDetail](
	[Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerOrder_ID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWords] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_ID] [int] IDENTITY(1,1) NOT NULL,
	[Payment_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/27/2015 1:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](255) NOT NULL,
	[Product_Price] [int] NULL,
	[Product_Quantity] [int] NULL,
	[Product_Status] [nvarchar](255) NULL,
	[Product_Description] [nvarchar](255) NULL,
	[Product_ProductionDate] [smalldatetime] NULL,
	[Product_CategoryID] [int] NULL,
	[Product_Image] [nvarchar](255) NULL,
	[ImageFile] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (1, N'Dien Thoai')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (2, N'May Tinh')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (3, N'Gia Dung')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [Customer_Type], [Customer_Name], [Customer_Phone], [Customer_Addres], [Customer_Email], [Customer_Passwords]) VALUES (1, N'Khach Vip', N'Tran Hoang Canh', N'0979111435', N'Krong No, Dak Nong', N'hoangcanhsek6@gmail.com', N'hoangcanh')
INSERT [dbo].[Customer] ([Customer_ID], [Customer_Type], [Customer_Name], [Customer_Phone], [Customer_Addres], [Customer_Email], [Customer_Passwords]) VALUES (2, N'Khach No', N'Luu Ngoc Do', N'0168994564', N'Tuy Hoa, Phu Yen', N'doln@gmail.com', N'ngocdo')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[CustomerOrder] ON 

INSERT [dbo].[CustomerOrder] ([CustomerOrder_ID], [CustomerOrder_Name], [CustomerOrder_Date], [CustomerOrder_State], [CustomerOrder_PaymentID], [CustomerID]) VALUES (1, N'Mua Hang', N'2015/06/27 12:51:28', N'Cho Duyet Don Hang', 1, 1)
INSERT [dbo].[CustomerOrder] ([CustomerOrder_ID], [CustomerOrder_Name], [CustomerOrder_Date], [CustomerOrder_State], [CustomerOrder_PaymentID], [CustomerID]) VALUES (2, N'Mua Hang', N'2015/06/27 12:56:15', N'Cho Duyet Don Hang', 1, 1)
INSERT [dbo].[CustomerOrder] ([CustomerOrder_ID], [CustomerOrder_Name], [CustomerOrder_Date], [CustomerOrder_State], [CustomerOrder_PaymentID], [CustomerID]) VALUES (3, N'Mua Hang', N'2015/06/27 12:56:51', N'Cho Duyet Don Hang', 1, 1)
INSERT [dbo].[CustomerOrder] ([CustomerOrder_ID], [CustomerOrder_Name], [CustomerOrder_Date], [CustomerOrder_State], [CustomerOrder_PaymentID], [CustomerID]) VALUES (4, N'Mua Hang', N'2015/06/27 12:57:15', N'Cho Duyet Don Hang', 1, 1)
SET IDENTITY_INSERT [dbo].[CustomerOrder] OFF
SET IDENTITY_INSERT [dbo].[CustomerOrderDetail] ON 

INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (1, 1, 1, 16000000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (2, 1, 2, 19000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (3, 1, 3, 2100000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (4, 1, 4, 350000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (5, 1, 5, 1600000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (6, 1, 6, 600000, 3)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (7, 2, 1, 16000000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (8, 2, 2, 19000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (9, 2, 3, 2100000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (10, 2, 4, 350000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (11, 2, 5, 1600000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (12, 2, 6, 600000, 3)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (13, 2, 7, 8000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (14, 2, 8, 1300000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (15, 3, 1, 16000000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (16, 3, 2, 19000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (17, 3, 3, 2100000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (18, 3, 4, 350000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (19, 3, 5, 1600000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (20, 3, 6, 600000, 3)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (21, 3, 7, 8000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (22, 3, 8, 1300000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (23, 4, 1, 16000000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (24, 4, 2, 19000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (25, 4, 3, 2100000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (26, 4, 4, 350000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (27, 4, 5, 1600000, 10)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (28, 4, 6, 600000, 3)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (29, 4, 7, 8000000, 5)
INSERT [dbo].[CustomerOrderDetail] ([Detail_ID], [CustomerOrder_ID], [ProductID], [Price], [Quantity]) VALUES (30, 4, 8, 1300000, 10)
SET IDENTITY_INSERT [dbo].[CustomerOrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([ID], [UserName], [PassWords]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Manager] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([Payment_ID], [Payment_Name]) VALUES (1, N'Thanh Toan Khi Nhan Hang')
INSERT [dbo].[Payment] ([Payment_ID], [Payment_Name]) VALUES (2, N'Den Cua Hang Thanh Toan')
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (1, N'Iphone 6', 16000000, 10, N'CÃ²n hÃ ng', N'Äiá»n Thoáº¡i cá»§a Apple', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (2, N'Iphone 6 Plus', 19000000, 5, N'Con Hang', N'Smart phone design by Apple', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (3, N'Ipad Air', 2100000, 10, N'Con hang', N'May tinh bang cua Apple, rat pho bien hien nay.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (4, N'Ipad Air 2', 350000, 5, N'Con hang', N'May tinh bang cua Apple, rat pho bien hien nay.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (5, N'SamSung Galaxy S6', 1600000, 10, N'Con hang', N'Dien Thoai moi nhat cua SamSung, san xuat nam 2014', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (6, N'SamSung Galaxy S4', 600000, 3, N'Het Hang', N'Dong Galaxy kha thanh cong cua SamSung', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (7, N'HTC One', 8000000, 5, N'Con Hang', N'Dien thoai cua HTC', NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_ID], [Product_Name], [Product_Price], [Product_Quantity], [Product_Status], [Product_Description], [Product_ProductionDate], [Product_CategoryID], [Product_Image], [ImageFile]) VALUES (8, N'B Phone', 1300000, 10, N'Con Hang', N'Dien thoai cua BKAV, duoc san suat tai Viet Nam.', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [J2EE_SALES] SET  READ_WRITE 
GO
