USE [DaveEcom]
GO
/****** Object:  User [Daljeet]    Script Date: 11/22/2018 11:59:46 AM ******/
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
/****** Object:  Schema [Daljeet]    Script Date: 11/22/2018 11:59:48 AM ******/
CREATE SCHEMA [Daljeet]
GO
/****** Object:  Table [Daljeet].[Trn_Item_HotSales]    Script Date: 11/22/2018 11:59:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Daljeet].[Trn_Item_HotSales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemStockCode] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Daljeet].[Trn_Item_RelatedAccessories]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [Daljeet].[Trn_Item_RelatedItems]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [Daljeet].[Trn_LinkCategoryItem]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [dbo].[Lot_Mst_Stock]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [dbo].[Mst_Brand]    Script Date: 11/22/2018 11:59:50 AM ******/
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
/****** Object:  Table [dbo].[Mst_Customer]    Script Date: 11/22/2018 11:59:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[HouseNo] [varchar](50) NULL,
	[AddressLine2] [varchar](50) NULL,
	[AddressLine3] [varchar](50) NULL,
	[AddressLine4] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[InvoiceName] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[InvoiceAddessLine2] [varchar](50) NULL,
	[InvoiceAddressLine3] [varchar](50) NULL,
	[InvoiceAddressLine4] [varchar](50) NULL,
	[InvoicePostCode] [varchar](50) NULL,
	[AgreeSendSpecialOffer] [bit] NULL,
 CONSTRAINT [PK_Mst_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Inv_Category]    Script Date: 11/22/2018 11:59:50 AM ******/
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
	[Description] [varchar](1000) NULL,
	[MainBannerName] [varchar](500) NULL,
	[MainBannerFilePath] [varchar](500) NULL,
	[CategoryImageName370] [varchar](500) NULL,
	[CategoryImageName570] [varchar](500) NULL,
	[CategoryImageName870] [varchar](500) NULL,
	[CategoryImagePath870] [varchar](500) NULL,
	[CategoryImagePath570] [varchar](500) NULL,
	[CategoryImagePath370] [varchar](500) NULL,
	[UploadDateCategoryImagePath370] [datetime] NULL,
	[UploadDateCategoryImage570] [datetime] NULL,
	[UploadDateCategoryImage870] [datetime] NULL,
	[UploadDateCategoryImage1920] [datetime] NULL,
 CONSTRAINT [PK_Mst_Inv_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst_Item]    Script Date: 11/22/2018 11:59:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst_Item](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Name] [varchar](500) NULL,
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
/****** Object:  Table [dbo].[Trn_Shop_History]    Script Date: 11/22/2018 11:59:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trn_Shop_History](
	[ShopHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[TransectionId] [varchar](500) NULL,
	[CustId] [varchar](100) NULL,
	[ItemName] [varchar](100) NULL,
	[Price] [varchar](100) NULL,
	[Quantity] [int] NULL,
	[Date] [datetime] NULL,
	[EmailAddress] [varchar](100) NULL,
	[ItemType] [varchar](100) NULL,
	[ItemID] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Daljeet].[Trn_Item_HotSales] ON 

INSERT [Daljeet].[Trn_Item_HotSales] ([ID], [ItemStockCode]) VALUES (1, N'DA4000LR/1')
INSERT [Daljeet].[Trn_Item_HotSales] ([ID], [ItemStockCode]) VALUES (2, N'DA4000LR/2')
SET IDENTITY_INSERT [Daljeet].[Trn_Item_HotSales] OFF
SET IDENTITY_INSERT [Daljeet].[Trn_Item_RelatedItems] ON 

INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (1, N'0601429970', N'DWST1-75663-GB')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (2, N'DWST1-75663-GB', N'0601429970')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (3, N'DMR104W', N'DWST1-75663-GB ')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (4, N'DMR104W', N' 0601429970')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (5, N'DMR104-KIT-1', N'DWST1-75663-GB ')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (6, N'DMR104-KIT-1', N' 0601429970')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (7, N'223059', N'FLR-CHR-5347N')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (8, N'DWST1-75663-GB', N'DMR104W')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (9, N'DWST1-75663-GB', N'DMR104-KIT-1')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (10, N'DWST1-75663-GB', N'0601429970')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (11, N'DWST1-75663-GB', N'DMR104')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (12, N'DMR104W', N'DMR104-KIT-1')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (13, N'DMR104W', N'DMR104')
INSERT [Daljeet].[Trn_Item_RelatedItems] ([ID], [ItemStockCode], [RelatedItemStockCode]) VALUES (14, N'DMR104-KIT-1', N'DMR104')
SET IDENTITY_INSERT [Daljeet].[Trn_Item_RelatedItems] OFF
SET IDENTITY_INSERT [Daljeet].[Trn_LinkCategoryItem] ON 

INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (3, N'DWST1-75663-GB', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (4, N'0601429970', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (5, N'DMR104W', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (6, N'DMR104', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (7, N'DMR104-KIT-1', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (8, N'DMR104-KIT-1', N'157')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (9, N'DMR104-KIT-1', N'158')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (10, N'DMR104-KIT-1', N'161')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (11, N'DMR104-KIT-1', N'162')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (12, N'DMR104-KIT-1', N'163')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (13, N'DMR104-KIT-1', N'164')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (14, N'DMR104', N'164')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (15, N'DMR104', N'163')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (16, N'DMR104', N'162')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (17, N'DMR104', N'157')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (18, N'DMR104', N'158')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (19, N'DMR104', N'161')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (20, N'0601429970', N'162')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (21, N'0601429970', N'157')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (22, N'0601429970', N'158')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (23, N'0601429970', N'161')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (24, N'0601429970', N'163')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (25, N'0601429970', N'164')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (26, N'DA4000LR', N'162')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (27, N'DA4000LR', N'157')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (28, N'DA4000LR', N'158')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (29, N'DA4000LR', N'161')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (30, N'DA4000LR', N'163')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (31, N'DA4000LR', N'164')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (32, N'DWST1-75663-GB', N'162')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (33, N'DWST1-75663-GB', N'157')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (34, N'DWST1-75663-GB', N'158')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (35, N'DWST1-75663-GB', N'161')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (36, N'DWST1-75663-GB', N'163')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (37, N'DWST1-75663-GB', N'164')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (38, N'223059', N'26')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (39, N'DA4000LR', N'86')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (40, N'FLR-CHR-5347N', N'165')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (41, N'223059', N'167')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (42, N'HS7601J-2-KIT-14', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (43, N'DWE550-GB', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (44, N'HS7601J-2', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (45, N'HS7601J', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (46, N'DA4000LR-2', N'86')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (47, N'DA4000LR-1', N'86')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (49, N'DWE550-KIT-16', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (50, N'DWE550-KIT-9', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (51, N'DWE550-KIT-7', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (52, N'DWE550-KIT-14', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (53, N'DWE550-KIT-12', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (54, N'0601623060', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (55, N'0601623070', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (56, N'561759', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (57, N'574676', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (58, N'574676', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (59, N'C7SB2-J1', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (60, N'574681', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (61, N'DWE550-KIT-4', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (62, N'HS7601J-1-KIT-9', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (63, N'HS7601J-1-KIT-11', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (64, N'HS7601J2-KIT-4', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (65, N'HS7601J-2-KIT-6', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (66, N'HS7601J-2-KIT-9', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (67, N'HS7601J-2-KIT-11', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (68, N'HS7601J-1-KIT-16', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (69, N'HS7601J-1-KIT-14', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (70, N'HS7601J-1-KIT-4', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (71, N'HS7601J-1-KIT-6', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (72, N'HS7601J-2-KIT-16', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (73, N'DWE550-KIT-16', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (74, N'DCD740-KIT-7', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (76, N'HS7601J-2-KIT-14', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (77, N'DWE550-GB', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (78, N'HS7601J-2', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (79, N'HS7601J', N'90')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (80, N'DMR109-KIT-7', N'67')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (82, N'PJ7000-1', N'88')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (83, N'574329', N'88')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (84, N'DW682K-LX', N'88')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (85, N'574327', N'88')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (86, N'MLT100-2', N'87')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (87, N'194093-8', N'87')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (88, N'D28710-LX', N'89')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (89, N'D25902K-LX', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (90, N'D25902K-GB', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (91, N'0611316741-1', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (92, N'0611316742', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (93, N'0611321060', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (94, N'0611321070', N'91')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (95, N'8406-1', N'92')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (97, N'060118B070', N'92')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (98, N'GD0800C-2', N'93')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (99, N'GD0800C-1', N'93')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (100, N'KP0810K-1', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (101, N'KP0810K-2', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (102, N'574560', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (103, N'0601594341', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (104, N'KP0800K-1', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (105, N'KP0800K-2', N'94')
GO
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (106, N'KP0800', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (107, N'06015A4060', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (108, N'06015A4070', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (109, N'P20SF-J2', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (110, N'P20SF-J1', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (111, N'D26500K-LX', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (112, N'D26500K-GB', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (113, N'KP0810CK-1', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (115, N'KP0810CK-2', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (116, N'KP0810CK-2', N'94')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (117, N'LF1000-1', N'95')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (118, N'D26414-GB', N'96')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (119, N'D26411-GB', N'96')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (120, N'HG5012K', N'96')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (121, N'0601513060', N'97')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (122, N'561457', N'97')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (123, N'4350FCT-1', N'97')
INSERT [Daljeet].[Trn_LinkCategoryItem] ([ID], [ItemStockCode], [SubCategoryId]) VALUES (124, N'4350FCT-1', N'97')
SET IDENTITY_INSERT [Daljeet].[Trn_LinkCategoryItem] OFF
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 

INSERT [dbo].[AdminUsers] ([Id], [UserName], [Password]) VALUES (1, N'Daljeet', N'12345')
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
SET IDENTITY_INSERT [dbo].[Lot_Mst_Stock] ON 

INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (1, N'FLR-CHR-5347N', N'1', CAST(N'2018-10-26 03:02:54.830' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (2, N'DA4000LR', N'1', CAST(N'2018-10-26 03:13:18.550' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (3, N'DWST1-75663-GB', N'1', CAST(N'2018-10-26 03:54:19.990' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (4, N'0601429970', N'1', CAST(N'2018-10-26 03:57:49.333' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (5, N'DMR104W', N'1', CAST(N'2018-10-26 04:05:25.773' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (6, N'DMR104', N'1', CAST(N'2018-10-26 04:09:17.040' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (7, N'DMR104-KIT-1', N'1', CAST(N'2018-10-26 04:15:08.317' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (8, N'223059', N'1', CAST(N'2018-11-02 10:52:14.027' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (9, N'DA4000LR-1', N'1', CAST(N'2018-10-30 08:45:48.027' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (10, N'DA4000LR-2', N'1', CAST(N'2018-10-30 08:47:54.153' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (11, N'HS7601J', N'1', CAST(N'2018-11-01 00:58:03.937' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (12, N'HS7601J-2', N'1', CAST(N'2018-10-30 08:55:53.540' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (13, N'DWE550-GB', N'1', CAST(N'2018-10-30 08:58:26.017' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (14, N'HS7601J-2-KIT-14', N'1', CAST(N'2018-10-30 09:02:28.510' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (15, N'DMR109-KIT-7', N'1', CAST(N'2018-10-30 18:50:17.957' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (16, N'DCD740-KIT-7', N'1', CAST(N'2018-10-30 19:01:17.980' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (17, N'DWE550-KIT-16', N'1', CAST(N'2018-10-30 21:53:16.070' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (18, N'HS7601J-2-KIT-16', N'1', CAST(N'2018-10-30 22:07:07.090' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (19, N'HS7601J-1-KIT-6', N'1', CAST(N'2018-10-30 22:10:24.667' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (20, N'HS7601J-1-KIT-4', N'1', CAST(N'2018-10-30 22:13:02.600' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (21, N'HS7601J-1-KIT-14', N'1', CAST(N'2018-10-30 22:16:10.583' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (22, N'HS7601J-1-KIT-16', N'1', CAST(N'2018-10-30 22:18:37.503' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (23, N'HS7601J-2-KIT-11', N'1', CAST(N'2018-10-30 22:20:08.283' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (24, N'HS7601J-2-KIT-9', N'1', CAST(N'2018-10-30 22:22:13.623' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (25, N'HS7601J-2-KIT-6', N'1', CAST(N'2018-10-30 22:24:15.777' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (26, N'HS7601J2-KIT-4', N'1', CAST(N'2018-10-30 22:26:52.040' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (27, N'HS7601J-1-KIT-11', N'1', CAST(N'2018-10-30 22:29:13.040' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (28, N'HS7601J-1-KIT-9', N'1', CAST(N'2018-10-30 22:31:04.397' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (29, N'DWE550-KIT-4', N'1', CAST(N'2018-10-30 22:32:49.037' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (30, N'574681', N'1', CAST(N'2018-10-30 22:36:05.850' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (31, N'C7SB2-J1', N'1', CAST(N'2018-10-30 22:37:41.697' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (32, N'574676', N'1', CAST(N'2018-10-30 22:40:17.337' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (33, N'561759', N'1', CAST(N'2018-10-30 22:42:05.150' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (34, N'0601623070', N'1', CAST(N'2018-10-30 22:47:01.680' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (35, N'0601623060', N'1', CAST(N'2018-10-30 22:49:15.040' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (36, N'DWE550-KIT-12', N'20', CAST(N'2018-10-30 22:51:47.320' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (37, N'DWE550-KIT-14', N'1', CAST(N'2018-10-30 22:59:05.373' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (38, N'DWE550-KIT-7', N'1', CAST(N'2018-10-30 23:00:45.217' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (39, N'DWE550-KIT-9', N'1', CAST(N'2018-10-30 23:02:39.747' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (40, N'194093-8', N'1', CAST(N'2018-11-02 09:05:46.490' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (41, N'194093-8', N'1', CAST(N'2018-11-02 09:05:46.490' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (42, N'MLT100-2', N'1', CAST(N'2018-11-02 09:10:20.143' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (43, N'DW682K-LX', N'1', CAST(N'2018-11-02 09:16:40.960' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (44, N'574329', N'1', CAST(N'2018-11-02 09:19:47.897' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (45, N'PJ7000-1', N'1', CAST(N'2018-11-02 09:22:17.600' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (46, N'574327', N'1', CAST(N'2018-11-02 09:26:12.960' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (47, N'D28710-LX', N'1', CAST(N'2018-11-02 09:47:19.190' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (48, N'D28710-LX', N'1', CAST(N'2018-11-02 09:49:20.843' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (49, N'D25902K-LX', N'1', CAST(N'2018-11-02 09:52:06.433' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (50, N'D25902K-GB', N'1', CAST(N'2018-11-02 09:54:20.853' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (51, N'0611316741-1', N'1', CAST(N'2018-11-02 09:57:23.727' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (52, N'0611316742', N'1', CAST(N'2018-11-02 10:24:37.187' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (53, N'0611321060', N'1', CAST(N'2018-11-02 18:59:16.773' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (54, N'0611321070', N'1', CAST(N'2018-11-02 19:06:12.753' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (55, N'8406-1', N'1', CAST(N'2018-11-02 19:13:07.227' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (56, N'8406-2', N'1', CAST(N'2018-11-02 19:15:31.837' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (57, N'060118B070', N'1', CAST(N'2018-11-02 19:20:00.620' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (58, N'GD0800C-2', N'1', CAST(N'2018-11-02 19:24:50.570' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (59, N'GD0800C-1', N'1', CAST(N'2018-11-02 19:28:28.830' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (60, N'KP0810K-1', N'1', CAST(N'2018-11-02 19:34:08.437' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (61, N'KP0810K-2', N'1', CAST(N'2018-11-02 19:36:28.760' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (62, N'574560', N'1', CAST(N'2018-11-02 19:43:03.773' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (63, N'574561', N'1', CAST(N'2018-11-02 19:42:41.867' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (64, N'0601594341', N'1', CAST(N'2018-11-02 19:46:39.270' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (65, N'KP0800K-1', N'1', CAST(N'2018-11-02 19:52:13.657' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (66, N'KP0800K-2', N'1', CAST(N'2018-11-02 19:53:32.717' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (67, N'KP0800', N'1', CAST(N'2018-11-02 19:57:32.467' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (68, N'06015A4060', N'1', CAST(N'2018-11-02 20:01:16.733' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (69, N'06015A4070', N'1', CAST(N'2018-11-02 20:02:35.467' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (70, N'P20SF-J2', N'1', CAST(N'2018-11-02 20:10:51.983' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (71, N'P20SF-J1', N'1', CAST(N'2018-11-02 20:14:10.547' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (72, N'D26500K-LX', N'1', CAST(N'2018-11-02 20:20:54.083' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (73, N'D26500K-GB', N'1', CAST(N'2018-11-02 20:22:04.160' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (74, N'KP0810CK-1', N'1', CAST(N'2018-11-02 20:26:46.593' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (75, N'KP0810CK-2', N'1', CAST(N'2018-11-02 20:27:45.377' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (76, N'LF1000-1', N'1', CAST(N'2018-11-02 20:49:12.530' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (77, N'D26414-GB', N'1', CAST(N'2018-11-02 22:45:04.010' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (78, N'D26411-GB', N'1', CAST(N'2018-11-02 22:49:03.947' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (79, N'HG5012K', N'1', CAST(N'2018-11-02 22:51:58.243' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (80, N'0601513060', N'1', CAST(N'2018-11-02 22:58:27.710' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (81, N'561457', N'1', CAST(N'2018-11-02 23:00:14.487' AS DateTime))
INSERT [dbo].[Lot_Mst_Stock] ([Id], [ItemStockCode], [StockInHand], [DateTime]) VALUES (82, N'4350FCT-1', N'1', CAST(N'2018-11-02 23:02:08.530' AS DateTime))
SET IDENTITY_INSERT [dbo].[Lot_Mst_Stock] OFF
SET IDENTITY_INSERT [dbo].[Mst_Brand] ON 

INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (1, N'Makita', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\1_1_1_1.jpg', N'1_1_1_1.jpg', N'makita', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (2, N'Bosch', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\2_2_2_2.jpg', N'2_2_2_2.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (3, N'Festool', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_3_4_4.jpg', N'3_3_4_4.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (4, N'Hitachi', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_4_3_3.jpg', N'4_4_3_3.jpg', N'undefined', N'undefined')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (5, N'Dewalt', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\5_5_5_5.jpg', N'5_5_5_5.jpg', N'dewaalt', N'dewalt')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (7, N'Jaquar', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Jaquar_download.png', N'Jaquar_download.png', N'jaquar', N'jaquar')
INSERT [dbo].[Mst_Brand] ([BrandId], [BrandName], [SequenceNo], [Active], [ImageUrl], [filename], [SearchKeyword], [MetaDescription]) VALUES (8, N'Ibstock Tradesman', NULL, 1, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Ibstock Tradesman_ibstock.png', N'Ibstock Tradesman_ibstock.png', N'undefined', N'undefined')
SET IDENTITY_INSERT [dbo].[Mst_Brand] OFF
SET IDENTITY_INSERT [dbo].[Mst_Customer] ON 

INSERT [dbo].[Mst_Customer] ([Id], [Name], [PhoneNumber], [Email], [Password], [HouseNo], [AddressLine2], [AddressLine3], [AddressLine4], [PostCode], [InvoiceName], [Company], [InvoiceAddessLine2], [InvoiceAddressLine3], [InvoiceAddressLine4], [InvoicePostCode], [AgreeSendSpecialOffer]) VALUES (1, N'Daljeet', N'89', N'a@d.dom', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Customer] ([Id], [Name], [PhoneNumber], [Email], [Password], [HouseNo], [AddressLine2], [AddressLine3], [AddressLine4], [PostCode], [InvoiceName], [Company], [InvoiceAddessLine2], [InvoiceAddressLine3], [InvoiceAddressLine4], [InvoicePostCode], [AgreeSendSpecialOffer]) VALUES (2, N'john', N'800', N'john@hmlk.com', N'12', N'123', N'123', N'1hjhj', N'jh', N'jh', N'jh', N'jh', N'jh', N'jjh', N'kj', N'kj', 1)
INSERT [dbo].[Mst_Customer] ([Id], [Name], [PhoneNumber], [Email], [Password], [HouseNo], [AddressLine2], [AddressLine3], [AddressLine4], [PostCode], [InvoiceName], [Company], [InvoiceAddessLine2], [InvoiceAddressLine3], [InvoiceAddressLine4], [InvoicePostCode], [AgreeSendSpecialOffer]) VALUES (3, N'nn', N'n', N'112@nn.dd', N'12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Customer] ([Id], [Name], [PhoneNumber], [Email], [Password], [HouseNo], [AddressLine2], [AddressLine3], [AddressLine4], [PostCode], [InvoiceName], [Company], [InvoiceAddessLine2], [InvoiceAddressLine3], [InvoiceAddressLine4], [InvoicePostCode], [AgreeSendSpecialOffer]) VALUES (4, N'jap', N'100', N'jap@gmail.com', N'12345', N'4915', N'guru nagar', N'ward no 16', N'ropar', N'140001', N'4915', N'4915', N'guru nagar', N'ward no 16', N'ropar', N'140001', 1)
INSERT [dbo].[Mst_Customer] ([Id], [Name], [PhoneNumber], [Email], [Password], [HouseNo], [AddressLine2], [AddressLine3], [AddressLine4], [PostCode], [InvoiceName], [Company], [InvoiceAddessLine2], [InvoiceAddressLine3], [InvoiceAddressLine4], [InvoicePostCode], [AgreeSendSpecialOffer]) VALUES (5, N'jap1', N'123456', N'daljeet1@gmail.com', N'12345', N'290', N'290', N'290', N'290', N'290', N'290', N'290', N'290', N'290', N'290', N'290', 0)
SET IDENTITY_INSERT [dbo].[Mst_Customer] OFF
SET IDENTITY_INSERT [dbo].[Mst_Inv_Category] ON 

INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Construction Materials', 25, 0, N'Construction Materials_CONSTRUCTION MATERIALS.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Construction Materials_CONSTRUCTION MATERIALS.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', N'25_screwDriver.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\25_screwDriver.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-11-02 10:17:29.587' AS DateTime))
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bricks, Blocks ', 26, 25, N'Bricks, Blocks _7_2_173393_c.jpg', N'D:\21092018\NewDaveRepo\Images\Bricks, Blocks _7_2_173393_c.jpg', 1, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'26_370by205-2.png', NULL, NULL, NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\26_370by205-2.png', CAST(N'2018-10-26 04:37:16.527' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Wood', 27, 25, N'Woodss_wood.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Woodss_wood.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', N'27_banner-blog.jpg', N'D:\21092018\NewDaveRepo\Images\27_banner-blog.jpg', N'27_HandTool.jpg', N'27_27_banner-570x255-2.jpg', N'27_tab-banner.jpg', N'D:\21092018\NewDaveRepo\Images\27_tab-banner.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\27_27_banner-570x255-2.jpg', N'F:\26092018\NewDaveRepo\Images\27_HandTool.jpg', CAST(N'2018-10-25 04:33:02.407' AS DateTime), CAST(N'2018-10-26 04:34:59.387' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Materials In General', 28, 25, N'Materials In General_CONSTRUCTION MATERIALS.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Materials In General_CONSTRUCTION MATERIALS.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'28_4.jpg', N'28_1.png', NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\28_1.png', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\28_4.jpg', CAST(N'2018-10-23 05:30:47.880' AS DateTime), CAST(N'2018-10-23 05:30:56.450' AS DateTime), NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tooling & Equipment', 29, 0, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Power Tools', 30, 29, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 1, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', N'30_3.jpg', N'D:\21092018\NewDaveRepo\Images\30_3.jpg', N'30_370by205-3.png', N'30_1.png', N'30_1870.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\30_1870.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\30_1.png', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\30_370by205-3.png', CAST(N'2018-10-26 03:03:51.410' AS DateTime), CAST(N'2018-10-23 05:30:18.893' AS DateTime), CAST(N'2018-10-26 05:07:14.443' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Power Tool Corded', 31, 30, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'31_370by205-3.png', NULL, NULL, NULL, NULL, N'F:\26092018\NewDaveRepo\Images\31_370by205-3.png', CAST(N'2018-10-25 22:15:21.310' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Power Tool Cordless', 33, 30, N'Power Tool Cordless_1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Power Tool Cordless_1.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Hand Tools', 34, 29, N'Hand Tools_Hand tools.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Hand Tools_Hand tools.jpg', 1, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'34_HandTool.jpg', NULL, NULL, NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\34_HandTool.jpg', CAST(N'2018-10-26 05:05:16.743' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Equipments', 35, 29, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, N'35_foodservice_main_870x240.jpg', N'F:\26092018\NewDaveRepo\Images\35_foodservice_main_870x240.jpg', NULL, NULL, NULL, NULL, CAST(N'2018-10-22 00:48:19.497' AS DateTime), NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Miscellaneous', 36, 29, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Mix', 38, 29, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Kitchen', 39, 38, N'Kitchen_banner kitchen.jpg', N'F:\26092018\NewDaveRepo\Images\Kitchen_banner kitchen.jpg', 1, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'39_370x205.png', NULL, NULL, NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_370x205.png', CAST(N'2018-10-26 02:49:01.450' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bathroom', 40, 38, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 1, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, N'40_bathroom 3.jpg', NULL, NULL, NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\40_bathroom 3.jpg', CAST(N'2018-10-26 05:10:21.347' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Housing', 41, 38, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Furnitures & Renovation', 42, 0, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Garden Furnitures', 43, 42, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, N'43_43_banner-570x255.jpg', NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\43_43_banner-570x255.jpg', NULL, NULL, CAST(N'2018-10-26 04:33:33.510' AS DateTime), NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'House In General', 44, 42, N'House In General_FURNITURES & RENOVATION.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\House In General_FURNITURES & RENOVATION.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Clothing & Safty Gears', 45, 0, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Shoes', 46, 45, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Workwear', 47, 45, N'Workwear_CLOTHING & SAFTY GEARS.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Workwear_CLOTHING & SAFTY GEARS.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Safety Garms', 48, 45, N'Safety Garms_SAFETY AND WORKWEARSH.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Safety Garms_SAFETY AND WORKWEARSH.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Fashionable Products', 49, 45, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Sell Your Own Products', 50, 0, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Brand New Stuff', 51, 50, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Second Hand Stuff', 52, 50, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'10% - 20% Charges', 53, 50, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Blogs', 54, 0, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'About Product ', 55, 54, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'End Users', 56, 54, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Angle Drills Cordless', 57, 33, N'Angle Drills Cordless_angle-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Angle Drills Cordless_angle-3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Angle Grinders Cordless', 58, 33, N'Angle Grinders Cordless_ANGLE GRINDER3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Angle Grinders Cordless_ANGLE GRINDER3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Circular Saws Cordless', 59, 33, N'Circular Saws Cordless_SAW3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Circular Saws Cordless_SAW3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Combi Drills Cordless', 60, 33, N'Combi Drills Cordless_COMBI-DRILL3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Combi Drills Cordless_COMBI-DRILL3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Impact Drivers Cordless', 61, 33, N'Impact Drivers Cordless_IMPACT-CORDPESS3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Impact Drivers Cordless_IMPACT-CORDPESS3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Impact Wrench Cordless', 62, 33, N'Impact Wrench Cordless_IMPACT WRENCH-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Impact Wrench Cordless_IMPACT WRENCH-3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Jigsaws Cordless', 63, 33, N'Jigsaws Cordless_JIGSAWCORDLESS3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Jigsaws Cordless_JIGSAWCORDLESS3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Multi Tools Cordless', 64, 33, N'Multi Tools Cordless_MULTITOOL3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Multi Tools Cordless_MULTITOOL3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Nailers Cordless', 65, 33, N'Nailers Cordless_NAILER3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Nailers Cordless_NAILER3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Planers Cordless', 66, 33, N'Planers Cordless_PLAINERS3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Planers Cordless_PLAINERS3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Radios', 67, 33, N'Radios_RADIOS3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Radios_RADIOS3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', N'67_4.jpg', N'D:\21092018\NewDaveRepo\Images\67_4.jpg', N'67_5.jpg', N'67_1.png', N'67_tab-banner.jpg', N'D:\21092018\NewDaveRepo\Images\67_tab-banner.jpg', N'D:\21092018\NewDaveRepo\Images\67_1.png', N'D:\21092018\NewDaveRepo\Images\67_5.jpg', CAST(N'2018-10-21 00:00:00.000' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime), CAST(N'2018-10-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Reciprocating Saws Cordless', 68, 33, N'Reciprocating Saws Cordless_Reciprocating-Saws3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Reciprocating Saws Cordless_Reciprocating-Saws3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Sanders Cordless', 69, 33, N'Sanders Cordless_SANDERS3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Sanders Cordless_SANDERS3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Screwdrivers Cordless', 70, 33, N'Screwdrivers Cordless_Screwdrivers3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Screwdrivers Cordless_Screwdrivers3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'SDS Plus Hammers Cordless', 71, 33, N'SDS Plus Hammers Cordless_sdsHammers.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\SDS Plus Hammers Cordless_sdsHammers.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tool Kits Cordless', 72, 33, N'Tool Kits Cordless_toolkits3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Tool Kits Cordless_toolkits3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Torches Cordless', 73, 33, N'Torches Cordless_torch3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Torches Cordless_torch3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Twin Packs Cordless', 74, 33, N'Twin Packs Cordless_twin-pack3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Twin Packs Cordless_twin-pack3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Batteries ', 75, 33, N'Batteries _BATTERIES3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Batteries _BATTERIES3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Drywall Cutter Cordless', 76, 33, N'Drywall Cutter Cordless_DRYWALL3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Drywall Cutter Cordless_DRYWALL3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Mitre Saw Cordless', 77, 33, N'Mitre Saw Cordless_MITRESAW3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Mitre Saw Cordless_MITRESAW3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bench & Table Saws Cordless', 78, 33, N'Bench & Table Saws Cordless_table-saw3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Bench & Table Saws Cordless_table-saw3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Garden Tools', 79, 33, N'Garden Tools_gardentools3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Garden Tools_gardentools3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Percussion Drills Cordless', 80, 33, N'Percussion Drills Cordless_Percussion-drill3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Percussion Drills Cordless_Percussion-drill3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Router Cordless', 81, 33, N'Router Cordless_wood router3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Router Cordless_wood router3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Plunge Saws Cordless', 82, 33, N'Plunge Saws Cordless_plunge-saw3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Plunge Saws Cordless_plunge-saw3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Petrol Cutters', 83, 33, N'Petrol Cutters_petrol-cutters3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Petrol Cutters_petrol-cutters3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Pneumatic Nailers', 84, 33, N'Pneumatic Nailers_Pneumatic-nailers3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Pneumatic Nailers_Pneumatic-nailers3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bandsaw Cordless', 85, 33, N'Bandsaw Cordless_bandsaw-ordless3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Bandsaw Cordless_bandsaw-ordless3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Angle Drills Corded', 86, 31, N'Angle Drills Corded_anglecorded3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Angle Drills Corded_anglecorded3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bench ', 87, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Biscuit Jointers', 88, 31, N'Biscuit Jointers_biscuit-jointers3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Biscuit Jointers_biscuit-jointers3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Metal Cutting Saws Corded', 89, 31, N'Metal Cutting Saws Corded_metal-cutting-saw3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Metal Cutting Saws Corded_metal-cutting-saw3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Circular Saws Corded', 90, 31, N'Circular Saws Corded_circularsaw3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Circular Saws Corded_circularsaw3.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Demolition Hammers', 91, 31, N'Demolition Hammers_demolition-hammers.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Demolition Hammers_demolition-hammers.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Diamond Core Drills Corded', 92, 31, N'Diamond Core Drills Corded_diamond-core-crills-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Diamond Core Drills Corded_diamond-core-crills-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Die Grinders Corded', 93, 31, N'Die Grinders Corded_die-grinders-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Die Grinders Corded_die-grinders-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Electric Planers Corded', 94, 31, N'Electric Planers Corded_electric-planers-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Electric Planers Corded_electric-planers-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Flip Over Saws Corded', 95, 31, N'Flip Over Saws Corded_flip-over-saws-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Flip Over Saws Corded_flip-over-saws-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Heat Guns Corded', 96, 31, N'Heat Guns Corded_heat-guns-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Heat Guns Corded_heat-guns-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Jigsaws Corded', 97, 31, N'Jigsaws Corded_jigsaws-corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Jigsaws Corded_jigsaws-corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Mitre Saws Corded', 98, 31, N'Mitre Saws Corded_Mitre Saws Corded.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Mitre Saws Corded_Mitre Saws Corded.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Mixers Corded', 99, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Multi Tools Corded', 100, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Nibblers ', 101, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Percussion Drills Corded', 102, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Plunge Saws Corded', 103, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Reciprocating Saws Corded', 104, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Routers ', 105, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Sanders ', 106, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Screw Drivers Corded', 107, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'SDS Drills Corded', 108, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Thicknessers', 109, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Vacuums Cleaners Corded', 110, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Wall Chasers Corded', 111, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Angle Grinders Corded', 112, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bench Grinder', 113, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tiling Tools', 114, 31, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bolsters ', 115, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Chalk ', 116, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Clamps', 117, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Hammers ', 118, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Knives ', 119, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Planes', 120, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Staples Guns ', 121, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Saws', 122, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tapes ', 123, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Surform ', 124, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tin Snips ', 125, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Levels', 126, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Handheld Screwdrivers', 128, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Pliers ', 129, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Squares ', 130, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Trowels ', 131, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Sockets', 132, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Spanners', 133, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Crow, Pry ', 134, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Plumbing Tools', 135, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Woodworking Tools', 136, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Files ', 137, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Hexagon Keys Sets', 138, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Spacer', 139, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Building ', 140, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tiling ', 141, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Tool Trolley ', 142, 34, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Makita Gardening Equipment', 144, 35, N'v2-home-page_37.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\v2-home-page_37.jpg', 0, N'Categories provide a simple solution for grouping similar articles together. They help the users find related content, and when used correctly, categories can help you get better SEO results too. Besides all these benefits, categories also come with another interesting feature – the description.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Bosch Radios', 147, 67, N'Bosch Radios_0601429970.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Bosch Radios_0601429970.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Dewalt Radios', 154, 67, N'Dewalt Radios_dwst1-75663.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Dewalt Radios_dwst1-75663.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'More', 156, 54, N'More_1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\More_1.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Special Offer', 157, 156, N'Special Offer_special offer.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Special Offer_special offer.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Hot Deals', 158, 156, N'Hot Deals_special offer.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Hot Deals_special offer.jpg', 1, NULL, NULL, NULL, N'158_HotDeals.jpg', NULL, NULL, NULL, NULL, N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\158_HotDeals.jpg', CAST(N'2018-10-26 05:04:19.290' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Makita Angle Grinders', 159, 58, N'Makita Angle Grinders_dga452z.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Makita Angle Grinders_dga452z.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Dewalt Angle Grinders', 160, 58, N'Dewalt Angle Grinders_dcg414n.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Dewalt Angle Grinders_dcg414n.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Best Seller Product', 161, 156, N'Best Seller Product_is_audit.jpg', N'F:\26092018\NewDaveRepo\Images\Best Seller Product_is_audit.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'New Arrivals', 162, 156, N'New Arrivals_27_3 (1).jpg', N'F:\26092018\NewDaveRepo\Images\New Arrivals_27_3 (1).jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Featured', 163, 156, N'Featured_27_3 (1).jpg', N'F:\26092018\NewDaveRepo\Images\Featured_27_3 (1).jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Top Products', 164, 156, N'Top Products_57_4 (1).jpg', N'F:\26092018\NewDaveRepo\Images\Top Products_57_4 (1).jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Jaquar', 165, 39, N'Jaquar_download.png', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Jaquar_download.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'Multi Facing Bricks', 166, 26, N'Multi Facing Bricks_I1503_223059_00.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\Multi Facing Bricks_I1503_223059_00.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Inv_Category] ([CategoryName], [CategoryId], [IsParentId], [filename], [filePath], [ActiveOnPortal], [Description], [MainBannerName], [MainBannerFilePath], [CategoryImageName370], [CategoryImageName570], [CategoryImageName870], [CategoryImagePath870], [CategoryImagePath570], [CategoryImagePath370], [UploadDateCategoryImagePath370], [UploadDateCategoryImage570], [UploadDateCategoryImage870], [UploadDateCategoryImage1920]) VALUES (N'IbStock', 167, 166, N'IbStock_screwDriver.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\IbStock_screwDriver.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mst_Inv_Category] OFF
SET IDENTITY_INSERT [dbo].[Mst_Item] ON 

INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (1, N'Sink Cock', N'Sink Cock with Regular Swinging Spout (Wall Mounted Model) with Wall Flange', NULL, N'7', N'FLR-CHR-5347N', N'FLR-CHR-5347N', N'FLR-CHR-5347N', N'<div class="description" id="description">
                <h2>Description</h2>
                <p></p><p>&nbsp;Jaquar kitchen faucets provide a great experience with their high quality and high performance. Jaquar’s in-house, award&nbsp;winning design team is well integrated in its approach and&nbsp;helps to produce 60000 faucets per day.</p><br>
<p><b>Key Features :</b></p>
<br>
<li>&nbsp;Sink Cock with Regular Swinging Spout With Wall Flanges.</li>
<li>Jaquar cartridges are 5 lacs cycle tested to give a longer&nbsp;and trouble free operating life of upto 20 years (considering&nbsp;60-70 operations per day).</li>
<li>Wide angle of lever provides ultra comfort and flawless,&nbsp;smooth operation.</li>
<li>Our cartridge spindle is made of brass instead of plastic,&nbsp;to avoid breakage.</li>
<li>Works smoothly even at high temperatures (85 degrees)&nbsp;and in various pressure conditions (0.5 -5 bar).</li>
<li>Aerators integrated with honeycomb structure give protection from lime buildup and provide soft flow of water.</li>
<li>Integrated anti-clogging dome screen of the aerator filters&nbsp;sediments and dust particles.</li>
<li>Upper shiny protection layer provides a mirror finish to every&nbsp;faucet.</li>
<li>High plating thickness (Nickel: 10 microns and Chrome:&nbsp;0.3 microns) provides tolerance to extreme climate and&nbsp;water conditions.</li>
<li>450+ hours of salt spray test ensures our finishes are&nbsp;durable and corrosion resistant.</li>
<br>
<p>Please Note: Product may differ (eg. colour) from the product Image displayed on website. Kindly check the technical specifications provided in description to make better purchase decision.</p><p></p>
            </div>', N'1_0008895_sink-cock_500.jpeg', N'1_0008896_sink-cock_500.jpeg', NULL, N'25', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\1_0008895_sink-cock_500.jpeg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\1_0008896_sink-cock_500.jpeg', NULL, N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (2, N'Makita DA4000LR 7.5 Amp 1/2-Inch 350-Degree Right Angle Drill', N'Powerful 7.5 AMP motor for improved performance Quick switch drill head for low (0-400 RPM) or high (0-900 RPM) speed with reversible speed for increased drilling versatility360° angle attachment for drilling in any position Ergonomically designed rubberized grip for comfort All-ball bearing construction for longer tool life and smooth operation Angle attachment may be removed and drill used as a straight drill Trigger sensitive variable speed switch for precise control', NULL, N'1', N'DA4000LR', N'DA4000LR', N'DA4000LR', N'<div id="productDescription_feature_div" class="a-row feature">                                                 <div class="a-divider a-divider-section"><div class="a-divider-inner"></div></div>                                                 <h2 class="default">Product description</h2><div id="productDescription" class="a-section a-spacing-small">                                <p>Quick switch drill head for low (0 - 400 RPM) or high (0 - 900 RPM) speedPowerful 7.5 AMP motor for improved performanceErgonomically designed rubberized grip for comfortAll ball bearing construction for long tool life and smooth operationAngle attachment may be removed and drill used as a straight drillTrigger sensitive variable speed switch for precise controlIncludes:Drill head handle (122646-3)Side handle (152892-4)Drill chuck (193319-5)Chuck key (763434-5)Key holder (410102-8)Hex wrench (783216-9)Plastic tool case (824646-6)Specifications:CapacitySteel: 1/2&#34;Wood: 4-5/8&#34;SpeedLow: 0 - 400High: 0 - 900AMPS: 7.5Length: 16-1/4&#34;Net Weight: 8.1 lbs.Shipping Weight: 17.5 lbs.Makita DA4000LR 1/2&#34; Variable Speed Reversible Angle Drill    </p>                                                <h3>From the Manufacturer</h3>                                <p>This D-Handle Drill from Makita has an angle attachment that rotates 360 degrees for versatile drill positioning. It features a quick switch drill head for low or high-speed settings and a strong supporting handle for optimal control. Other features include an ergonomically designed grip for comfort, a trigger sensitive variable speed switch for precision, and a sturdy plastic tool case that accommodates the drill WITH the self-feed bit attached! </p><p> <b>FEATURES</b><br/> </p><ul> <li> Quick switch drill head for low (0 - 400 rpm) or high (0 - 900 rpm) speed </li><li> Powerful 7.5 amp motor for improved performance </li><li> Ergonomically designed rubberized grip for comfort </li><li> All ball bearing construction for long tool life and smooth operation </li><li> Angle attachment may be removed and drill used as a straight drill </li><li> Trigger sensitive variable speed switch for precise control </li></ul><p> <b>What''s in the Box</b><br/> </p><ul> <li> Drill head handle (122646-3) </li><li> Side handle (152892-4) </li><li> Drill chuck (193319-5) </li><li> Chuck key (763434-5) </li><li> Key holder (410102-8) </li><li> Hex wrench (783216-9) </li><li> Plastic tool case (824646-6) </li></ul><p> <b>SPECIFICATIONS</b><br/> </p><ul> <li> Capacities: Steel 1/2&#34;; Wood 4-5/8&#34; </li><li> Speed: Low 0 - 400 rpm; High 0 - 900 rpm </li><li> Amps: 7.5 </li><li> Overall length: 16-1/4&#34; </li><li> Net weight: 8.1 lbs. </li><li> Shipping weight: 17.5 lbs. </li></ul><p>    </p>                                                                                    </div>             <!-- Used to set table width because AUI is overriding the width attribute of the tables coming in description -->                                                            </div>', N'2_1_da4000lr-1.jpg', N'2_1_da4000lr-2.jpg', N'2_1_DA4000LR.jpg', N'296.55', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\2_1_da4000lr-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\2_1_da4000lr-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\2_1_DA4000LR.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (3, N'Dewalt DWST1-75663 Toughsystem Radio DAB + With 6 Speakers, Bluetooth and USB', N'The DeWalt DWST1-75663-GB 125 TOUGHSYSTEM™ Audio + Charger GB is compatible with the Toughsystem range and has 6 audio drivers, 40W RMS and 2 sub woofers to make it the best in its category.', NULL, N'5', N'DWST1-75663-GB', N'DWST1-75663-GB', N'DWST1-75663-GB', N'<div itemprop="description"><p style="text-align: left;">The DeWalt DWST1-75663-GB 125 TOUGHSYSTEM™ Audio + Charger GB is compatible with the Toughsystem range and has 6 audio drivers, 40W RMS and 2 sub woofers to make it the best in its category.</p>
<p style="text-align: left;"><strong>Features</strong></p>
<ul>
<li style="text-align: left;">IP 54 protection against dust and water jets.</li>
<li style="text-align: left;">Bluetooth® Technology to remotely control your music</li>
<li style="text-align: left;">3.5mm Aux. Input, 2.4 Hz USB charger</li>
<li style="text-align: left;">Class D amplifier, Digital Sound processor for sound optimization</li>
<li style="text-align: left;">Wide bandwidth 30Hz to 18KHz</li>
<li style="text-align: left;">Dot Matrix pixel screen</li>
</ul>
<p><strong>Comes With</strong></p>
<ul>
<li style="text-align: left;">1 x Toughsystem DAB radio</li>
<li style="text-align: left;">1 x DWST1-75663-GB</li><li>1 x Mains Power Adaptor</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;">**images for illustrative purposes only please refer to description and specification for full details of product</span></p></div>', N'3_10_dwst1-75663.jpg', N'3_10_dwst1-75663-1.jpg', N'3_10_dwst1-75663-2.jpg', N'182.99', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_10_dwst1-75663.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_10_dwst1-75663-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_10_dwst1-75663-2.jpg', N'20', NULL, NULL, 0, N'3_10_dwst1-75663-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\3_10_dwst1-75663-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (4, N'Bosch GML 18VLI 14.4V-18V SoundBoxx Jobsite Radio Body Only 0601429970', N'Small and compact jobsite radio, the GML SoundBoxx Professional from Bosch can be operated with all standard 14.4 and 18 volt professional batteries from Bosch with capacities of 1.3 Ah to 4.0 Ah and a mains lead. Two high-quality five-watt speakers deliver rich sound, while 20 volume levels and an equalizer function for bass and treble control ensure optimum sound quality on the jobsite. Designed for transport and storage in the L-Boxx, it fits into precisely one half of the L-Boxx 136. Profess', NULL, N'2', N'0601429970', N'0601429970', N'0601429970', N'<div itemprop="description"><p>Small and compact jobsite radio, the GML SoundBoxx Professional from Bosch can be operated with all standard 14.4 and 18 volt professional batteries from Bosch with capacities of 1.3 Ah to 4.0 Ah and a mains lead. Two high-quality five-watt speakers deliver rich sound, while 20 volume levels and an equalizer function for bass and treble control ensure optimum sound quality on the jobsite. Designed for transport and storage in the L-Boxx, it fits into precisely one half of the L-Boxx 136. Professionals can store another 14.4 or 18 volt tool in the other half, such as the GSR 14,4 V-LI Professional cordless drill/driver or the GSR 18 V-LI Professional. The GML SoundBoxx Professional is very light: the 18 volt version weighs less than two kilograms (including a 4.0 Ah battery which is not supplied) and can be effortlessly transported from one workplace to another. Its robust housing and handles protect the display and controls against dirt and damage. If you do not want to leave the device lying around in the room, you can fix it to suitable construction surfaces or walls using the handles or the purpose-designed apertures on the back. The controls on the front of the radio are dust-protected and easy to operate. The digital display shows the time and frequency, and also the charging state of the battery.</p>
<p><strong>Features</strong></p>
<ul>
<li>Powerful sound for FM/AM and MP3 file playback</li>
<li>Fits perfectly in half a Bosch L-BOXX (not supplied)</li>
<li>Connect external players via Aux-In</li>
<li>Power supply either with Bosch 14.4 V, 18 V lithium-ion batteries or using supplied mains adapter<br>10 station presets (5 FM and 5 AM)</li>
<li>Practical storage compartment for supplied mains adapter and Aux-in cable</li>
<li>Flexible bass/treble adjustment</li>
<li>2 x 5 watt neodymium speakers for stereo sound</li>
<li>Fully functional after falling from a height of 1 m</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images for illustrative purposes only – please refer to description and specification for full details of product</em></span></p></div>', N'4_9_0601429970.jpg', N'4_9_0601429970-1.jpg', N'4_9_0601429970-2.jpg', N'115', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_9_0601429970.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_9_0601429970-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_9_0601429970-2.jpg', N'20', NULL, NULL, 1, N'4_9_0601429970-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\4_9_0601429970-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (5, N'Makita DMR104W White DAB / FM Digital Job Site Radio Bare Unit', N'The DMR104W DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site.  The radio will work from the mains with the supplied adaptor but you can also plug in your Makita power tool batteries to listen (see features below for more details). You can also plug in your ipod or MP3 player and listen to it using the aux plug socket (aux cable not supplied). This radio is also available in blue (DMR104)!', NULL, N'1', N'DMR104W', N'DMR104W', N'DMR104W', N'<p>The DMR104W DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site.</p><p>The radio will work from the mains with the supplied adaptor but you can also plug in your Makita power tool batteries to listen (see features below for more details). You can also plug in your ipod or MP3 player and listen to it using the aux plug socket (aux cable not supplied). This radio is also available in blue (DMR104)!</p><p><strong>Features:</strong></p><ul><li>Rugged and robust DAB radio whose bumpers and metal pipes protect against rough handling</li><li>Rich sound with a wide choice of channels and stereo speakers</li><li>Powerful output</li><li>FM and digital (DAB) stations</li><li>Water resistant to IPX4 with a tough moulded ABS casing</li><li>Anti shock loud speaker system</li><li>Accepts most batteries manufactured by Makita from 7.2 up to 18 volts!</li><li>Brightness of large LCD display can be adjusted</li><li>Manual/preset/scan tuning</li><li>Rotary tuning and volume control</li><li>5 preset stations for each band</li><li>Micro USB port for software upgrade</li><li>Flexible FM antenna can be removed and stored inside battery cover</li><li>Can be used as a stereo speaker by connecting to external audio source such as mobile phone, MP3 player or iPod with a commercially available cable</li></ul><p><strong>Frequency Coverage:<br/></strong></p><ul><li>FM 87.5 - 108 MHz</li><li>DAB (Band III) 5A - 13F</li></ul><p><strong><strong>Max Output:</strong><br/></strong></p><ul><li>7.2v - 0.5w x2</li><li>9.6v - 1.0w x2</li><li>10.8v -  1.2w x2</li><li>12v - 1.5w x2</li><li>14.4v - 2.2w x2</li><li>18v -  3.5w x2</li></ul><p><strong>What''s Included:</strong></p><ul><li style="text-align: left;">AC power adapter</li><li style="text-align: left;">Carry handle</li><li style="text-align: left;">Aerial</li></ul><p><b><i>Have a question about this item?</i></b></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-00.jpg', N'5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-03.jpg', N'5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-07.jpg', N'72.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-00.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-03.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-07.jpg', N'20', N'', N'', 1, N'5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-09.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\5_DMR104W_MAKITA-DMR104W-DAB-Radio-UKPLANETTOOLS-09.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (6, N'Makita DMR104 Blue Job Site Radio Stereo With DAB & FM', N'The DMR104 DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site.  The radio can be powered either from the mains (with the supplied adaptor) or you can also plug in your Makita power tool batteries to listen (see features below for more details). You can also plug in your ipod or MP3 player and listen to it using the aux plug socket (aux cable not supplied). The DMR104 is also available in white (DM', NULL, N'1', N'DMR104', N'DMR104', N'DMR104', N'<div itemprop="description"><p style="text-align: left;">The DMR104 DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site.</p><p>The radio can be powered either from the mains (with the supplied adaptor) or you can also plug in your Makita power tool batteries to listen (see features below for more details). You can also plug in your ipod or MP3 player and listen to it using the aux plug socket (aux cable not supplied). The DMR104 is also available in white (DMR104W)! </p>
<p><strong>Features:</strong></p><ul style="list-style-type:square;padding-left: 20px;">
<li>Rugged and robust DAB radio whose bumpers and metal pipes protect against rough handling</li>
<li>Rich sound with a wide choice of channels and stereo speakers</li>
<li>Powerful output</li>
<li>FM and digital (DAB) stations</li>
<li>Water resistant to IPX4 with a tough moulded ABS casing</li>
<li>Anti shock loud speaker system</li>
<li>Accepts most batteries manufactured by Makita from 7.2 up to 18 volts!</li>
<li>Brightness of large LCD display can be adjusted</li>
<li>Manual/preset/scan tuning</li>
<li>Rotary tuning and volume control</li>
<li>5 preset stations for each band</li>
<li>Micro USB port for software upgrade</li>
<li>Flexible FM antenna can be removed and stored inside battery cover</li>
<li>Can be used as a stereo speaker by connecting to external audio source such as mobile phone, MP3 player or iPod with a commercially available cable</li>
</ul>
<p><strong>Frequency Coverage:<br></strong></p>
<ul>
<li>FM 87.5 - 108 MHz</li>
<li>DAB (Band III) 5A - 13F</li>
</ul>
<p><strong><strong>Max Output:</strong><br></strong></p>
<ul>
<li>7.2v - 0.5w x2</li>
<li>9.6v - 1.0w x2</li>
<li>10.8v -&nbsp; 1.2w x2</li>
<li>12v - 1.5w x2</li>
<li>14.4v - 2.2w x2</li>
<li>18v -&nbsp; 3.5w x2</li>
</ul>
<p><strong>What''s Included:</strong></p>
<ul>
<li style="text-align: left;">AC power adapter</li>
<li style="text-align: left;">Carry handle</li>
<li style="text-align: left;">Aerial</li>
</ul>
<p><b><i>Have a question about this item?</i></b></p><p>Call us on <b>01908 978343</b> or e-mail us at <b>sales@ukplanettools.co.uk</b> (24 - 48hr response time)
</p><p><b>View more:</b>&nbsp;<a href="https://www.ukplanettools.co.uk/Products/Makita">Makita</a>&nbsp; | &nbsp;<a href="https://www.ukplanettools.co.uk/Products/Makita-Radios">Makita Radios</a></p>
<p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>
<iframe width="790" height="400" src="https://www.youtube.com/embed/2gR707PdBgo?ecver=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe></div>', N'6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-00.jpg', N'6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-01-BOX.jpg', N'6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-03.jpg', N'72.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-00.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-01-BOX.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-03.jpg', N'20', NULL, NULL, 1, N'6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-09.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\6_DMR104_MAKITA-DMR104-DAB-Radio-UKPLANETTOOLS-09.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (7, N'Makita DMR104 Blue DAB/FM Radio With 1 x 3Ah Battery & Charger', N'The DMR104 DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site. Rugged and showerproof and packing a punch in terms of loudness you are sure to turn heads when you turn this on. The radio will work from the mains with the supplied adaptor but you can also plug in your Makita power tool batteries to listen. This model accepts virtually any battery manufactured by Makita from 7.2 up to 18 volts. You ', NULL, N'1', N'DMR104-KIT-1', N'DMR104-KIT-1', N'DMR104-KIT-1', N'<div itemprop="description"><p>The DMR104 DAB Jobsite Radio gives you the flexibility of listening to your favourite FM channels as well as digital channels when you''re working on the job site. Rugged and showerproof and packing a punch in terms of loudness you are sure to turn heads when you turn this on.<br>The radio will work from the mains with the supplied adaptor but you can also plug in your Makita power tool batteries to listen. This model accepts virtually any battery manufactured by Makita from 7.2 up to 18 volts. You can also plug in your ipod or MP3 player and listen to it using the aux plug socket.</p>
<p><strong>Features</strong></p>
<ul>
<li>Rugged and robust DAB radio whose bumpers and metal pipes protect against rough handling</li>
<li>Rich sound with a wide choice of channels and stereo speakers</li>
<li>Powerful output, FM and digital (DAB) stations</li>
<li>Showerproof (water resistant to IPX4), with a tough moulded ABS casing</li>
<li>Anti shock loud speaker system</li>
<li>Working from mains power and many Makita batteries</li>
<li>Brightness of large LCD display can be adjusted</li>
<li>Manual/preset/scan tuning</li>
<li>Rotary tuning and volume control</li>
<li>5 preset stations for each band</li>
<li>Micro USB port for software upgrade</li>
<li>Flexible FM antenna can be removed and stored inside battery cover</li>
<li>Can be used as a stereo speaker by connecting to external audio source such as mobile phone, MP3 player or iPod with a commercially available cable</li>
</ul>
<p><strong>Comes WFrequency Coverage:</strong></p>
<ul>
<li>FM 87.5 - 108 MHz</li>
<li>DAB (Band III) 5A - 13F</li>
</ul>
<p><strong>Max Output:</strong></p>
<ul>
<li>7.2v - 0.5w x2</li>
<li>9.6v - 1.0w x2</li>
<li>10.8v -&nbsp; 1.2w x2</li>
<li>12v - 1.5w x2</li>
<li>14.4v - 2.2w x2</li>
<li>18v -&nbsp; 3.5w x2</li>
</ul>
<p><strong>Comes With</strong></p>
<ul>
<li>1 x DMR104 Blue Radio</li>
<li>1 x AC power adapter</li>
<li>1 x Carry handle</li>
<li>1 x Aerial</li>
<li>1 x BL1830 3Ah Battery</li>
<li>1 x DC18RC Charger</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images for illustrative purposes only please refer to description and specification for full details of product**</em></span></p></div>', N'7_dmr104-kit-1.jpg', N'7_DMR104-KIT-1_DMR104-3.jpg', N'7_DMR104-KIT-1_DMR104.jpg', N'144.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\7_dmr104-kit-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\7_DMR104-KIT-1_DMR104-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\7_DMR104-KIT-1_DMR104.jpg', N'20', NULL, NULL, 1, N'7_DMR104-KIT-1_DMR104-5.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\7_DMR104-KIT-1_DMR104-5.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\7_DMR104-KIT-1_DMR104-7.jpg', N'7_DMR104-KIT-1_DMR104-7.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (8, N'Ibstock test Tradesman Multi Facing Brick Buff 215mm x 102.5mm x 65mm (Pack of 400) tt', N'The multi facing brick from Ibstock is a textured, vertically perforated brick. Strong and durable, it is an ideal choice for brick walls and can also be used in most masonry situations. Being F2 durable, it finds extensive use in garden walls, chimneys, cappings and between ground level and a damp proof course.', NULL, N'8', N'223059', N'223059', N'223059', N'<div>
	The multi facing brick from Ibstock is a textured, vertically perforated brick. Strong and durable, it is an ideal choice for brick walls and can also be used in most masonry situations. Being F2 durable, it finds extensive use in garden walls, chimneys, cappings and between ground level and a damp proof course.<div class="featureClass">
		<br>
		<ul>
			<li>Sandfaced extruded bricks</li>
			<li>High compressive strength</li>
			<li>Water absorption rate of 9 percent</li>
			<li>Higher degree of frost resistance</li>
			<li>Multiple shades of buff available</li>
			</ul>
	</div>
</div>
<div class="featureClass">
		<table>
			<tbody>
				<tr>
							<td class="attrib">Height</td>

							<td>65 mm</td>
						</tr>
					<tr>
							<td class="attrib">Length</td>

							<td>215 mm</td>
						</tr>
					<tr>
							<td class="attrib">Width</td>

							<td>102.50 mm</td>
						</tr>
					<tr>
							<td class="attrib">Colour</td>

							<td>Buff Multi</td>
						</tr>
					<tr>
							<td class="attrib">Colour Family</td>

							<td>Yellows</td>
						</tr>
					<tr>
							<td class="attrib">Durability</td>

							<td>F2</td>
						</tr>
					<tr>
							<td class="attrib">Compressive Strength</td>

							<td>60 N/mm2</td>
						</tr>
					<tr>
							<td class="attrib">Water Absorption Rating</td>

							<td>9</td>
						</tr>
					<tr>
							<td class="attrib">Texture</td>

							<td>Rolled</td>
						</tr>
					<tr>
							<td class="attrib">Manufacturing Process</td>

							<td>Wirecut</td>
						</tr>
					<tr>
							<td class="attrib">Factory</td>

							<td>Atlas/Pinhoe</td>
						</tr>
					<tr>
							<td class="attrib">Pack Quantity</td>

							<td>400</td>
						</tr>
					<tr>
							<td class="attrib">Type</td>

							<td>Facing Brick</td>
						</tr>
					<tr>
							<td class="attrib">Made To Order</td>

							<td>N</td>
						</tr>
					<tr>
							<td class="attrib">Manufacturer Model No</td>

							<td>A0304A</td>
						</tr>
					<tr>
							<td class="attrib">Brand Name</td>

							<td>Ibstock</td>
						</tr>
					<tr>
							<td class="attrib">Range Description</td>

							<td>Facing Bricks</td>
						</tr>
					</tbody>
		</table>
	</div>', N'8_images.jpg', NULL, NULL, N'240.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\8_images.jpg', NULL, NULL, N'20', N'', N'', 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (9, N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.', NULL, N'1', N'DA4000LR-1', N'DA4000LR-1', N'DA4000LR-1', N'<p>The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.</p><p><strong>Features:</strong></p><ul><li>Enhanced gears in angle attachment for heavy duty industrial use</li><li>Ergonomic soft grip for superior handling</li><li>Light weight and easy to operate</li><li>D-formed handle for easy gripping</li><li>Durable gears</li><li>Double insulated</li><li>Forward/Reverse rotation</li><li>Variable speed trigger</li></ul><p><strong>What''s Included:</strong></p><ul><li>Chuck key</li><li>Side Handle</li><li>Hex Wrench</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'9_da4000lr%2F1.jpg', NULL, NULL, N'306', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\9_da4000lr%2F1.jpg', NULL, NULL, N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (10, N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.', NULL, N'1', N'DA4000LR-2', N'DA4000LR-2', N'DA4000LR-2', N'<p>The industrial class drill whose head can be rotated to any angle allowing for use in the most tight of situations. With variable speed at up to 900RPM and a heavy duty keyed chuck this is a truly classic professional power tool.</p><p><strong>Features:</strong></p><ul><li>Enhanced gears in angle attachment for heavy duty industrial use</li><li>Ergonomic soft grip for superior handling</li><li>Light weight and easy to operate</li><li>D-formed handle for easy gripping</li><li>Durable gears</li><li>Double insulated</li><li>Forward/Reverse rotation</li><li>Variable speed trigger</li></ul><p><strong>What''s Included:</strong></p><ul><li>Chuck key</li><li>Side Handle</li><li>Hex Wrench</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'10_da4000lr%2F1.jpg', NULL, NULL, N'306', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\10_da4000lr%2F1.jpg', NULL, NULL, N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (11, N'Makita HS7601J Circular Saw 190mm 110V With MakPac Carry Case', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J', N'HS7601J', N'HS7601J', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601 Circular Saw</li><li>Makpac Connector Carry Case</li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>HS7601J</td></tr><tr><th>Max Cut @ 90°</th><td>66 mm</td></tr><tr><th>Max Cut @ 45°</th><td>46 mm</td></tr><tr><th>Blade Diameter</th><td>190 mm</td></tr><tr><th>Bore Size</th><td>30 mm</td></tr><tr><th>Input Wattage</th><td>1200 w</td></tr><tr><th>No-load speed</th><td>5200 rpm</td></tr><tr><th>Noise Sound Power</th><td>98 dB(A)</td></tr><tr><th>Noise Sound Pressure</th><td>87 dB(A)</td></tr><tr><th>Noise K Factor</th><td>3 dB(A)</td></tr><tr><th>Length</th><td>309 mm</td></tr><tr><th>Vibration K factor</th><td>1.5 m/sec²</td></tr><tr><th>Vibration Cutting Wood</th><td>2.5 m/sec²</td></tr><tr><th>Weight</th><td>4.0 kg</td></tr><tr><th>Total Shipping Weight</th><td>7kg</td></tr><tr><th>Custom_Label_0</th><td>LowMargin</td></tr></tbody></table>', N'11_hs7601j.jpg', N'11_WebCat-0003000100060001_HS7601J-1.jpg', N'11_WebCat-0003000100060001_HS7601J-2.jpg', N'106', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\11_hs7601j.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\11_WebCat-0003000100060001_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\11_WebCat-0003000100060001_HS7601J-2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (12, N'Makita HS7601J Circular Saw 190mm 240V With MakPac Carry Case', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2', N'HS7601J-2', N'HS7601J-2', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601 Circular Saw</li><li>Makpac Connector Carry Case</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'12_hs7601j.jpg', N'12_WebCat-0003000100060001_HS7601J-1.jpg', N'12_WebCat-0003000100060001_HS7601J-2.jpg', N'106', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\12_hs7601j.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\12_WebCat-0003000100060001_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\12_WebCat-0003000100060001_HS7601J-2.jpg', N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (13, N'Dewalt DWE550-GB 165mm Compact Circular Saw 240V', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-GB', N'DWE550-GB', N'DWE550-GB', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong> </p><ul><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'13_dwe550-gb.jpg', N'13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-02.jpg', N'13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-03.jpg', N'82.99', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\13_dwe550-gb.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-02.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-03.jpg', N'20', NULL, NULL, 1, N'13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-04.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\13_DWE550-GB_DEWALT-DWE550-Circularsaw-UKPLANETTOOLS-04.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (14, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 24 + 40 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2-KIT-14', N'HS7601J-2-KIT-14', N'HS7601J-2-KIT-14', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 24 Teeth Blades</li><li>2 x 40 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'14_hs7601j (2).jpg', N'14_HS7601JHS7601J-1.jpg', N'14_HS7601J2F2-KIT-14HS7601J-2.jpg', N'114', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\14_hs7601j (2).jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\14_HS7601JHS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\14_HS7601J2F2-KIT-14HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (15, N'Makita DMR109 10.8V-18v LXT/CXT DAB Job Site Radio With 1 x 4Ah Battery & Charger', N'Models DMR109 is a Job site radio that is able to receive Digital Audio Broadcasting DAB and has been developed based on the model DMR104.', NULL, N'1', N'DMR109-KIT-7', N'DMR109-KIT-7', N'DMR109-KIT-7', N'<div class="panel-body"><div itemprop="description"><p>Models DMR109 is a Job site radio that is able to receive Digital Audio Broadcasting DAB and has been developed based on the model DMR104.</p>
<p><strong>Features&nbsp;</strong></p>
<ul>
<li>Not compatible with G-Series Battery or Ni-CAD or Ni-MH Batteries</li>
<li>Newly compatible with 10.8V CXT slide batteries</li>
<li>Dual power source: AC or Makita batteries.</li>
<li>Digital tuner</li>
<li>Flexible antenna can be removed and stored inside the radio.</li>
<li>Soft grip carry handle swivels 90 degrees</li>
<li>2 speaker stereo system.</li>
<li>Elastomer bumpers protect against rough handling on a jobsite</li>
<li>Equipped with Micro USB post for software upgrade.</li>
<li>AUX-IN jack for connecting to external audio source (Connecting cable is not included.)</li>
<li>AC adaptor jack</li>
<li>IP64 rated dust and shower-proof construction</li>
<li>Easy-to-read digital tuner with LCD display</li>
</ul>
<p><strong>Comes With</strong></p>
<ul>
<li>1 x DMR109 Blue Radio</li>
<li>1 x&nbsp;AC power adaptor</li>
<li>1 x BL1840 4Ah Battery</li>
<li>1 x DC18RC Charger</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images for illustrative purposes only - please refer to description and specification for full details of product**</em></span></p></div></div>', N'15_dmr109-kit-7.jpg', NULL, NULL, N'199', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\15_dmr109-kit-7.jpg', NULL, NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (16, N'Dewalt DCD740N 18V XR Li-ion Right Angle Drill Driver With 1 x 5.0Ah Battery & Charger', N'Powerful 18 Volt right angle drill for drilling and screwdriving applications in confined spaces', NULL, N'5', N'DCD740-KIT-7', N'DCD740-KIT-7', N'DCD740-KIT-7', N'<div itemprop="description"><p><strong>Features</strong></p>
<ul>
<li>Powerful 18 Volt right angle drill for drilling and screwdriving applications in confined spaces</li>
<li>Compact lightweight design</li>
<li>Two speed settings with reverse switch</li>
<li>Compact 10mm single sleeve keyless chuck with automatic spindle lock for quick and easy bit change with one hand</li>
<li>Ergonomic handle and rubber overmold to provide ultimate end user comfort</li>
<li>Multi grip trigger provides comfort and convenience by allowing the user to operate the trigger from various positions</li>
<li>High performance fan cooled motor for maximum power and durability</li>
<li>All metal gearing and right angle transmission for efficient power transmission and longer tool life</li>
<li>LED with delay for improved visibility</li>
<li>Li-Ion slide pack battery allows for superior insertion and removal</li>
</ul>
<p><strong>Comes With</strong></p>
<ul>
<li>1 x&nbsp;DCD740N Angle Drill</li>
<li>1 x DCB184 5.0Ah Battery</li>
<li>1 x Multi Voltage Charger</li>
</ul>
<p>&nbsp;</p>
<p><span style="color: #ff0000;"><em>**images for illustrative purposes only – please refer to description and specification for full details of product</em></span></p></div>', NULL, NULL, NULL, N'219.00', NULL, NULL, NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (17, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra 48, 60 & 80 Teeth Blades', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-16', N'DWE550-KIT-16', N'DWE550-KIT-16', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li><li>1 x 48 Teeth Blade</li><li>1 x 60 Teeth Blade</li><li>1 x 80 Teeth Blade</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'17_dwe550-kit-16.jpg', N'17_DWE550-KIT-16_DWE550.jpg', N'17_DWE550-KIT-16_DWE550-1.jpg', N'111', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\17_dwe550-kit-16.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\17_DWE550-KIT-16_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\17_DWE550-KIT-16_DWE550-1.jpg', N'20', NULL, NULL, 1, N'17_DWE550-KIT-16_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\17_DWE550-KIT-16_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\17_DWE550-KIT-16_DWE550-3.jpg', N'17_DWE550-KIT-16_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (18, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 24 + 40 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2-KIT-16', N'HS7601J-2-KIT-16', N'HS7601J-2-KIT-16', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 24 Teeth Blades</li><li>4 x 40 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'18_hs7601j2F2-kit-16.jpg', N'18_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'18_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'122', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\18_hs7601j2F2-kit-16.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\18_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\18_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (19, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 24 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-6', N'HS7601J-1-KIT-6', N'HS7601J-1-KIT-6', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 24 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'19_F1-kit-6.jpg', N'19_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'19_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'113.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\19_F1-kit-6.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\19_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\19_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (20, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 24 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-4', N'HS7601J-1-KIT-4', N'HS7601J-1-KIT-4', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 24 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'20_1-kit-4.jpg', N'20_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'20_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'106', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\20_1-kit-4.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\20_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\20_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (21, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 24 + 40 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-14', N'HS7601J-1-KIT-14', N'HS7601J-1-KIT-14', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 24 Teeth Blades</li><li>2 x 40 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'21_2440kit-14.jpg', N'21_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'21_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'114', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\21_2440kit-14.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\21_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\21_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (22, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 24 + 40 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-16', N'HS7601J-1-KIT-16', N'HS7601J-1-KIT-16', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 24 Teeth Blades</li><li>4 x 40 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'22_2440kit-14.jpg', N'22_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'22_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'129', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\22_2440kit-14.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\22_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\22_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (23, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 40 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2-KIT-11', N'HS7601J-2-KIT-11', N'HS7601J-2-KIT-11', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 40 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'23_404.jpg', N'23_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'23_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'116', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\23_404.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\23_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\23_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (24, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 40 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2-KIT-9', N'HS7601J-2-KIT-9', N'HS7601J-2-KIT-9', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 40 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'24_402.jpg', N'24_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'24_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'108', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\24_402.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\24_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\24_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (25, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 24 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-2-KIT-6', N'HS7601J-2-KIT-6', N'HS7601J-2-KIT-6', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 24 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'25_244.jpg', N'25_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'25_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'113', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\25_244.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\25_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\25_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (26, N'Makita HS7601J Circular Saw 190mm 240V With Case & Extra 24 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J2-KIT-4', N'HS7601J2-KIT-4', N'HS7601J2-KIT-4', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 24 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'26_242.jpg', N'26_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'26_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'106', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\26_242.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\26_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\26_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (27, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 40 Teeth Blade Pack of 4', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-11', N'HS7601J-1-KIT-11', N'HS7601J-1-KIT-11', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>4 x 40 Teeth Blades</li></ul><p><br/></p><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'27_40t4.jpg', N'27_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'27_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'116', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\27_40t4.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\27_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\27_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (28, N'Makita HS7601J Circular Saw 190mm 110V With Case & Extra 40 Teeth Blade Pack of 2', N'The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)', NULL, N'1', N'HS7601J-1-KIT-9', N'HS7601J-1-KIT-9', N'HS7601J-1-KIT-9', N'<p>The Makita HS7601 Circular Saw is a compact and lightweight tool giving 1200 watts of continuous input. This model succeeds the popular 5704R and has a number of improvements and refinements (EG lighter and more compact)</p><p><strong>Features:</strong></p><ul><li>Double Insulation</li><li>Compact and lightweight design</li><li>New aesthetic design</li><li>Compatible with Guide Rail</li><li>Rear dust exhaust port</li><li>Connectable to dust extractor</li><li>Rear angular guide for smooth and precise adjustment of bevel angle</li><li>Single action lever for quick adjustment of cutting depth</li><li>Ergonomic soft grip for extra comfort</li><li>Flat motor housing end making the tool more stable when changing blades</li><li>Aluminium die-cast safety cover</li><li>Aluminium base plate</li></ul><p><strong>What''s Included:</strong> </p><ul><li>1 x HS7601J Circular Saw</li><li>2 x 40 Teeth Blades</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'28_40t2.jpg', N'28_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'28_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'108', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\28_40t2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\28_HS7601J2F2-KIT-16_HS7601J-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\28_HS7601J2F2-KIT-16_HS7601J-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (29, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra Blade 48 Teeth Pack of 4', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-4', N'DWE550-KIT-4', N'DWE550-KIT-4', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li><li>4 x 48 Teeth Blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'29_dwe550-kit-444.jpg', N'29_DWE550-KIT-4_DWE550.jpg', N'29_DWE550-KIT-4_DWE550-1.jpg', N'113', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\29_dwe550-kit-444.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\29_DWE550-KIT-4_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\29_DWE550-KIT-4_DWE550-1.jpg', N'20', NULL, NULL, 1, N'29_DWE550-KIT-4_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\29_DWE550-KIT-4_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\29_DWE550-KIT-4_DWE550-3.jpg', N'29_DWE550-KIT-4_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (30, N'Festool HK55 EBQ-Plus Circular Saw 240V With Guide Rail in Systainer 574681', N'High-torque 1200 W motor with power electronics ensures constant power when sawing', NULL, N'3', N'574681', N'574681', N'574681', N'<p><strong>Features:</strong></p><ul><li>High-torque 1200 W motor with power electronics ensures constant power when sawing</li><li>Safe and easy handling thanks to the cutting depth adjustment with plunge function, pendulum hood remote control and guide wedge</li><li>Angle adjustment with central clamping mechanism from 0 to 50 degrees</li><li>Sawing system: HK complete with FSK cross cutting guide rail and FS guide rail</li><li>Safe and perfectly straight sawing along the guide rail</li><li>Rip and cross cuts in materials up to 55 mm thick</li><li>Cutting roof battens to length</li><li>Sawing lining boards/shuttering to size</li><li>Sawing boards to size</li><li>Cutting chipboard to size</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x 574681 Circular Saw</li><li>1 x Guide Rail</li><li>1 x Systainer</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'30_574681.jpg', NULL, NULL, N'468', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\30_574681.jpg', NULL, NULL, N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (31, N'Hitachi C7SB2 Circular Saw 185mm 240V With Carry Case', N'Heavy duty aluminium base with scale', NULL, N'4', N'C7SB2-J1', N'C7SB2-J1', N'C7SB2-J1', N'<p><strong>Features:</strong></p><ul><li>Heavy duty aluminium base with scale</li><li>No riving knife means easier plunge cutting</li><li>Soft grip handle</li><li>Spindle lock for easy blade replacement</li><li>Unique 90° angle setting system ensures accuracy of 90° cuts</li><li>External brush caps for ease of maintenance</li><li>Easy access cutting depth adjustment</li><li>Easy access bevel lever</li></ul><p></p><p><strong>What''s Included:</strong> </p><ul><li>18 tooth TCT saw blade</li><li>Guide</li><li>Wrench</li><li>Carrying case</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'31_c7sb22Fj1.jpg', N'31_C7SB2FJ1_C7SB2-J2-1.jpg', N'31_C7SB27SB2-J2-2.jpg', N'114', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\31_c7sb22Fj1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\31_C7SB2FJ1_C7SB2-J2-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\31_C7SB27SB2-J2-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (32, N'Festool HK55 EBQ-Plus-FS Circular Saw 240V With Guide Rail in Systainer 574676', N'High-torque 1200 W motor with power electronics ensures constant power when sawing', NULL, N'3', N'574676', N'574676', N'574676', N'<p><strong>Features:</strong></p><ul><li>High-torque 1200 W motor with power electronics ensures constant power when sawing</li><li>Safe and easy handling thanks to the cutting depth adjustment with plunge function, pendulum hood remote control and guide wedge</li><li>Angle adjustment with central clamping mechanism from 0 to 50 degrees</li><li>Sawing system: HK complete with FSK cross cutting guide rail and FS guide rail</li><li>Safe and perfectly straight sawing along the guide rail</li><li>Rip and cross cuts in materials up to 55 mm thick</li><li>Cutting roof battens to length</li><li>Sawing lining boards/shuttering to size</li><li>Sawing boards to size</li><li>Cutting chipboard to size</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x 574676 Circular Saw</li><li>1 x Guide Rail</li><li>1 x Systainer</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'32_574676.jpg', NULL, NULL, N'387.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\32_574676.jpg', NULL, NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (33, N'Festool HK55 EBQ-Plus Circular Saw 160mm 240v 561759', N'Click - and go. The HK 55 is extremely easy to connect the the FSK cross-cutting guide rail, which can be supplied in three different lengths. With the flick of a wrist, this results in a mobile, easy-to-handle cross-cutting system for precise angle cuts.', NULL, N'3', N'561759', N'561759', N'561759', N'<p><strong>Features:</strong></p><ul><li>The high torque 1200W motor with power electronics ensures constant power when sawing</li><li>Click - and go. The HK 55 is extremely easy to connect the the FSK cross-cutting guide rail, which can be supplied in three different lengths. With the flick of a wrist, this results in a mobile, easy-to-handle cross-cutting system for precise angle cuts.</li><li>Secure and easy handling thanks to cutting depth adjustment with plunge function, pendulum hood remote control and guide wedge.</li></ul><p><strong>What''s Included:</strong></p><ul><li>W18 HW standard saw blade</li><li>Operating tool</li><li>T-LOC SYSTAINER</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'33_561759.jpg', NULL, NULL, N'298.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\33_561759.jpg', NULL, NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (34, N'Bosch GKS190 Circular Saw 190mm Hand Held With Carry Case 240V 0601623070', N'The most powerful tool in the entry level class With 1400 watts, it has the highest motor power in its class for fast sawing progress in soft and hard wood', NULL, N'2', N'0601623070', N'0601623070', N'0601623070', N'<p><strong>Features:</strong></p><ul><li>The most powerful tool in the entry level class</li><li>With 1400 watts, it has the highest motor power in its class for fast sawing progress in soft and hard wood</li><li>Highest cutting depth (70 mm) and bevel capability (56°) in its class for flexibility in any work situation</li><li>Turbo blower for dust-free view of the cutting line</li><li>Optimised wood chip deflector for better view of the work surface</li><li>Robust closed aluminium die-cast pendulum guard</li><li>Compact tool design for best handling</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carry case</li><li>Saw blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'34_0601623070.jpg', N'34_0601623070_0601623070-1.jpg', N'34_0601623070_0601623070-2.jpg', N'110.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\34_0601623070.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\34_0601623070_0601623070-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\34_0601623070_0601623070-2.jpg', N'20', N'', N'', 1, N'34_0601623070_0601623070-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\34_0601623070_0601623070-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (35, N'Bosch GKS190 Circular Saw 190mm Hand Held With Carry Case 110V 0601623060', N'The most powerful tool in the entry level class With 1400 watts, it has the highest motor power in its class for fast sawing progress in soft and hard wood', NULL, N'2', N'0601623060', N'0601623060', N'0601623060', N'<p><strong>Features:</strong></p><ul><li>The most powerful tool in the entry level class</li><li>With 1400 watts, it has the highest motor power in its class for fast sawing progress in soft and hard wood</li><li>Highest cutting depth (70 mm) and bevel capability (56°) in its class for flexibility in any work situation</li><li>Turbo blower for dust-free view of the cutting line</li><li>Optimised wood chip deflector for better view of the work surface</li><li>Robust closed aluminium die-cast pendulum guard</li><li>Compact tool design for best handling</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carry case</li><li>Saw blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'35_0601623070.jpg', N'35_0601623070_0601623070-1.jpg', N'35_0601623070_0601623070-2.jpg', N'95.99', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\35_0601623070.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\35_0601623070_0601623070-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\35_0601623070_0601623070-2.jpg', N'20', NULL, NULL, 1, N'35_0601623070_0601623070-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\35_0601623070_0601623070-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (36, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra Blade 80 Teeth Pack of 2', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-12', N'DWE550-KIT-12', N'DWE550-KIT-12', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>Comes With</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li><li>2 x 80 Teeth Blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'36_dwe550-kit-12802.jpg', N'36_DWE550-KIT-12_DWE550.jpg', N'36_DWE550-KIT-12_DWE550-1.jpg', N'107.00', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\36_dwe550-kit-12802.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\36_DWE550-KIT-12_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\36_DWE550-KIT-12_DWE550-1.jpg', N'1', NULL, NULL, 1, N'36_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\36_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\36_DWE550-KIT-12_DWE550-3.jpg', N'36_DWE550-KIT-12_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (37, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra Blade 80 Teeth Pack of 4', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-14', N'DWE550-KIT-14', N'DWE550-KIT-14', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spannere</li><li>4 x 80 Teeth Blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'37_dwe550-kit-14804.jpg', N'37_DWE550-KIT-12_DWE550.jpg', N'37_DWE550-KIT-12_DWE550-1.jpg', N'123', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\37_dwe550-kit-14804.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\37_DWE550-KIT-12_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\37_DWE550-KIT-12_DWE550-1.jpg', N'20', NULL, NULL, 1, N'37_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\37_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\37_DWE550-KIT-12_DWE550-3.jpg', N'37_DWE550-KIT-12_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (38, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra Blade 60 Teeth Pack of 2', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-7', N'DWE550-KIT-7', N'DWE550-KIT-7', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li><li>2 x 60 Teeth Blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'38_dwe550-kit-7602.jpg', N'38_DWE550-KIT-12_DWE550.jpg', N'38_DWE550-KIT-12_DWE550-1.jpg', N'104', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\38_dwe550-kit-7602.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\38_DWE550-KIT-12_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\38_DWE550-KIT-12_DWE550-1.jpg', N'20', NULL, NULL, 1, N'38_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\38_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\38_DWE550-KIT-12_DWE550-3.jpg', N'38_DWE550-KIT-12_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (39, N'Dewalt DWE550 165mm Compact Circular Saw 240V With Extra Blade 60 Teeth Pack of 4', N'The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size', NULL, N'5', N'DWE550-KIT-9', N'DWE550-KIT-9', N'DWE550-KIT-9', N'<p>The Dewalt DWE550 compact circular saw is a lightweight saw with a high power 1200 watt motor for impressive cutting performance for a saw of this size</p><p><strong>Features:</strong></p><ul><li>Compact, Lightweight, Easy to use circular saw with 55mm depth of cut</li><li>High power 1200W motor gives increased cutting performance</li><li>Cutaway inner guard gives improved line of sight to cutting line</li><li>Dust blower clears dust and debris from cut line</li><li>Efficient dust extraction port to minimise airborne dust particles when connected to a dust extraction unit</li><li>Direct compatability with DEWALT AirLock system for easy, secure connection to extraction hose</li></ul><p><strong>What''s Included:</strong></p><ul><li>1 x DWS550 Circular Saw</li><li>24 tooth saw blade</li><li>Dust Extraction Spout</li><li>Rip Fence</li><li>Blade Spanner</li><li>4 x 60 Teeth Blade</li></ul><p><span style="color: #b8bbc1;"><em>**images and video are for illustrative purposes only – please refer to description and specification for full details of product</em></span></p>', N'39_dwe550-kit-9.jpg', N'39_DWE550-KIT-12_DWE550.jpg', N'39_DWE550-KIT-12_DWE550-1.jpg', N'118', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_dwe550-kit-9.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_DWE550-KIT-12_DWE550.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_DWE550-KIT-12_DWE550-1.jpg', N'20', NULL, NULL, 1, N'39_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_DWE550-KIT-12_DWE550-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\39_DWE550-KIT-12_DWE550-3.jpg', N'39_DWE550-KIT-12_DWE550-3.jpg', NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (41, N'Makita 194093-8 Adjustable Pro table Table Saw Stand Suitable For 2704 Saw', N'Collapsible stand with shock absorbers and 5 level quick height adjustment', NULL, N'1', N'194093-8', N'194093-8', N'194093-8', N'<p><strong>Features:</strong></p><ul><li>Collapsible stand with shock absorbers</li><li>5 level quick height adjustment</li><li>Telescopic material supports and rollers</li><li>Heavy duty wheels ideal for site work</li><li>Adjustable feet for uneven surfaces</li><li>Tubular aluminium construction</li><li>Suitable For Makita 2704 Saw</li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>194093-8</td></tr><tr><th>Google_Product_Category</th><td>Hardware &gt; Tool Accessories &gt; Tool Stands &gt; Saw Stands</td></tr><tr><th>Google_Product_Type</th><td>Saw Stands</td></tr><tr><th>Custom_Label_0</th><td>LowMargin</td></tr></tbody></table>', N'41_194093-8.jpg', N'41_194093-8_194093-8 -1.jpg', N'41_194093-8_194093-8 -2.jpg', N'164.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\41_194093-8.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\41_194093-8_194093-8 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\41_194093-8_194093-8 -2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (42, N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of the blade depth', NULL, N'1', N'MLT100-2', N'MLT100-2', N'MLT100-2', N'<div><p><strong>Features:</strong></p><ul><li>Two pole slide system for raising and lowering blade for the most efficient and smoothest adjustment of the blade depth</li><li>Aluminium die cast, precision machined table top remains flat and true for out of the box accuracy</li><li>Powerful motor delivers 4,500rpm and electric brake for maximum productivity</li><li>Large cutting capacity (91mm at 90° and 63mm at 45°)</li><li>Integral cross-cut sliding table as standard</li><li>Highly portable table saw</li><li>Mitre gauge as standard </li></ul><p><strong>What''s Included:</strong></p><ul><li>Tungsten Carbide Tipped Blade</li><li>Rip Fence</li><li>Push Stick</li><li>Mitre Gauge with Vise</li><li>Wrenches</li><li>Triangular rule</li></ul><p><br/></p></div><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>MLT100</td></tr><tr><th>Blade Diameter</th><td>260 mm</td></tr><tr><th>Bore Size</th><td>30 mm</td></tr><tr><th>No-load speed</th><td>4500 rpm</td></tr><tr><th>with Sub table</th><td>760 x 790 mm</td></tr><tr><th>Main table</th><td>610 x 590 mm</td></tr><tr><th>Wattage</th><td>1500 w</td></tr><tr><th>Depth of Cut @ 90°</th><td>93 mm</td></tr><tr><th>Depth of Cut @ 45º</th><td>260 mm</td></tr><tr><th>Weight</th><td>38 kg</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'42_mlt1002F2.jpg', N'42_WebCat-0003000100030002_MLT100 -1.jpg', NULL, N'406', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\42_mlt1002F2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\42_WebCat-0003000100030002_MLT100 -1.jpg', NULL, N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (43, N'Dewalt DW682K-LX Biscuit Jointer Corded 110V', N'Dewalt DW682K Biscuit Jointer comes complete with tungsten carbide tipped grooving cutter, shavings bag, spanner, 35mm dust extraction spout and heavy duty carrying case', NULL, N'5', N'DW682K-LX', N'DW682K-LX', N'DW682K-LX', N'<p>Dewalt DW682K Biscuit Jointer comes complete with tungsten carbide tipped grooving cutter, shavings bag, spanner, 35mm dust extraction spout and heavy duty carrying case</p><p><strong>Features:</strong></p><ul><li>Rack and pinion control provides precise vertical adjustment and fence alignment</li><li>Pre-set cutting depths for 0, 10 and 20 biscuit sizes with additional fine adjustment for ultimate accuracy</li><li>Grooving setting with up to 20mm depth of cut gives increased versatility</li><li>Mitre fence that remains attached in all applications for simple use</li><li>Anti slide grippers, eight guiding notches and fence window to aid accurate cuts</li><li>Spindle lock mechanism for quick and easy blade changes with a single spanner</li></ul><p><strong>What''s Included:</strong></p><ul><li>Tungsten carbide tipped grooving cutter</li><li>Shavings bag</li><li>Spanner</li><li>35 mm Dust extraction spout</li><li>Heavy duty carrying case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>5011402277711</td></tr><tr><th>Part No</th><td>DW682K-LX</td></tr><tr><th>Voltage</th><td>110V</td></tr><tr><th>No-load speed</th><td>10000 rpm</td></tr><tr><th>Net Weight</th><td>3.0 kg</td></tr><tr><th>Total Shipping Weight</th><td>5kg</td></tr><tr><th>Power Input</th><td>600 Watts</td></tr><tr><th>Power Output</th><td>335 Watts</td></tr><tr><th>Length</th><td>320 mm</td></tr><tr><th>Height</th><td>150 mm</td></tr><tr><th>Fence adjustment</th><td>0-90 °</td></tr><tr><th>Max. Cutter Diameter</th><td>100 mm</td></tr><tr><th>Max. Cutting Depth</th><td>20 mm</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'43_dw682k.jpg', N'43_DW682K-1.jpg', N'43_DW682K-2.jpg', N'231.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\43_dw682k.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\43_DW682K-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\43_DW682K-2.jpg', N'20', NULL, NULL, 0, N'43_DW682K-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\43_DW682K-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (44, N'FESTOOL DF500 Q-PLUSGB Domino Jointer 110V 574329', N'This Domino Joining system is well suited for furniture manufacturers, shopfitting / interior fitting and Window Construction. It can be used for panel joins and for frame and rack joints.', NULL, N'3', N'574329', N'574329', N'574329', N'<p>This Domino Joining system is well suited for furniture manufacturers, shopfitting / interior fitting and Window Construction. It can be used for panel joins and for frame and rack joints.</p><p><strong>Features:</strong></p><ul><li>Patented routing principle unique to hand-held machines for accurate work with no kickbacks</li><li>Stops that are quick and easy to adjust, for accurate results</li><li>Rotation-proof joint with DOMINO dowels providing maximum stability</li><li>System accessories compatible with both DOMINO jointers</li><li>Diverse use with dowels from 4x20 mm to 10x50 mm</li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Voltage</th><td>110V</td></tr><tr><th>Barcode</th><td>4014549148471</td></tr><tr><th>Net Weight</th><td>3.2kg</td></tr><tr><th>Connection Ø d/e</th><td>27mm</td></tr><tr><th>Power consumption</th><td>420w</td></tr><tr><th>Idle engine speed</th><td>25500 min&#173;¹</td></tr><tr><th>Max. milling depth</th><td>28mm</td></tr><tr><th>DOMINO slot cutter Ø</th><td>4, 5, 6, 8, 10mm</td></tr><tr><th>Routing height adjustment</th><td>5-30mm</td></tr><tr><th>Mitre routing</th><td>0-90°</td></tr><tr><th>Depth stop for routing depth</th><td>12, 15, 20, 25, 28mm</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'44_574327.jpg', N'44_WebCat-0003000100040003_574329-2.jpg', NULL, N'623.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\44_574327.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\44_WebCat-0003000100040003_574329-2.jpg', NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (45, N'Makita PJ7000 Biscuit Jointer Corded 700W 110V', N'The Makita PJ7000 is a successor model of the 3901, featuring improved design obtained by using the same easy-to-grip slim motor housing as used for GA4030 series. With a better compact and lightweight layout for more manoeuverability and really easy handling. Different cuts can be achieved with the Angle Guide which can be raised and lowered with the rack and pinion mechanism allowing for fine verticle adjustment.', NULL, N'1', N'PJ7000-1', N'PJ7000-1', N'PJ7000-1', N'<p>The Makita PJ7000 is a successor model of the 3901, featuring improved design obtained by using the same easy-to-grip slim motor housing as used for GA4030 series. With a better compact and lightweight layout for more manoeuverability and really easy handling. Different cuts can be achieved with the Angle Guide which can be raised and lowered with the rack and pinion mechanism allowing for fine verticle adjustment. The Depth Adjusting Knob can be preset in 6 stages. It is connectable to a vacuum cleaner to minimise dust with a rotatable dust nozzle to achieve desired angle of dust ejection. Blade replacement is made easy by removing the blade cover by loosening clamp screw. People who bought this say, &#34;Smooth action and does exactly what it is supposed to do.&#34; &#34;Light, precise, well made and easy to use. A very nice bit of kit that is not cheap but is great value for money&#34; &#34;It''s very adjustable in seconds.&#34;</p><p><strong>Features:</strong></p><ul><li>Compact and lightweight design</li><li>Rotatable dust nozzle for easy connection to dust extraction</li><li>Shaft lock for easy blade change</li><li>On/Off slide switch</li><li>6 pre-set cutting depths</li><li>Angle adjustable fence with positive stops at 0, 45 and 90 degrees</li><li>Blade cover can be opened with clamp screws for easy blade change</li></ul><p><strong>What''s Included:</strong></p><ul><li>Cutter blade 100-4</li><li>Angle guide</li><li>Lock nut wrench</li><li>Set plate</li><li>Dust bag</li><li>Plastic carrying case</li></ul><p><br/></p>', N'45_pj70002F1.jpg', N'45_PJ70002F1_PJ7000 -3.jpg', N'45_PJ70001_PJ7000 -2.jpg', N'200', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\45_pj70002F1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\45_PJ70002F1_PJ7000 -3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\45_PJ70001_PJ7000 -2.jpg', N'20', NULL, NULL, 1, N'45_PJ7001_PJ7000 -4.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\45_PJ7001_PJ7000 -4.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (46, N'FESTOOL DF500 Q-PLUSGB Domino Jointer 240V 574327', N'This Domino Joining system is well suited for furniture manufacturers, shopfitting / interior fitting and Window Construction. It can be used for panel joins and for frame and rack joints.', NULL, N'3', N'574327', N'574327', N'574327', N'<p>This Domino Joining system is well suited for furniture manufacturers, shopfitting / interior fitting and Window Construction. It can be used for panel joins and for frame and rack joints.</p><p><strong>Features:</strong></p><ul><li>Patented routing principle unique to hand-held machines for accurate work with no kickbacks</li><li>Stops that are quick and easy to adjust, for accurate results</li><li>Rotation-proof joint with DOMINO dowels providing maximum stability</li><li>System accessories compatible with both DOMINO jointers</li><li>Diverse use with dowels from 4x20 mm to 10x50 mm</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>DF500 Q-PLUSGB</td></tr><tr><th>Net Weight</th><td>3.2kg</td></tr><tr><th>Connection Ø d/e</th><td>27 mm</td></tr><tr><th>Power consumption</th><td>420 W</td></tr><tr><th>Idle engine speed</th><td>25500 min&#173;¹</td></tr><tr><th>Max. milling depth</th><td>28mm</td></tr><tr><th>DOMINO slot cutter Ø</th><td>4, 5, 6, 8, 10mm</td></tr><tr><th>Routing height adjustment</th><td>5-30mm</td></tr><tr><th>Mitre routing</th><td>0-90°</td></tr><tr><th>Depth stop for routing depth</th><td>12, 15, 20, 25, 28mm</td></tr></tbody></table>', N'46_574327.jpg', N'46_WebCat-0003000100040003_574329-2.jpg', NULL, N'752', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\46_574327.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\46_WebCat-0003000100040003_574329-2.jpg', NULL, N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (47, N'DeWalt D28710-LX Abrasive Chopsaw 355mm 110V', N'Metal Cut Off Saw Horizontal handle for superior ergonomics and less user fatigue', NULL, N'5', N'D28710-LX', N'D28710-LX', N'D28710-LX', N'<p><strong>Features:</strong></p><ul><li>Metal Cut Off Saw</li><li>Horizontal handle for superior ergonomics and less user fatigue</li><li>Quick release clamp results in less time in changing the work piece</li><li>High power abrasion protected motor delivers high overload capabilities for greater durability</li><li>Spindle lock for quick and easy wheel change</li><li>Adjustable spark guard allows user to control the direction of the sparks coming from the machine</li></ul><p><strong>What''s Included:</strong></p><ul><li>Hex key</li></ul><p><strong>PLEASE NOTE - does not come with abrasive disc as standard, 110 volt model does not have a plug fitted as standard</strong></p><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>D28710</td></tr><tr><th>No-load speed</th><td>3800 rpm</td></tr><tr><th>Power Input</th><td>2200 Watts</td></tr><tr><th>Power Output</th><td>1350 Watt</td></tr><tr><th>Wheel size</th><td>355 mm</td></tr><tr><th>Max. Cutting Capacity at 90° [Square Profile]</th><td>120 x 120 mm</td></tr><tr><th>Max. Cutting Capacity at 90° [Rectangular Profile]</th><td>115 x 130 mm</td></tr><tr><th>Max. Cutting Capacity at 90° [Rounded Profile]</th><td>130 mm</td></tr><tr><th>Max. Cutting Capacity at 90° [L-Shape Profile]</th><td>137 x 137 mm</td></tr><tr><th>Max. Cutting Capacity at 45° [Square Profile]</th><td>107 x 107 mm</td></tr><tr><th>Max. Cutting Capacity at 45° [Rectangular Profile]</th><td>115 x 107 mm</td></tr><tr><th>Max. Cutting Capacity at 45° [L-Shape Profile</th><td>115 x 115 mm</td></tr><tr><th>Max. Cutting Capacity at 45° [Rounded Profile]</th><td>115 mm</td></tr><tr><th>Weight</th><td>17 kg</td></tr><tr><th>Length</th><td>470 mm</td></tr><tr><th>Height</th><td>410 mm</td></tr><tr><th>Sound Pressure</th><td>92 dB(A)</td></tr><tr><th>Sound Pressure Uncertainty</th><td>3 dB(A)</td></tr><tr><th>Sound Power</th><td>105 dB(A)</td></tr><tr><th>Sound Power Uncertainty</th><td>3 dB(A)</td></tr><tr><th>Total Shipping Weight</th><td>25kg</td></tr></tbody></table>', N'47_d28710-lx.jpg', NULL, NULL, N'210', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\47_d28710-lx.jpg', NULL, NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (49, N'DeWalt D25902K-LX 10kg Demolition Hammer With SDS Max 110V', N'Dewalt D25901K10Kg Low Vibration Demolition Hammer complete with multi-position side handle, chisel, cloth, grease and carry case.This Dewalt tool has a compact, streamlined design which allows for access to confined areas.', NULL, N'5', N'D25902K-LX', N'D25902K-LX', N'D25902K-LX', N'<p>Dewalt D25901K10Kg Low Vibration Demolition Hammer complete with multi-position side handle, chisel, cloth, grease and carry case.This Dewalt tool has a compact, streamlined design which allows for access to confined areas.</p><p><strong>Features:</strong></p><ul><li>Active Vibration Control system incorporating counterbalance mass and floating handle delivers extreme low vibration to less than 8 m/s2</li><li>Large oversize hammer mechanism delivers extreme durability and excellent concrete breaking performance</li><li>Compact, streamlined design allows access in confined areas</li><li>Ergonomic inline design ensures user comfort during any application</li><li>Quick change chisel ajustment allows fast orientation of the chisel through 12 preset positions</li><li>1500 Watt, 95 mm motor delivers outstanding motor efficiency and durability</li><li>Modular design allows for quick access to key compnents allowing for faster and cheaper servicing.</li><li>Magnesium housings ensure maximum durability and minimum weight</li><li>Multi adjustable side handle can be located anywhere on the hammer barrel, maintaining user comfort in any application</li><li>Soft start feature ensures accurate clean breaking without chisel walking</li></ul><p><strong>What''s Included:</strong></p><ul><li>Grease</li><li>Cloth</li><li>Heavy duty carrying case</li><li>Multi position side handle</li><li>Chisel</li></ul><p><br/></p><p><strong>Specification:</strong></p>
<table class="techinfo"><tbody><tr><th>Power Input</th><td>1550 Watts</td></tr><tr><th>Power Output</th><td>750 Watt</td></tr><tr><th>Blows per Minute 110V</th><td>1050-2100 bpm</td></tr><tr><th>Blows per Minute 240V</th><td>1020-2040 bpm</td></tr><tr><th>Impact energy</th><td>19 J</td></tr><tr><th>Tool Holder</th><td>SDS-Max</td></tr><tr><th>Weight</th><td>10.5 kg</td></tr><tr><th>Length</th><td>690 mm</td></tr><tr><th>Height</th><td>250 mm</td></tr><tr><th>Width</th><td>127 mm</td></tr><tr><th>Hand/Arm Vibration</th><td>7.5 m/s2</td></tr><tr><th>Uncertainty K 1 (Vibration)</th><td>1.5 m/s²</td></tr><tr><th>Sound Pressure</th><td>89 dB(A)</td></tr><tr><th>Uncertainty K 1 (Sound)</th><td>3.0 dB(A)</td></tr><tr><th>Accoustic Pressure</th><td>100 dB(A)</td></tr><tr><th>Uncertainty K 2 (Sound)</th><td>3.0 dB(A)</td></tr><tr><th>Total Shipping Weight</th><td>14kg</td></tr></tbody></table>', N'49_d25902k-lx.jpg', N'49_WebCat-0003000100070003_D25902K -1.jpg', NULL, N'762', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\49_d25902k-lx.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\49_WebCat-0003000100070003_D25902K -1.jpg', NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (50, N'DeWalt D25902K-GB 10kg Demolition Hammer With SDS Max 240V', N'Dewalt D25901K10Kg Low Vibration Demolition Hammer complete with multi-position side handle, chisel, cloth, grease and carry case.This Dewalt tool has a compact, streamlined design which allows for access to confined areas.', NULL, N'5', N'D25902K-GB', N'D25902K-GB', N'D25902K-GB', N'<p>Dewalt D25901K10Kg Low Vibration Demolition Hammer complete with multi-position side handle, chisel, cloth, grease and carry case.This Dewalt tool has a compact, streamlined design which allows for access to confined areas.</p><p><strong>Features:</strong></p><ul><li>Active Vibration Control system incorporating counterbalance mass and floating handle delivers extreme low vibration to less than 8 m/s2</li><li>Large oversize hammer mechanism delivers extreme durability and excellent concrete breaking performance</li><li>Compact, streamlined design allows access in confined areas</li><li>Ergonomic inline design ensures user comfort during any application</li><li>Quick change chisel ajustment allows fast orientation of the chisel through 12 preset positions</li><li>1500 Watt, 95 mm motor delivers outstanding motor efficiency and durability</li><li>Modular design allows for quick access to key compnents allowing for faster and cheaper servicing.</li><li>Magnesium housings ensure maximum durability and minimum weight</li><li>Multi adjustable side handle can be located anywhere on the hammer barrel, maintaining user comfort in any application</li><li>Soft start feature ensures accurate clean breaking without chisel walking</li></ul><p><strong>What''s Included:</strong></p><ul><li>Grease</li><li>Cloth</li><li>Heavy duty carrying case</li><li>Multi position side handle</li><li>Chisel</li></ul><p><br/></p><p><strong>Specification:</strong></p>
<table class="techinfo"><tbody><tr><th>Power Input</th><td>1550 Watts</td></tr><tr><th>Power Output</th><td>750 Watt</td></tr><tr><th>Blows per Minute 110V</th><td>1050-2100 bpm</td></tr><tr><th>Blows per Minute 240V</th><td>1020-2040 bpm</td></tr><tr><th>Impact energy</th><td>19 J</td></tr><tr><th>Tool Holder</th><td>SDS-Max</td></tr><tr><th>Weight</th><td>10.5 kg</td></tr><tr><th>Length</th><td>690 mm</td></tr><tr><th>Height</th><td>250 mm</td></tr><tr><th>Width</th><td>127 mm</td></tr><tr><th>Hand/Arm Vibration</th><td>7.5 m/s2</td></tr><tr><th>Uncertainty K 1 (Vibration)</th><td>1.5 m/s²</td></tr><tr><th>Sound Pressure</th><td>89 dB(A)</td></tr><tr><th>Uncertainty K 1 (Sound)</th><td>3.0 dB(A)</td></tr><tr><th>Accoustic Pressure</th><td>100 dB(A)</td></tr><tr><th>Uncertainty K 2 (Sound)</th><td>3.0 dB(A)</td></tr><tr><th>Total Shipping Weight</th><td>14kg</td></tr></tbody></table>', N'50_d25902k-lx.jpg', N'50_WebCat-0003000100070003_D25902K -1.jpg', NULL, N'828', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\50_d25902k-lx.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\50_WebCat-0003000100070003_D25902K -1.jpg', NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (51, N'Bosch GSH11E 11Kg Demolition Hammer With SDS-Max 110V 0611316741', N'The Bosch GSH11E 11kg demolition hammer with SDS max comes complete with auxiliary handle, chisel, grease pack and carrying case. This demolition hammer comes top of its class for quality and technology. It''s the specialist tool for breakthroughs and demolition work.', NULL, N'2', N'0611316741-1', N'0611316741-1', N'0611316741-1', N'<p>The Bosch GSH11E 11kg demolition hammer with SDS max comes complete with auxiliary handle, chisel, grease pack and carrying case. This demolition hammer comes top of its class for quality and technology. It''s the specialist tool for breakthroughs and demolition work.</p><p><strong>Features:</strong></p><ul><li>Extreme impact force of 16.8 joules for high material removal rate</li><li>Low-vibration in operation and no-load</li><li>Low feed pressure, for fatigue-free working</li><li>Service display</li><li>SDS-max toolholder with integrated dust protection</li><li>Variable chisel fitting in 12 positions</li><li>Auxiliary handle can be adjusted and rotated 360°</li><li>Foam handle</li><li>Wide sliding switch for convenient switching on and off</li><li>Large-volume carrying case</li><li>Cut-off carbon brushes</li><li>Also suitable for left-handers</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carrying case</li><li>1 auxiliary handle</li><li>1 flat chisel 25 x 400 mm</li><li>Machine cloth</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GSH11E</td></tr><tr><th>Rated power input</th><td>1,500 W</td></tr><tr><th>Impact energy</th><td>16.8 J</td></tr><tr><th>Impact rate at rated speed</th><td>900 - 1,890 bpm</td></tr><tr><th>Length</th><td>570 mm</td></tr><tr><th>Height</th><td>270 mm</td></tr><tr><th>Weight</th><td>10.1 kg</td></tr><tr><th>Total Shipping Weight</th><td>12kg</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'51_0611316741.jpg', N'51_WebCat-0003000100070002_0611316741-2.jpg', N'51_WebCat-0003000100070002_0611316741-1.jpg', N'648', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\51_0611316741.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\51_WebCat-0003000100070002_0611316741-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\51_WebCat-0003000100070002_0611316741-1.jpg', N'20', NULL, NULL, 1, N'51_WebCat-0003000100070002_0611316741-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\51_WebCat-0003000100070002_0611316741-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (52, N'Bosch GSH11E 11Kg Demolition Hammer With SDS-Max 240V 0611316742', N'The Bosch GSH11E 11kg demolition hammer with SDS max comes complete with auxiliary handle, chisel, grease pack and carrying case. This demolition hammer comes top of its class for quality and technology. It''s the specialist tool for breakthroughs and demolition work.', NULL, N'2', N'0611316742', N'0611316742', N'0611316742', N'<p>The Bosch GSH11E 11kg demolition hammer with SDS max comes complete with auxiliary handle, chisel, grease pack and carrying case. This demolition hammer comes top of its class for quality and technology. It''s the specialist tool for breakthroughs and demolition work.</p><p><strong>Features:</strong></p><ul><li>Extreme impact force of 16.8 joules for high material removal rate</li><li>Low-vibration in operation and no-load</li><li>Low feed pressure, for fatigue-free working</li><li>Service display</li><li>SDS-max toolholder with integrated dust protection</li><li>Variable chisel fitting in 12 positions</li><li>Auxiliary handle can be adjusted and rotated 360°</li><li>Foam handle</li><li>Wide sliding switch for convenient switching on and off</li><li>Large-volume carrying case</li><li>Cut-off carbon brushes</li><li>Also suitable for left-handers</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carrying case</li><li>1 auxiliary handle</li><li>1 flat chisel 25 x 400 mm</li><li>Machine cloth</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GSH11E</td></tr><tr><th>Rated power input</th><td>1,500 W</td></tr><tr><th>Impact energy</th><td>16.8 J</td></tr><tr><th>Impact rate at rated speed</th><td>900 - 1,890 bpm</td></tr><tr><th>Length</th><td>570 mm</td></tr><tr><th>Height</th><td>270 mm</td></tr><tr><th>Weight</th><td>10.1 kg</td></tr><tr><th>Total Shipping Weight</th><td>12kg</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'52_0611316741.jpg', N'52_WebCat-0003000100070002_0611316741-2.jpg', N'52_WebCat-0003000100070002_0611316741-1.jpg', N'648', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\52_0611316741.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\52_WebCat-0003000100070002_0611316741-2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\52_WebCat-0003000100070002_0611316741-1.jpg', N'20', N'', N'', 1, N'52_WebCat-0003000100070002_0611316741-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\52_WebCat-0003000100070002_0611316741-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (53, N'Bosch GSH5CE 5Kg Demolition Hammer with SDS-Max 110V 0611321060', N'Bosch GSH5CE 5Kg SDS Max Demolition Hammer, ideal for chasing and lighter duty demolition jobs. Complete with carry case, auxiliary hadle and pointed chisel.', NULL, N'2', N'0611321060', N'0611321060', N'0611321060', N'<p>Bosch GSH5CE 5Kg SDS Max Demolition Hammer, ideal for chasing and lighter duty demolition jobs. Complete with carry case, auxiliary hadle and pointed chisel.</p><p><strong>Features:</strong></p><ul><li>Impact force of 13 joules for the highest material removal rate in its class</li><li>Vibration Control ensures more comfortable working, even in time-intensive applications</li><li>Long lifetime even in extremely hard operation thanks to robust metal housing</li><li>Patented setting wheel for variable adjustment of the impact rate for optimum performance</li><li>Patented, lockable switch pawl for fatigue-free chiselling work</li><li>Vario-Lock: 12 chisel position settings for convenient working</li><li>Constant-Electronic, service display and standby display for maximum convenience</li><li>Ball grommet for high movement radius and for preventing cable breaks</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carrying case</li><li>Auxiliary handle</li><li>Pointed chisel 400 mm</li><li>Machine cloth</li><li>Grease tube</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GSH5CE</td></tr><tr><th>Rated power input</th><td>1,150 W</td></tr><tr><th>Impact energy</th><td>2 - 13 J</td></tr><tr><th>Impact rate at rated speed</th><td>1,300 - 2,900 bpm</td></tr><tr><th>Length</th><td>480 mm</td></tr><tr><th>Height</th><td>235 mm</td></tr><tr><th>Width</th><td>105 mm</td></tr><tr><th>Weight without cable</th><td>6.2 kg</td></tr><tr><th>Total Shipping Weight</th><td>9kg</td></tr><tr><th><br/></th><td></td></tr></tbody></table>', N'53_0611321060.jpg', N'53_WebCat-0003000100070001_0611321060-1.jpg', N'53_WebCat-0003000100070001_0611321060-2.jpg', N'596', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\53_0611321060.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\53_WebCat-0003000100070001_0611321060-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\53_WebCat-0003000100070001_0611321060-2.jpg', N'20', NULL, NULL, 1, N'53_WebCat-0003000100070001_0611321060-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\53_WebCat-0003000100070001_0611321060-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (54, N'Bosch GSH5CE 5Kg Demolition Hammer with SDS-Max 240V 0611321070', N'Bosch GSH5CE 5Kg SDS Max Demolition Hammer, ideal for chasing and lighter duty demolition jobs. Complete with carry case, auxiliary hadle and pointed chisel.', NULL, N'2', N'0611321070', N'0611321070', N'0611321070', N'<p>Bosch GSH5CE 5Kg SDS Max Demolition Hammer, ideal for chasing and lighter duty demolition jobs. Complete with carry case, auxiliary hadle and pointed chisel.</p><p><strong>Features:</strong></p><ul><li>Impact force of 13 joules for the highest material removal rate in its class</li><li>Vibration Control ensures more comfortable working, even in time-intensive applications</li><li>Long lifetime even in extremely hard operation thanks to robust metal housing</li><li>Patented setting wheel for variable adjustment of the impact rate for optimum performance</li><li>Patented, lockable switch pawl for fatigue-free chiselling work</li><li>Vario-Lock: 12 chisel position settings for convenient working</li><li>Constant-Electronic, service display and standby display for maximum convenience</li><li>Ball grommet for high movement radius and for preventing cable breaks</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carrying case</li><li>Auxiliary handle</li><li>Pointed chisel 400 mm</li><li>Machine cloth</li><li>Grease tube</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GSH5CE</td></tr><tr><th>Rated power input</th><td>1,150 W</td></tr><tr><th>Impact energy</th><td>2 - 13 J</td></tr><tr><th>Impact rate at rated speed</th><td>1,300 - 2,900 bpm</td></tr><tr><th>Length</th><td>480 mm</td></tr><tr><th>Height</th><td>235 mm</td></tr><tr><th>Width</th><td>105 mm</td></tr><tr><th>Weight without cable</th><td>6.2 kg</td></tr><tr><th>Total Shipping Weight</th><td>9kg</td></tr></tbody></table>', NULL, NULL, NULL, N'411.50', NULL, NULL, NULL, N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (55, N'Makita 8406 13mm Diamond Core & Hammer Drill 850w With Carry Case 110V', N'The Makita 8406 hammer drill has a torque limiter and a powerful motor. It can accept a large diamond core bit 152 mm (5-7/8") inch diameter. This tool is ideal for making clean-cut, smooth holes in tile, ferroconcrete, marble, brick, etc. Suitable for all sizes of dry diamond core from the small 28mm through to the large 152mm making it suitable for copper pipe, waste pipe and even soil pipes. Satisfied customers who bought this tool say: "Sturdy yet not too heavy to use, made cutting a 6 inch ', NULL, N'1', N'8406-1', N'8406-1', N'8406-1', N'<p>The Makita 8406 hammer drill has a torque limiter and a powerful motor. It can accept a large diamond core bit 152 mm (5-7/8&#34;) inch diameter. This tool is ideal for making clean-cut, smooth holes in tile, ferroconcrete, marble, brick, etc. Suitable for all sizes of dry diamond core from the small 28mm through to the large 152mm making it suitable for copper pipe, waste pipe and even soil pipes. Satisfied customers who bought this tool say: &#34;Sturdy yet not too heavy to use, made cutting a 6 inch hole through concrete feel like cutting through warm butter.&#34; &#34;Best drill I have bought.&#34;</p><p><strong>Features:</strong></p><ul><li>Heavy duty construction, ideal for site work</li><li>Percussion action for pilot hole, rotary-only for diamond core drilling</li><li>Torque-limiter disengages clutch when the core jams</li><li>Double insulated</li><li>Variable speed trigger</li><li>Excellent for plumbers, electricians, general contractors, hirers</li></ul><p><strong>What''s Included:</strong> </p><ul><li>Drill Chuck</li><li>Chuck Key</li><li>Side Handle</li><li>Carry case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>8406</td></tr><tr><th>Max. in Steel</th><td>13mm</td></tr><tr><th>Max. in Wood</th><td>30mm</td></tr><tr><th>Max in Masonry</th><td>20mm</td></tr><tr><th>Max Dry Diamond Core</th><td>152mm</td></tr><tr><th>Blows per minute</th><td>0-22,500bpm</td></tr><tr><th>No-load speed</th><td>0-1,500rpm</td></tr><tr><th>Input Wattage</th><td>850w</td></tr><tr><th>Net Weight</th><td>3.5kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'55_8406F2.jpg', N'55_WebCat-0003000100080001_8406 -1.jpg', N'55_WebCat-0003000100080001_8406 -2.jpg', N'259', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\55_8406F2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\55_WebCat-0003000100080001_8406 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\55_WebCat-0003000100080001_8406 -2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (56, N'Makita 8406 13mm Diamond Core & Hammer Drill 850w With Carry Case 240V', N'The Makita 8406 hammer drill has a torque limiter and a powerful motor. It can accept a large diamond core bit 152 mm (5-7/8") inch diameter. This tool is ideal for making clean-cut, smooth holes in tile, ferroconcrete, marble, brick, etc. Suitable for all sizes of dry diamond core from the small 28mm through to the large 152mm making it suitable for copper pipe, waste pipe and even soil pipes. Satisfied customers who bought this tool say: "Sturdy yet not too heavy to use, made cutting a 6 inch ', NULL, N'1', N'8406-2', N'8406-2', N'8406-2', N'<p>The Makita 8406 hammer drill has a torque limiter and a powerful motor. It can accept a large diamond core bit 152 mm (5-7/8&#34;) inch diameter. This tool is ideal for making clean-cut, smooth holes in tile, ferroconcrete, marble, brick, etc. Suitable for all sizes of dry diamond core from the small 28mm through to the large 152mm making it suitable for copper pipe, waste pipe and even soil pipes. Satisfied customers who bought this tool say: &#34;Sturdy yet not too heavy to use, made cutting a 6 inch hole through concrete feel like cutting through warm butter.&#34; &#34;Best drill I have bought.&#34;</p><p><strong>Features:</strong></p><ul><li>Heavy duty construction, ideal for site work</li><li>Percussion action for pilot hole, rotary-only for diamond core drilling</li><li>Torque-limiter disengages clutch when the core jams</li><li>Double insulated</li><li>Variable speed trigger</li><li>Excellent for plumbers, electricians, general contractors, hirers</li></ul><p><strong>What''s Included:</strong> </p><ul><li>Drill Chuck</li><li>Chuck Key</li><li>Side Handle</li><li>Carry case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>8406</td></tr><tr><th>Max. in Steel</th><td>13mm</td></tr><tr><th>Max. in Wood</th><td>30mm</td></tr><tr><th>Max in Masonry</th><td>20mm</td></tr><tr><th>Max Dry Diamond Core</th><td>152mm</td></tr><tr><th>Blows per minute</th><td>0-22,500bpm</td></tr><tr><th>No-load speed</th><td>0-1,500rpm</td></tr><tr><th>Input Wattage</th><td>850w</td></tr><tr><th>Net Weight</th><td>3.5kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'56_8406F2.jpg', N'56_WebCat-0003000100080001_8406 -1.jpg', N'56_WebCat-0003000100080001_8406 -2.jpg', N'259', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\56_8406F2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\56_WebCat-0003000100080001_8406 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\56_WebCat-0003000100080001_8406 -2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (57, N'Bosch GSB162-2RE Impact Drill 2 Speed 240V 060118B070', N'The NEW GSB 162-2 RE Professional has the most power in its class! As well as being a really powerful impact drilling machine, this wil handle large auger bits, dry diamond cores up to 162mm and boasts a 16mm chuck and 50nM of torque for the most demanding of applications', NULL, N'2', N'060118B070', N'060118B070', N'060118B070', N'<p>The NEW GSB 162-2 RE Professional has the most power in its class! As well as being a really powerful impact drilling machine, this wil handle large auger bits, dry diamond cores up to 162mm and boasts a 16mm chuck and 50nM of torque for the most demanding of applications</p><p><strong>Features:</strong></p><ul><li>The heavy Duty Impact Drill with ''unlimited'' power and excellent overload capacities for hardest applications even dry diamond drilling</li><li>D-Handle with huge soft grip for increased comfort and excellent handling even when wearing gloves</li><li>Extra large axial and radial secured side handle for enhanced operator comfort and increased user safety</li><li>Powerful 1500 W motor</li><li>2 functions: Impact drilling, rotary drilling</li><li>2 speed gearbox producing 50 Nm of torque</li><li>Metal gear housing with stacked housing construction for great robustness</li><li>Robust 16mm keyed chuck provides excellent hold of accessories</li><li>Safety clutch and restart protection</li><li>Capable of driving 162 mm diamond cores</li><li>The two speed gear box and massive torque make this new heavy duty impact drill more than just diamond core</li><li>Sliding Overload Clutch - Rapid drill bit stop if drill bit jams in the material and also enables smooth diamond drilling: keeps torque constant without peaks while slipping for better control</li><li>The GSB162-2RE protects user from machine and machine from user</li><li>Restarting Protection - Preventing uncontrolled restarting of the machine after an interruption of the power supply - To restart unlock the trigger and start the machine again Ball grommet on power cable for more freedom of movement and less cable breakages</li><li>Rotatable brush plate gives full power in forward and reverse</li></ul><p><strong>Comes With</strong> </p><ul><li>Side handle</li><li>Depth stop<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>3165140611282</td></tr><tr><th>Part No</th><td>GSB162-2RE</td></tr><tr><th>Voltage</th><td>240V</td></tr><tr><th>Power Input</th><td>1,500W</td></tr><tr><th>Impact action</th><td>Yes</td></tr><tr><th>Gears</th><td>2</td></tr><tr><th>No load of speed (rpm) 1st gear</th><td>0-750 rpm</td></tr><tr><th>No load of speed (rpm) 2nd gear</th><td>0-2550 rpm</td></tr><tr><th>Rated speed (rpm) 1st gear</th><td>0-500</td></tr><tr><th>Rated speed (rpm) 2nd gear</th><td>0-1700</td></tr><tr><th>Impact speed</th><td>0-12750/43350 rpm</td></tr><tr><th>Rated Torque</th><td>50/14.5 Nm</td></tr><tr><th>Drilling Capacity Masonry (dry diamond core cutters)</th><td>162/68 mm</td></tr><tr><th>Drilling Capacity Concrete</th><td>82/68 mm</td></tr><tr><th>Drilling Capacity Steel</th><td>20/14 mm</td></tr><tr><th>Drilling Capacity Wood</th><td>50/30 mm</td></tr><tr><th>Chuck capacity</th><td>3-16 mm</td></tr><tr><th>Drill spindle thread</th><td>?&#34;-16 UN</td></tr><tr><th>R/L switch</th><td>Yes</td></tr><tr><th>Speed projection</th><td>Yes</td></tr><tr><th>Overload Clutch</th><td>Yes</td></tr><tr><th>Type of overload clutch</th><td>sliding</td></tr><tr><th>Soft grip</th><td>Yes</td></tr><tr><th>Net Weight</th><td>4.8kg</td></tr><tr><th>Total Shipping Weight</th><td>7kg</td></tr></tbody></table>', N'57_060118b070.jpg', N'57_060118B070_060118B060-1.jpg', N'57_060118B070_060118B060-2.jpg', N'518', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\57_060118b070.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\57_060118B070_060118B060-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\57_060118B070_060118B060-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (58, N'Makita GD0800C Die Grinder High Speed 750W 240V', N'New high powered die grinder with the most efficient dust proof construction and a max. 8 mm collet capacity. This high speed versatile grinder is ideal for grinding and sharpening in confined spaces thanks to it''s streamlined shape. Producing 750W, the highest power in it''s class, within a palm fitting slim body. With a Zig Zag and powdered varnish coating on armature and field to assure high durability and protect against grinding dust. The bearings are also protected from dust by the tools la', NULL, N'1', N'GD0800C-2', N'GD0800C-2', N'GD0800C-2', N'<p>New high powered die grinder with the most efficient dust proof construction and a max. 8 mm collet capacity. This high speed versatile grinder is ideal for grinding and sharpening in confined spaces thanks to it''s streamlined shape. Producing 750W, the highest power in it''s class, within a palm fitting slim body. With a Zig Zag and powdered varnish coating on armature and field to assure high durability and protect against grinding dust. The bearings are also protected from dust by the tools labyrinth construction.</p><p><strong>Features:</strong></p><ul><li>8 mm collet capacity</li><li>Slim body for grinding in tight spots</li><li>Makita''s exclusive Super Joint System prevents kick-back</li><li>Double Insulated</li><li>Electronic Speed Control</li><li>Soft Start</li></ul><p><strong>What''s Included:</strong> </p><ul><li>6mm Collet Cone</li><li>2 x Wrench<br/></li></ul>', N'58_gd0800F2.jpg', N'58_GD0800CF2_GD0800C -1.jpg', N'58_GD08002F2_GD0800C -2.jpg', N'258', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\58_gd0800F2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\58_GD0800CF2_GD0800C -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\58_GD08002F2_GD0800C -2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (59, N'Makita GD0600 Die Grinder 400W 6mm 110V', N'The Makita GD0600 has been developed with the design concept of "Easy-to-handle die grinder", featuring; Paddle type On/Off switch and easy-to-grip small circumference housing.', NULL, N'1', N'GD0800C-1', N'GD0800C-1', N'GD0800C-1', N'<p>The Makita GD0600 has been developed with the design concept of &#34;Easy-to-handle die grinder&#34;, featuring; Paddle type On/Off switch and easy-to-grip small circumference housing.</p><p><strong>Features:</strong></p><ul><li>Ergonomically designed slim body for grinding in tight spots</li><li>Internal labyrinth construction seals motor and bearings from contamination</li><li>Double insulation</li></ul><p><strong>What''s Included:</strong> </p><ul><li>Hex wrench</li></ul><p><br/></p>', N'59_gd0600F1.jpg', N'59_GD060F1_GD0600 -1.jpg', N'59_GD0600F1_GD0600 -2.jpg', N'85', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\59_gd0600F1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\59_GD060F1_GD0600 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\59_GD0600F1_GD0600 -2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (60, N'Makita KP0810K Heavy Duty Planer 82mm With Case 110V', N'This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers.', NULL, N'1', N'KP0810K-1', N'KP0810K-1', N'KP0810K-1', N'<p>This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers. A foot on base plate keeps blade and planer base free from damage when placed on workpiece. Front base has 3 chamfering grooves for easy alignment with workpiece. Capable of a maximum planing depth of 4mm. People who bought this say: &#34;Powerful yet light.&#34; &#34;Easy to use straight from the box, sturdy and tough yet light to use.&#34;</p><p><strong>Features:</strong></p><ul><li>Lock-off switch accessable from bothsides</li><li>Ergonomic rubberised soft grip</li><li>Dual side chip ejection</li><li>Depth adjustment with click stops</li><li>Constant Speed Control</li></ul><p><strong>What''s Included:</strong></p><ul><li>Blade gauge</li><li>Socket wrench</li><li>Guide rule</li><li>Dust bag</li><li>Carrying case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>KP0810K</td></tr><tr><th>Power Input</th><td>850w</td></tr><tr><th>No-load speed</th><td>16,000rpm</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Planing depth</th><td>4mm</td></tr><tr><th>Weight</th><td>3.3kg</td></tr><tr><th>Total Shipping Weight</th><td>5kg</td></tr></tbody></table>', N'60_kp08102F1.jpg', N'60_WebCat-00030001000a0006_KP0810K -1.jpg', N'60_WebCat-00030001000a0006_KP0810K -2.jpg', N'181.99', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\60_kp08102F1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\60_WebCat-00030001000a0006_KP0810K -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\60_WebCat-00030001000a0006_KP0810K -2.jpg', N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (61, N'Makita KP0810K Heavy Duty Planer 82mm With Case 240V', N'This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers.', NULL, N'1', N'KP0810K-2', N'KP0810K-2', N'KP0810K-2', N'<p>This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers. A foot on base plate keeps blade and planer base free from damage when placed on workpiece. Front base has 3 chamfering grooves for easy alignment with workpiece. Capable of a maximum planing depth of 4mm. People who bought this say: &#34;Powerful yet light.&#34; &#34;Easy to use straight from the box, sturdy and tough yet light to use.&#34;</p><p><strong>Features:</strong></p><ul><li>Lock-off switch accessable from bothsides</li><li>Ergonomic rubberised soft grip</li><li>Dual side chip ejection</li><li>Depth adjustment with click stops</li><li>Constant Speed Control</li></ul><p><strong>What''s Included:</strong></p><ul><li>Blade gauge</li><li>Socket wrench</li><li>Guide rule</li><li>Dust bag</li><li>Carrying case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>KP0810K</td></tr><tr><th>Power Input</th><td>850w</td></tr><tr><th>No-load speed</th><td>16,000rpm</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Planing depth</th><td>4mm</td></tr><tr><th>Weight</th><td>3.3kg</td></tr><tr><th>Total Shipping Weight</th><td>5kg</td></tr></tbody></table>', N'61_kp08102F1.jpg', N'61_WebCat-00030001000a0006_KP0810K -1.jpg', N'61_WebCat-00030001000a0006_KP0810K -2.jpg', N'175.15', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\61_kp08102F1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\61_WebCat-00030001000a0006_KP0810K -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\61_WebCat-00030001000a0006_KP0810K -2.jpg', N'20', N'', N'', 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (62, N'Festool EHL65 EQ GB One Handed Planer 240V 574560', N'Perfect handling - Weighs only 2.4 kg and is extremely handy: compact design, softgrip, additional ribs on the handle. The lightest one-handed planer in its class – rests snugly in the hand, even in a vertical position', NULL, N'3', N'574560', N'574560', N'574560', N'<p><strong>Features:</strong></p><ul><li>Perfect handling - Weighs only 2.4 kg and is extremely handy: compact design, softgrip, additional ribs on the handle. The lightest one-handed planer in its class – rests snugly in the hand, even in a vertical position.</li><li>Protects your health - Silent and clean. The spiral blade not only improves planing results, but the planer operates more quietly. The dust extraction system can be attached to the left or right.</li><li>Powerful performance - 4 mm planing and 23 mm rebate depth – no other planer can match that. With stepless cutting depth and spiral blade for the highest surface quality.</li><li>Infinitely variable chip depth adjustment and spiral blade for high surface quality in diverse application areas</li><li>No interruptions – thanks to quick blade change with automatic adjustment the timely and complex task of adjusting the cutting diameter is dispensed with</li><li>Trimming work</li><li>Assembly work</li><li>Planing carcasses, trim, skirting, infill panels, doors, etc.</li><li>Applications where convenient one-handed operation is required</li></ul><p><strong>What''s Included:</strong></p><ul><li>parallel side fence</li><li>operation tool</li><li>In a SYSTAINER SYS 2 T-LOC</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>EHL65 EQ GB</td></tr><tr><th>Power Input</th><td>720 W</td></tr><tr><th>Planing width</th><td>65 mm</td></tr><tr><th>Planing depth</th><td>0-4 mm</td></tr><tr><th>Rotational speed</th><td>15600 min-1</td></tr><tr><th>Connection Ø d/e</th><td>27 mm</td></tr><tr><th>Noise at idling speed</th><td>77 dB(A)</td></tr><tr><th>Weight</th><td>2.4 kg</td></tr></tbody></table>', N'62_574561.jpg', N'62_WebCat-00030001000a0002_574560 - 2.jpg', N'62_WebCat-00030001000a0002_574560-1.jpg', N'245.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\62_574561.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\62_WebCat-00030001000a0002_574560 - 2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\62_WebCat-00030001000a0002_574560-1.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (63, N'Festool EHL65 EQ GB One Handed Planer 110V 574561', N'Perfect handling - Weighs only 2.4 kg and is extremely handy: compact design, softgrip, additional ribs on the handle. The lightest one-handed planer in its class – rests snugly in the hand, even in a vertical position', NULL, N'3', N'574561', N'574561', N'574561', N'<p><strong>Features:</strong></p><ul><li>Perfect handling - Weighs only 2.4 kg and is extremely handy: compact design, softgrip, additional ribs on the handle. The lightest one-handed planer in its class – rests snugly in the hand, even in a vertical position.</li><li>Protects your health - Silent and clean. The spiral blade not only improves planing results, but the planer operates more quietly. The dust extraction system can be attached to the left or right.</li><li>Powerful performance - 4 mm planing and 23 mm rebate depth – no other planer can match that. With stepless cutting depth and spiral blade for the highest surface quality.</li><li>Infinitely variable chip depth adjustment and spiral blade for high surface quality in diverse application areas</li><li>No interruptions – thanks to quick blade change with automatic adjustment the timely and complex task of adjusting the cutting diameter is dispensed with</li><li>Trimming work</li><li>Assembly work</li><li>Planing carcasses, trim, skirting, infill panels, doors, etc.</li><li>Applications where convenient one-handed operation is required</li></ul><p><strong>What''s Included:</strong></p><ul><li>parallel side fence</li><li>operation tool</li><li>In a SYSTAINER SYS 2 T-LOC</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>EHL65 EQ GB</td></tr><tr><th>Power Input</th><td>720 W</td></tr><tr><th>Planing width</th><td>65 mm</td></tr><tr><th>Planing depth</th><td>0-4 mm</td></tr><tr><th>Rotational speed</th><td>15600 min-1</td></tr><tr><th>Connection Ø d/e</th><td>27 mm</td></tr><tr><th>Noise at idling speed</th><td>77 dB(A)</td></tr><tr><th>Weight</th><td>2.4 kg</td></tr></tbody></table>', N'63_574561.jpg', N'63_WebCat-00030001000a0002_574560 - 2.jpg', N'63_WebCat-00030001000a0002_574560-1.jpg', N'239.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\63_574561.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\63_WebCat-00030001000a0002_574560 - 2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\63_WebCat-00030001000a0002_574560-1.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (64, N'Bosch GHO 26-82 2.6mm Electric Planer 110V 0601594341', N'Small, handy machine with powerful 710-watt motor for all on-site fitting work', NULL, N'2', N'0601594341', N'0601594341', N'0601594341', N'<p><strong>Features:</strong></p><ul><li>Small, handy machine with powerful 710-watt motor for all on-site fitting work</li><li>The fastest and least expensive blade changes on the market due to durable woodrazor blades and the easiest possible adjustment</li><li>Comfortable working due to chip clearance to left or right, as desired</li><li>3 V-grooves for easy and flexible chamfering</li><li>Compatible with Bosch dust extraction systems</li><li>Workpiece is protected thanks to parking rest</li><li>Lock-off switch for left-handers and right-handers</li></ul><p><strong>What''s Included:</strong></p><ul><li>Dust bag</li><li>Carry Case</li><li>Parallel guide</li><li>Auxiliary blade</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>3165140287098</td></tr><tr><th>Voltage</th><td>110V</td></tr><tr><th>Power Input</th><td> 710 W</td></tr><tr><th>Adjustable depth of cut</th><td>0 - 9 mm</td></tr><tr><th>No-load speed</th><td>16.500 rpm</td></tr><tr><th>Planing width</th><td>82 mm</td></tr><tr><th>Length</th><td>284.0 mm</td></tr><tr><th>Height</th><td>173.0 mm</td></tr><tr><th>Adjustable chip thickness</th><td>0 - 2.6 mm</td></tr><tr><th>Weight</th><td>2.6 kg</td></tr></tbody></table>', N'64_0601594341.jpg', N'64_0601594341_0601594341-1.jpg', N'64_0601594341_0601594341-2.jpg', N'116.95', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\64_0601594341.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\64_0601594341_0601594341-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\64_0601594341_0601594341-2.jpg', N'20', NULL, NULL, 0, N'64_0601594341_0601594341-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\64_0601594341_0601594341-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (65, N'Makita KP0800K/1 620w 3"/82mm Heavy Duty Planer 2mm Cut 110V With Carry Case', N'Fine adjustment Rubberized soft grip', NULL, N'1', N'KP0800K-1', N'KP0800K-1', N'KP0800K-1', N'<p><strong>Features:</strong></p><ul><li>Fine adjustment</li><li>Rubberized soft grip</li><li>Faster cutting performance</li><li>Increased motor speed</li><li>Increased planing depth</li><li>Maximum rebate depth 9mm</li></ul><p></p><p><strong>What''s Included:</strong></p><ul><li>Socket wrench</li><li>Blade gauge assembly</li><li>Carry Case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>KP0800K</td></tr><tr><th>Power Input</th><td>620w</td></tr><tr><th>Adjustable rebating depth</th><td>9mm</td></tr><tr><th>No-load speed</th><td>17000rpm</td></tr><tr><th>Planing depth</th><td>2.5mm</td></tr><tr><th>Cuts per minute</th><td>34000cpm</td></tr><tr><th>Weight</th><td>2.5kg</td></tr><tr><th>Total Shipping Weight</th><td>4kg</td></tr></tbody></table>', N'65_kp0800k.jpg', N'65_WebCat-00030001000a0008_KP0800K-1.jpg', N'65_WebCat-00030001000a0008_KP0800K-2.jpg', N'102', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\65_kp0800k.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\65_WebCat-00030001000a0008_KP0800K-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\65_WebCat-00030001000a0008_KP0800K-2.jpg', N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (66, N'Makita KP0800K 620w 3"/82mm Heavy Duty Planer 2mm Cut 240V with Carry Case', N'Fine adjustment Rubberized soft grip', NULL, N'1', N'KP0800K-2', N'KP0800K-2', N'KP0800K-2', N'<p><strong>Features:</strong></p><ul><li>Fine adjustment</li><li>Rubberized soft grip</li><li>Faster cutting performance</li><li>Increased motor speed</li><li>Increased planing depth</li><li>Maximum rebate depth 9mm</li></ul><p></p><p><strong>What''s Included:</strong></p><ul><li>Socket wrench</li><li>Blade gauge assembly</li><li>Carry Case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>KP0800K</td></tr><tr><th>Power Input</th><td>620w</td></tr><tr><th>Adjustable rebating depth</th><td>9mm</td></tr><tr><th>No-load speed</th><td>17000rpm</td></tr><tr><th>Planing depth</th><td>2.5mm</td></tr><tr><th>Cuts per minute</th><td>34000cpm</td></tr><tr><th>Weight</th><td>2.5kg</td></tr><tr><th>Total Shipping Weight</th><td>4kg</td></tr></tbody></table>', N'66_kp0800k.jpg', N'66_WebCat-00030001000a0008_KP0800K-1.jpg', N'66_WebCat-00030001000a0008_KP0800K-2.jpg', N'102', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\66_kp0800k.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\66_WebCat-00030001000a0008_KP0800K-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\66_WebCat-00030001000a0008_KP0800K-2.jpg', N'20', N'', N'', 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (67, N'Makita KP0800 Planer 82MM 110V', N'This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 2.5kg. A foot on base plate keeps blade and planer base free from damage when placed on workpiece. Front base has a chamfering groove for easy alignment with workpiece. Capable of a maximum planing depth of 2.5mm and 82mm planing width. With enhanced chip ejection due to improved fan design which generates more exhaust flow. Can be connected to Makita vacuum c', NULL, N'1', N'KP0800', N'KP0800', N'KP0800', N'<p>This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 2.5kg. A foot on base plate keeps blade and planer base free from damage when placed on workpiece. Front base has a chamfering groove for easy alignment with workpiece. Capable of a maximum planing depth of 2.5mm and 82mm planing width. With enhanced chip ejection due to improved fan design which generates more exhaust flow. Can be connected to Makita vacuum cleaner or dust bag (not supplied). The non-slip rubberised handle and knob give added grip and control and also minimise hand fatigue and vibration. People who bought this say: &#34;Well made and good value for money.&#34; &#34;Bought it principally to help make a hard wood mantelpiece. In between times we found it takes the bottom few millimetres off a door when a new carpet had been laid. Far easier than using a saw. Fun to use.&#34;</p><p><strong>Features:</strong></p><ul><li>Fine adjustment</li><li>Rubberized soft grip</li><li>Faster cutting performance</li><li>Increased motor speed</li><li>Increased planing depth</li><li>Maximum rebate depth 9mm</li></ul><p><strong>What''s Included:</strong></p><ul><li>Socket wrench</li><li>Blade gauge assembly</li><li>Supplied in a cardboard carton</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>0088381603942</td></tr><tr><th>Voltage</th><td>110V</td></tr><tr><th>Power Input</th><td>620w</td></tr><tr><th>No-load speed</th><td>17000rpm</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Planing depth</th><td>2.5mm</td></tr><tr><th>Cuts per minute</th><td>34000cpm</td></tr><tr><th>Weight</th><td>2.5kg</td></tr><tr><th>Total Shipping Weight</th><td>4kg</td></tr></tbody></table>', N'67_kp0800.jpg', N'67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-00.jpg', N'67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-01-BOX.jpg', N'98.84', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\67_kp0800.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-00.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-01-BOX.jpg', N'20', NULL, NULL, 0, N'67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-05.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\67_KP0800_MAKITA-KP0800-Planer-UKPLANETTOOLS-05.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (68, N'Bosch GHO 16-82D 1.6mm Wood Planer 110V 06015A4060', N'The Bosch GHO 16-82 has a 630W motor for cutting depths up to 1.6 mm. It has an RPM of up to 18,000 producing a quick removal rate and optimum surface quality. It is equipped with a sturdy, flat aluminium base plate for the best planing results. Equipped with a sharp, durable Woodrazor blade with quick blade change. Simple adjustment to front shoe provides accuracy and stability. This upgraded version of the 15-82 has a well designed handle with soft grip for greater comfort during use.', NULL, N'2', N'06015A4060', N'06015A4060', N'06015A4060', N'<p>The Bosch GHO 16-82 has a 630W motor for cutting depths up to 1.6 mm. It has an RPM of up to 18,000 producing a quick removal rate and optimum surface quality. It is equipped with a sturdy, flat aluminium base plate for the best planing results. Equipped with a sharp, durable Woodrazor blade with quick blade change. Simple adjustment to front shoe provides accuracy and stability. This upgraded version of the 15-82 has a well designed handle with soft grip for greater comfort during use.</p><p><strong>Features:</strong></p><ul><li>Cutting depths of up to 1.6 mm</li><li>Powerful 630W motor</li><li>Cutting depth adjustment in 0.1 mm steps up to 1.6 mm</li><li>Easy chamfering thanks to V-Groove</li><li>Aluminium base plate</li><li>Spring loaded park shoe gives protection of the work surface</li><li>Switch lock-off - For left and right handed use</li></ul><p><strong>What''s Included:</strong></p><ul><li>Allen key</li><li>Fabric dust bag</li><li>Parallel guide<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GHO 16-82D</td></tr><tr><th>Power Input</th><td>630 W</td></tr><tr><th>Adjustable rebating depth</th><td>9 mm</td></tr><tr><th>No-load speed</th><td>18.000 rpm</td></tr><tr><th>Planing width</th><td>82 mm</td></tr><tr><th>Cutter width</th><td>82 mm</td></tr><tr><th>Adjustable chip thickness</th><td>1.6 mm</td></tr><tr><th>Sound pressure level</th><td>84 dB(A)</td></tr><tr><th>Sound power level</th><td>95 dB(A)</td></tr><tr><th>Uncertainty K</th><td>3 dB</td></tr><tr><th>Weight</th><td>2.8 kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'68_06015a4070.jpg', N'68_WebCat-00030001000a000a_GHO 16-82D-1.jpg', N'68_WebCat-00030001000a000a_GHO 16-82D-2.jpg', N'116', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\68_06015a4070.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\68_WebCat-00030001000a000a_GHO 16-82D-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\68_WebCat-00030001000a000a_GHO 16-82D-2.jpg', N'20', N'', N'', 1, N'68_WebCat-00030001000a000a_GHO 16-82D-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\68_WebCat-00030001000a000a_GHO 16-82D-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (69, N'Bosch GHO 16-82D 1.6mm Wood Planer 240V 06015A4070', N'The Bosch GHO 16-82 has a 630W motor for cutting depths up to 1.6 mm. It has an RPM of up to 18,000 producing a quick removal rate and optimum surface quality. It is equipped with a sturdy, flat aluminium base plate for the best planing results. Equipped with a sharp, durable Woodrazor blade with quick blade change. Simple adjustment to front shoe provides accuracy and stability. This upgraded version of the 15-82 has a well designed handle with soft grip for greater comfort during use.', NULL, N'2', N'06015A4070', N'06015A4070', N'06015A4070', N'<p>The Bosch GHO 16-82 has a 630W motor for cutting depths up to 1.6 mm. It has an RPM of up to 18,000 producing a quick removal rate and optimum surface quality. It is equipped with a sturdy, flat aluminium base plate for the best planing results. Equipped with a sharp, durable Woodrazor blade with quick blade change. Simple adjustment to front shoe provides accuracy and stability. This upgraded version of the 15-82 has a well designed handle with soft grip for greater comfort during use.</p><p><strong>Features:</strong></p><ul><li>Cutting depths of up to 1.6 mm</li><li>Powerful 630W motor</li><li>Cutting depth adjustment in 0.1 mm steps up to 1.6 mm</li><li>Easy chamfering thanks to V-Groove</li><li>Aluminium base plate</li><li>Spring loaded park shoe gives protection of the work surface</li><li>Switch lock-off - For left and right handed use</li></ul><p><strong>What''s Included:</strong></p><ul><li>Allen key</li><li>Fabric dust bag</li><li>Parallel guide<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GHO 16-82D</td></tr><tr><th>Power Input</th><td>630 W</td></tr><tr><th>Adjustable rebating depth</th><td>9 mm</td></tr><tr><th>No-load speed</th><td>18.000 rpm</td></tr><tr><th>Planing width</th><td>82 mm</td></tr><tr><th>Cutter width</th><td>82 mm</td></tr><tr><th>Adjustable chip thickness</th><td>1.6 mm</td></tr><tr><th>Sound pressure level</th><td>84 dB(A)</td></tr><tr><th>Sound power level</th><td>95 dB(A)</td></tr><tr><th>Uncertainty K</th><td>3 dB</td></tr><tr><th>Weight</th><td>2.8 kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'69_06015a4070.jpg', N'69_WebCat-00030001000a000a_GHO 16-82D-1.jpg', N'69_WebCat-00030001000a000a_GHO 16-82D-2.jpg', N'116', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\69_06015a4070.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\69_WebCat-00030001000a000a_GHO 16-82D-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\69_WebCat-00030001000a000a_GHO 16-82D-2.jpg', N'20', N'', N'', 1, N'69_WebCat-00030001000a000a_GHO 16-82D-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\69_WebCat-00030001000a000a_GHO 16-82D-3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (70, N'Hitachi P20SF Electric Planer 82mm 110V', N'The Hitachi P20SF Planer is compact and lightweight (2.5kg) in comparison with other Hitachi planers. Now coming with a dust bag and adapter, the mess will be minimal.', NULL, N'4', N'P20SF-J2', N'P20SF-J2', N'P20SF-J2', N'<p>The Hitachi P20SF Planer is compact and lightweight (2.5kg) in comparison with other Hitachi planers. Now coming with a dust bag and adapter, the mess will be minimal.</p><p><strong>Features:</strong></p><ul><li>Easy to adjust cutting depth by knob</li><li>Convenient cord holder</li><li>Stand to prevent contact between the blade and a work piece</li><li>Soft grip handle</li><li>Optional dust bag or elbow can be connected</li></ul><p><strong>What''s Included:</strong></p><ul><li>Blade</li><li>Wrench</li><li>Blade setting gauge</li><li>Guide</li><li>Carry case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>P20SF</td></tr><tr><th>Power Input</th><td>620W</td></tr><tr><th>No-load speed</th><td>17,000/min.</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Weight</th><td>2.5kg</td></tr><tr><th>Total Shipping Weight</th><td>3.5kg</td></tr></tbody></table>', N'70_p20sFj2.jpg', N'70_WebCat-00030001000a0007_P20SF -1.jpg', N'70_WebCat-00030001000a0007_P20SF-2.jpg', N'122', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\70_p20sFj2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\70_WebCat-00030001000a0007_P20SF -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\70_WebCat-00030001000a0007_P20SF-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (71, N'Hitachi P20SF Electric Planer 82mm 240V', N'The Hitachi P20SF Planer is compact and lightweight (2.5kg) in comparison with other Hitachi planers. Now coming with a dust bag and adapter, the mess will be minimal.', NULL, N'4', N'P20SF-J1', N'P20SF-J1', N'P20SF-J1', N'<p>The Hitachi P20SF Planer is compact and lightweight (2.5kg) in comparison with other Hitachi planers. Now coming with a dust bag and adapter, the mess will be minimal.</p><p><strong>Features:</strong></p><ul><li>Easy to adjust cutting depth by knob</li><li>Convenient cord holder</li><li>Stand to prevent contact between the blade and a work piece</li><li>Soft grip handle</li><li>Optional dust bag or elbow can be connected</li></ul><p><strong>What''s Included:</strong></p><ul><li>Blade</li><li>Wrench</li><li>Blade setting gauge</li><li>Guide</li><li>Carry case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>P20SF</td></tr><tr><th>Power Input</th><td>620W</td></tr><tr><th>No-load speed</th><td>17,000/min.</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Weight</th><td>2.5kg</td></tr><tr><th>Total Shipping Weight</th><td>3.5kg</td></tr></tbody></table>', N'71_p20sFj2.jpg', N'71_WebCat-00030001000a0007_P20SF -1.jpg', N'71_WebCat-00030001000a0007_P20SF-2.jpg', N'122', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\71_p20sFj2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\71_WebCat-00030001000a0007_P20SF -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\71_WebCat-00030001000a0007_P20SF-2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (72, N'Dewalt D26500K-LX 1050W 4mm x 82mm Planer 110V', N'Dewalt D26500K Planer 1050W in kit box, complete with TCT reversible blades, parallel fence, rebate depth guide, dust extraction spout, heavy duty carrying case, chip deflector and high capacity collapsible collection container and chip ejector', NULL, N'5', N'D26500K-LX', N'D26500K-LX', N'D26500K-LX', N'<p>Dewalt D26500K Planer 1050W in kit box, complete with TCT reversible blades, parallel fence, rebate depth guide, dust extraction spout, heavy duty carrying case, chip deflector and high capacity collapsible collection container and chip ejector</p><p><strong>Features:</strong></p><ul><li>High power motor for effortless cutting, even in hard woods.</li><li>Left and right chip ejection for convenience.</li><li>Front handle depth control in clearly marked 0.1mm steps for accurate setting with a positive stop position.</li><li>Rubber coated front and main handles eliminates slipping for greater comfort and control.</li><li>A large planer blade drum rotating at high speed provides an excellent finish.</li><li>3 chamfering grooves in the front shoe make precision fitting jobs very easy.</li></ul><p><strong>What''s Included:</strong></p><ul><li>TCT reversible blades</li><li>1 x Parallel fence</li><li>1 x Rebate depth guide</li><li>1 x Dust extraction spout</li><li>1 x Heavy duty carrying case</li><li>1 x Chip deflector and high capacity collapsible collection container</li><li>1 x Chip ejector<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>D26500K</td></tr><tr><th>Power Input</th><td>1050 Watts</td></tr><tr><th>No-load speed</th><td>13500 rpm</td></tr><tr><th>Power Output</th><td>620 Watts</td></tr><tr><th>Shoe length</th><td>320 mm</td></tr><tr><th>Rebating Depth</th><td>25 mm</td></tr><tr><th>Drum Diameter</th><td>64 mm</td></tr><tr><th>Length</th><td>320 mm</td></tr><tr><th>Height</th><td>180 mm</td></tr><tr><th>Weight</th><td>4.0 kg</td></tr><tr><th>Total Shipping Weight</th><td>7kg</td></tr></tbody></table>', N'72_d26500k-gb.jpg', N'72_WebCat-00030001000a0003_D26500K -2.jpg', N'72_WebCat-00030001000a0003_D26500K-1.jpg', N'227', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\72_d26500k-gb.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\72_WebCat-00030001000a0003_D26500K -2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\72_WebCat-00030001000a0003_D26500K-1.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (73, N'Dewalt D26500K 1050W 4mm x 82mm Planer 240V', N'Dewalt D26500K Planer 1050W in kit box, complete with TCT reversible blades, parallel fence, rebate depth guide, dust extraction spout, heavy duty carrying case, chip deflector and high capacity collapsible collection container and chip ejector', NULL, N'5', N'D26500K-GB', N'D26500K-GB', N'D26500K-GB', N'<p>Dewalt D26500K Planer 1050W in kit box, complete with TCT reversible blades, parallel fence, rebate depth guide, dust extraction spout, heavy duty carrying case, chip deflector and high capacity collapsible collection container and chip ejector</p><p><strong>Features:</strong></p><ul><li>High power motor for effortless cutting, even in hard woods.</li><li>Left and right chip ejection for convenience.</li><li>Front handle depth control in clearly marked 0.1mm steps for accurate setting with a positive stop position.</li><li>Rubber coated front and main handles eliminates slipping for greater comfort and control.</li><li>A large planer blade drum rotating at high speed provides an excellent finish.</li><li>3 chamfering grooves in the front shoe make precision fitting jobs very easy.</li></ul><p><strong>What''s Included:</strong></p><ul><li>TCT reversible blades</li><li>1 x Parallel fence</li><li>1 x Rebate depth guide</li><li>1 x Dust extraction spout</li><li>1 x Heavy duty carrying case</li><li>1 x Chip deflector and high capacity collapsible collection container</li><li>1 x Chip ejector<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>D26500K</td></tr><tr><th>Power Input</th><td>1050 Watts</td></tr><tr><th>No-load speed</th><td>13500 rpm</td></tr><tr><th>Power Output</th><td>620 Watts</td></tr><tr><th>Shoe length</th><td>320 mm</td></tr><tr><th>Rebating Depth</th><td>25 mm</td></tr><tr><th>Drum Diameter</th><td>64 mm</td></tr><tr><th>Length</th><td>320 mm</td></tr><tr><th>Height</th><td>180 mm</td></tr><tr><th>Weight</th><td>4.0 kg</td></tr><tr><th>Total Shipping Weight</th><td>7kg</td></tr></tbody></table>', N'73_d26500k-gb.jpg', N'73_WebCat-00030001000a0003_D26500K -2.jpg', N'73_WebCat-00030001000a0003_D26500K-1.jpg', N'259', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\73_d26500k-gb.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\73_WebCat-00030001000a0003_D26500K -2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\73_WebCat-00030001000a0003_D26500K-1.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (74, N'Makita KP0810CK Heavy Duty planer With Constant Speed Control 82mm 110V', N'This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers. A foot on base plate keeps blade and planer base free from damage when placed on ', NULL, N'1', N'KP0810CK-1', N'KP0810CK-1', N'KP0810CK-1', N'<p>This Makita Planer offers precise depth knob adjustment with click stops of 0.1mm on an easy to read scale. Heavy duty but lightweight at 3.2kg, the KP0810 also has Quiet Drive technology. Comes with a large dust bag which can be fitted to either side of the machine for versatile and efficient chip collection. A lock-off or lock-on button is located on the handle, operable from both sides for left or right handers. A foot on base plate keeps blade and planer base free from damage when placed on workpiece. Front base has 3 chamfering grooves for easy alignment with workpiece. Capable of a maximum planing depth of 4mm. People who bought this say: &#34;Powerful yet light.&#34; &#34;Easy to use straight from the box, sturdy and tough yet light to use.&#34;</p><p><strong>Features:</strong></p><ul><li>Lock-off switch accessable from bothsides</li><li>Ergonomic rubberised soft grip</li><li>Dual side chip ejection</li><li>Depth adjustment with click stops</li><li>Constant Speed Control</li></ul><p><strong>What''s Included:</strong></p><ul><li>Blade gauge</li><li>Socket wrench</li><li>Guide rule</li><li>Dust bag</li><li>Carrying case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>KP0810CK</td></tr><tr><th>Power Input</th><td>1050w</td></tr><tr><th>No-load speed</th><td>10,000rpm</td></tr><tr><th>Planing width</th><td>82mm</td></tr><tr><th>Planing depth</th><td>4mm</td></tr><tr><th>Weight</th><td>3.3kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'74_kp0810ckF2.jpg', N'74_WebCat-00030001000a0005_KP0810CK -1.jpg', N'74_WebCat-00030001000a0005_KP0810CK -2.jpg', N'227.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\74_kp0810ckF2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\74_WebCat-00030001000a0005_KP0810CK -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\74_WebCat-00030001000a0005_KP0810CK -2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (75, N'Bosch GHO26-82D 2.6mm Wood Planer 710W 110V 06015A4360', N'The Bosch GHO26-82D electric planer gives an impressive 710 watts of power and comes with an enhanced front shoe over the previous model. This helps in planing accuracy. Safety is paramount and this model comes with a lock off button which will prevent accidental start up With either left or right hand side shaving ejection ease of use is improved too.', NULL, N'2', N'06015A4360', N'06015A4360', N'KP0810CK-2', N'<p>The Bosch GHO26-82D electric planer gives an impressive 710 watts of power and comes with an enhanced front shoe over the previous model. This helps in planing accuracy. Safety is paramount and this model comes with a lock off button which will prevent accidental start up With either left or right hand side shaving ejection ease of use is improved too.</p><p><strong>Features:</strong></p><ul><li>Powerful 710W motor for cutting depth up to 2.6 mm</li><li>Sturdy, flat aluminium base plate for best planing results</li><li>Eject of shavings can be switched to either right or left side of tool</li><li>Soft grip handle for comfort during operation</li><li>Lock off swith will prevent accidental power on</li><li>New front shoe adjustment system provides enhanced accuracy and stability</li><li>Ball jointed swivel cord means no more broken wires at cable inlet</li><li>Cutting depth adjustment in 0.1mm stages up to 2.6mm</li><li>Centered groove for chamfering</li><li>One blade drum - Bosch Wood Razor system for best cutting results</li><li>Spring loaded park shoe - Protection of the work surface</li></ul><p><strong>What''s Included:</strong></p><ul><li>Dust bag</li><li>Carry Case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GHO26-82</td></tr><tr><th>Power Input</th><td>710 W</td></tr><tr><th>Adjustable depth of cut</th><td>3 mm</td></tr><tr><th>Adjustable rebating depth</th><td>9 mm</td></tr><tr><th>No-load speed</th><td>18,000 rpm</td></tr><tr><th>Planing width</th><td>82 mm</td></tr><tr><th>Cutter width</th><td>82 mm</td></tr><tr><th>Cord length</th><td>4m</td></tr><tr><th>Weight</th><td>2.8 kg</td></tr><tr><th>Total Shipping Weight</th><td>7kg</td></tr></tbody></table>', N'75_06015a4360.jpg', N'75_WebCat-00030001000a0001_06015A4360 -2.jpg', N'75_WebCat-00030001000a0001_06015A4360-1.jpg', N'139', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\75_06015a4360.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\75_WebCat-00030001000a0001_06015A4360 -2.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\75_WebCat-00030001000a0001_06015A4360-1.jpg', N'20', N'', N'', 1, N'75_WebCat-00030001000a0001_06015A4360 -3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\75_WebCat-00030001000a0001_06015A4360 -3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (76, N'Makita LF1000 Flip Over Saw 10in/260mm Blade 110V', N'The Makita LF1000 flip-over saw fills the gap in the Makita saw inventory and provides the ideal saw system for site or workshop operations. Joining the recently expanded slide compound mitre saw range the new flip-over saw comfortably matches market specification at a very attractive price. Quick mitre saw/table saw conversion. The Makita LF1000 has a 260mm diameter blade powered by a 1650 watt motor that will run to 2700rpm. As a table saw, the LF1000 has a maximum depth of cut; at 90° it is 7', NULL, N'1', N'LF1000-1', N'LF1000-1', N'LF1000-1', N'<p>The Makita LF1000 flip-over saw fills the gap in the Makita saw inventory and provides the ideal saw system for site or workshop operations. Joining the recently expanded slide compound mitre saw range the new flip-over saw comfortably matches market specification at a very attractive price. Quick mitre saw/table saw conversion. The Makita LF1000 has a 260mm diameter blade powered by a 1650 watt motor that will run to 2700rpm. As a table saw, the LF1000 has a maximum depth of cut; at 90° it is 70mm and at 45° a class leading 48mm. Turning the motor/blade assembly over to mitre saw layout offers a maximum mitre cut of 68mm depth on stock 155mm wide. The Makita LF1000 meets the needs of site operatives with a rigid cast aluminium base frame and table. This sturdy saw weighs 33kg making is easily transportable. Sophisticated controls provide electronic speed control with safe, soft start operation and the respected Makita electronic brake safety feature. People who bought this say, &#34;Everything is very solid and well built.&#34;</p><p><strong>Features:</strong></p><ul><li>Lightweight motor makes the conversion quick and easy.</li><li>Powerful motor designed to cut tricky material and hard wood.</li><li>Max thickness for mitre or table cutting is over 2 &#34;</li><li>Removable sub fence - for cutting thick and thin materials</li><li>Saw has Soft-Start - prevents breaker from tripping at job sites.</li><li>Maintains constant speed under load.</li><li>Machined aluminium table for strength and accuracy.</li><li>On-off switch with anti restart safety feature.</li><li>Aluminium cast base gives superb rigidity.</li><li>Fold away legs for easy transport in car or van.</li><li>Weighs only 33kg for easy transport.</li><li>Excellent for all aspects of site work, including 1st and 2nd fix.</li><li>Versatile workshop machine.</li></ul><p><strong>What''s Included:</strong></p><ul><li>TCT blade</li><li>Rip fence</li><li>Bevel guide</li><li>Push stick</li><li>Blade guard</li><li>Dust cover dust bag</li><li>Wrench.</li><li>Double insulated</li><li>Electric brake</li><li>Electronic speed control</li><li>Soft start</li><li>Rigid and robust cast aluminium table and frame</li><li>1650 watt motor runs to 2,700rpm</li></ul><p><br/></p><p><strong>Specification:</strong></p>', N'76_lf1000F1.jpg', N'76_LF10001_LF1000-1-1.jpg', N'76_LF1000F1_LF1000 -2.jpg', N'701.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\76_lf1000F1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\76_LF10001_LF1000-1-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\76_LF1000F1_LF1000 -2.jpg', N'20', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (77, N'DeWalt D26414 2000W LCD Premium Heat Gun 240V', N'The DeWALT D26414 digital LED durable heat gun is suitable for professional applications due to its excellent temperature control and memory setting, for consistent temperature requirements.', NULL, N'5', N'D26414-GB', N'D26414-GB', N'D26414-GB', N'<p>The DeWALT D26414 digital LED durable heat gun is suitable for professional applications due to its excellent temperature control and memory setting, for consistent temperature requirements.</p><p><strong>Features</strong></p><ul><li>Power input of 2000 watt with optimised cooling</li><li>Compact and lightweight for easy handling and use</li><li>Extremely durable making it ideal for on-site use</li></ul><p><strong>Comes With</strong></p><ul><li>Cone nozzle</li><li>Fish tail surface nozzle</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>5035048290088</td></tr><tr><th>Part No</th><td>D26414-GB</td></tr><tr><th>Voltage</th><td>240V</td></tr><tr><th>Power Input</th><td>2000 Watts</td></tr><tr><th>Operating Temperature</th><td>50-600° C</td></tr><tr><th>Air Flow</th><td>650 l/min</td></tr><tr><th>Sound Pressure</th><td>75dB(A)</td></tr><tr><th>Weight</th><td>0.85kg</td></tr><tr><th>Length</th><td>265mm</td></tr><tr><th>Height</th><td>210mm</td></tr></tbody></table>', N'77_d26414-gb.jpg', N'77_D26414-GB_D26414-1.jpg', NULL, N'49.50', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\77_d26414-gb.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\77_D26414-GB_D26414-1.jpg', NULL, N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (78, N'Dewalt D26411-GB Heat Gun with Dual Air Flow 240V', N'The Dewalt D26411 Heat Gun is a durable, lightweight and ergonomic machine for increased comfort and application use', NULL, N'5', N'D26411-GB', N'D26411-GB', N'D26411-GB', N'<p>The Dewalt D26411 Heat Gun is a durable, lightweight and ergonomic machine for increased comfort and application use</p><p><strong>Features</strong></p><ul><li>Dual air flows</li><li>Heating element protection</li><li>Support stand</li><li>Large dial adjustment</li><li>Easy operation even with gloves</li><li>Heating element protection for increased durability</li><li>Cone and fish tail nozzles included for increased versitility</li></ul><p><strong>What''s Included:</strong></p><ul><li>Cone nozzle</li><li>Fish tail surface nozzle</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>5035048290057</td></tr><tr><th>Part No</th><td>D26411-GB</td></tr><tr><th>Voltage</th><td>240V</td></tr><tr><th>Power Input</th><td>1800 Watts</td></tr><tr><th>Operating Temperature</th><td>50-400 / 50-600 °C</td></tr><tr><th>Air Flow</th><td>250 / 450 l/min</td></tr><tr><th>Hand/Arm Vibration</th><td> 0.86 m/s2</td></tr><tr><th>Uncertainty K 1 (Vibration)</th><td>1.5 m/s²</td></tr><tr><th>Sound Pressure</th><td>68 dB(A)</td></tr><tr><th>Accoustic Pressure</th><td>79 dB(A)</td></tr><tr><th>Weight</th><td>0.80 kg</td></tr><tr><th>Length</th><td>253 mm</td></tr><tr><th>Height</th><td>210 mm</td></tr><tr><th>Total Shipping Weight</th><td>4kg</td></tr></tbody></table>', N'78_d26411-gb.jpg', N'78_D26411-GB_D26411 -1.jpg', N'78_D26411-GB_D26411 -2.jpg', N'47', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\78_d26411-gb.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\78_D26411-GB_D26411 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\78_D26411-GB_D26411 -2.jpg', N'20', NULL, NULL, 1, N'78_D26411-GB_D26411 -3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\78_D26411-GB_D26411 -3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (79, N'Makita HG5012K Heat Gun 1600W 240V', N'Makita HG5012K Heat Gun complete with reflector nozzle, glass protection nozzle, wide slot nozzle and carrying case.', NULL, N'1', N'HG5012K', N'HG5012K', N'HG5012K', N'<p>Makita HG5012K Heat Gun complete with reflector nozzle, glass protection nozzle, wide slot nozzle and carrying case.</p><p><strong>Features:</strong></p><ul><li>2 level air flow adjustment</li><li>Removes labels stickers</li><li>Thaws frozen pipes</li><li>Loosens tiles &amp; putty</li><li>Double insulated</li></ul><p><strong>What''s Included:</strong></p><ul><li>Reflector nozzle</li><li>Glass protection nozzle</li><li>Wide slot nozzle</li><li>Carrying case</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>0088381604833</td></tr><tr><th>Part No</th><td>HG5012K</td></tr><tr><th>Voltage</th><td>240V</td></tr><tr><th>Power Input</th><td>1600w</td></tr><tr><th>Operating Temperature</th><td>350/500 C</td></tr><tr><th>Air Flow</th><td>350/500 min</td></tr><tr><th>Heat Settings</th><td>2</td></tr><tr><th>Weight</th><td>0.68kg</td></tr><tr><th>Total Shipping Weight</th><td>3kg</td></tr></tbody></table>', N'79_hg5012k.jpg', N'79_HG5012K_HG5012K -1.jpg', N'79_HG5012K_HG5012K-2.jpg', N'49', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\79_hg5012k.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\79_HG5012K_HG5012K -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\79_HG5012K_HG5012K-2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (80, N'Bosch GST150BCE1 Bow Handle Jigsaw 150mm 780W 110V 0601513060', N'Lots of power from the 780 watt motor Very versatile with a huge 150mm depth of cut', NULL, N'2', N'0601513060', N'0601513060', N'0601513060', N'<p><strong>Features:</strong></p><ul><li>Lots of power from the 780 watt motor</li><li>Very versatile with a huge 150mm depth of cut</li><li>High strength foot plate for greater robustness</li><li>Constant electronics for pre-selected speed steady between no-load / load and the right speed for the material (''Cruise Control'')</li><li>Variable speed provides smooth start-up / acceleration, allows precise blade line up with</li><li>pre-marked surface, avoids mis-cuts and workpiece damage</li><li>Keyless SDS style blade changes require no additional tools for blade insertion or removal Automatic blade ejection - reduces risk of injury from touching hot blade (e.g. if it becomes jammed)</li><li>Great for straight cuts in various materials, curved and round cuts, cut-outs and plunge cuts</li><li>Used for materials such as soft &amp; hard wood, construction timber, plasterboard, sandwich materials, ferrous / non-ferrous pipes, sheet metal</li><li>Rubberised grips for comfort</li></ul><p><strong>What''s Included:</strong></p><ul><li>Carry case</li><li>Dust collection attachment</li><li>Dust port</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>GST150BCE</td></tr><tr><th>Power Input</th><td>780w</td></tr><tr><th>Stroke rate, idling</th><td>500-3100rpm</td></tr><tr><th>Orbital Action</th><td>4</td></tr><tr><th>Stroke Length</th><td>26mm</td></tr><tr><th>Cutting depth</th><td>150/20/10mm</td></tr><tr><th>Bevel Capacity</th><td>up to 45 degrees</td></tr><tr><th>Weight</th><td>2.7kg</td></tr><tr><th>Total Shipping Weight</th><td>6kg</td></tr></tbody></table>', N'80_0601513060.jpg', N'80_WebCat-00030001000e0001_0601513060 -1.jpg', N'80_WebCat-00030001000e0001_0601513060 -2.jpg', N'117.55', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\80_0601513060.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\80_WebCat-00030001000e0001_0601513060 -1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\80_WebCat-00030001000e0001_0601513060 -2.jpg', N'20', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (81, N'Festool PSB 300 EQ-Plus Pendulum Jigsaw 110v in Systainer-1 561457', N'The Festool PSB300 Jigsaw has a patented three-way saw bladeguide for cutting precise angles.', NULL, N'3', N'561457', N'561457', N'561457', N'<p>The Festool PSB300 Jigsaw has a patented three-way saw bladeguide for cutting precise angles.</p><p><strong>Features:</strong></p><ul><li>High-quality drive components give longer service life</li><li>Improved splinterguard, no reworking</li><li>Perfectly balanced for effortless one-handed operation</li><li>FastFix rapid-change system for easy saw blade changes</li><li>Brilliant cutting power (MMC electronics)</li><li>Cut-outs for sinks and kitchen hobs</li><li>Trimming work on furniture, kitchens, for interior fitting</li><li>Cutting circles and curves</li><li>Coping end strips</li><li>Cutting workpieces to length</li><li>Edge notching on beams</li></ul><p><strong>What''s Include:</strong></p><ul><li>2 x Saw Blades</li><li>Splinterguard</li><li>Comes in a SYSTAINER SYS 1 T-LOC</li></ul><p><br/></p><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Barcode</th><td>4014549150740</td></tr><tr><th>Part No</th><td>561457</td></tr><tr><th>Voltage</th><td>110V</td></tr><tr><th>Cutting depth in wood</th><td>120mm</td></tr><tr><th>Pendulum cover adjustment in stages</th><td>4</td></tr><tr><th>Cutting depth in NF metals</th><td>20mm</td></tr><tr><th>Cutting depth in steel (soft)</th><td>10mm</td></tr><tr><th>Mains frequency</th><td>50Hz</td></tr><tr><th>Power consumption</th><td>720W</td></tr><tr><th>Stroke rate</th><td>1000-2900min-1</td></tr><tr><th>Inclination</th><td>0-45°</td></tr></tbody></table>', N'81_561457.jpg', N'81_561457_561457-1.jpg', NULL, N'278', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\81_561457.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\81_561457_561457-1.jpg', NULL, N'20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mst_Item] ([ItemId], [Title], [Name], [SubCategoryId], [BrandId], [ASIN], [SKU], [ItemStockCode], [Description], [ItemMainImage], [ItemImage1], [ItemImage2], [Price], [ItemMainImageUrl], [ItemMainImageUrl1], [ItemMainImageUrl2], [VAT], [MetaDescription], [SearchKeyword], [Active], [ItemImage3], [ItemMainImageUrl3], [ItemMainImageUrl4], [ItemImage4], [ItemMainImageUrl5], [ItemImage5]) VALUES (82, N'Makita 4350FCT/1 Orbital Action Jigsaw 110V', N'Extremely low noise and low vibration are achieved in the 4350FCT. Employing a lightweight rod and balance mechanism which dramatically enhances operator comfort and reduces fatigue. Ensure optimum cutting speed with the variable control dial convieniently situated on the back of handle. Also the constant speed control minimises speed loss under loaded conditions and Soft Start will supress start up for a smooth build up.', NULL, N'1', N'4350FCT-1', N'4350FCT-1', N'4350FCT-1', N'<p>Extremely low noise and low vibration are achieved in the 4350FCT. Employing a lightweight rod and balance mechanism which dramatically enhances operator comfort and reduces fatigue. Ensure optimum cutting speed with the variable control dial convieniently situated on the back of handle. Also the constant speed control minimises speed loss under loaded conditions and Soft Start will supress start up for a smooth build up. 3 Orbital Settings optimal cutting action by simply turning the change lever. With the Blower Function and the LED Joblight your cut line will always be visible. The handle is of rubberised material with anti slip dimple design for a firm grip whatever the conditions. People who bought this say, &#34;Powerful and accurate cut&#34; &#34; I just love it&#34; &#34;Blade change is easy without any Allen keys etc. I found the light to be surprisingly useful.&#34; &#34;Plenty of power. Smooth and easy to use. Seems well made.&#34;</p><p><strong>Features:</strong></p><ul><li>Ergonomic rubberised grip - more control and comfort</li><li>Soft start and constant speed control - minimises speed loss under load</li><li>Cover plate - protects workpiece from scratches</li><li>Bevel Cutting aluminium base - up to 45 degrees left or right</li><li>Variable speed control dial - suit your cutting speed to the job</li><li>Tool-less blade change - safely change hot used blades</li><li>Double insulated for added safety</li><li>LED Job Light - illuminate the job even in the poorest lighting conditions</li><li>Blower function - keep your cutting line visible and clean</li></ul><p><strong>What''s Included:</strong></p><ul><li>Jigsaw blade set (B10 BR13 B22 x 2 each)</li><li>Hex wrench</li><li>Cover plate</li><li>Anti-splinter device</li><li>Carry case<br/></li></ul><p><strong>Specification:</strong></p><table class="techinfo"><tbody><tr><th>Part No</th><td>4350FCT</td></tr><tr><th>Max Cut in Wood</th><td>135mm</td></tr><tr><th>Max in Steel</th><td>10mm</td></tr><tr><th>Length of Stroke</th><td>26mm</td></tr><tr><th>Strokes per minute</th><td>800-2,800spm</td></tr><tr><th>Input wattage</th><td>720w</td></tr><tr><th>Weight</th><td>2.4kg</td></tr><tr><th>Total Shipping Weight</th><td>4kg</td></tr></tbody></table>', N'82_4350fctF1.jpg', N'82_WebCat-00030001000e0007_4350fct-1.jpg', N'82_WebCat-00030001000e0007_4350fct-2.jpg', N'107', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\82_4350fctF1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\82_WebCat-00030001000e0007_4350fct-1.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\82_WebCat-00030001000e0007_4350fct-2.jpg', N'20', NULL, NULL, 1, N'82_WebCat-00030001000e0007_4350fct-3.jpg', N'D:\INETPUB\VHOSTS\davemuslayah.com\api.davemuslayah.com\Images\82_WebCat-00030001000e0007_4350fct-3.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mst_Item] OFF
SET IDENTITY_INSERT [dbo].[Trn_Shop_History] ON 

INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (1, N'msjs06e3', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-26 15:50:17.993' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (2, N'msjs06e3', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-26 15:50:25.740' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (3, N'qetgayg7', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-09-29 12:32:39.397' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (4, N'qetgayg7', N'4', N'Makita 2704 Table Saw 10inch/255mm 110V', N'598.9', 1, CAST(N'2018-09-29 12:32:42.730' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (5, N'fa9hxxgz', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 12:51:44.210' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (6, N'fa9hxxgz', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 12:51:46.077' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (8, N'gdxmfyrt', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:13:05.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (9, N'gdxmfyrt', N'4', N'Makita 2704 Table Saw 10inch/255mm 110V', N'598.9', 1, CAST(N'2018-09-29 13:13:06.137' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (10, N'n9fyxrzw', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-29 13:14:49.680' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (11, N'k90whnhe', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:17:11.133' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (12, N'k90whnhe', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:17:12.013' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (15, N'ngy0dya5', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 2, CAST(N'2018-09-29 13:28:06.650' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (16, N'ngy0dya5', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:28:07.840' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (21, N'd1q0j889', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:31:46.287' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (22, N'd1q0j889', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 6, CAST(N'2018-09-29 13:31:46.973' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (23, N'd1q0j889', N'4', N'Makita 2704 Table Saw 10inch/255mm 110V', N'598.9', 1, CAST(N'2018-09-29 13:31:47.510' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (24, N'f4ry7kce', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:33:45.133' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (25, N'f4ry7kce', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:33:45.623' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (7, N'fa9hxxgz', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-29 12:51:47.093' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (13, N'rknc3mnp', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:24:11.097' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (14, N'Error: 91564 - Cannot use a payment_method_nonce more than once.
', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:24:16.293' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (17, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJjNjA0YWYxZjdmYjM5MjdlZDkyZTJhZjE2YTc0N2U1MTVkNmQxMGZjYzM2NDRhYzE1YWQ5NDcyNDczYjFiZGQxfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwNzo1OTo1NC4xNzMzMjM5MzkrMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 2, CAST(N'2018-09-29 13:29:59.807' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (18, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJjNjA0YWYxZjdmYjM5MjdlZDkyZTJhZjE2YTc0N2U1MTVkNmQxMGZjYzM2NDRhYzE1YWQ5NDcyNDczYjFiZGQxfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwNzo1OTo1NC4xNzMzMjM5MzkrMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:30:00.543' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (19, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJjNjA0YWYxZjdmYjM5MjdlZDkyZTJhZjE2YTc0N2U1MTVkNmQxMGZjYzM2NDRhYzE1YWQ5NDcyNDczYjFiZGQxfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwNzo1OTo1NC4xNzMzMjM5MzkrMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita 2704 Table Saw 10inch/255mm 110V', N'598.9', 1, CAST(N'2018-09-29 13:30:01.183' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (20, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJjNjA0YWYxZjdmYjM5MjdlZDkyZTJhZjE2YTc0N2U1MTVkNmQxMGZjYzM2NDRhYzE1YWQ5NDcyNDczYjFiZGQxfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwNzo1OTo1NC4xNzMzMjM5MzkrMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-29 13:30:01.743' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (26, N'rsmrrvw1', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:36:15.273' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (27, N'rsmrrvw1', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 1, CAST(N'2018-09-29 13:36:17.977' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (28, N'dwv0dgjv', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-09-29 13:58:03.233' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (29, N'dwv0dgjv', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'306', 1, CAST(N'2018-09-29 13:58:03.973' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (30, N'dwv0dgjv', N'4', N'Makita 2704 Table Saw 10inch/255mm 240V', N'598.9', 1, CAST(N'2018-09-29 13:58:04.943' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (31, N'ba5rn2tc', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-09-29 15:02:40.993' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (32, N'ba5rn2tc', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'306', 2, CAST(N'2018-09-29 15:02:42.413' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (39, N'6eey1c8t', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-09-29 22:48:53.943' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (40, N'6eey1c8t', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'306', 1, CAST(N'2018-09-29 22:48:54.347' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (41, N'446yqehv', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-10-03 17:34:57.737' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (33, N'ba5rn2tc', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-29 15:02:43.333' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (36, N'gwgb5npq', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-09-29 15:08:37.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (37, N'gwgb5npq', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 240V', N'306', 2, CAST(N'2018-09-29 15:08:38.403' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (38, N'gwgb5npq', N'4', N'Makita 2704 Table Saw 10inch/255mm 110V', N'598.9', 1, CAST(N'2018-09-29 15:08:39.603' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (34, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJlM2YyOTE0ZjY5MDg3YTU4NTU4MTAzY2VlZTI2NDFiMWVjOTBkNTg5M2JlNjc1NDNmNmUzNjA0MDRiYmVlZDUyfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwOTozNDo1OC44MTYzNDk0MzArMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita MLT100 Table Saw 110V 1500W 260mm Blade', N'357', 1, CAST(N'2018-09-29 15:05:02.983' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (35, N'eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJlM2YyOTE0ZjY5MDg3YTU4NTU4MTAzY2VlZTI2NDFiMWVjOTBkNTg5M2JlNjc1NDNmNmUzNjA0MDRiYmVlZDUyfGNyZWF0ZWRfYXQ9MjAxOC0wOS0yOVQwOTozNDo1OC44MTYzNDk0MzArMDAwMFx1MDAyNm1lcmNoYW50X2lkPTZzNWM5NTNtcHhoNnFuMnBcdTAwMjZwdWJsaWNfa2V5PTd5ejZobWN3bTQ0OTJza3MiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvNnM1Yzk1M21weGg2cW4ycC9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJncmFwaFFMIjp7InVybCI6Imh0dHBzOi8vcGF5bWVudHMuc2FuZGJv', N'4', N'Makita MLT100 Table Saw 240V 1500W 260mm Blade', N'406', 5, CAST(N'2018-09-29 15:05:03.883' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Trn_Shop_History] ([ShopHistoryId], [TransectionId], [CustId], [ItemName], [Price], [Quantity], [Date], [EmailAddress], [ItemType], [ItemID]) VALUES (42, N'0qk9h0zc', N'4', N'Makita DA4000LR Rotary Angle Drill 0.5inch/13mm 110V', N'306', 1, CAST(N'2018-10-03 18:05:26.200' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Trn_Shop_History] OFF
/****** Object:  StoredProcedure [Daljeet].[Category_SaveTree]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateBanner]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateBanner](        
@ParentId varchar (50),        
@BannerImage varchar (100)=null,        
@BannnerfilePath varchar (500)=null)        
as        
begin        
        
  update Mst_Inv_Category set ActiveOnPortal=1,  
  BannnerfilePath=@BannnerfilePath,BannerImage=@BannerImage where CategoryId=@ParentId      
        
end 
GO
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateBanner1920]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateBanner1920](          
@ParentId varchar (50),          
@BannerImage varchar (100)=null,          
@BannnerfilePath varchar (500)=null)          
as          
begin          
          
  update Mst_Inv_Category set     
  MainBannerFilePath=@BannnerfilePath,MainBannerName=@BannerImage,UploadDateCategoryImage1920=CURRENT_TIMESTAMP where CategoryId=@ParentId        
          
end 
GO
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateBanner370]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateBanner370](            
@ParentId varchar (50),            
@BannerImage varchar (100)=null,            
@BannnerfilePath varchar (500)=null)            
as            
begin            
            
  update Mst_Inv_Category set       
  CategoryImagePath370=@BannnerfilePath,CategoryImageName370=@BannerImage,UploadDateCategoryImagePath370=CURRENT_TIMESTAMP ,ActiveOnPortal='1' where CategoryId=@ParentId          
            
end 
GO
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateBanner570]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateBanner570](            
@ParentId varchar (50),            
@BannerImage varchar (100)=null,            
@BannnerfilePath varchar (500)=null)            
as            
begin            
            
  update Mst_Inv_Category set       
  CategoryImagePath570=@BannnerfilePath,CategoryImageName570=@BannerImage,UploadDateCategoryImage570=CURRENT_TIMESTAMP where CategoryId=@ParentId          
            
end
GO
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateBanner870]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateBanner870](            
@ParentId varchar (50),            
@BannerImage varchar (100)=null,            
@BannnerfilePath varchar (500)=null)            
as            
begin            
            
  update Mst_Inv_Category set       
  CategoryImagePath870=@BannnerfilePath,CategoryImageName870=@BannerImage,UploadDateCategoryImage870=CURRENT_TIMESTAMP where CategoryId=@ParentId          
            
end 
GO
/****** Object:  StoredProcedure [Daljeet].[Category_UpdateTree]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[Category_UpdateTree](        
@CategoryName varchar(50),        
@ParentId varchar (50),        
@filename varchar (500)=null,        
@filePath varchar (500)=null,        
@ActiveOnPortal int        
)        
as        
begin        
        
  update Mst_Inv_Category set filePath=@filePath,filename=@filename,ActiveOnPortal=@ActiveOnPortal 
   where CategoryId=@ParentId      
        
end 
GO
/****** Object:  StoredProcedure [Daljeet].[delete_selectedRelatedItems]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [Daljeet].[delete_selectedRelatedItems](
@ItemStockCode varchar(50) 
  
  )
 as begin
delete from daljeet.Trn_Item_RelatedItems where ItemStockCode=@ItemStockCode
 
 end 
GO
/****** Object:  StoredProcedure [Daljeet].[GetBrand]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Daljeet].[GetBrand]
as
begin
select * from mst_brand
end
GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryfor1920]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[getCategoryfor1920]

as 
select top(2) child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
where child.MainBannerName  IS NOT NULL
order by uploadDateCategoryImage1920 
GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryfor370]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[getCategoryfor370]

as 
select  child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
where child.CategoryImageName370  IS NOT NULL and child.ActiveOnPortal=1
order by uploadDateCategoryImagePath370 desc
GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryfor570]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[getCategoryfor570]

as 
select top(2) child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
where child.CategoryImageName570  IS NOT NULL
order by uploadDateCategoryImage570 desc


GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryfor870]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[getCategoryfor870]

as 
select top(1) child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
where child.CategoryImageName870  IS NOT NULL
order by uploadDateCategoryImage870 desc



GO
/****** Object:  StoredProcedure [Daljeet].[getCategoryforFirstPage]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[getCategoryforFirstPage]

as 
select child.*, parent.CategoryName as ParentName from mst_inv_category child
inner join mst_inv_category parent
on child.IsParentId = parent.CategoryId
 where child.activeonportal=1


GO
/****** Object:  StoredProcedure [Daljeet].[GetCategorywithSubCategory]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[GetCategorywithSubCategory]  
as  
begin  
select * from Mst_Inv_Category 
end  

GO
/****** Object:  StoredProcedure [Daljeet].[GetChildCategoryByCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Daljeet].[GetChildCategoryByCategoryId]
@Categoryid varchar(10)
as
begin
select * from Mst_Inv_Category where IsparentId=@Categoryid 
end


GO
/****** Object:  StoredProcedure [Daljeet].[GetItemDetailByStockCode]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[GetItemDetailByStockCode]
@ItemStockCode varchar(500)
as
begin
select distinct itm.name, itm.*,brnd.BrandName,lmstock.StockInHand     
, li.SubCategoryId as CategoryId,cat.CategoryName    
from Mst_Item itm    
    
    
inner join mst_Brand brnd on brnd.brandid = itm.brandid      
inner join Lot_mst_stock lmstock on lmstock.ItemStockCode = itm.ItemStockCode      
inner join daljeet.Trn_LinkCategoryItem li on li.ItemStockCode = itm.ItemStockCode  and li.SubCategoryId != 158          
inner join Mst_Inv_Category cat on cat.CategoryId=li.SubCategoryId    
    
where itm.ItemStockCode = @ItemStockCode   
end




GO
/****** Object:  StoredProcedure [Daljeet].[sp_GetItemByCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Daljeet].[sp_GetItemByCategoryId]
@CategoryId varchar(10)
as
begin

SELECT        dbo.Mst_Item.ItemId, dbo.Mst_Item.MetaDescription, dbo.Mst_Item.SearchKeyword, dbo.Mst_Item.Active, dbo.Mst_Item.VAT, dbo.Mst_Item.ItemMainImageUrl2, dbo.Mst_Item.ItemMainImageUrl1, 
                         dbo.Mst_Item.ItemMainImageUrl, dbo.Mst_Item.Price, dbo.Mst_Item.ItemImage2, dbo.Mst_Item.ItemImage1, dbo.Mst_Item.ItemMainImage, dbo.Mst_Item.Description, dbo.Mst_Item.ItemStockCode, dbo.Mst_Item.SKU, 
                         dbo.Mst_Item.ASIN, dbo.Mst_Item.BrandId, dbo.Mst_Item.SubCategoryId, dbo.Mst_Item.Name, dbo.Mst_Item.Title, dbo.Mst_Brand.BrandName, dbo.Lot_Mst_Stock.StockInHand, dbo.Mst_Item.ItemMainImageUrl3, 
                         dbo.Mst_Item.ItemImage3, dbo.Mst_Item.ItemMainImageUrl4, dbo.Mst_Item.ItemImage4, dbo.Mst_Item.ItemMainImageUrl5, dbo.Mst_Item.ItemImage5, dbo.Mst_Inv_Category.CategoryName, dbo.Mst_Inv_Category.IsParentId, 
                         dbo.Mst_Inv_Category.CategoryId
FROM            dbo.Mst_Inv_Category INNER JOIN
                         Trn_LinkCategoryItem ON dbo.Mst_Inv_Category.CategoryId = Trn_LinkCategoryItem.SubCategoryId INNER JOIN
                         dbo.Mst_Item INNER JOIN
                         dbo.Lot_Mst_Stock ON dbo.Mst_Item.ItemId = dbo.Lot_Mst_Stock.Id INNER JOIN
                         dbo.Mst_Brand ON dbo.Mst_Item.BrandId = dbo.Mst_Brand.BrandId ON Trn_LinkCategoryItem.ItemStockCode = dbo.Mst_Item.ItemStockCode
						 where dbo.Mst_Inv_Category.CategoryId=@CategoryId
end
GO
/****** Object:  StoredProcedure [Daljeet].[sp_GetItemBysearchtext]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Daljeet].[sp_GetItemBysearchtext]  
@Searchtext varchar(50)  
as  
begin  
  
SELECT    distinct    dbo.Mst_Item.ItemId, dbo.Mst_Item.MetaDescription, dbo.Mst_Item.SearchKeyword, 
dbo.Mst_Item.Active, dbo.Mst_Item.VAT, dbo.Mst_Item.ItemMainImageUrl2, dbo.Mst_Item.ItemMainImageUrl1,   
                         dbo.Mst_Item.ItemMainImageUrl, dbo.Mst_Item.Price, dbo.Mst_Item.ItemImage2, 
                         dbo.Mst_Item.ItemImage1, dbo.Mst_Item.ItemMainImage,
                          dbo.Mst_Item.Description, dbo.Mst_Item.ItemStockCode, dbo.Mst_Item.SKU,   
                         dbo.Mst_Item.ASIN, dbo.Mst_Item.BrandId, dbo.Mst_Item.SubCategoryId, 
                         dbo.Mst_Item.Name, dbo.Mst_Item.Title, dbo.Mst_Brand.BrandName, 
                         dbo.Lot_Mst_Stock.StockInHand, dbo.Mst_Item.ItemMainImageUrl3,   
                         dbo.Mst_Item.ItemImage3, dbo.Mst_Item.ItemMainImageUrl4, 
                         dbo.Mst_Item.ItemImage4, dbo.Mst_Item.ItemMainImageUrl5, 
                         dbo.Mst_Item.ItemImage5, dbo.Mst_Inv_Category.CategoryName, 
                         dbo.Mst_Inv_Category.IsParentId,   
                         dbo.Mst_Inv_Category.CategoryId  
FROM            dbo.Mst_Inv_Category INNER JOIN  
                         Trn_LinkCategoryItem ON dbo.Mst_Inv_Category.CategoryId = Trn_LinkCategoryItem.SubCategoryId INNER JOIN  
                         dbo.Mst_Item INNER JOIN  
                         dbo.Lot_Mst_Stock ON dbo.Mst_Item.ItemId = dbo.Lot_Mst_Stock.Id INNER JOIN  
                         dbo.Mst_Brand ON dbo.Mst_Item.BrandId = dbo.Mst_Brand.BrandId ON Trn_LinkCategoryItem.ItemStockCode = dbo.Mst_Item.ItemStockCode  
       where (dbo.Mst_Item.Name like '%'+@Searchtext+'%' or    dbo.Mst_Item.ItemStockCode like '%'+@Searchtext+'%'
       or  dbo.Mst_Inv_Category.CategoryName like '%'+@Searchtext+'%') and  dbo.Mst_Inv_Category.CategoryId not in (157,158,161,162,163,164)
end
GO
/****** Object:  StoredProcedure [Daljeet].[sp_UpdateBrandImageData]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Daljeet].[sp_UpdateBrandImageData] 
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
/****** Object:  StoredProcedure [Daljeet].[UpdateItemwithCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Brand_Find]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Brand_Insert]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Brand_Update]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Category_Find]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Category_Insert]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Category_SaveTree]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Category_SaveTree](  
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
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CheckLogincustomer]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CheckLogincustomer]  
(  
        @Name varchar(50),  
        @Password varchar(50),
		@Return varchar(50)='0' out,
		@ReturnName varchar(50)='0' out  
)    
  
as  

if exists(select * from Mst_Customer where Email=@Name and Password=@Password) 
 begin 
       set @Return=(select Id from Mst_Customer where Email=@Name and Password=@Password)
	   set @ReturnName=(select Name from Mst_Customer where Email=@Name and Password=@Password)
end  
     




GO
/****** Object:  StoredProcedure [dbo].[Customer_Find]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Customer_Find]   
 -- Add the parameters for the stored procedure here  
 @Id nvarchar(10)  
AS  
BEGIN  
--declare @Return nvarchar(50)  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
select * from Mst_Customer  where  id=@id
  
END


GO
/****** Object:  StoredProcedure [dbo].[Customer_Insert]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Customer_Insert] 
	-- Add the parameters for the stored procedure here
	 @Name varchar(50)
	,@HouseNo varchar(50)
	,@phone varchar(50)
	,@email varchar(50)
	,@AddressLine2 varchar(50)
	,@AddressLine3 varchar(50)
	,@AddressLine4 varchar(50)
	,@PostCode varchar(50)
	,@InvoiceHouse varchar(50)
	,@InvoiceCompany varchar(50)
	
	,@InvoiceAddressLine2 varchar(50)
	,@InvoiceAddressLine3 varchar(50)
	,@InvoiceAddressLine4 varchar(50)
	,@InvoicePostCode varchar(50)
	,@wantnews bit
	, @Return varchar(10) = NULL out
	,@ReturnName varchar(100) = NULL out
AS
BEGIN

update Mst_Customer set Name=@Name,HouseNo=@HouseNo,AddressLine2=@AddressLine2,
AddressLine3=@AddressLine3,
AddressLine4=@AddressLine4,
PostCode=@PostCode,
Company=@InvoiceCompany,
InvoiceName=@InvoiceHouse,
InvoiceAddessLine2=@InvoiceAddressLine2,
InvoiceAddressLine3=@InvoiceAddressLine3,
InvoiceAddressLine4=@InvoiceAddressLine4,
InvoicePostCode=@InvoicePostCode,
AgreeSendSpecialOffer=@wantnews
    where PhoneNumber=@phone and Email=@email

set @Return =(	select Id from Mst_Customer where PhoneNumber=@phone and Email=@email)
  set @ReturnName=(select Name from Mst_Customer where PhoneNumber=@phone and Email=@email)
END


GO
/****** Object:  StoredProcedure [dbo].[getCategoryforFirstPage]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getCategoryforFirstPage]  
  
as   
select child.*, parent.CategoryName as ParentName from mst_inv_category child  
inner join mst_inv_category parent  
on child.IsParentId = parent.CategoryId  
 where child.activeonportal=1


GO
/****** Object:  StoredProcedure [dbo].[GetCategorywithSubCategory]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetCategorywithSubCategory]  
as  
begin  
select * from Mst_Inv_Category  
end


GO
/****** Object:  StoredProcedure [dbo].[GetHotSaleItem]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHotSaleItem] 
	--@categoryid varchar(50)
	AS
BEGIN
WITH cte AS(
    SELECT  coa.*
    FROM    Mst_Inv_Category as coa
        WHERE   coa.CategoryId =158
        UNION ALL
        SELECT  t.*
    FROM    Mst_Inv_Category t INNER JOIN
                cte x ON t.IsParentId = x.CategoryId)

SELECT i.*,ct.*,brnd.BrandName ,lmstock.StockInHand FROM cte ct 
inner join daljeet.Trn_LinkCategoryItem li on li.SubCategoryId = ct.CategoryId 
inner join Mst_Item i on i.ItemStockCode = li.ItemStockCode
inner join mst_Brand brnd on brnd.brandid = i.brandid
inner join Lot_mst_stock lmstock on lmstock.ItemStockCode = i.ItemStockCode

END


GO
/****** Object:  StoredProcedure [dbo].[GetitembyBrandId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetitembyBrandId] 
	@BrandId varchar(50)
	AS
BEGIN
select distinct itm.name, itm.*,brnd.BrandName,lmstock.StockInHand 
, li.SubCategoryId as CategoryId,cat.CategoryName
from Mst_Item itm

inner join mst_Brand brnd on brnd.brandid = itm.brandid  
inner join Lot_mst_stock lmstock on lmstock.ItemStockCode = itm.ItemStockCode  
inner join daljeet.Trn_LinkCategoryItem li on li.ItemStockCode = itm.ItemStockCode and li.SubCategoryId not in (158,157,161,162,163,164)   
inner join Mst_Inv_Category cat on cat.CategoryId=li.SubCategoryId

where brnd.brandid=@BrandId

END

GO
/****** Object:  StoredProcedure [dbo].[Getitembycategory]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Getitembycategory]     
 @categoryid varchar(50)    
 AS    
BEGIN    
WITH cte AS(    
    SELECT  coa.*    
    FROM    Mst_Inv_Category as coa    
        WHERE   coa.CategoryId =@categoryid
        UNION ALL    
        SELECT  t.*    
    FROM    Mst_Inv_Category t INNER JOIN    
                cte x ON t.IsParentId = x.CategoryId)    
    
SELECT distinct i.*,ct.*,brnd.BrandName ,lmstock.StockInHand FROM cte ct     
inner join daljeet.Trn_LinkCategoryItem li on li.SubCategoryId = ct.CategoryId  and li.SubCategoryId != 158       
inner join Mst_Item i on i.ItemStockCode = li.ItemStockCode    
inner join mst_Brand brnd on brnd.brandid = i.brandid    
inner join Lot_mst_stock lmstock on lmstock.ItemStockCode = i.ItemStockCode    
    
END    
GO
/****** Object:  StoredProcedure [dbo].[GetlistofCategory]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Getlistofproducts]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetMenu]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetOrderNumber]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetOrderNumber]

(@TransectionId varchar(100),
@Retrun varchar(100) out
)
as
begin

set @Retrun=( 
select top(1) ShopHistoryId from Trn_Shop_History where TransectionId=@TransectionId  order by  ShopHistoryId desc
)end

GO
/****** Object:  StoredProcedure [dbo].[GetRelatedItemByItemStockCode]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRelatedItemByItemStockCode]     
 @ItemStockcode varchar(50)  
 AS    
BEGIN    
select i.* ,brnd.BrandName,lmstock.StockInHand  
 FROM mst_item i
 inner join mst_brand brnd on brnd.brandid=i.brandid
  inner join Lot_mst_stock lmstock on lmstock.ItemStockCode = i.ItemStockCode
     

 WHERE i.Itemstockcode in (SELECT replace(ir.RelatedItemstockcode,' ','') 
                FROM daljeet.Trn_Item_RelatedItems ir
               WHERE  ir.itemstockcode=@ItemStockcode)

END 
GO
/****** Object:  StoredProcedure [dbo].[Insert_selectedAccessories]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_selectedRelatedItems]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_selectedRelatedItems](  
@ItemStockCode varchar(50),  
@ItemStockCodeaccessories varchar(50)  
)as      
begin    
   insert into daljeet.Trn_Item_RelatedItems (ItemStockCode,RelatedItemStockCode)
     values(@ItemStockCode,@ItemStockCodeaccessories)  
        end  
  
GO
/****** Object:  StoredProcedure [dbo].[loginFirstDetial_Insert]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[loginFirstDetial_Insert] 
	@Name varchar(100),
	@Phone varchar(50),
	@Email varchar(100),
	@Password varchar(50),	 
	@Return varchar(100) = NULL out

AS
BEGIN
	if exists (select name from Mst_Customer where Name = @Name and PhoneNumber = @Phone)
begin

    set @Return = 'Customer already exist.'
end
else
begin	
    insert into Mst_Customer(Name,PhoneNumber,Email,Password) 
values ( @Name,@Phone,@Email,@Password)
if @@ROWCOUNT != 0
    begin
    set @Return = 'Success'
    end
    else
    begin
    set @Return = 'Error in insert'
    end
end
end


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllItemStockCode]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetBrandData]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetBrandData]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

select * from Mst_Brand

END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetItemByCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetItemByCategoryId]
@CategoryId varchar(100)
as
begin

SELECT        dbo.Mst_Item.ItemId, dbo.Mst_Item.MetaDescription, dbo.Mst_Item.SearchKeyword, dbo.Mst_Item.Active, dbo.Mst_Item.VAT, dbo.Mst_Item.ItemMainImageUrl2, dbo.Mst_Item.ItemMainImageUrl1, 
                         dbo.Mst_Item.ItemMainImageUrl, dbo.Mst_Item.Price, dbo.Mst_Item.ItemImage2, dbo.Mst_Item.ItemImage1, dbo.Mst_Item.ItemMainImage, dbo.Mst_Item.Description, dbo.Mst_Item.ItemStockCode, dbo.Mst_Item.SKU, 
                         dbo.Mst_Item.ASIN, dbo.Mst_Item.BrandId, dbo.Mst_Item.SubCategoryId, dbo.Mst_Item.Name, dbo.Mst_Item.Title, dbo.Mst_Brand.BrandName, dbo.Lot_Mst_Stock.StockInHand, dbo.Mst_Item.ItemMainImageUrl3, 
                         dbo.Mst_Item.ItemImage3, dbo.Mst_Item.ItemMainImageUrl4, dbo.Mst_Item.ItemImage4, dbo.Mst_Item.ItemMainImageUrl5, dbo.Mst_Item.ItemImage5, dbo.Mst_Inv_Category.CategoryName, dbo.Mst_Inv_Category.IsParentId, 
                         dbo.Mst_Inv_Category.CategoryId
FROM            dbo.Mst_Inv_Category INNER JOIN
                         daljeet.Trn_LinkCategoryItem ON dbo.Mst_Inv_Category.CategoryId = daljeet.Trn_LinkCategoryItem.SubCategoryId INNER JOIN
                         dbo.Mst_Item INNER JOIN
                         dbo.Lot_Mst_Stock ON dbo.Mst_Item.ItemId = dbo.Lot_Mst_Stock.Id INNER JOIN
                         dbo.Mst_Brand ON dbo.Mst_Item.BrandId = dbo.Mst_Brand.BrandId ON daljeet.Trn_LinkCategoryItem.ItemStockCode = dbo.Mst_Item.ItemStockCode
						 where dbo.Mst_Inv_Category.CategoryId=@CategoryId

						 end


GO
/****** Object:  StoredProcedure [dbo].[sp_GetItemGridData]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateItemData]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_InsertUpdateItemData]        
        
@title varchar(100),
@name varchar(500),@BrandId varchar(100),
@ItemStockCode varchar(100),@Description varchar(max) ,    
--@ItemMainImage varchar(500)  ,@ItemImage1 varchar(500) ,@ItemImage2 varchar(500) ,    
@Price varchar(100) ,    
--@ItemMainImageUrl varchar(1000),@ItemMainImageUrl1 varchar(1000), @ItemMainImageUrl2 varchar(1000),    
@StockInHand varchar(100),@VAT varchar(50),
@SearchKeyword varchar(500)=null,@MetaDescription varchar(500)=null ,
@Active int       
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateBrandImage]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- alter date: <alter Date,,>  
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemData]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateItemData]    
@title varchar(100),@name varchar(500),@BrandId varchar(100),@ItemStockCode varchar(100),@Description varchar(max) ,@Price varchar(100)    
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData1]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData2]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData3]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData4]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData5]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateItemImageData6]    Script Date: 11/22/2018 12:00:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SubCategory_Find]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- Author:  <Author,,Name>    
-- alter date: <alter Date,,>    
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
/****** Object:  StoredProcedure [dbo].[SubCategory_Find1]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
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
/****** Object:  StoredProcedure [dbo].[SubCategory_FindbasedonCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- Author:  <Author,,Name>    
-- alter date: <alter Date,,>    
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
/****** Object:  StoredProcedure [dbo].[SubCategory_Insert]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- alter date: <alter Date,,>  
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
/****** Object:  StoredProcedure [dbo].[SubCategory_Update]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- alter date: <alter Date,,>  
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
/****** Object:  StoredProcedure [dbo].[UpdateItemwithCategoryId]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateItemwithCategoryId](  
@ItemStockCode varchar(50),  
@CategoryId varchar (50))  
as  
begin  
  
Insert into daljeet.Trn_LinkCategoryItem (ItemStockCode,SubCategoryId)values(@ItemStockCode,@CategoryId)  
  
end


GO
/****** Object:  StoredProcedure [dbo].[UpdateStockHistory]    Script Date: 11/22/2018 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateStockHistory](
@EmailAddress  as varchar(100)=NULL,@TransectionId as varchar(500),@CustId as varchar(100),@ItemID as varchar(100)=NULL,@ItemName as varchar(100),@Price as varchar(100),@Quantity as int,@Date as datetime,@ItemType as varchar(100)=NULL,
@SKU varchar(50))
AS
begin
INSERT INTO Trn_Shop_History ([TransectionId],[CustId],[ItemID],[ItemName],[Price],[Quantity],[Date],[EmailAddress],[ItemType]) VALUES 
(@TransectionId,@CustId,@ItemID,@ItemName,@Price,@Quantity,@Date,@EmailAddress,@ItemType)


update Lot_Mst_Stock set StockInHand = StockInHand-@Quantity where ItemStockCode=@SKU


end


GO
