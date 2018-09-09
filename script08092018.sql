USE [DaveEcom]
GO
/****** Object:  User [Daljeet]    Script Date: 9/8/2018 5:09:58 PM ******/
CREATE USER [Daljeet] FOR LOGIN [Daljeet] WITH DEFAULT_SCHEMA=[Daljeet]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Daljeet]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Daljeet]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Daljeet]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Daljeet]
GO
/****** Object:  Schema [Daljeet]    Script Date: 9/8/2018 5:10:00 PM ******/
CREATE SCHEMA [Daljeet]
GO
/****** Object:  Table [Daljeet].[Trn_Item_RelatedAccessories]    Script Date: 9/8/2018 5:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Daljeet].[Trn_Item_RelatedAccessories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemStockCode] [varchar](50) NULL,
	[RelatedItemStockCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Daljeet].[Trn_Item_RelatedItems]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Daljeet].[Trn_Item_RelatedItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemStockCode] [varchar](50) NULL,
	[RelatedItemStockCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Daljeet].[Trn_LinkCategoryItem]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Daljeet].[Trn_LinkCategoryItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemStockCode] [varchar](50) NOT NULL,
	[SubCategoryId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_AdminUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lot_Mst_Stock]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lot_Mst_Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemStockCode] [varchar](100) NULL,
	[StockInHand] [varchar](50) NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_Lot_mst_stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Brand]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](100) NULL,
	[SequenceNo] [int] NULL,
	[Active] [bit] NULL,
	[ImageUrl] [varchar](1000) NULL,
	[filename] [varchar](1000) NULL,
	[SearchKeyword] [varchar](500) NULL,
	[MetaDescription] [varchar](500) NULL,
 CONSTRAINT [PK_Mst_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Category]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Category](
	[Category Name] [varchar](50) NULL,
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SequenceNo] [int] NULL,
	[Active] [bit] NULL,
	[SearchKeyword] [varchar](500) NULL,
	[MetaDescription] [varchar](500) NULL,
 CONSTRAINT [PK_Mst_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Inv_Category]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Inv_Category](
	[CategoryName] [varchar](50) NULL,
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[IsParentId] [int] NULL,
	[filename] [varchar](500) NULL,
	[filePath] [varchar](500) NULL,
	[ActiveOnPortal] [int] NULL,
 CONSTRAINT [PK_Mst_Inv_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Item]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Item](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Name] [varchar](50) NULL,
	[SubCategoryId] [varchar](50) NULL,
	[BrandId] [varchar](50) NULL,
	[ASIN] [varchar](50) NULL,
	[SKU] [varchar](50) NULL,
	[ItemStockCode] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[ItemMainImage] [varchar](500) NULL,
	[ItemImage1] [varchar](500) NULL,
	[ItemImage2] [varchar](500) NULL,
	[Price] [varchar](50) NULL,
	[ItemMainImageUrl] [varchar](1000) NULL,
	[ItemMainImageUrl1] [varchar](1000) NULL,
	[ItemMainImageUrl2] [varchar](1000) NULL,
	[VAT] [varchar](50) NULL,
	[MetaDescription] [varchar](500) NULL,
	[SearchKeyword] [varchar](500) NULL,
	[Active] [bit] NULL,
	[ItemImage3] [varchar](500) NULL,
	[ItemMainImageUrl3] [varchar](500) NULL,
	[ItemMainImageUrl4] [varchar](500) NULL,
	[ItemImage4] [varchar](500) NULL,
	[ItemMainImageUrl5] [varchar](500) NULL,
	[ItemImage5] [varchar](500) NULL,
 CONSTRAINT [PK_Mst_Item] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_SubCategory]    Script Date: 9/8/2018 5:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_SubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[Active] [bit] NULL,
	[SearchKeyword] [varchar](500) NULL,
	[MetaDescription] [varchar](500) NULL,
 CONSTRAINT [PK_Mst_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 

INSERT [dbo].[AdminUsers] ([Id], [UserName], [Password]) VALUES (1, N'Daljeet', N'12345')
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
SET IDENTITY_INSERT [dbo].[Lot_Mst_Stock] ON 

INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (1, N'DA4000LR/1', N'1', CAST(N'2018-09-06 12:04:21.313' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (2, N'DA4000LR/2', N'1', CAST(N'2018-09-06 12:04:05.517' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (3, N'2704/1', N'1', CAST(N'2018-09-06 12:02:43.270' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (4, N'2704/2', N'1', CAST(N'2018-09-06 12:02:27.980' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (5, N'MLT100/2', N'1', CAST(N'2018-09-06 12:00:23.117' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (6, N'MLT100/1', N'1', CAST(N'2018-09-06 12:33:21.587' AS DateTime))
SET IDENTITY_INSERT [dbo].[Lot_Mst_Stock] OFF
SET IDENTITY_INSERT [dbo].[Mst_Brand] ON 

INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (1, N'Makita', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Makita_image.jpg', N'Makita_image.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (2, N'Bosch', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Bosch_Bosch.jpg', N'Bosch_Bosch.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (3, N'Festool', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Festool_Festool.jpg', N'Festool_Festool.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (4, N'Hitachi', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Hitachi_Hitachi.jpg', N'Hitachi_Hitachi.jpg', N'undefined', N'undefined')
SET IDENTITY_INSERT [dbo].[Mst_Brand] OFF
SET IDENTITY_INSERT [dbo].[Mst_Inv_Category] ON 

INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Construction Materials', 25, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bricks, Blocks ', 26, 25, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Wood', 27, 25, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Materials In General', 28, 25, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tooling & Equipment', 29, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Power Tools', 30, 29, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Power Tool Corded', 31, 30, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Power Tool Cordless', 33, 30, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Hand Tools', 34, 29, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Equipments', 35, 29, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Miscellaneous', 36, 29, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Mix', 38, 29, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Kitchen', 39, 38, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bathroom', 40, 38, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Housing', 41, 38, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Furnitures & Renovation', 42, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Garden Furnitures', 43, 42, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'House In General', 44, 42, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Clothing & Safty Gears', 45, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Shoes', 46, 45, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Workwear', 47, 45, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Safety Garms', 48, 45, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Fashionable Products', 49, 45, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Sell Your Own Products', 50, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Brand New Stuff', 51, 50, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Second Hand Stuff', 52, 50, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'10% - 20% Charges', 53, 50, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Blogs', 54, 0, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'About Product ', 55, 54, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'End Users', 56, 54, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Angle Drills Cordless', 57, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Angle Grinders Cordless', 58, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Circular Saws Cordless', 59, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Combi Drills Cordless', 60, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Impact Drivers Cordless', 61, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Impact Wrench Cordless', 62, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Jigsaws Cordless', 63, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Multi Tools Cordless', 64, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Nailers Cordless', 65, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Planers Cordless', 66, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Radios', 67, 33, N'SiteEntertainment-WebCat-0003000b0044', N'F:\xxxx\DAPI\NewDaveRepo\Images\SiteEntertainment-WebCat-0003000b0044.jpg', 1)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Reciprocating Saws Cordless', 68, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Sanders Cordless', 69, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Screwdrivers Cordless', 70, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'SDS Plus Hammers Cordless', 71, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tool Kits Cordless', 72, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Torches Cordless', 73, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Twin Packs Cordless', 74, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Batteries ', 75, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Drywall Cutter Cordless', 76, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Mitre Saw Cordless', 77, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bench & Table Saws Cordless', 78, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Garden Tools', 79, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Percussion Drills Cordless', 80, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Router Cordless', 81, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Plunge Saws Cordless', 82, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Petrol Cutters', 83, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Pneumatic Nailers', 84, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bandsaw Cordless', 85, 33, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Angle Drills Corded', 86, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bench ', 87, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Biscuit Jointers', 88, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Metal Cutting Saws Corded', 89, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Circular Saws Corded', 90, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Demolition Hammers', 91, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Diamond Core Drills Corded', 92, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Die Grinders Corded', 93, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Electric Planers Corded', 94, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Flip Over Saws Corded', 95, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Heat Guns Corded', 96, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Jigsaws Corded', 97, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Mitre Saws Corded', 98, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Mixers Corded', 99, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Multi Tools Corded', 100, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Nibblers ', 101, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Percussion Drills Corded', 102, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Plunge Saws Corded', 103, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Reciprocating Saws Corded', 104, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Routers ', 105, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Sanders ', 106, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Screw Drivers Corded', 107, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'SDS Drills Corded', 108, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Thicknessers', 109, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Vacuums Cleaners Corded', 110, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Wall Chasers Corded', 111, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Angle Grinders Corded', 112, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bench Grinder', 113, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tiling Tools', 114, 31, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Bolsters ', 115, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Chalk ', 116, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Clamps', 117, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Hammers ', 118, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Knives ', 119, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Planes', 120, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Staples Guns ', 121, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Saws', 122, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tapes ', 123, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Surform ', 124, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tin Snips ', 125, 34, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Levels', 126, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Wood Chisels', 127, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Handheld Screwdrivers', 128, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Pliers ', 129, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Squares ', 130, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Trowels ', 131, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Sockets', 132, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Spanners', 133, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Crow, Pry ', 134, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Plumbing Tools', 135, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Woodworking Tools', 136, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Files ', 137, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Hexagon Keys Sets', 138, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Spacer', 139, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Building ', 140, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tiling ', 141, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Tool Trolley ', 142, 34, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal]) VALUES (N'Makita Gardening Equipment', 144, 35, N'Makita Gardening Equipment_WebCat-0003000b002f', N'F:\xxxx\DAPI\NewDaveRepo\Images\Makita Gardening Equipment_WebCat-0003000b002f.jpg', 1)
SET IDENTITY_INSERT [dbo].[Mst_Inv_Category] OFF
SET IDENTITY_INSERT [dbo].[Mst_Item] ON 

INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (1, N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'DA4000LR/1', NULL, N'1', N'DA4000LR/1', N'DA4000LR/1', N'DA4000LR/1', N'<p style="text-align: justify;">The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.</p>
<h5><strong>Features:</strong></h5>
<ul>
<li>Enhanced gears in angle attachment for heavy duty industrial use</li>
<li>Ergonomic soft grip for superior handling</li>
<li>Light weight and easy to operate</li>
<li>D-formed handle for easy gripping</li>
<li>Durable gears</li>
<li>Double insulated</li>
<li>Forward/Reverse rotation</li>
<li>Variable speed trigger</li>
</ul>
<h5><strong>What''s Included:</strong></h5>
<ul>
<li>Chuck key</li>
<li>Side Handle</li>
<li>Hex Wrench</li>
</ul>
<h5><strong>Specifications:</strong></h5>
<ul>
<li>Part No: DA4000LR</li>
<li>Max. in Steel: 13mm</li>
<li>Max. in Wood: 38mm</li>
<li>Input Wattage: 710w</li>
<li>No Load Speed with attachment: Hi 0-900rpm, Lo 0-400rpm</li>
<li>No Load Speed without attachment: 0-600rpm</li>
<li>Net Weight: 3.7kg</li>
<li>Total Shipping Weight: 7kg</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only &ndash; please refer to description and specification for full details of product</em></span></p>', N'1_DA4000LR.jpg', NULL, NULL, N'306.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\1_DA4000LR.jpg', NULL, NULL, N'20.00', N'Rotary Angle Drill', N'Rotary Angle Drill', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (2, N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'DA4000LR/2', NULL, N'1', N'DA4000LR/2', N'DA4000LR/2', N'DA4000LR/2', N'<p style="text-align: justify;">The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.</p>
<h5><strong>Features:</strong></h5>
<ul>
<li>Enhanced gears in angle attachment for heavy duty industrial use</li>
<li>Ergonomic soft grip for superior handling</li>
<li>Light weight and easy to operate</li>
<li>D-formed handle for easy gripping</li>
<li>Durable gears</li>
<li>Double insulated</li>
<li>Forward/Reverse rotation</li>
<li>Variable speed trigger</li>
</ul>
<h5><strong>What''s Included:</strong></h5>
<ul>
<li>Chuck key</li>
<li>Side Handle</li>
<li>Hex Wrench</li>
</ul>
<h5><strong>Specifications:</strong></h5>
<ul>
<li>Part No: DA4000LR</li>
<li>Max. in Steel: 13mm</li>
<li>Max. in Wood: 38mm</li>
<li>Input Wattage: 710w</li>
<li>No Load Speed with attachment: Hi 0-900rpm, Lo 0-400rpm</li>
<li>No Load Speed without attachment: 0-600rpm</li>
<li>Net Weight: 3.7kg</li>
<li>Total Shipping Weight: 7kg</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only &ndash; please refer to description and specification for full details of product</em></span></p>', N'2_DA4000LR.jpg', NULL, NULL, N'306.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\2_DA4000LR.jpg', NULL, NULL, N'20', N'Angle Drill', N'Angle Drill', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (3, N'Makita 2704 Table Saw 10inch/255mm 110V', N'2704/1', NULL, N'1', N'2704/1', N'2704/1', N'2704/1', N'<p>This powerful table saw from Makita is a tool to grace a professional workshop. Portable too for jobsite applications. With a 15 AMP motor giving out 4800 RPM this machine is more than capable of any tasks asked of it. Large cutting capacity from an extendable machined table top providing increased flatness for added precision.</p>
<p><strong>Features:</strong></p>
<ul>
<li>Right extension table allows for greater cutting capacity with the capability to rip 4X8 sheets of plywood</li>
<li>Aluminum die cast, precision machined table top remains flat and true for out of the box</li>
<li>accuracy</li>
<li>Large cutting capacity (3-5/8" at 90&deg; and 2-1/2" at 45&deg;) can rip 4x material in one pass; can use up to a</li>
<li>13/16" dado blade</li>
<li>Powerful 15 AMP motor delivers 4,800 RPM and has electric brake for maximum productivity Large on and</li>
<li>off switch and easy to read scale for fast adjustments</li>
<li>Complete storage capacity to hold most commonly used accessories including saw blade, power supply</li>
<li>cord,miter gauge, rip fence, push stick, wrench, safety guard and dado blade 3/8" x 3/4" T-slot miter</li>
<li>gauge grooves accepts commercial accessories with T formed shanks for versatile cutting</li>
<li>Saw blade enclosed underneath the table to protect the blade during transport</li>
<li>Dead-on cam-locking rip fence and bevel locking handle for fast and easy adjustments</li>
<li>Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of</li>
<li>the blade depth</li>
</ul>
<p><strong>What''s Included:</strong></p>
<ul>
<li>Carbide Tipped Blade</li>
<li>Rip Fence</li>
<li>Angled Miter Gauge</li>
<li>Wrench #5</li>
<li>Wrench #19</li>
<li>Socket Wrench #13-22</li>
</ul>
<p><strong>Specifications</strong>:</p>
<ul>
<li>Part No: 2704</li>
<li>Blade Diameter: 260 mm</li>
<li>Bore Size: 30mm</li>
<li>Bevel Capacity: -0.5 - 45.5 &ordm;</li>
<li>No-load speed: 4600 rpm</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only &ndash; please refer to description and specification for full details of product</em></span></p>', N'3_2704.jpg', N'3_2704-1.jpg', NULL, N'598.90', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_2704.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_2704-1.jpg', NULL, N'20.00', N'Table Saw', N'Table Saw', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (4, N'Makita 2704 Table Saw 10inch/255mm 240V', N'2704/2', NULL, N'1', N'2704/2', N'2704/2', N'2704/2', N'<p>This powerful table saw from Makita is a tool to grace a professional workshop. Portable too for jobsite applications. With a 15 AMP motor giving out 4800 RPM this machine is more than capable of any tasks asked of it. Large cutting capacity from an extendable machined table top providing increased flatness for added precision.</p>
<p><strong>Features:</strong></p>
<ul>
<li>Right extension table allows for greater cutting capacity with the capability to rip 4X8 sheets of plywood</li>
<li>Aluminum die cast, precision machined table top remains flat and true for out of the box</li>
<li>accuracy</li>
<li>Large cutting capacity (3-5/8" at 90&deg; and 2-1/2" at 45&deg;) can rip 4x material in one pass; can use up to a</li>
<li>13/16" dado blade</li>
<li>Powerful 15 AMP motor delivers 4,800 RPM and has electric brake for maximum productivity Large on and</li>
<li>off switch and easy to read scale for fast adjustments</li>
<li>Complete storage capacity to hold most commonly used accessories including saw blade, power supply</li>
<li>cord,miter gauge, rip fence, push stick, wrench, safety guard and dado blade 3/8" x 3/4" T-slot miter</li>
<li>gauge grooves accepts commercial accessories with T formed shanks for versatile cutting</li>
<li>Saw blade enclosed underneath the table to protect the blade during transport</li>
<li>Dead-on cam-locking rip fence and bevel locking handle for fast and easy adjustments</li>
<li>Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of</li>
<li>the blade depth</li>
</ul>
<p><strong>What''s Included:</strong></p>
<ul>
<li>Carbide Tipped Blade</li>
<li>Rip Fence</li>
<li>Angled Miter Gauge</li>
<li>Wrench #5</li>
<li>Wrench #19</li>
<li>Socket Wrench #13-22</li>
</ul>
<p><strong>Specifications</strong>:</p>
<ul>
<li>Part No: 2704</li>
<li>Blade Diameter: 260 mm</li>
<li>Bore Size: 30mm</li>
<li>Bevel Capacity: -0.5 - 45.5 &ordm;</li>
<li>No-load speed: 4600 rpm</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only &ndash; please refer to description and specification for full details of product</em></span></p>', N'4_2704.jpg', N'4_2704-1.jpg', NULL, N'598.90', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_2704.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_2704-1.jpg', NULL, N'20', N'Table Saw', N'Table Saw', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (5, N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'MLT100/2', NULL, N'1', N'MLT100/2', N'MLT100/2', N'MLT100/2', N'<p><strong>Features:</strong></p><ul><li>Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of</li><li>the blade depth</li><li>Aluminium die cast, precision machined table top remains flat and true for out of the box accuracy</li><li>Powerful motor delivers 4,500rpm and electric brake for maximum productivity</li><li>Large cutting capacity (91mm at 90° and 63mm at 45°)</li><li>Integral cross-cut sliding table as standard</li><li>Highly portable table saw</li><li>Mitre gauge as standard </li></ul><p><strong>What''s Included:</strong></p><ul><li>Tungsten Carbide Tipped Blade</li><li>Rip Fence</li><li>Push Stick</li><li>Mitre Gauge with Vise</li><li>Wrenches</li><li>Triangular rule</li></ul><p><strong>Specifications</strong></p><ul><li>Part No MLT100</li><li>Blade Diameter 260 mm</li><li>Bore Size 30 mm</li><li>No-load speed 4500 rpm</li><li>with Sub table 760 x 790 mm</li><li>Main table 610 x 590 mm</li><li>Wattage 1500 w</li><li>Depth of Cut @ 90° 93 mm</li><li>Depth of Cut @ 45º 260 mm</li><li>Weight 38 kg</li></ul><p> </p><p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', NULL, NULL, NULL, N'406.00', NULL, NULL, NULL, N'20.00', N'Table Saw', N'Table Saw', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (6, N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'MLT100/1', NULL, N'1', N'MLT100/1', N'MLT100/1', N'MLT100/1', N'<p><strong>Features:</strong></p><ul><li>Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of</li><li>the blade depth</li><li>Aluminium die cast, precision machined table top remains flat and true for out of the box accuracy</li><li>Powerful motor delivers 4,500rpm and electric brake for maximum productivity</li><li>Large cutting capacity (91mm at 90° and 63mm at 45°)</li><li>Integral cross-cut sliding table as standard</li><li>Highly portable table saw</li><li>Mitre gauge as standard </li></ul><p><strong>What''s Included:</strong></p><ul><li>Tungsten Carbide Tipped Blade</li><li>Rip Fence</li><li>Push Stick</li><li>Mitre Gauge with Vise</li><li>Wrenches</li><li>Triangular rule</li></ul><p><strong>Specifications</strong></p><ul><li>Part No MLT100</li><li>Blade Diameter 260 mm</li><li>Bore Size 30 mm</li><li>No-load speed 4500 rpm</li><li>with Sub table 760 x 790 mm</li><li>Main table 610 x 590 mm</li><li>Wattage 1500 w</li><li>Depth of Cut @ 90° 93 mm</li><li>Depth of Cut @ 45º 260 mm</li><li>Weight 38 kg</li></ul><p> </p><p><span style="color: #ff0000;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', NULL, NULL, NULL, N'357.00', NULL, NULL, NULL, N'20.00', N'Table Saw', N'Table Saw', 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mst_Item] OFF
/****** Object:  StoredProcedure [Daljeet].[Category_SaveTree]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [Daljeet].[Category_SaveTree](
@CategoryName varchar(50),
@ParentId varchar (50),
@filename varchar (500)=null,
@filePath varchar (500)=null,
@ActiveOnPortal int
)
as
begin

Insert into Mst_Inv_Category ([CategoryName],[IsParentId],filePath,filename,ActiveOnPortal) values(@CategoryName,@ParentId,@filePath,@filename,@ActiveOnPortal)


end
GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryforFirstPage]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Daljeet].[getCategoryforFirstPage]

as 
select child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
 where child.activeonportal=1


GO
/****** Object:  StoredProcedure [Daljeet].[GetCategorywithSubCategory]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Daljeet].[GetCategorywithSubCategory]
as
begin
select * from Mst_Inv_Category
end

GO
/****** Object:  StoredProcedure [Daljeet].[sp_UpdateBrandImageData]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [Daljeet].[sp_UpdateBrandImageData] 
	-- Add the parameters for the stored procedure here
	@BrandId varchar(50),
	@ItemImage varchar(50),
	@ItemMainImageUrl varchar(100)

	
AS
BEGIN
--select * from mst_brand
update Mst_Brand set 
ImageUrl = @ItemMainImageUrl,filename=@ItemImage
where BrandId = @BrandId



END
GO
/****** Object:  StoredProcedure [Daljeet].[UpdateItemwithCategoryId]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[UpdateItemwithCategoryId](
@ItemStockCode varchar(50),
@CategoryId varchar (50))
as
begin

Insert into Trn_LinkCategoryItem (ItemStockCode,SubCategoryId)values(@ItemStockCode,@CategoryId)

end

GO
/****** Object:  StoredProcedure [dbo].[Brand_Find]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Brand_Find]   
 -- Add the parameters for the stored procedure here  
 @Active nvarchar(10)  
AS  
BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
select ROW_NUMBER() OVER(ORDER BY BrandId) AS RowId,  
BrandId, BrandName, SequenceNo, Active ,SearchKeyword ,MetaDescription ,filename from Mst_Brand  
where  
(Active = @Active or @Active = '')  
END

GO
/****** Object:  StoredProcedure [dbo].[Brand_Insert]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Brand_Insert] 
	-- Add the parameters for the stored procedure here
	@BrandName varchar(50),
	@SequenceNo int,
	@Active int,
	@Return nvarchar(50) out
AS
BEGIN
--declare @Return nvarchar(50)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if not exists(select BrandId from Mst_Brand where SequenceNo = @SequenceNo)
begin
insert into Mst_Brand (BrandName, SequenceNo, Active) values (@BrandName, @SequenceNo, @Active)

set @Return = 'Record insert successfully'
end
else
begin
set @Return = 'Duplicate sequence no !'
end
  return @Return  
END
GO
/****** Object:  StoredProcedure [dbo].[Brand_Update]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Brand_Update] 
	-- Add the parameters for the stored procedure here
	@BrandId varchar(50),
	@BrandName varchar(50),
	@MetaDescription varchar(100),
	@Active int,
	@SearchKeyword varchar(100)
AS
BEGIN

update Mst_Brand set 
BrandName = @BrandName,SearchKeyword=@SearchKeyword,
MetaDescription = @MetaDescription
, Active = @Active
where BrandId = @BrandId



END
GO
/****** Object:  StoredProcedure [dbo].[Category_Find]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Category_Find]
 @Active nvarchar(10)  
as

BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
SET NOCOUNT ON;  
select ROW_NUMBER() OVER(ORDER BY CategoryId) AS RowId,   
CategoryId, [CategoryName], IsParentId from Mst_Inv_Category  

END

GO
/****** Object:  StoredProcedure [dbo].[Category_Insert]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Insert]   
 -- Add the parameters for the stored procedure here  
 @CategoryName varchar(50),
 @SearchKeyword varchar(500),  
   @MetaDescription varchar(500),  
 
  
 @Active int  
   
AS  
BEGIN  
SET NOCOUNT ON;  
  
begin  
insert into Mst_Category ([Category Name],SearchKeyword,MetaDescription,Active) values (@CategoryName,@SearchKeyword,@MetaDescription,@Active)  
  
end  
  
END


GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Update]   
 -- Add the parameters for the stored procedure here  
 @CategoryId varchar(50),  
 @CategoryName varchar(50),  
   @SearchKeyword varchar(500),  
   @MetaDescription varchar(500),  
 
 --@SequenceNo int,  
 @Active int  
AS  
BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
update Mst_Category set   
[Category Name] = @CategoryName,  
SearchKeyword = @SearchKeyword,   
MetaDescription=   @MetaDescription ,  
 Active= @Active   
where CategoryId = @CategoryId  
  
  
END
GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CheckLogin]
(
        @Name varchar(50),
        @Password varchar(50)
)
as
declare @status int
if exists(select * from AdminUsers where UserName=@Name and Password=@Password)
       set @status=1
else
       set @status=0
select @status
GO
/****** Object:  StoredProcedure [dbo].[GetlistofCategory]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetlistofCategory] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 SELECT    *
FROM             Mst_Category 



END
GO
/****** Object:  StoredProcedure [dbo].[Getlistofproducts]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Getlistofproducts] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 SELECT        Mst_Item.ItemId, Mst_Item.Title, Mst_Item.Name, Mst_SubCategory.SubCategoryName, Mst_Category.[Category Name], Mst_Brand.BrandName, Lot_Mst_Stock.StockInHand, Mst_Item.ItemStockCode, Mst_Item.Description, 
                         Mst_Item.Price
FROM            Lot_Mst_Stock INNER JOIN
                         Mst_Item ON Lot_Mst_Stock.ItemStockCode = Mst_Item.ItemStockCode INNER JOIN
                         Mst_SubCategory ON Mst_Item.SubCategoryId = Mst_SubCategory.SubCategoryId INNER JOIN
                         Mst_Category ON Mst_SubCategory.CategoryId = Mst_Category.CategoryId INNER JOIN
                         Mst_Brand ON Mst_Item.BrandId = Mst_Brand.BrandId



END
GO
/****** Object:  StoredProcedure [dbo].[GetMenu]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetMenu]

as

--select * from Mst_Inv_Category 
with Parent as  ( select [Category Name],CategoryId from Mst_Category category)
select SubCategoryName,SubCategoryId,subcategory.CategoryId as ParentId from Mst_SubCategory subcategory inner join Parent on subcategory.CategoryId=Parent.CategoryId 
 union
 select [Category Name],CategoryId,0 as ParentId  from Mst_Category category
GO
/****** Object:  StoredProcedure [dbo].[Insert_selectedAccessories]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_selectedAccessories](
@ItemStockCode varchar(50),
@ItemStockCodeaccessories varchar(50)
)as    
begin    
   insert into daljeet.Trn_Item_RelatedAccessories (ItemStockCode,RelatedItemStockCode)  values(@ItemStockCode,@ItemStockCodeaccessories)
						  end    
    
GO
/****** Object:  StoredProcedure [dbo].[Insert_selectedRelatedItems]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Insert_selectedRelatedItems](
@ItemStockCode varchar(50),
@ItemStockCodeaccessories varchar(50)
)as    
begin    
   insert into daljeet.Trn_Item_RelatedItems (ItemStockCode,RelatedItemStockCode)  values(@ItemStockCode,@ItemStockCodeaccessories)
						  end    
    
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllItemStockCode]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetAllItemStockCode]    
as    
begin    
   select ItemId,ItemStockCode from mst_item

						 
       end    
    
    
    

GO
/****** Object:  StoredProcedure [dbo].[sp_GetBrandData]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetBrandData]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

select * from Mst_Brand

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetItemGridData]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetItemGridData]    
as    
begin    
     SELECT    ROW_NUMBER() OVER(ORDER BY Mst_Item.ItemId desc) AS RowId,    dbo.Mst_Item.ItemId, dbo.Mst_Item.MetaDescription, dbo.Mst_Item.SearchKeyword, dbo.Mst_Item.Active, dbo.Mst_Item.VAT, dbo.Mst_Item.ItemMainImageUrl2, dbo.Mst_Item.ItemMainImageUrl1, 
                         dbo.Mst_Item.ItemMainImageUrl, dbo.Mst_Item.Price, dbo.Mst_Item.ItemImage2, dbo.Mst_Item.ItemImage1, dbo.Mst_Item.ItemMainImage, dbo.Mst_Item.Description, dbo.Mst_Item.ItemStockCode, dbo.Mst_Item.SKU, 
                         dbo.Mst_Item.ASIN, dbo.Mst_Item.BrandId, dbo.Mst_Item.SubCategoryId, dbo.Mst_Item.Name, dbo.Mst_Item.Title, dbo.Mst_Brand.BrandName, dbo.Lot_Mst_Stock.StockInHand, dbo.Mst_Item.ItemMainImageUrl3, 
                         dbo.Mst_Item.ItemImage3, dbo.Mst_Item.ItemMainImageUrl4, dbo.Mst_Item.ItemImage4, dbo.Mst_Item.ItemMainImageUrl5, dbo.Mst_Item.ItemImage5
FROM            dbo.Mst_Item INNER JOIN
                         dbo.Lot_Mst_Stock ON dbo.Mst_Item.ItemId = dbo.Lot_Mst_Stock.Id INNER JOIN
                         dbo.Mst_Brand ON dbo.Mst_Item.BrandId = dbo.Mst_Brand.BrandId 


						 
       end    

    
    

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateItemData]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_InsertUpdateItemData]      
      
@title varchar(100),@name varchar(100),@BrandId varchar(100),@ItemStockCode varchar(100),@Description varchar(max) ,  
--@ItemMainImage varchar(500)  ,@ItemImage1 varchar(500) ,@ItemImage2 varchar(500) ,  
@Price varchar(100) ,  
--@ItemMainImageUrl varchar(1000),@ItemMainImageUrl1 varchar(1000), @ItemMainImageUrl2 varchar(1000),  
@StockInHand varchar(100),@VAT varchar(50),@SearchKeyword varchar(500),@MetaDescription varchar(500) ,@Active int     
as      
begin      
      
INSERT INTO [dbo].[Mst_Item]  ([Title],[Name],[BrandId],[ASIN],[SKU],[ItemStockCode],[Description],[Price],  
--[ItemMainImage],[ItemImage1],    
--[ItemImage2],[ItemMainImageUrl],[ItemMainImageUrl1],[ItemMainImageUrl2],  
VAT,SearchKeyword,MetaDescription,Active)      
     VALUES (@title,@name,@BrandId,@ItemStockCode,@ItemStockCode,@ItemStockCode,@Description,  
  --@ItemMainImage,@ItemImage1,@ItemImage2,      
  @Price,  
 -- @ItemMainImageUrl,@ItemMainImageUrl1,@ItemMainImageUrl2,  
  @VAT,@SearchKeyword,@MetaDescription,@Active)      
      
INSERT INTO [dbo].[Lot_Mst_Stock]      
           ([ItemStockCode]      
           ,[StockInHand]      
           ,[DateTime])      
     VALUES      
           (@ItemStockCode      
           ,@StockInHand      
           ,GETDATE())      
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBrandImage]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[sp_UpdateBrandImage]  
 -- Add the parameters for the stored procedure here  
 @Brand varchar(50),  
 @filename varchar(100),  
 @ImageUrl varchar(100),
  @SearchKeyword  varchar(500)
,@MetaDescription varchar(500) 
,@Active int   
AS  
BEGIN  
  
 insert into Mst_Brand(BrandName,filename,ImageUrl,Active,MetaDescription,SearchKeyword) values (@Brand,@filename,@ImageUrl,@Active,@MetaDescription,@SearchKeyword)  
  
  
END  
  
  
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemData]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemData]    
@title varchar(100),@name varchar(100),@BrandId varchar(100),@ItemStockCode varchar(100),@Description varchar(max) ,@Price varchar(100)    
,@StockInHand varchar(100),@ItemId varchar(100),@VAT varchar(50),@SearchKeyword varchar(500),@MetaDescription varchar(500) ,@Active int   
as    
begin    
update Mst_Item set [Title]=@title,[Name]=@name,BrandId=@BrandId,ASIN=@ItemStockCode,  
SKU=@ItemStockCode,Description=@Description,Price=@Price,  
VAT=@VAT,SearchKeyword=@SearchKeyword, MetaDescription=@MetaDescription   
,Active=@Active where ItemId=@ItemId    
update Lot_Mst_Stock set StockInHand=@StockInHand,DateTime=GETDATE() where ItemStockCode=@ItemStockCode    
end    

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData1]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData1]
@ItemMainImage varchar(1000),@ItemMainImageUrl varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemMainImage=@ItemMainImage,ItemMainImageUrl=@ItemMainImageUrl where ItemId=@ItemId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData2]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData2]
@ItemImage1 varchar(1000),@ItemMainImageUrl1 varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemImage1=@ItemImage1,ItemMainImageUrl1=@ItemMainImageUrl1 where ItemId=@ItemId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData3]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData3]
@ItemImage2 varchar(1000),@ItemMainImageUrl2 varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemImage2=@ItemImage2,ItemMainImageUrl2=@ItemMainImageUrl2 where ItemId=@ItemId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData4]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData4]
@ItemImage3 varchar(1000),@ItemMainImageUrl3 varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemImage3=@ItemImage3,ItemMainImageUrl3=@ItemMainImageUrl3 where ItemId=@ItemId

end


GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData5]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData5]
@ItemImage4 varchar(1000),@ItemMainImageUrl4 varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemImage4=@ItemImage4,ItemMainImageUrl4=@ItemMainImageUrl4 where ItemId=@ItemId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData6]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemImageData6]
@ItemImage5 varchar(1000),@ItemMainImageUrl5 varchar(1000),@ItemId varchar(100)
as
begin
update Mst_Item set ItemImage5=@ItemImage5,ItemMainImageUrl5=@ItemMainImageUrl5 where ItemId=@ItemId

end
GO
/****** Object:  StoredProcedure [dbo].[SubCategory_Find]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- Author:  <Author,,Name>    
-- Create date: <Create Date,,>    
-- Description: <Description,,>    
-- =============================================    
CREATE PROCEDURE [dbo].[SubCategory_Find]     
 -- Add the parameters for the stored procedure here    
 @Active nvarchar(10)    
AS    
BEGIN    
--declare @Return nvarchar(50)    
 -- SET NOCOUNT ON added to prevent extra result sets from    
 -- interfering with SELECT statements.    
 SET NOCOUNT ON;    
select ROW_NUMBER() OVER(ORDER BY SubCategory.SubCategoryId) AS RowId,     
SubCategory.SubCategoryId, SubCategory.SubCategoryName, SubCategory.CategoryId, SubCategory.Active    
,Category.[Category Name]    ,SubCategory.MetaDescription,SubCategory.SearchKeyword
from Mst_SubCategory SubCategory    
left join Mst_Category Category on Category.CategoryId = SubCategory.CategoryId    
where    
(SubCategory.Active = @Active or @Active = '')    
END
GO
/****** Object:  StoredProcedure [dbo].[SubCategory_Find1]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SubCategory_Find1] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
--declare @Return nvarchar(50)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select 
SubCategory.SubCategoryId, SubCategory.SubCategoryName
from Mst_SubCategory SubCategory

END
GO
/****** Object:  StoredProcedure [dbo].[SubCategory_FindbasedonCategoryId]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- Author:  <Author,,Name>    
-- Create date: <Create Date,,>    
-- Description: <Description,,>    
-- =============================================    
CREATE PROCEDURE [dbo].[SubCategory_FindbasedonCategoryId]     
 -- Add the parameters for the stored procedure here    
 @CategoryId varchar(100)  
AS    
BEGIN    
--declare @Return nvarchar(50)    
 -- SET NOCOUNT ON added to prevent extra result sets from    
 -- interfering with SELECT statements.    
 SET NOCOUNT ON;    
select ROW_NUMBER() OVER(ORDER BY SubCategory.SubCategoryId) AS RowId,     
SubCategory.SubCategoryId, SubCategory.SubCategoryName, SubCategory.CategoryId, SubCategory.Active    
,Category.[Category Name]    ,SubCategory.SearchKeyword,SubCategory.MetaDescription
from Mst_SubCategory SubCategory    
left join Mst_Category Category on Category.CategoryId = SubCategory.CategoryId    
where    
SubCategory.CategoryId=@CategoryId    
END
GO
/****** Object:  StoredProcedure [dbo].[SubCategory_Insert]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
  
--exec SubCategory_Insert 'aaa','2',1  
-- =============================================  
CREATE PROCEDURE [dbo].[SubCategory_Insert]   
 -- Add the parameters for the stored procedure here  
 @SubCategoryName varchar(50),  
 @SearchKeyword varchar(500),  
 @MetaDescription varchar(500),    
 @Active int  ,
 @CategoryId int  
   
   
AS  
BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
--if not exists(select CategoryId from Mst_SubCategory where SequenceNo = @SequenceNo)  
--begin  
insert into Mst_SubCategory (SubCategoryName, CategoryId, Active,SearchKeyword,MetaDescription) values (@SubCategoryName, @CategoryId, @Active,@SearchKeyword,@MetaDescription)  
  
  
  
END


GO
/****** Object:  StoredProcedure [dbo].[SubCategory_Update]    Script Date: 9/8/2018 5:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[SubCategory_Update]   
 -- Add the parameters for the stored procedure here  
 @SubCategoryId int,  
 @SubCategoryName varchar(50),  
 @CategoryId int,
 @SearchKeyword varchar(500),  
 @MetaDescription varchar(500),    
 @Active int    
   
AS  
BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
--if not exists(select CategoryId from Mst_Category where CategoryId != @CategoryId and SequenceNo = @SequenceNo)  
--begin  
update Mst_SubCategory set   
SubCategoryName = @SubCategoryName  
, CategoryId = @CategoryId  
, SearchKeyword = @SearchKeyword  
, MetaDescription = @MetaDescription  
, Active = @Active  
where SubCategoryId = @SubCategoryId  
  
--end  
--else  
--begin  
--set @Return = 'Duplicate sequence no !'  
--end  
  
END
GO
