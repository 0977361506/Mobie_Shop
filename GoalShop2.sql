USE [GoalShopV2]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](20) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Authorize_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Role_id] [varchar](10) NULL,
 CONSTRAINT [PK_Authorize] PRIMARY KEY CLUSTERED 
(
	[Authorize_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[Banner_id] [int] NULL,
	[Image] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_id] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Comment_Content] [nvarchar](max) NULL,
	[Comment_Date] [datetime] NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Favorite_id] [int] IDENTITY(1,1) NOT NULL,
	[Favorite_date] [date] NOT NULL,
	[Product_id] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Favorite_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetail_id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NULL,
	[Product_id] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[Phone] [char](11) NULL,
	[Description] [nvarchar](50) NULL,
	[Intent] [nvarchar](50) NULL,
	[Method] [nvarchar](50) NULL,
	[Currency] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[money_give] [float] NULL,
	[money_send] [float] NULL,
	[voucher_price] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Post_id] [int] IDENTITY(1,1) NOT NULL,
	[Post_Name] [nvarchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Post_date] [datetime] NULL,
	[Post_conten] [nvarchar](max) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](max) NULL,
	[Image2] [varchar](max) NULL,
	[Image3] [varchar](max) NULL,
	[Image4] [varchar](max) NULL,
	[Image5] [varchar](max) NULL,
	[Image6] [varchar](max) NULL,
	[Name] [nvarchar](50) NULL,
	[Image7] [varchar](max) NULL,
	[Unit_price] [float] NULL,
	[Quantity] [int] NULL,
	[Product_date] [date] NULL,
	[Category_id] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Distcount] [float] NULL,
	[Special] [bit] NULL,
	[Lastest] [bit] NULL,
	[Status] [bit] NULL,
	[Detail] [nvarchar](max) NULL,
	[Trademark_id] [int] NOT NULL,
	[Chip] [nvarchar](50) NULL,
	[Ram] [nvarchar](50) NULL,
	[Rom] [nvarchar](50) NULL,
	[Resolution] [nvarchar](50) NULL,
	[Pin] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Role_id] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trademarks]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trademarks](
	[Trademark_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Trademarks] PRIMARY KEY CLUSTERED 
(
	[Trademark_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[Vote_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_id] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Vote_Date] [datetime] NULL,
	[Vote] [int] NULL,
	[Image] [varchar](50) NULL,
	[Vote_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Votes] PRIMARY KEY CLUSTERED 
(
	[Vote_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_details]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_details](
	[Voucher_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[Voucher_id] [int] NULL,
	[Order_id] [int] NULL,
 CONSTRAINT [PK_VoucherDetails] PRIMARY KEY CLUSTERED 
(
	[Voucher_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 11/5/2023 10:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[Voucher_name] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Voucher_price] [float] NULL,
	[Voucher_content] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Username] [varchar](50) NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[Voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'0988765456_cffc4429-40ab-42c1-b804-dcef8d923ebe', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'100603914179899890743', N'MbBnDUmZxO', N'Phước Ninh', N'ninhphuoc203@gmail.com', N'avata.jpg', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'103544047197263499734', N'n8W5mawPci', N'Ninh Van Phuoc', N'phuocnvps13274@fpt.edu.vn', N'canbo.png', N'', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'105961964870291140656', N'3eI2XBxMCA', N'Phuoc Ninh', N'ninhvanphuoc203@gmail.com', N'avata.jpg', N'', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'108684515685476370216', N'hoHws9zD7N', N'phước Ninh', N'dtcunat@gmail.com', N'avata.jpg', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'admin', N'123456', N'ninh văn phước', N'dtcunat@gmail.com', N'canbo.png', N'0123456789', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'admin123', N'123', N'nguyễn văn a', N'Ninhvanphuoc203@gmail.com', N'canbo.png', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'anh hi?u', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anh hi?u d?p trai', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'anh hi?u_a256a3d7-d2db-4e9f-89c0-0fed4cf73099', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anh hi?u_b487928e-22b0-416c-aa88-49eb91ac5391', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'anh hi?u_dd52ba78-3a22-4617-8be3-4a77fe2f5531', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous', NULL, N'0988678989_983266a9-2c7e-4c33-82c6-65ded76cc377', NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_2e607344-1f00-4b94-94d3-5df055a19a54', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_2ec4525c-1eab-4dd0-bf75-757b647edc73', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_34d6a796-0b8e-407b-8399-cb77cfc7d2e4', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_4da4aa54-5a59-4434-b77a-af4336182446', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_58d2ee70-5b73-4e4a-9f7e-6abd35987328', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_69358dc9-9184-49e6-9073-07c1d4eb1149', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_716a3187-e370-4be2-a1f9-faf34ba690c7', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_82f7267a-8f23-4af6-9547-aca3efb23150', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_a9d30c74-415e-4f3b-8731-9a337831134c', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_ba33a115-9c37-4f70-b057-62ac3940c689', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_c26b6ffa-325f-4744-892b-6342f3c4a85f', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Anonymous_fbd55e3d-ef14-48db-914f-35c0dd12a1ac', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'ninhphuoc', N'123', N'nguyễn văn b', N'Ninhvanphuoc203@gmail.com', N'canbo.png', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc', N'123', N'nguyễn văn c', N'dtcunat@gmail.com', N'canbo.png', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'Phuoc Ninh', N'tJcWWoEFAD', N'Phuoc Ninh', N'ninhvanphuoc203@gmail.com', N'canbo.png', N'', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc123', N'123', N'nguyễn văn d', N'ninhphuoc@gmail.com', N'canbo.png', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc1234', N'123', N'nguyễn văn e', N'ninhphuoc@gmail.com', N'canbo.png', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc12346', N'123', N'ninh van phuoc', N'ninhphuoc@gmail.com', N'canbo.png', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc1234622', N'123', N'ninh van phuoc', N'ninhphuoc@gmail.com', N'canbo.png', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc203', N'123', N'ninh van phuoc', N'Ninhvanphuoc203@gmail.com', N'canbo.png', N'0398053865', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'phuoc2031', N'123', N'ninh van phuoc', N'Ninhvanphuoc203@gmail.com', N'canbo.png', N'0398053865', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'tam', N'123', N'Nguyen minh tam', N'Ninhvanphuoc203@gmail.com', N'', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'test_04', N'123', N'ninh van phuoc', N'Ninhvanphuoc203@gmail.com', N'avata.jpg', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'test_05', N'123', N'ninh van phuoc', N'Ninhvanphuoc203@gmail.com', N'avata.jpg', N'0398053865', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'test_07', N'123', N'ninh van phuoc', N'dtcunat@gmail.com', N'avata.jpg', N'0398053865', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Active]) VALUES (N'test_08', N'123', N'ninh van phuoc', N'dtcunat@gmail.com', N'avata.jpg', N'0398053865', 1)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (1, N'admin', N'DIRE')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (14, N'ninhphuoc', N'STAF')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (20, N'admin', N'STAF')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (21, N'admin', N'CUST')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (22, N'admin', N'STAF')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (23, N'admin', N'CUST')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (25, N'103544047197263499734', N'DIRE')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (26, N'100603914179899890743', N'CUST')
INSERT [dbo].[Authorities] ([Authorize_id], [Username], [Role_id]) VALUES (27, N'100603914179899890743', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (1, N'Chuột', N'Chuột')
INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (2, N'Bàn phím', N'Bàn phím')
INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (3, N'Máy tính', N'1231213')
INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (4, N'Phụ Kiện', N'')
INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (14, N'Máy ảnh', N'adsdadasd')
INSERT [dbo].[Categories] ([Category_id], [Name], [Detail]) VALUES (17, N'Sách', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (6, 1, N'phuoc', N'fsddfsdfs', CAST(N'2021-11-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (8, 38, N'phuoc', N'fgf', CAST(N'2021-11-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (16, 1, N'phuoc', N'dsfd', CAST(N'2021-11-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (17, 24, N'ninhphuoc', N'sản phẩm đẹp thế', CAST(N'2021-11-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (21, 42, N'phuoc', N'alo', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (23, 42, N'phuoc', N'a', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (26, 2, N'ninhphuoc', N'Sản phẩm này đẹp quá', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (27, 2, N'ninhphuoc', N'Chất lượng tốt', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (29, 24, N'phuoc', N'Bình luận', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (30, 25, N'admin', N'bINHF LUAN', CAST(N'2021-11-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (32, 1, N'phuoc', N'dfdfd', CAST(N'2021-11-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (33, 1, N'phuoc', N'das', CAST(N'2021-11-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (37, 1, N'105961964870291140656', N'dasda', CAST(N'2021-12-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (44, 2, N'phuoc', N'Sản phầm này có tốt không', CAST(N'2021-12-08T19:42:15.643' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (45, 1, N'108684515685476370216', N'ALO', CAST(N'2021-12-08T19:48:26.707' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (47, 1, N'100603914179899890743', N'sad', CAST(N'2021-12-08T20:30:33.587' AS DateTime), NULL)
INSERT [dbo].[Comments] ([Comment_id], [Product_id], [Username], [Comment_Content], [Comment_Date], [Image]) VALUES (52, 11, N'admin', N'dit me quyet', CAST(N'2022-03-05T18:44:28.490' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (13, CAST(N'2021-11-27' AS Date), 24, N'phuoc')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (14, CAST(N'2021-11-27' AS Date), 25, N'admin')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (15, CAST(N'2021-11-29' AS Date), 3, N'admin')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (17, CAST(N'2021-12-06' AS Date), 1, N'103544047197263499734')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (19, CAST(N'2021-12-08' AS Date), 2, N'phuoc')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (20, CAST(N'2021-12-08' AS Date), 1, N'108684515685476370216')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (25, CAST(N'2021-12-19' AS Date), 24, N'admin')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (28, CAST(N'2021-12-19' AS Date), 11, N'admin')
INSERT [dbo].[Favorites] ([Favorite_id], [Favorite_date], [Product_id], [Username]) VALUES (32, CAST(N'2022-02-07' AS Date), 1, N'admin')
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (248, 98, 2, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (249, 99, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (250, 100, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (251, 101, 2, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (252, 101, 3, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (253, 102, 7, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (254, 102, 33, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (255, 102, 34, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (256, 103, 43, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (257, 103, 44, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (258, 104, 10, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (259, 104, 62, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (260, 104, 63, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (261, 105, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (262, 105, 2, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (263, 105, 3, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (264, 106, 3, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (265, 106, 2, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (266, 106, 82, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (267, 107, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (268, 108, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (269, 109, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (270, 110, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (271, 111, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (272, 111, 50, 2490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (273, 112, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (274, 112, 50, 2490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (275, 112, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (276, 113, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (277, 113, 50, 2490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (278, 113, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (279, 114, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (280, 115, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (281, 116, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (282, 117, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (283, 118, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (284, 118, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (285, 119, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (286, 120, 84, 44490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (287, 120, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (288, 121, 84, 44490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (289, 121, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (290, 122, 18, 10490000, 11)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (291, 123, 18, 10490000, 11)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (292, 124, 18, 10490000, 11)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (293, 125, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (294, 126, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (295, 128, 2, 24490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (296, 129, 2, 24490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (297, 130, 3, 23490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (298, 130, 2, 24490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (299, 131, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (300, 131, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (301, 131, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (302, 132, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (303, 132, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (304, 132, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (305, 133, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (306, 133, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (307, 133, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (308, 134, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (309, 134, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (310, 134, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (311, 135, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (312, 135, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (313, 135, 3, 23490000, 3)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (314, 137, 1, 34490000, 3)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (315, 137, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (316, 137, 3, 23490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (317, 140, 12, 13490000, 3)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (318, 140, 18, 10490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (319, 140, 24, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (320, 140, 25, 4490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (321, 141, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (322, 141, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (323, 141, 9, 37490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (324, 141, 43, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (325, 142, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (326, 142, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (327, 143, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (328, 143, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (329, 144, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (330, 144, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (331, 145, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (332, 146, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (333, 147, 12, 13490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (334, 147, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (335, 148, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (336, 149, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (337, 150, 25, 4490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (338, 151, 12, 13490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (339, 152, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (340, 153, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (341, 154, 1, 34490000, 3)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (342, 154, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (343, 154, 43, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (344, 155, 28, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (345, 156, 28, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (346, 156, 18, 10490000, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (347, 157, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (348, 157, 9, 37490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (349, 158, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (350, 158, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (351, 159, 11, 28490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (352, 160, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (353, 161, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (354, 162, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (355, 163, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (356, 164, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (357, 165, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (358, 166, 3, 23490000, 3)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (359, 167, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (360, 167, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (361, 167, 64, 6490000, 4)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (362, 167, 24, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (363, 168, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (364, 171, 1, 34490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (365, 172, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (366, 173, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (367, 174, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (368, 174, 11, 28490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (369, 174, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (370, 175, 45, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (371, 175, 49, 11490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (372, 175, 43, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (373, 176, 9, 37490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (374, 177, 43, 9490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (375, 177, 40, 6490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (376, 178, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (377, 178, 12, 13490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (378, 179, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (379, 179, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (380, 179, 3, 23490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (381, 179, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (382, 179, 7, 35490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (383, 180, 9, 37490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (384, 180, 12, 13490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (385, 181, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (386, 181, 1, 34490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (387, 181, 2, 24490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (388, 181, 7, 35490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (389, 182, 9, 37490000, 2)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (390, 182, 11, 28490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (391, 182, 31, 5490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (392, 183, 27, 6490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (393, 183, 9, 37490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (394, 184, 6, 25490000, 1)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (1321, 1177, 1, 34490000, 40)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (1322, 1178, 2, 24490000, 40)
INSERT [dbo].[OrderDetails] ([OrderDetail_id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (1323, 1179, 9, 37490000, 45)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (98, N'admin', CAST(N'2021-12-07T20:52:56.293' AS DateTime), N'SDSD', 0, N'0398053865 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 33110400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (99, N'admin', CAST(N'2021-12-07T20:59:00.000' AS DateTime), N'DFSFD', 3, N'45345      ', N'Đã thanh toán', N'sale', N'trả sau', N'USD', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (100, N'admin', CAST(N'2021-12-07T21:44:41.900' AS DateTime), N'ÈWE', 0, N'45645      ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (101, N'ninhphuoc', CAST(N'2021-12-07T21:55:58.883' AS DateTime), N'tân hà', 0, N'0398053865 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 65875900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (102, N'ninhphuoc', CAST(N'2021-12-07T21:56:57.130' AS DateTime), N'tân hà', 4, N'45345345   ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 102090400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (103, N'phuoc', CAST(N'2021-12-07T21:57:38.177' AS DateTime), N'ssdasd', 0, N'453453     ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 68980000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (104, N'105961964870291140656', CAST(N'2021-12-07T21:58:00.000' AS DateTime), N'rưerw', 3, N'324234     ', N'Đã thanh toán', N'Sale', N'Trả sau', N'VND', 100710800, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (105, N'phuoc', CAST(N'2021-12-08T19:44:36.740' AS DateTime), N'Tân hà - Lâm Hà -lâm đồng', 0, N'0398053865 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 98641400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (106, N'phuoc', CAST(N'2021-12-08T19:45:58.823' AS DateTime), N'tân hà', 0, N'03980539865', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 100365900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (107, N'108684515685476370216', CAST(N'2021-12-08T19:48:00.000' AS DateTime), N'TÂN HÀ', 3, N'031231231  ', N'Đã thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (108, N'admin', CAST(N'2021-12-08T20:15:00.000' AS DateTime), N'taan ha', 3, N'0398053865 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 65531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (109, N'100603914179899890743', CAST(N'2021-12-08T20:30:48.067' AS DateTime), N'tan ga', 0, N'45342323123', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 65531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (110, N'admin', CAST(N'2021-12-17T20:11:37.333' AS DateTime), N'dasda', 4, N'0342342345 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (111, N'phuoc', CAST(N'2021-12-20T15:54:26.073' AS DateTime), N'asfdas', 0, N'0342342342 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 35255500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (112, N'phuoc', CAST(N'2021-12-20T15:55:31.947' AS DateTime), N'asdasd', 0, NULL, N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 58765900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (113, N'phuoc', CAST(N'2021-12-20T15:55:31.947' AS DateTime), N'asdasd', 4, N'0232323232 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 58765900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (114, N'admin', CAST(N'2021-12-20T16:01:39.037' AS DateTime), N'ÁDASD', 0, NULL, N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 23510400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (115, N'admin', CAST(N'2021-12-20T16:01:00.000' AS DateTime), N'ÁDASD', 2, N'0324234233 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 23510400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (116, N'admin', CAST(N'2021-12-20T16:03:00.000' AS DateTime), N'TAN HA', 1, N'0398053865 ', N'Đang xác nhận thanh toán', N'sale', N'Paypal', N'USD', 23510400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (117, N'admin', CAST(N'2021-12-20T16:08:23.047' AS DateTime), N'645W', 4, N'45345      ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (118, N'admin', CAST(N'2021-12-21T19:24:00.000' AS DateTime), N'eqweq', 3, N'0398053865 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 45825900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (119, N'phuoc', CAST(N'2021-12-22T08:08:00.000' AS DateTime), N'Hồ chí minh', 2, N'0398053865 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 65531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (120, N'admin', CAST(N'2022-04-02T17:16:18.723' AS DateTime), N'asdasd', 0, N'0326132124 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 77255500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (121, N'admin', CAST(N'2022-04-02T19:59:41.790' AS DateTime), N'ád', 0, N'0326132126 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 77255500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (122, N'admin', CAST(N'2023-10-28T16:37:07.397' AS DateTime), N'', 0, N'           ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 115390000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (123, N'admin', CAST(N'2023-10-28T16:37:07.397' AS DateTime), N'df', 0, NULL, N'Đã thanh toán', N'sale', N'Paypal', N'USD', 115390000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (124, N'admin', CAST(N'2023-10-28T16:37:07.397' AS DateTime), N'df', 0, N'0977361506 ', N'Đã thanh toán', N'sale', N'Paypal', N'USD', 115390000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (125, N'admin', CAST(N'2023-10-30T22:01:59.547' AS DateTime), N'số 5 phạm hùng', 0, N'098872624  ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (126, N'admin', CAST(N'2023-10-30T22:03:32.270' AS DateTime), N'092349324', 0, N'092349324  ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (128, N'admin', CAST(N'2023-10-30T22:18:08.117' AS DateTime), N'số 5 phạm hùng', 0, N'097736q193 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 47020800, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (129, N'admin', CAST(N'2023-10-30T22:27:50.580' AS DateTime), N'số 5 phạm hùng', 0, N'098773632  ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 47020800, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (130, N'admin', CAST(N'2023-10-30T22:44:57.817' AS DateTime), N'soos 5 phamj hungf', 0, N'0988736134 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 91651800, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (131, N'admin', CAST(N'2023-10-30T23:05:21.313' AS DateTime), N'só 5 phạm hùng', 0, N'0988765345 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 78591400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (132, N'admin', CAST(N'2023-10-30T23:07:29.793' AS DateTime), N'ngõ 6 nguyễn văn trỗi', 0, N'0988736241 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 78591400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (133, N'admin', CAST(N'2023-10-30T23:20:57.320' AS DateTime), N'Nguyễn văn trỗi mỗ lao hà đông', 0, N'0988765678 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 78591400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (134, N'admin', CAST(N'2023-10-30T23:24:48.450' AS DateTime), N'dddddđ', 0, N'0988361596 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 111356900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (135, N'admin', CAST(N'2023-10-30T23:26:46.630' AS DateTime), N'0977463596', 0, N'0977463596 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 123222400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (136, N'admin', CAST(N'2023-10-30T23:26:46.630' AS DateTime), N'0977463596', 0, N'0977463596 ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 123222400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (137, N'admin', CAST(N'2023-10-30T23:33:18.143' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 144122400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (140, N'Anonymous', CAST(N'2023-10-31T17:18:23.127' AS DateTime), N'Số 5 phạm hung', 0, N'0386850101 ', N'Đơn hàng của tôi', N'Sale', N'Trả sau', N'VND', 130047500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (141, N'Anh hi?u d?p trai', CAST(N'2023-10-31T18:02:57.557' AS DateTime), N'0977361506', 0, N'0977361506 ', N'', N'Sale', N'Trả sau', N'VND', 100631600, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (142, N'anh hi?u', CAST(N'2023-10-31T18:11:14.620' AS DateTime), N'0977361506', 0, N'0977361506 ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (143, N'anh hi?u_dd52ba78-3a22-4617-8be3-4a77fe2f5531', CAST(N'2023-10-31T18:11:14.620' AS DateTime), N'0977361506', 0, N'0977361506 ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (144, N'anh hi?u_a256a3d7-d2db-4e9f-89c0-0fed4cf73099', CAST(N'2023-10-31T18:11:14.620' AS DateTime), N'0977361506', 0, N'0977361506 ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (145, N'0988765456_cffc4429-40ab-42c1-b804-dcef8d923ebe', CAST(N'2023-10-31T18:19:25.807' AS DateTime), N'0988765456', 0, N'0988765456 ', N'Lê hiếu', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (146, N'Anonymous_ba33a115-9c37-4f70-b057-62ac3940c689', CAST(N'2023-10-31T18:21:01.570' AS DateTime), N'', 0, N'0988765678 ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (147, N'Anonymous_c26b6ffa-325f-4744-892b-6342f3c4a85f', CAST(N'2023-10-31T18:21:46.767' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (148, N'Anonymous_69358dc9-9184-49e6-9073-07c1d4eb1149', CAST(N'2023-10-31T18:23:08.203' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (149, N'Anonymous_82f7267a-8f23-4af6-9547-aca3efb23150', CAST(N'2023-10-31T18:25:02.747' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (150, N'Anonymous_58d2ee70-5b73-4e4a-9f7e-6abd35987328', CAST(N'2023-10-31T18:26:16.913' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (151, N'Anonymous_4da4aa54-5a59-4434-b77a-af4336182446', CAST(N'2023-10-31T18:30:19.417' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (152, N'Anonymous_a9d30c74-415e-4f3b-8731-9a337831134c', CAST(N'2023-10-31T18:53:55.877' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (153, N'Anonymous_34d6a796-0b8e-407b-8399-cb77cfc7d2e4', CAST(N'2023-10-31T22:33:19.503' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (154, N'Anh hi?u_b487928e-22b0-416c-aa88-49eb91ac5391', CAST(N'2023-10-31T22:43:01.187' AS DateTime), N'số 6 pham hùng', 0, N'0988765456 ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (155, N'Anonymous_716a3187-e370-4be2-a1f9-faf34ba690c7', CAST(N'2023-10-31T22:43:01.187' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (156, N'Anonymous_fbd55e3d-ef14-48db-914f-35c0dd12a1ac', CAST(N'2023-10-31T22:43:01.187' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 0, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (157, N'Anonymous_2ec4525c-1eab-4dd0-bf75-757b647edc73', CAST(N'2023-10-31T22:49:03.553' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 67631200, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (158, N'Anonymous_2e607344-1f00-4b94-94d3-5df055a19a54', CAST(N'2023-10-31T22:49:03.553' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 56275900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (159, N'admin', CAST(N'2023-11-01T01:12:52.847' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 25925900, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (160, N'admin', CAST(N'2023-11-01T01:16:15.670' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (161, N'admin', CAST(N'2023-11-01T01:17:39.073' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (162, N'admin', CAST(N'2023-11-01T01:22:12.073' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 32765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (163, N'admin', CAST(N'2023-11-01T02:10:10.493' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 3510400, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (164, N'admin', CAST(N'2023-11-01T22:49:41.220' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 22765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (165, N'admin', CAST(N'2023-11-01T22:49:41.220' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 22765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (166, N'Anonymous', CAST(N'2023-11-01T23:06:57.063' AS DateTime), N'0988361506', 0, N'0988361506 ', N'', N'Sale', N'Trả sau', N'VND', 66946500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (167, N'Anonymous', CAST(N'2023-11-02T06:40:39.053' AS DateTime), N'số 5 nguyễn văn trỗi', 0, N'0977475697 ', N'', N'Sale', N'Trả sau', N'VND', 115346300, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (168, N'admin', CAST(N'2023-11-02T06:52:45.610' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 55531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (169, N'admin', CAST(N'2023-11-02T06:54:30.413' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 55531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (170, N'admin', CAST(N'2023-11-02T06:54:30.413' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 55531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (171, N'admin', CAST(N'2023-11-02T06:54:30.413' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 55531000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (172, N'admin', CAST(N'2023-11-02T07:07:07.467' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 22765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (173, N'admin', CAST(N'2023-11-02T18:56:02.767' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 22765500, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (174, N'admin', CAST(N'2023-11-02T18:56:47.980' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 72397100, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (175, N'Anonymous', CAST(N'2023-11-02T18:56:59.260' AS DateTime), N'số 6 phạm hùng', 0, N'0988765236 ', N'', N'Sale', N'Trả sau', N'VND', 41960000, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (176, N'Anonymous', CAST(N'2023-11-03T00:06:20.227' AS DateTime), N'Số 5 phạm hùng', 0, N'0977264506 ', N'', N'Sale', N'Trả sau', N'VND', 24865700, 1000000000, 965134300, NULL)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (177, N'Anonymous', CAST(N'2023-11-03T00:25:06.497' AS DateTime), N'0977361506', 0, N'0977361506 ', N'', N'Sale', N'Trả sau', N'VND', 5980000, 3123123123, 3107143123, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (178, N'Anonymous', CAST(N'2023-11-03T00:38:54.787' AS DateTime), N'0977361506', 0, N'0977361506 ', N'0977361506', N'Sale', N'Trả sau', N'VND', 16521200, 40000000, 13478800, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (179, N'Anonymous', CAST(N'2023-11-03T00:52:31.003' AS DateTime), N'số 5 phạm hùng', 0, N'0988765456 ', N'mua hết', N'Sale', N'Trả sau', N'VND', 148683000, 150000000, 1317000, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (180, N'Anonymous', CAST(N'2023-11-03T00:57:51.970' AS DateTime), N'', 0, N'           ', N'', N'Sale', N'Trả sau', N'VND', 37681200, 0, 0, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (181, N'Anonymous', CAST(N'2023-11-03T01:01:47.827' AS DateTime), N'0988371495', 0, N'0988371495 ', N'0988371495', N'Sale', N'Trả sau', N'VND', 104052000, 115000000, 10948000, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (182, N'admin', CAST(N'2023-11-03T01:03:06.023' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 91147300, 0, 0, 0)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (183, N'Anonymous', CAST(N'2023-11-03T22:39:21.680' AS DateTime), N'0997365374', 0, N'0997365374 ', N'0997365374', N'Sale', N'Trả sau', N'VND', 30966300, 40000000, 9033700, 10000000)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (184, N'Anonymous', CAST(N'2023-11-03T22:41:57.987' AS DateTime), N'0988786789', 3, N'0988786789 ', N'0988786789', N'Sale', N'Trả sau', N'VND', 23705700, 988786789, 965081089, 0)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (1177, N'Anonymous', CAST(N'2023-11-05T08:54:05.147' AS DateTime), N'', 3, N'0988678989 ', N'', N'Sale', N'Trả sau', N'VND', 1310620000, 100000000000000, 99997471329500, 0)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (1178, N'Anonymous', CAST(N'2023-11-05T08:55:07.023' AS DateTime), N'', 3, N'0988678989 ', N'', N'Sale', N'Trả sau', N'VND', 940416000, 1000000000000, 999059584000, 0)
INSERT [dbo].[Orders] ([Order_id], [Username], [CreateDate], [Address], [Status], [Phone], [Description], [Intent], [Method], [Currency], [Price], [money_give], [money_send], [voucher_price]) VALUES (1179, N'admin', CAST(N'2023-11-05T09:08:46.097' AS DateTime), N'', 0, N'           ', N'Chưa thanh toán', N'Sale', N'Trả sau', N'VND', 34855700000, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (1, N'Deal ngon cuối tuần: Săn ngay Galaxy A52s 5G giá đẹp ngất ngây kèm trả góp 0%, cơ hội mua sắm cuối năm không thể bỏ lỡ', N'blog3.jpg', N'<h1 style="text-align:center"><span style="font-size:26px"><strong><span style="font-family:Times New Roman,Times,serif">Bài viết test&nbsp;</span></strong></span></h1>

<p>&nbsp;</p>

<p><span style="font-size:26px">Ngày 9/1/2007, cố CEO Apple Steve Jobs đã giới thiệu mẫu iPhone đầu tiên của mình. Kể từ khi xuất hiện, các mẫu iPhone đã mở ra một kỷ nguyên mới cho giới di động. Thiết bị đánh dấu cột mốc cho xu hướng smartphone màn hình cảm ứng và dùng hệ điều hành riêng. Công bằng mà nói, iPhone đóng vai trò quan trọng trong quá trình phát triển của ngành công nghiệp di động trên toàn cầu.</span></p>

<p><span style="font-size:26px">Tuy nhiên, theo nhà phân tích Ming-Chi Kuo, iPhone sẽ biến mất trong 10 năm tới, thay vào đó là kính thực tế tăng cường AR của Apple. Đây không phải lần đầu tiên có dự đoán về tương lai của iPhone. Chính Apple cũng cho thấy hãng ngày càng tập trung hơn trong việc phát triển phần cứng lẫn phần mềm cho AR cùng nhiều dịch vụ khác. Nhận định này của &ldquo;nhà tiên tri&rdquo; Apple cũng khá phù hợp với xu hướng metaverse ngày càng được giới công nghệ đón nhận.</span></p>

<p style="text-align:center"><span style="font-size:26px"><a href="https://cafefcdn.com/203337114487263232/2021/11/29/-163818486353323360302.jpg"><img alt="10 năm nữa, iPhone sẽ biến mất - Ảnh 1." id="img_389738353017954304" src="https://cafefcdn.com/thumb_w/640/203337114487263232/2021/11/29/-163818486353323360302.jpg" title="10 năm nữa, iPhone sẽ biến mất - Ảnh 1." /></a></span></p>

<p><span style="font-size:26px">Từ lâu, đã có nhiều tin đồn về mẫu kính của Apple.</span></p>

<p><span style="font-size:26px">Trang 9to5mac cho rằng, Apple là công ty giá trị nhất thế giới. Vì thế, CEO Tim Cook đã nhận thức được rằng hãng không thể nào phụ thuộc quá nhiều vào 1 thiết bị. Hiện tại, một nửa doanh thu của công ty đến từ iPhone.</span></p>

<p><span style="font-size:26px">&ldquo;Nếu kính AR của Apple được định vị như một sản phẩm dành cho Mac hay iPhone thì sẽ không có lợi đến sự phát triển sản phẩm. Ngược lại, nếu thiết bị hoạt động độc lập đồng nghĩa sẽ có hệ sinh thái riêng và mang đến trải nghiệm người dùng linh hoạt, cần thiết thì sẽ tốt hơn&rdquo;, ông Ming-Chi Kuo chia sẻ.</span></p>

<p><span style="font-size:26px">Ông Ming-Chi Kuo cũng đưa ra nhận định quá trình này là sự thay đổi &ldquo;khổng lồ&rdquo;. Apple buộc phải bán ít nhất 1 tỷ thiết bị AR trong 10 năm tới nếu muốn thay thế vai trò quan trọng của iPhone. Vì hiện tại, đang có 1 tỷ người dùng iPhone trên toàn cầu.</span></p>

<p><span style="font-size:26px">Các nguồn tin rò rỉ cho thấy sau nhiều năm âm thầm phát triển, iGlasses cuối cùng có thể sẽ ra mắt trong một hoặc hai năm tới còn iCar - một loại xe vừa chạy điện vừa tự lái sẽ ra mắt vào năm 2024.</span></p>

<p><span style="font-size:26px">Sự cạnh tranh cũng đang nóng lên trong mảng kinh doanh phần cứng. Ở Mỹ, iPhone vẫn chiếm ưu thế. Tuy nhiên, trên toàn cầu, iPhone phải chịu sự cạnh tranh từ 7 hãng điện thoại thông minh lớn. Đầu năm nay, Xiaomi đã vượt qua Apple để trở thành nhà sản xuất điện thoại thông minh lớn thứ hai thế giới về số lượng.</span></p>

<p><span style="font-size:26px">Việc Apple thâm nhập vào các lĩnh vực mới cũng phải đối mặt với sự cạnh tranh gay gắt. Loa thông minh HomePod không tạo được nhiều khác biệt so với các sản phẩm của Amazon và Google. Kính thực tế ảo phải đối đầu với Facebook&rsquo;s Oculus, Microsoft&rsquo;s HoloLens. Và iCar sẽ đụng độ Tesla trên thị trường.</span></p>

<p><span style="font-size:26px">Đã có nhiều ý kiến đề nghị Tim Cook nên ngừng trở thành người bán hàng xa xỉ. Thay vào đó, Apple nên sử dụng sức mạnh và công nghệ tiên tiến của mình để phát triển các thiết bị và dịch vụ hướng đến thị trường có thu nhập trung bình và thấp, ước chừng 3 tỷ người. Điều này có thể giúp giải quyết bài toán hóc búa về tăng trưởng của Apple trong tương lai.</span></p>
', 1, CAST(N'2021-12-21T19:33:57.970' AS DateTime), N'Deal ngon cuối tuần: Săn ngay Galaxy A52s 5G giá đẹp ngất ngây kèm trả góp 0%, cơ hội mua sắm cuối năm không thể bỏ lỡ')
INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (5, N'Deal ngon cuối tuần: Săn ngay Galaxy A52s 5G giá đẹp ngất ngây kèm trả góp 0%, cơ hội mua sắm cuối năm không thể bỏ lỡ', N'blog02.jpg', N'<p style="text-align:center"><span style="font-size:22px"><img alt="TOP 5 chiếc điện thoại giá rẻ, cấu hình cao" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/ltpgaming6_1280x720-800-resize.png" title="TOP 5 chiếc điện thoại giá rẻ, cấu hình cao" /></span></p>

<h2><span style="font-size:22px">Bạn đang muốn sắm ngay một&nbsp;chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="điện thoại" type="điện thoại">điện thoại</a>&nbsp;cấu hình cao&nbsp;để chiến game cùng anh em&nbsp;nhưng kinh tế của bạn lại không cho phép vì giá thành của các điện thoại này thường khá cao?&nbsp;Đừng lo bạn nhé, vì TOP&nbsp;5 chiếc&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" target="_blank" title="smartphone" type="smartphone">điện thoại&nbsp;</a><a href="https://www.thegioididong.com/tin-tuc/xem-truoc/1366900" target="_blank" title="TOP 5 chiếc điện thoại giá rẻ, cấu hình" type="TOP 5 chiếc điện thoại giá rẻ, cấu hình">giá rẻ cấu hình</a><a href="https://www.thegioididong.com/tin-tuc/xem-truoc/1366900" target="_blank" title="TOP 5 chiếc điện thoại giá rẻ, cấu hình cao" type="TOP 5 chiếc điện thoại giá rẻ, cấu hình cao">&nbsp;cao</a>&nbsp;sau&nbsp;đây sẽ&nbsp;đáp&nbsp;ứng&nbsp;được tốt&nbsp;yêu cầu của bạn về cấu hình cũng như có mức giá vô cùng phải chăng&nbsp;đó nha.</span></h2>

<p><span style="font-size:22px">Bên cạnh đó, cả 5 chiếc điện thoại dưới đây còn đang có chương trình ưu đãi giảm giá dịp sale Black Friday tại&nbsp;<a href="https://www.thegioididong.com/" target="_blank" title="Thế Giới Di Động" type="Thế Giới Di Động">Thế Giới Di&nbsp;Động</a>. Đừng bỏ lỡ nếu&nbsp;bạn muốn có một &quot;em&quot;&nbsp;điện thoại chiến game&nbsp;ngon nghẻ nhé.</span></p>

<p><span style="font-size:22px"><em>*Danh sách&nbsp;được mình sắp xếp theo thứ tự giá tăng dần bạn nha.</em></span></p>

<h3><span style="font-size:22px"><strong>1.&nbsp;Samsung Galaxy A12 6GB (2021)</strong></span></h3>

<p><span style="font-size:22px"><img alt="" src="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" /></span></p>

<p><span style="font-size:22px">Video đánh giá Galaxy A12 thực hiện bởi kênh YouTube Thế Giới Di Động.</span></p>

<p><span style="font-size:22px">Nhà&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="SamSung" type="SamSung">SamSung</a>&nbsp;cho ra mắt&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a12-6gb-2021" target="_blank" title="Galaxy A12 6GB (2021)" type="Galaxy A12 6GB (2021)">Galaxy A12 6GB (2021)</a>&nbsp;với trang bị&nbsp;bộ vi xử lý&nbsp;Exynos 850 cùng với RAM 6 GB vô cùng mạnh mẽ, giúp bạn có thể thoải mái&nbsp;đa nhiệm hay chiến game trong nhiều giờ liền mà không gặp tình trạng giật lag, vốn là vấn&nbsp;đề rất gây khó chịu khi&nbsp;đang trong trận của các game thủ.</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Samsung Galaxy A12 6GB (2021)" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/samsunggalaxya121-16_1280x720-800-resize.jpg" title="Samsung Galaxy A12 6GB (2021)" /></span></p>

<p><span style="font-size:22px">Ngoài ra chiếc máy còn giúp bạn kéo dài trải nghiệm với viên pin bền bỉ 5.000 mAh cùng sạc nhanh 15 W&nbsp;đến hơn 8 tiếng sử dụng liên tục các nhu cầu chơi game, xem phim, lướt&nbsp;web,...</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Samsung Galaxy A12 6GB (2021)" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/samsunggalaxya121-26_1280x720-800-resize.jpg" title="Samsung Galaxy A12 6GB (2021)" /></span></p>

<p><span style="font-size:22px">Samsung Galaxy A12 6GB (2021)</span></p>

<p><span style="font-size:22px">Galaxy A12 còn&nbsp;có màn hình kích thước lớn 6.5 inch đạt độ phân giải HD+ sẽ cho bạn những khung hình sắc nét, rực rỡ, hỗ trợ&nbsp;trải nghiệm chơi game trên&nbsp;điện thoại của bạn tốt hơn nhờ hiển thị&nbsp;đồ họa chất lượng.</span></p>

<p><span style="font-size:22px">Tấm nền PLS TFT LCD tương tự như IPS của chiếc điện thoại này mang đến&nbsp;cho bạn góc nhìn rộng, cải thiện độ sáng màn hình tốt, tăng tỷ lệ tương phản của hình ảnhgiúp điện thoại thể hiện khung hình có chất lượng ổn, màu sắc&nbsp;ổn&nbsp;định mà không bị gắt màu.</span></p>

<p><span style="font-size:22px">Nếu bạn cần sắm ngay một chiếc&nbsp;điện thoại giá rẻ nhưng hiệu năng&nbsp;đủ tốt&nbsp;để chơi game thì chớ nên bỏ qua chiếc&nbsp;điện thoại này nhé.</span></p>

<ul>
	<li><span style="font-size:22px"><a href="https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-galaxy-a12-1316862" target="_blank" title="Đánh giá Galaxy A12: Pin gần 9 tiếng, đầu tư kĩ về camera" type="Đánh giá Galaxy A12: Pin gần 9 tiếng, đầu tư kĩ về camera">Đánh giá Galaxy A12: Pin gần 9 tiếng, đầu tư kĩ về camera.</a></span></li>
</ul>

<p>&nbsp;</p>

<p style="text-align:center"><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a12-6gb-2021"><img src="https://cdn.tgdd.vn/Products/Images/42/251888/samsung-galaxy-a12-2021-black-600x600.jpg" title="Samsung Galaxy A12 6GB (2021)" /></a></span></p>

<h3><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a12-6gb-2021">Samsung Galaxy A12 6GB (2021)</a></span></h3>

<h6><span style="font-size:22px">Online giá rẻ</span></h6>

<p><span style="font-size:22px"><strong>4.490.000₫</strong>&nbsp;4.690.000₫</span></p>

<p><span style="font-size:22px">Trả góp 0%</span></p>

<p><span style="font-size:22px">Màn hình 6.5&quot;, Chip Exynos 850RAM 6 GB, ROM 128 GBCamera sau: Chính 48 MP &amp; Phụ 5 MP, 2 MP, 2 MPCamera trước: 8 MPPin 5000 mAh, Sạc 15 W</span></p>

<p><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a12-6gb-2021">XEM CHI TIẾT</a></span></p>

<p><span style="font-size:22px">&nbsp;&nbsp;</span></p>

<p>&nbsp;</p>

<h3><span style="font-size:22px"><strong>2.&nbsp;Xiaomi Redmi 9T (6GB/128GB)</strong></span></h3>

<p><span style="font-size:22px"><img alt="" src="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" /></span></p>

<p><span style="font-size:22px">Video đánh giá chi tiết Xiaomi Redmi 9T thực hiện bởi kênh YouTube Thế Giới Di Động</span></p>

<p><span style="font-size:22px">Với thiết kế đẹp mắt và trẻ trung,&nbsp;<a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-9t-6gb" target="_blank" title="Xiaomi Redmi 9T" type="Xiaomi Redmi 9T">Xiaomi Redmi 9T</a>&nbsp;đã không khiến cho người dùng&nbsp;thất vọng khi có được&nbsp;sức mạnh cấu hình&nbsp;từ chip Rồng&nbsp;662 kèm theo 6 GB RAM, chắc chắn sẽ&nbsp;giúp chiếc máy vận hành trơn tru khi mở nhiều ứng dụng cũng như chiếc mượt các tựa game hot&nbsp;như Liên Quân Mobile, PUBG,...&nbsp;ở mức&nbsp;đồ họa trung bình.</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Xiaomi Redmi 9T (6GB/128GB)" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/redmi9tden-8_1280x720-800-resize.jpg" title="Xiaomi Redmi 9T (6GB/128GB)" /></span></p>

<p><span style="font-size:22px">Chiếc điện thoại&nbsp;cũng được trang bị cho viên pin cực trâu 6.000 mAh cùng công nghệ sạc nhanh 18 W, cho bạn thời gian hoạt&nbsp;động trên thiết bị&nbsp;đến tận 2 ngày&nbsp;với thao tác sử dụng cơ bản mà không cần phải sạc pin.</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Xiaomi Redmi 9T (6GB/128GB)" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/redmi9tgame-_2048x1152-800-resize.jpg" title="Xiaomi Redmi 9T (6GB/128GB)" /></span></p>

<p><span style="font-size:22px">Xiaomi Redmi 9T (6GB/128GB)</span></p>

<p><span style="font-size:22px">Sở hữu màn hình IPS LCD&nbsp;kích thước rộng 6.53 inch với độ phân giải&nbsp;Full HD+&nbsp;cho phép Redmi 9T có thể hiển thị nhiều nội dung giải trí với rõ nét, màu sắc tươi tắn hơn cùng góc nhìn rộng, trải nghiệm hình&nbsp;ảnh của bạn sẽ&nbsp;được chất lượng hơn rất nhiều trên chiếc&nbsp;điện thoại này.</span></p>

<p><span style="font-size:22px">Ngoài ra,&nbsp;thiết kế kiểu màn hình giọt nước viền mỏng sẽ giúp&nbsp;tối ưu diện tích màn hình&nbsp;hiển thị, giúp cho việc chơi game, xem phim của bạn thêm sống động và ấn tượng hơn.</span></p>

<p><span style="font-size:22px">&nbsp;Redmi 9T cũng là một cái tên sáng giá&nbsp;để bạn cân nhắc bỏ vào danh mục mua sắm của mình&nbsp;đấy.</span></p>

<ul>
	<li><span style="font-size:22px"><a href="https://www.thegioididong.com/tin-tuc/redmi-9t-smartphone-gia-re-dang-mua-nhat-cho-sinh-vien-1378504" target="_blank" title="Vì sao Redmi 9T chính là smartphone đáng sắm nhất dành cho sinh viên?" type="Vì sao Redmi 9T chính là smartphone đáng sắm nhất dành cho sinh viên?">Vì sao Redmi 9T chính là smartphone đáng sắm nhất dành cho sinh viên?</a></span></li>
</ul>

<p>&nbsp;</p>

<p style="text-align:center"><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-9t-6gb"><img src="https://cdn.tgdd.vn/Products/Images/42/233130/xiaomi-redmi-9t-6gb-110621-080650-600x600.jpg" title="Xiaomi Redmi 9T (6GB/128GB)" /></a></span></p>

<h3><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-9t-6gb">Xiaomi Redmi 9T (6GB/128GB)</a></span></h3>

<p><span style="font-size:22px"><strong>4.990.000₫</strong>Trả góp 0%</span></p>

<p><span style="font-size:22px">Màn hình 6.53&quot;, Chip Snapdragon 662RAM 6 GB, ROM 128 GBCamera sau: Chính 48 MP &amp; Phụ 8 MP, 2 MP, 2 MPCamera trước: 8 MPPin 6000 mAh, Sạc 18 W</span></p>

<p><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-9t-6gb">XEM CHI TIẾT</a></span></p>

<p><span style="font-size:22px">&nbsp;&nbsp;</span></p>

<p>&nbsp;</p>

<h3><span style="font-size:22px"><strong>3. Realme C25s&nbsp;</strong></span></h3>

<p><span style="font-size:22px"><img alt="" src="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" /></span></p>

<p><span style="font-size:22px">Video đánh giá chi tiết Realme C25s&nbsp;thực hiện bởi kênh YouTube Thế Giới Di Động</span></p>

<p><span style="font-size:22px">Tiếp nối sự thành công của thế hệ tiền nhiệm,&nbsp;<a href="https://www.thegioididong.com/dtdd/realme-c25s" target="_blank" title="Realme C25s" type="Realme C25s">Realme C25s</a>&nbsp;đã&nbsp;được cải tiến với một hiệu năng mạnh mẽ hơn&nbsp;khi có sự góp mặt&nbsp;của con chip Helio G85 và bộ nhớ trong 128 GB.</span></p>

<p><span style="font-size:22px">Sức mạnh của chiếc điện thoại này có thể vừa&nbsp;đảm bảo cho bạn một hiệu năng&nbsp;ổn&nbsp;định&nbsp;để chơi các tựa game&nbsp;đình&nbsp;đám hiện nay như&nbsp;Liên Quân, PUBG,... ở mức cấu hình phù hợp, lại vừa&nbsp;có không gian lưu trữ rộng mở, giúp bạn thoải mái&nbsp;lưu ứng dụng và hình ảnh thả ga và cả các bộ phim bạn yêu thích.&nbsp;</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Realme C25s " src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/realmec25scam_1280x720-800-resize.jpg" title="Realme C25s " /></span></p>

<p><span style="font-size:22px">Realme C25s</span></p>

<p><span style="font-size:22px">Ngoài ra, trên máy cũng có viên pin cực khỏe&nbsp;6.000 mAh cho bạn thỏa sức kéo dài trải nghiệm&nbsp;đến 10 tiếng&nbsp;sử dụng liên tục.&nbsp;Củ sạc nhanh 33 W đi kèm cũng sẽ giúp bạn rút ngắn thời gian sạc pin đáng kể mà không cần phải&nbsp;đợi quá lâu.</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Điện thoại Realme C25s " src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/realmec25sden-5_1280x720-800-resize.jpg" title="Điện thoại Realme C25s " /></span></p>

<p><span style="font-size:22px">Realme C25s còn sở hữu&nbsp;công nghệ màn hình IPS LCD kích thước 6.5 inch có độ phân giải HD+, cung cấp cho người dùng&nbsp;góc nhìn rộng rãi, chi tiết ổn, cùng các hỗ trợ giảm lượng ánh sáng phản xạ&nbsp;để màn hình không bị lóa sáng cho bạn trải nghiệm hình&nbsp;ảnh trên&nbsp;điện thoại chất lượng hơn.</span></p>

<p><span style="font-size:22px">Với những hiệu năng hỗ trợ khá tốt như vậy,&nbsp;Realme C25s sẽ là một sự lựa chọn hết&nbsp;ý cho bạn&nbsp;để chiến những trận&nbsp;đấu&nbsp;đỉnh cao cùng bạn bè&nbsp;đấy.</span></p>

<ul>
	<li><span style="font-size:22px"><a href="https://www.thegioididong.com/tin-tuc/realme-c25s--an-tuong-voi-vien-pin-6-000-mah-cau-hinh-on-dinh-1364113" target="_blank" title="Tìm kiếm smartphone pin trâu cấu hình tốt ư? Hãy mua ngay Realme C25s" type="Tìm kiếm smartphone pin trâu cấu hình tốt ư? Hãy mua ngay Realme C25s">Tìm kiếm smartphone pin trâu cấu hình tốt ư? Hãy mua ngay Realme C25s.</a></span></li>
</ul>

<p style="text-align:center"><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/realme-c25s"><img src="https://cdn.tgdd.vn/Products/Images/42/238483/realme-c25s-grey-7-600x600.jpg" title="Realme C25s" /></a></span></p>

<h3><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/realme-c25s">Realme C25s</a></span></h3>

<p><span style="font-size:22px"><strong>4.990.000₫</strong>Trả góp 0%</span></p>

<p><span style="font-size:22px">Màn hình 6.5&quot;, Chip MediaTek Helio G85RAM 4 GB, ROM 128 GBCamera sau: Chính 48 MP &amp; Phụ 2 MP, 2 MPCamera trước: 8 MPPin 6000 mAh, Sạc 18 W</span></p>

<p><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/realme-c25s">XEM CHI TIẾT</a></span></p>

<h3><span style="font-size:22px"><strong>4. Vivo Y51 (2020) (8GB/128GB)</strong></span></h3>

<p><span style="font-size:22px"><img alt="" src="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" /></span></p>

<p><span style="font-size:22px">Video đánh giá chi tiết&nbsp;Vivo Y51 (2020) thực hiện bởi kênh YouTube Thế Giới Di Động</span></p>

<p><span style="font-size:22px">Nhà&nbsp;<a href="https://www.thegioididong.com/dtdd-vivo" target="_blank" title="Vivo " type="Vivo ">Vivo</a>&nbsp;trang bị cho&nbsp;<a href="https://www.thegioididong.com/dtdd/vivo-y51-2020" target="_blank" title="Vivo Y51 (2020)" type="Vivo Y51 (2020)">Vivo Y51 (2020)</a>&nbsp;một cấu hình ổn định khi sử dụng chip &quot;rồng&quot; 662 cùng 8 GB RAM, bảo đảm mang&nbsp;đến cho bạn&nbsp;trải nghiệm&nbsp;chiến game cực máu lửa cùng bạn bè mà không sợ bị giật lag hoặc&nbsp;đứng mất gây mất hứng khi&nbsp;đang trong trận&nbsp;đấu.</span></p>

<p><span style="font-size:22px">Không những thế,&nbsp;Y51 còn được ưu ái cho viên pin trâu 5.000 mAh cho thời lượng sử dụng tẹt ga, đã thế còn có hỗ trợ thêm&nbsp;công nghệ sạc nhanh 18 W.&nbsp;Với dung lượng pin này, bạn có thể sử dụng thoải mái trong vòng một ngày mà không cần phải quá lo lắng về vấn đề sạc pin luôn&nbsp;đó.&nbsp;</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Vivo Y51 (2020)" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/vivoy51mh-_2048x1152-800-resize.jpg" title="Vivo Y51 (2020)" /></span></p>

<p><span style="font-size:22px">Vivo Y51 (2020).</span></p>

<p><span style="font-size:22px">Máy sở hữu thiết kế tràn viền khá mỏng với kích thước lớn lên đến 6.58 inch cùng độ phân giải FULL HD+, đi cùng với tấm nền IPS LCD cho hình ảnh hiển thị tươi sáng và đầy đủ nội dung. Mình đánh giá chơi game trên chiếc điện thoại này&nbsp;khá là thích vì màn hình không bị chói sáng ngay cả khi&nbsp;đang không ngồi trực diện nhờ công nghệ màn hình&nbsp;được tối&nbsp;ưu.</span></p>

<p><span style="font-size:22px">Y51 là chiếc&nbsp;điện thoại&nbsp;đáng&nbsp;để bạn cân nhắc&nbsp;để chọn mua trong mùa sale này vì những hiệu năng khá nổi bật trong tầm giá của nó&nbsp;đó nha.</span></p>

<ul>
	<li><span style="font-size:22px"><a href="https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-vivo-y51-2020-1317825" target="_blank" title="Đánh giá Vivo Y51 (2020)" type="Đánh giá Vivo Y51 (2020)">Đánh giá chi tiết Vivo Y51 (2020): Khoác lên một chiếc áo hào nhoáng</a></span></li>
</ul>

<p>&nbsp;</p>

<p style="text-align:center"><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/vivo-y51-2020"><img src="https://cdn.tgdd.vn/Products/Images/42/228950/vivo-y51-bac-600x600-600x600.jpg" title="Vivo Y51 (2020)" /></a></span></p>

<h3><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/vivo-y51-2020">Vivo Y51 (2020)</a></span></h3>

<p><span style="font-size:22px"><strong>5.990.000₫</strong>&nbsp;6.290.000₫</span></p>

<p><span style="font-size:22px"><img alt="BLACK FRIDAY" src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" style="height:20px; width:20px" />BLACK FRIDAY</span></p>

<p><span style="font-size:22px">&nbsp;Trả góp 0%</span></p>

<p><span style="font-size:22px">Màn hình 6.58&quot;, Chip Snapdragon 662RAM 8 GB, ROM 128 GBCamera sau: Chính 48 MP &amp; Phụ 8 MP, 2 MPCamera trước: 16 MPPin 5000 mAh, Sạc 18 W</span></p>

<p><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/vivo-y51-2020">XEM CHI TIẾT</a></span></p>

<p><span style="font-size:22px">&nbsp;&nbsp;</span></p>

<p>&nbsp;</p>

<h3><span style="font-size:22px"><strong>5. Xiaomi Redmi Note 10 5G (8GB/128GB)</strong></span></h3>

<p><span style="font-size:22px"><img alt="" src="https://www.thegioididong.com/tin-tuc/tim-mua-dien-thoai-cau-hinh-khung-gia-re-nam-2021-1366900" /></span></p>

<p><span style="font-size:22px">Video đánh giá chi tiết&nbsp;Redmi Note 10 5G thực hiện bởi kênh YouTube Thế Giới Di Động</span></p>

<p><span style="font-size:22px">Cấu hình của chiếc&nbsp;<a href="http://www.thegioididong.com/dtdd/xiaomi-redmi-note-10-5g" target="_blank" title="Redmi Note 10 5G" type="Redmi Note 10 5G">Redmi Note 10 5G</a>&nbsp;rất ổn định khi mang trong mình con chip Dimensity 700 đi cùng với 8 GB RAM, mà theo nhà sản xuất công bố thì con chip này được tối ưu dành riêng để&nbsp;chơi game.</span></p>

<p><span style="font-size:22px">Vì vậy, bạn có thể hoàn toàn yên tâm khi trải nghiệm không gian trò chơi cực chiến&nbsp;trên chiếc&nbsp;điện thoại này với một cấu hình chạy khá&nbsp;ổn&nbsp;định và mượt mà bạn nhé.</span></p>

<p><span style="font-size:22px">Ngoài ra viên pin của máy cũng đáng được nhắc đến khi lên đến con số 5.000 mAh và hỗ trợ&nbsp;sạc nhanh 18 W bảo đảm cho bạn 1 trải nghiệm xem phim, chơi game, lướt web,...&nbsp;xuyên suốt lên đến hơn 8 tiếng mà không bị ngắt mạch cảm xúc giữa chừng luôn nè.&nbsp;</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Xiaomi Redmi Note 10 5G chụp ảnh rất tươi" src="https://cdn.tgdd.vn/Files/2021/07/09/1366900/xiaominote105g_1280x720-800-resize.jpg" title="Xiaomi Redmi Note 10 5G chụp ảnh rất tươi" /></span></p>

<p><span style="font-size:22px">Xiaomi Redmi Note 10 5G&nbsp;còn sở hữu tấm nền IPS LCD &quot;quốc dân&quot; thường thấy ở phân khúc điện thoại tầm trung và đạt độ phân giải FULL HD+ trong kích thước 6.5 inch mà mình đánh giá là đủ dùng&nbsp;để&nbsp;đáp&nbsp;ứng các nhu cầu xem phim, chơi game,... của bạn.</span></p>

<p><span style="font-size:22px">Điểm&nbsp;đáng chú&nbsp;ý&nbsp;ở chiếc&nbsp;điện thoại này chính là tần số quét màn hình lên&nbsp;đến 90 Hz cho thao tác vuốt chạm mượt mà và cho tốc độ phản hồi nhanh&nbsp;nhạy hơn so với phiên bản cũ.</span></p>

<p><span style="font-size:22px">Redmi Note 10 là chiếc&nbsp;điện thoại&nbsp;đáng&nbsp;đồng tiền bát gạo trong phân khúc nếu bạn&nbsp;đang tìm kiếm một con máy tầm trung chơi game mượt mà&nbsp;đó.</span></p>

<ul>
	<li><span style="font-size:22px"><a href="https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-redmi-note-10-5g-1357531" target="_blank" title="đánh giá redmi note 10 5g" type="đánh giá redmi note 10 5g">Đánh giá Redmi Note 10 5G: Quá hời cho 1 chiếc smartphone tầm trung!</a></span></li>
</ul>

<p>&nbsp;</p>

<p style="text-align:center"><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-note-10-5g"><img src="https://cdn.tgdd.vn/Products/Images/42/235971/xiaomi-redmi-note-10-5g-xanh-bong-dem-1-600x600.jpg" title="Xiaomi Redmi Note 10 5G 8GB" /></a></span></p>

<h3><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-note-10-5g">Xiaomi Redmi Note 10 5G 8GB</a></span></h3>

<p><span style="font-size:22px"><strong>5.990.000₫</strong>Trả góp 0%</span></p>

<p><span style="font-size:22px">Màn hình 6.5&quot;, Chip MediaTek Dimensity 700RAM 8 GB, ROM 128 GBCamera sau: Chính 48 MP &amp; Phụ 2 MP, 2 MPCamera trước: 8 MPPin 5000 mAh, Sạc 18 W</span></p>

<p><span style="font-size:22px"><a href="https://www.thegioididong.com/dtdd/xiaomi-redmi-note-10-5g">XEM CHI TIẾT</a></span></p>

<p><span style="font-size:22px">&nbsp;&nbsp;</span></p>

<p>&nbsp;</p>

<h3><span style="font-size:22px"><strong>Tổng kết</strong></span></h3>

<p><span style="font-size:22px">Mình đã giúp bạn điểm qua TOP 5 điện thoại giá rẻ, cấu hình cao đáng sắm nhất dịp sale Black Friday này tại Thế Giới Di Động. Hy vọng sẽ giúp bạn&nbsp;chốt đơn được một chiếc điện thoại ưng ý để chiến game&nbsp;cùng bạn bè nhé.</span></p>

<p><span style="font-size:22px">Bạn cảm thấy thích thú với chiếc điện thoại nào nhất?&nbsp;Hãy để lại bình luận phía dưới cho mình biết với nha.&nbsp;</span></p>

<p style="text-align:center"><span style="font-size:22px"><img alt="Black Friday là gì? Làm sao để sắm đồ công nghệ giá tốt trong ngày này?" src="https://cdn.tgdd.vn/Files/2017/11/23/1043993/blackfridaythegioididong_1280x609-800-resize.jpg" title="Black Friday là gì? Làm sao để sắm đồ công nghệ giá tốt trong ngày này?" /></span></p>

<p><span style="font-size:22px">Không quên nhắc bạn là hiện tại Thế Giới Di Động&nbsp;đang diễn ra&nbsp;chương trình Black Friday dành cho khách hàng mua sắm các thiết bị mới, từ 24/11 - 30/11/2021&nbsp;với nhiều ưu đãi hấp dẫn. Mọi chi tiết chương trình các bạn có thể xem tại nút cam bên dưới nhé.</span></p>
', 1, CAST(N'2021-12-21T19:32:34.540' AS DateTime), N'Tìm mua điện thoại giá rẻ cấu hình cao năm 2021? Đâu là sự lựa chọn hợp lý nhất, xem ngay 5 cái tên sau đây để chốt đơn nhé!')
INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (6, N'Deal ngon cuối tuần: Săn ngay Galaxy A52s 5G giá đẹp ngất ngây kèm trả góp 0%, cơ hội mua sắm cuối năm không thể bỏ lỡ', N'blog7.jpg', N'<h1>[Bài PR] Công ty Điện tử Samsung cùng &ldquo;Kỷ nguyên của sự trải nghiệm&rdquo;</h1>

<p>on 03/01/2020&nbsp;by H.S. Kim</p>

<p>Chia sẻ&nbsp;<a href="javascript:;">Share open/close</a>&nbsp;Print</p>

<p><img alt="" src="https://img.global.news.samsung.com/vn/wp-content/uploads/2020/03/HS-Kim-CES2020-Editorial_main1-1.jpg" style="height:667px; width:1000px" /></p>

<p>Ông H.S. Kim, Chủ tịch kiêm Tổng giám đốc điều hành Ngành hàng Điện tử Tiêu dùng, Tập đoàn Điện tử Samsung</p>

<p>Đầu năm thường là khoảng thời gian lý tưởng để suy ngẫm về những gì đã làm được trong năm cũ và hướng tới những điều mới mẻ trong tương lai. Đó là khoảnh khắc khi chúng ta nhận ra được những thách thức và cơ hội của mình và bắt đầu đề ra những kế hoạch phát triển mới.</p>

<p>&nbsp;</p>

<p>Và hội nghị công nghệ tiêu dùng lớn nhất thế giới &ndash; CES 2020, tại Las Vegas sẽ là nơi hoàn hảo để chúng ta trải nghiệm những điều mới mẻ. Đó là một hội nghị mà tôi mong đợi hàng năm, nơi tập hợp những công nghệ mới sáng tạo nhất trong ngành nhằm giới thiệu thấy những công nghệ mới và định hướng cho công nghệ trong tương lai.</p>

<p>&nbsp;</p>

<p>Tôi rất vui mừng khi Công ty điện tử Samsung lại một lần nữa góp mặt tại CES năm nay và dẫn bước khách tham quan đến những công nghệ đổi mới tiên tiến mang tính cách mạng. Bên cạnh đó, tôi phải nói rằng năm nay sẽ là một năm đặc biệt độc đáo. Đây là năm bắt đầu một thập kỷ mới và tôi rất vinh dự được khởi động năm mới bằng bài phát biểu trước buổi lễ cho Samsung vào ngày 6 tháng 1.</p>

<p>&nbsp;</p>

<p>Một cột mốc quan trọng như năm 2020 giúp chúng ta nhìn lại những thành tựu trong mười năm qua và đặt ra những viễn cảnh mới dành cho tương lai. Khi nhìn lại, tôi thấy một thập kỷ của sự tiến bộ vượt bậc; thiết bị di động với kết nối thông minh đang trở nên ngày càng phổ biến; ra đời vào năm 2010, Internet vạn vật kết nối (IoT) đã nổi lên như một trong những khía cạnh công nghệ phát triển nhất. Ngày nay, phần lớn các thiết bị của chúng tôi đều được hỗ trợ IoT và chúng tôi sẽ tiếp tục mang đến những trải nghiệm mới mẻ nhất cho người dùng bằng cách tạo ra các sản phẩm ngày càng mang tính kết nối và thông minh hơn. Và tất nhiên, trí tuệ nhân tạo (AI) đã được tao ra và sẵn sàng trở thành một trong những công nghệ có thể tạo ra sự ảnh hưởng nhất trong đời sống, đồng thời định hình và tạo ra những trải nghiệm mới trong cuộc sống và công việc của chúng ta.</p>

<p>&nbsp;</p>

<p>Điều đáng nói là chúng ta đang tập hợp ở Las Vegas trong một thập kỷ mới, để xem những gì sẽ xuất hiện ở phía trước. Tại Samsung, chúng tôi thấy một tương lai tràn đầy những cơ hội. Năm 2020, với sự xuất hiện của AI và IoT, kết hợp với sức mạnh của 5G sẽ là thời điểm thích hợp để hiện thực hóa tầm nhìn của chúng tôi về một thế giới kết nối thông minh.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://img.global.news.samsung.com/vn/wp-content/uploads/2020/03/HS-KIM-Editorial-CES2020_QUOTEFF.jpg" style="height:250px; width:1000px" /></p>

<p>Tất nhiên, để thực hiện được những định hướng trong tương lai, chúng ta phải hiểu được điều mà người dùng đang hướng tới, vì sự thay đổi thị hiếu và lợi ích của họ chính là động lực thúc đẩy công ty ngày càng phát triển. Ngày nay, sự đô thị hóa nhanh chóng cùng việc nhân khẩu học thay đổi đang tạo ra sự đổi mới trong cách nhìn nhận của chúng ta về thế giới xung quanh. Và những sự thay đổi này đã tạo nên vô số cơ hội đổi mới, đồng thời mang lại giá trị mới cho người dùng và xã hội. Bởi vì khi nhìn vào tương lai, chúng ta sẽ hiểu được mọi người đang ngày càng mong muốn nhiều hơn. Không chỉ đơn giản là nhiều thứ hơn, mà là nhiều trải nghiệm hơn và làm cho những công nghệ mới này ngày càng hữu ích trong cuộc sống của họ.</p>

<p>&nbsp;</p>

<p>Và như vậy một thời đại mới trong công nghệ sẽ được hình thành khi một thập kỷ mới bắt đầu:&nbsp;<strong>Kỷ nguyên&nbsp;của sự Trải nghiệm</strong>.</p>

<p>&nbsp;</p>

<p>Kỷ nguyên của sự trải nghiệm sẽ được đánh dấu bởi những công nghệ được cá nhân hóa nhằm đáp ứng nhu cầu của người dùng. Điều đó có nghĩa là các thiết bị bạn sử dụng sẽ có thể hiểu bạn như một người bạn, xóa bỏ ranh giới giữa thế giới kỹ thuật số và vật lý; đồng thời thay đổi cách bạn tương tác với thế giới và cộng đồng.</p>

<p>&nbsp;</p>

<p>Kỷ nguyên của sự trải nghiệm sẽ giúp bạn tạo ra một sự kết nối hữu hình với công nghệ theo cách mà một người không thể thực hiện được trong quá khứ. Thay vì phải thay đổi những thói quen hằng ngày để có thể kết hợp nhiều thiết bị hơn, thiết bị của bạn sẽ hoạt động một cách liền mạch để phục vụ cho bạn. hãy hình dung rằng bạn sẽ có thể làm được nhiều thứ hơn với một người bạn đồng hành thông minh, luôn hỗ trợ bạn, và đáp ứng các nhu cầu của bạn ngay lập tức.</p>

<p>&nbsp;</p>

<p>Và điều làm cho khoảnh khắc này đặc biệt là chính Samsung sẽ là người dẫn đầu trong kỷ nguyên của sự trải nghiệm này. Với sự đầu tư mạnh mẽ và sự dẫn đầu đã được chứng minh trong các lĩnh vực IoT, AI và 5G, những trải nghiệm công nghệ tương lai sẽ được xây dựng trên các công nghệ mà Samsung đang giữ vị trí tiên phong hiện nay.</p>

<p>&nbsp;</p>

<p>Nhưng điều có lẽ là quan trọng nhất đối với Samsung &ndash; và điều tôi mong muốn được nhấn mạnh hơn nữa trên sân khấu CES &ndash; là cam kết của chúng tôi về việc tận dụng tất cả những tiến bộ này như một nguồn lực cho sự đổi mới. Tôi luôn tin rằng công nghệ phải được sử dụng để giúp nâng tầm những trải nghiệm của chúng ta, để tạo ra một môi trường sống tốt hơn cho tất cả mọi người. Tại Samsung, sự đổi mới có nghĩa là tối đa hóa tiềm lực con người và hợp tác mở với các đối tác hàng đầu để phát triển công nghệ nhân loại tiên tiến; và tôi tin rằng Kỷ nguyên của sự trải nghiệm sẽ đạt được thành công trong năm 2020 và còn tiến xa hơn thế nữa.</p>

<p>&nbsp;</p>

<p>Cuối cùng, đổi mới không phải là mục tiêu duy nhất, mà là điểm khởi đầu để tạo ra một thế giới tốt hơn. Vì vậy để kiến tạo một tương lai tốt đẹp hơn cần có sự hợp tác cùng nhau từ người tiêu dùng, đến các nhà đổi mới, và thậm chí đến những công nghệ tại gia.</p>

<p>&nbsp;</p>

<p>Chúng tôi đã chuẩn bị rất nhiều và tôi rất vui mừng được chia sẻ nhiều hơn nữa về kỷ nguyên của sự trải nghiệm trong năm 2020 và trong tương lai. Hẹn gặp lại các bạn vào thứ Hai ngày 6 tháng 1 tới đây.</p>
', 1, CAST(N'2021-12-21T19:34:21.530' AS DateTime), N'[Bài PR] Công ty Điện tử Samsung cùng “Kỷ nguyên của sự trải nghiệm”
on 03/01/2020 by H.S. Kim')
INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (7, N'Deal ngon cuối tuần: Săn ngay Galaxy A52s 5G giá đẹp ngất ngây kèm trả góp 0%, cơ hội mua sắm cuối năm không thể bỏ lỡ', N'blog.jpg', N'<h1>BÀI LUẬN TIẾNG ANH VỀ CÔNG NGHỆ THÔNG TIN: MỘT GÓC CỦA CÔNG NGHỆ</h1>

<hr />
<p>Khi nhu cầu của con người càng lớn thì họ lại càng có nhiều ý tưởng sáng tạo để đáp ứng được những nhu cầu đó của chính mình. Đó là lý do tại sao công nghệ thông tin lại ra đời và phát triển ở tầm cao như vậy. Và không thể phủ nhận được những lợi ích cực kỳ to lớn mà Công nghệ đã mang đến cho cuộc sống của chúng ta. Nhưng nó cũng mang đến những thứ bất lợi. Hãy cùng Aroma có những nhìn nhận về vấn đề này qua &ldquo;<a href="http://aroma.vn/tieng-anh-chuyen-nganh-cong-nghe-thong-tin/" rel="noopener noreferrer" target="_blank"><strong>Bài luận tiếng anh về công nghệ thông tin</strong></a>: Một góc của công nghệ&rdquo; nhé.</p>

<ul>
	<li><strong><a href="http://aroma.vn/tieng-anh-giao-tiep/">Lộ trình học tiếng anh giao tiếp</a>&nbsp;</strong></li>
	<li><a href="http://aroma.vn/mau-cau-giao-tiep-tieng-anh-chuyen-nganh-cong-nghe-thong-tin/" rel="noopener noreferrer" target="_blank"><strong>Mẫu câu giao tiếp tiếng anh chuyên ngành công nghệ thông tin</strong></a></li>
</ul>

<p><img alt="Bai-luan-tieng-anh-ve-cong-nghe-thong-tin-mot-goc-cua-cong-nghe" src="http://aroma.vn/web/wp-content/uploads/2017/11/e46060a4-bai-luan-tieng-anh-ve-cong-nghe-thong-tin-mot-goc-cua-cong-nghe.jpg" style="height:333px; width:500px" title="Bài luận tiếng anh về công nghệ thông tin: Một góc của công nghệ" /></p>

<h2>Bài luận tiếng anh về công nghệ thông tin: Một góc của công nghệ</h2>

<ol>
	<li>
	<h3>Bài luận:&nbsp;</h3>
	</li>
</ol>

<p><em>Technology is now a big part of our society and our predictable future. There is little room for people who wish to live without technology, and luckily, it is still advancing at a rate that has helped stave off stagnation. I believe that for every advantage that technology brings us, it also brings us a disadvantage at the same time.</em></p>

<p><em>Smartphones enable people to stay in touch, even over long distances, and they are relatively safe and reliable to use. There are devices that people can use to communicate with plus at the other end of the planet and getting and keeping in touch with other people is very easy.</em></p>

<p><em>The disadvantages of smartphone is that it means people no longer need to meet in person as much, and interpersonal relationships are suffering worldwide because people are communicating through a small handheld device. A lot of people have smartphones and they use them almost semi-continuously, including in public settings when they could be making new friends, finding new lovers, and interacting with their current friends.</em></p>

<p><em>The advantages of the internet are that people can communicate over vast distances and can gain access to information and get answers to their questions very quickly. The disadvantage is that the Internet isn&rsquo;t moderated in the way that people think and lots of it is filled with misinformation and outright lies.</em></p>

<p><em>Even brand-named websites which have a lot of trust are not accountable for what appears on their own websites. Even respected and branded news sites have stories that have passed through many people&rsquo;s hands and originally started as lies with zero accountability throughout the dissemination process.</em></p>

<p><em>In conclusion, technology brings about such a lot of advantages. However, it&rsquo;s people&rsquo;s duty to use it in an appropriate way to make it beneficial.</em></p>

<ol start="2">
	<li>
	<h3>Bài dịch</h3>
	</li>
</ol>

<p>Công nghệ hiện nay là một phần quan trọng trong xã hội chúng ta và tương lai có thể dự đoán được của chúng ta. Có rất ít chỗ cho những người muốn sống mà không có công nghệ, và may mắn thay, nó vẫn được tiếp diễn với tốc độ đủ để giúp ngăn chặn tình trạng trì trệ. Tôi tin rằng cùng với những lợi ích mà công nghệ mang lại, nó cũng gây ra cho chúng ta những bất lợi.</p>

<p>Điện thoại cho phép mọi người giữ liên lạc, thậm chí trên một khoảng cách dài, và chúng là tương đối an toàn và đáng tin cậy để sử dụng. Có các thiết bị mà mọi người có thể sử dụng để giao tiếp với cộng ở phía bên kia của hành tinh này và nhận được và giữ liên lạc với những người khác rất dễ dàng.</p>

<p>Các nhược điểm của điện thoại thông minh là nó có nghĩa là người ta không còn cần phải đáp ứng trong người càng nhiều, và mối quan hệ giữa các cá nhân đang trải qua trên toàn thế giới bởi vì mọi người đang giao tiếp thông qua một thiết bị cầm tay nhỏ. Rất nhiều người có điện thoại thông minh và họ sử dụng chúng gần như liên tục, kể cả ở nơi công cộng khi họ có thể được những người bạn mới, tìm người yêu mới, và tương tác với bạn bè hiện tại của họ.</p>

<p>Những lợi thế của internet là mọi người có thể giao tiếp khoảng cách rất lớn và có thể truy cập thông tin và tìm được câu trả lời cho câu hỏi của họ rất nhanh chóng. Điểm bất lợi là Internet không kiểm duyệt theo cách mà mọi người nghĩ và rất nhiều của nó được làm đầy với thông tin sai lạc và những lời nói dối trắng trợn.</p>

<p>Ngay cả các trang web mang tên thương hiệu được tin dùng cũng không chịu trách nhiệm cho những gì xuất hiện trên các trang web riêng của họ. Thậm chí những trang có uy tín và thương hiệu lớn lại có những câu chuyện đã qua tay nhiều người và ban đầu được bắt đầu với sự giả dối và không trách nhiệm.</p>

<p>Kết luận lại, công nghệ mang lại nhiều như vậy lợi thế. Tuy nhiên, đó là nhiệm vụ của mọi người sử dụng nó một cách thích hợp để làm cho nó thật có ích.</p>

<p>Đúng là cái gì cũng có hai mặt. Công nghệ đúng là rất có ích cho cuộc sống của con người. Nó giúp con người thuận tiện trong cả làm việc và giao tiếp. Nhưng không phải lúc nào cũng là những lợi ích, công nghệ cũng gây ra nhiều phiền toái cho chính chúng ta &ndash; những người đang sử dụng nó.</p>

<p>Bạn hãy xem &ldquo;<a href="http://aroma.vn/bai-luan-tieng-a%E2%80%A6oc-cua-cong-nghe/" rel="noopener noreferrer" target="_blank"><strong>Bài luận tiếng anh về công nghệ thông tin: Một góc của công nghệ</strong></a>&rdquo; để nêu quan điểm của bạn về vấn đề này nhé. Và bạn cũng đừng quên đón chờ&nbsp;<a href="http://aroma.vn/bai-luan-tieng-anh/" rel="noopener noreferrer" target="_blank"><strong>những bài luận bằng tiếng anh hay</strong></a>&nbsp;tiếp theo của Aroma. Chúc các bạn thành công.</p>
', 1, CAST(N'2021-12-21T19:34:31.493' AS DateTime), N'BÀI LUẬN TIẾNG ANH VỀ CÔNG NGHỆ THÔNG TIN: MỘT GÓC CỦA CÔNG NGHỆ')
INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (8, N'ádsadasdsad', NULL, N'<p>ádasd</p>
', 1, CAST(N'2023-11-02T05:47:58.637' AS DateTime), N'ádasd')
INSERT [dbo].[Posts] ([Post_id], [Post_Name], [Image], [Detail], [Status], [Post_date], [Post_conten]) VALUES (9, N'ádsadasdsad', NULL, N'<p>ádasd</p>
', 1, CAST(N'2023-11-02T05:48:11.583' AS DateTime), N'ádasd')
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (1, N'1009.jpg', N'samsung-galaxy-tab-s7-fe-green-600x600.jpg', N'Samsung-Galaxy-Tab-S7-FE-Wifi-green-1-660x600.jpg', N'samsung-galaxy-z-flip-3-violet-1-600x600.jpg', N'samsung-galaxy-z-fold-2-den-600x600.jpg', N'samsung-galaxy-z-fold-3-green-1-600x600.jpg', N'iPhone 13 256GB ', N'samsung-galaxy-z-fold-3-silver-1-600x600.jpg', 34490000, 0, CAST(N'2021-12-21' AS Date), 2, N'Còn hàng ', 5, 0, 0, 1, N'<h1 style="text-align:justify"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Mua iPhone 13 Pro Max chính hãng, giá tốt tại GoalShop</span></span></span></h1>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Apple đã chính thức ra mắt dòng iPhone 2021 với tên gọi iPhone 13 Series. Trong đó iPhone 13 Pro Max là phiên bản cao cấp nhất với màn hình lớn, tốc độ làm tươi 120Hz và dung lượng lưu trữ lên tới 1TB.</span></span></span></span></p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Thiết kế vuông vức sang trọng, tần số quét lên tới 120Hz</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Xét về phong cách thiết kế, iPhone 13 Pro Max vẫn sở hữu khung viền vuông vức bằng kim loại sang trọng tương tự như iPhone 12 Pro Max. Mặt lưng của máy được hoàn thiện nhám để tránh lưu lại vân tay khi sử dụng. Cầm chiếc iPhone 13 Pro Max trên tay chắc chắn sẽ thu hút mọi ánh nhìn bởi thiết kế quá ấn tượng.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Là chiếc iPhone lớn nhất nên màn hình của iPhone 13 Pro Max cũng có kích thước lên tới 6.7 inch. Trên màn hình vẫn có tai thỏ quen thuộc nhưng đã được tinh chỉnh nhỏ gọn hơn thế hệ trước 20% nhằm tối ưu hóa không gian hiển thị. Camera selfie 12MP nằm trong tai thỏ và cung cấp bảo mật Face ID. Màn hình vẫn được bảo vệ bởi kính cường lực Ceramic Shield siêu bền.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Apple đã trang bị màn hình Super Retina XDR với công nghệ ProMotion giúp tinh chỉnh tần số quét 10 - 120Hz. Độ sáng tối đa cũng đã được tăng lên 1.200 nits. Có thể nói đây là điểm sáng giá nhất của iPhone 13 Pro Max.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Chip A15 Bionic mạnh mẽ, bộ nhớ cực khủng</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Chip Apple A15 Bionic 6 nhân, sản xuất trên tiến trình 5nm mang đến sự cải tiến lớn. Con chip này giúp giúp hiệu năng CPU và GPU nhanh hơn 50% so với thế hệ tiền nhiệm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max có tới bốn phiên bản lưu trữ bao gồm 128GB, 256GB, 512GB và 1TB. Đây là chiếc iPhone đầu tiên có dung lượng lưu trữ khủng đến vậy và hứa hẹn mang đến trải nghiệm tuyệt vời cho người dùng.</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max-2.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Dung lượng pin ấn tượng, hỗ trợ băng tần 5G</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max là chiếc iPhone có dung lượng pin lớn nhất trong iPhone 13 Series. Thời lượng pin kéo dài hơn thế hệ trước đến 2.5 giờ cho phép làm việc và giải trí không ngừng nghỉ suốt cả ngày dài. Máy cũng hỗ trợ sạc nhanh 20W giúp sạc đầy pin nhanh chóng, không làm gián đoạn trải nghiệm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Tiếp nối sự thành công của iPhone 12 Pro Max, iPhone 13 Pro Max tiếp tục hỗ trợ băng tần mạng 5G tiên tiến. Thế hệ mạng viễn thông mới mang đến tốc độ truyền tải Internet siêu nhanh. Nhờ đó, mọi hoạt động lướt web, quay video HDR, streaming trực tuyến đều diễn ra mượt mà. &nbsp;</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max-3.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Hệ thống camera xứng tầm đẳng cấp</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max vẫn sở hữu hệ thống ba camera chuyên nghiệp hàng đầu. Camera góc rộng 12MP cung cấp khả năng chụp ảnh thiếu sáng tốt hơn nhờ cảm biến kích thước lớn. Cùng với đó là camera góc siêu rộng 12MP khẩu độ f/1.8 giúp tự động lấy nét và chụp cận cảnh. Trên iPhone 13 Pro Max còn có camera tele 12MP cho phép zoom quang lên tới 3x. Apple cũng đã mang tính năng chụp macro lên chiếc iPhone này để chụp các đối tượng ở cự ly gần 2cm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max được bổ sung nhiều tính năng chụp hình quay phim chuyên nghiệp. Đầu tiên phải kể đến Photographic styles, một dạng bộ lọc màu mới dựa trên các thuật toán cho phép người dùng chỉnh sửa ảnh trong thời gian thực theo ý thích. Tính năng Cinematic Mode kết hợp với cảm biến LiDAR cũng giúp quay video chuyên nghiệp hơn.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Ngoài ra, chiếc iPhone này còn có khả năng quay phim 4K/30fps ở định dạng ProRes, một định dạng video chất lượng cao. Các tính năng xử lý hình ảnh đỉnh cao như quay video Dolby Vision, chụp ảnh Smart HDR 4 và Deep Fusion vẫn có trên iPhone 13 Pro Max.</span></span></span></span></p>

<p style="text-align:justify">sdfsdfsd</p>
', 2, N'Apper a12', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (2, N'1009.jpg', N'iphone-12-pro-vang-dong-new-600x600-1-600x600.jpg', N'iphone-13-midnight-2-600x600.jpg', N'iphone-13-mini-blue-2-600x600.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iphone-13-pro-sierra-blue-600x600.jpg', N'iPhone 11 128GB ', N'iphone-se-128gb-2020-do-600x600.jpg', 24490000, 0, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 4, 0, 1, 1, N'<p>Phone 11 - siêu phẩm được mong chờ nhất năm 2019 của Apple chuẩn bị ra mắt. Với những cải tiến vượt trội, phiên bản iPhone mới nhất hứa hẹn sẽ làm bùng nổ thị trường công nghệ.</p>

<h3>Thiết kế cực kỳ ấn tượng với màn hình có độ phân giải cao</h3>

<p><img src="https://hoanghamobile.com/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-2.jpg" /></p>

<p>iPhone 11 vẫn sở hữu thiết kế tràn viền với &ldquo;tai thỏ&rdquo; giống iPhone X. Viền bezel phía trên và dưới cũng được làm gọn lại nhằm tối đa màn hình sử dụng. Cùng với đó, 4 góc của máy cũng được bo tròn nhẹ tạo cảm giác chắc chắn khi cầm trên tay. Mặt lưng iPhone 11 làm từ chất liệu kính nên rất sang trọng, tinh tế. Khác với các dòng iPhone trước, sản phẩm này sẽ có 6 màu bản bạc, vàng, xanh lá, trắng, đen đỏ.</p>

<p>Công nghệ màn hình LCD Retina mang đến chất lượng tốt nhất. Độ phân giải màn hình 1125 x 2436 pixels hiển thị màu sắc chính xác và cho hình ảnh sắc nét. Màn hình rộng 6.1 inch giúp người sử dụng thoải mái trải nghiệm xem phim, lướt web&hellip; Đặc biệt Apple đã trang bị tần số quét từ 90 đến 120 Hz với 463 điểm màu.</p>

<h3>Camera độc đáo nâng tầm chụp ảnh chuyên nghiệp</h3>

<p><img src="https://hoanghamobile.com/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-3.jpg" /></p>

<p>iPhone 11 vẫn sở hữu 2 camera nhưng thay vì đặt dọc như iPhone X thì chúng lại được sắp xếp theo hình vuông. Đèn flash cũng được đặt trong hình vuông này. Trong đó có một camera chính với độ phân giải 12MP giúp bạn có được những bức ảnh cực đẹp. Camera thứ hai có góc siêu rộng 12 MP, tiêu cự 13mm cho góc chụp 120 độ.</p>

<p>Các thuật toán xử lý cùng được Apple nâng cấp gồm chụp chân dung Potrait Mode, chụp chân dung đen trắng Highkey. Đồng thời tự động chuyển sang tính năng chụp đêm Night Mode khi nhận thấy thiếu ánh sáng.</p>

<p>Camera selfie được nâng cấp với độ phân giải lên đến 12MP. Đồng thời đèn flash cũng được nâng độ sáng và vùng chiếu sáng rộng hơn. Nhờ đó, bạn sẽ thoải mái chụp ảnh kể cả ở những nơi ánh sáng yếu. Bên cạnh đó, chế độ slow-motiton hứa hẹn sẽ trở thành một tính năng độc đáo. Mỗi một sản phẩm mới của Apple đều được nâng cấp camera nhằm tạo ra những trải nghiệm mới thú vị hơn cho người sử dụng.</p>

<h3>Pin dung lượng 3110 mAh nâng thời gian nhiều hơn 1 giờ so với iPhone XR</h3>

<p>iPhone 11 chính hãng được trang bị pin có dung lượng 3110 mAh. Với dung lượng như vậy thì chỉ một lần sạc là có thể sử dụng thoải mái. Thêm một điểm cộng nữa cho sản phẩm này đó chính là công nghệ sạc không dây 15W. So với sạc không dây 7.5W hiện tại, sạc không dây 15W tăng tốc độ sạc lên 15% và hiệu quả năng lượng cao hơn 30%. Mặc dù là công nghệ sạc nhanh nhưng vẫn đảm bảo iPhone không quá nóng và giảm 3 độ trong lúc sạc.</p>

<h3>Hiệu năng tối ưu với bộ xử lý Apple A13</h3>

<p><img src="https://hoanghamobile.com/Uploads/2021/02/05/ip-11.jpeg" /></p>

<p>&nbsp;</p>

<p>Bộ&nbsp;xử lý A13 được sản xuất độc quyền cho iPhone 11 nhằm tạo hiệu năng mạnh mẽ, tiết kiệm pin hiệu quả. Hơn nữa, hệ điều hành iOS v13.0 sẽ tăng tốc độ mở ứng dụng 40%, tốc độ hiển thị bàn phím 50%, tốc độ camera 70%. Công nghệ Wi-fi 6 mới nhất cũng được đưa vào iPhone 11 nhằm tăng tốc độ kết nối internet tới 40%.</p>

<p>Để thay thế cho 5G, Apple đã phát triển công nghệ Modified Polyimide (MPI) thay vì Liquid Crystal Polymer (LCP). Nâng cấp băng thông siêu rộng giúp kết nối mạng nhanh hơn.</p>

<p>Face ID cũng được cải thiện khi có thể phân biệt tiền cảnh và ánh xạ khuôn mặt để mở khóa nhanh chóng hơn. Apple đã tăng cường ánh sáng của đèn chiếu nhằm tránh ánh sáng của môi trường tác động làm ảnh hưởng đến hoạt động của Face&nbsp; ID. Nhờ đó nâng cao tính bảo mật cho sản phẩm.</p>

<p>&nbsp;</p>
', 2, N'Apper a13', N'4GB', N'64GB', N'2K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (3, N'1008.jpg', N'1009.jpg', N'iphone-13-midnight-2-600x600.jpg', N'iphone-13-mini-blue-2-600x600.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iphone-13-pro-sierra-blue-600x600.jpg', N'iPhone 12 mini', N'iphone-se-128gb-2020-do-600x600.jpg', 23490000, 46, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 5, 0, 0, 1, N'<p>iPhone 12 Mini &ndash; chiếc điện thoại &ldquo;em út&rdquo; trong thế hệ iPhone 12 năm nay đã chính thức được ra mắt. Mang trong mình những cải tiến vượt trội về hiệu năng trong một thân hình nhỏ bé, iPhone 12 Mini hứa hẹn sẽ làm bùng nổ thị trường di động trong thời gian tới.</p>

<h3>Thiết kế &ldquo;lột xác&rdquo;, màn hình sắc nét</h3>

<p>Ở phía mặt trước, iPhone 12 Mini 64GB chính hãng VN/A vẫn sở hữu một thiết kế tràn viền tai thỏ như các thế hệ tiền nhiệm, với các phần viền benzel dường như đã được làm mỏng hơn. Nhưng đó không phải là tất cả những gì mà iPhone 12 Mini có. Toàn bộ các phần cạnh của iPhone 12 Mini nói riêng và thế hệ iPhone 12 năm nay nói chung đều đã được Apple làm mới lại, vắt phẳng vuông thành sắc cạnh, cực kì hiện đại, sang trọng và tinh tế. Mặt lưng của iPhone 12 Mini được bảo vệ bởi một lớp kính cường lực mà Apple gọi là Ceramic Shield giúp máy trở nên bền bỉ và cứng cáp hơn rất nhiều. iPhone 12 Mini sẽ có tất cả 5 phiên bản màu bao gồm Đen, Trắng, Xanh Lam, Xanh Lục và Đỏ.</p>

<p><img alt="gsmarena_002" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-mini-64gb-chinh-hang-vn-a-2.jpg" /></p>

<p>Công nghệ màn hình OLED Super Retina XDR mang đến cho iPhone 12 Mini chất lượng hiển thị phải nói là xuất sắc bậc nhất. Độ phân giải màn hình Full HD 2,340 x 1,080 cung cấp mật độ điểm ảnh siêu khủng lên tới 476ppi, giúp người dùng có thể thoải mái trải nghiệm những tác vụ giải trí hàng ngày như xem phim hoặc chơi game.</p>

<h3>Camera nâng tầm nhiếp ảnh</h3>

<p>iPhone 12 Mini vẫn sở hữu một hệ thống camera kép tương tự như iPhone 11 trước đây nhưng các cảm biến đã được phóng lớn ra một chút, giúp thu được nhiều ánh sáng hơn, từ đó ảnh cho ra cũng có chất lượng tốt hơn. Cụ thể, cụm camera kép của máy bao gồm một camera chính góc rộng và một camera góc siêu rộng cho trường nhìn lên tới 120 độ; cả hai đều có cùng độ phân giải 12MP. Các thuật toán xử lý cũng được Apple nâng cấp trong các chế độ như chụp chân dung Portrait, chụp chân dung Highkey. Chế độ chụp đêm Night Mode cũng hỗ trợ chụp đêm tốt hơn so với iPhone 11.</p>

<p><img alt="nhung-diem-hay-ho-nhat-tren-iphone-12-so-voi-truoc" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-mini-64gb-chinh-hang-vn-a-3.png" /></p>

<p>Camera selfie phía trước của iPhone 12 Mini có độ phân giải cũng là 12MP. Với độ phân giải này cùng những thuật toán đã được Apple dày công nghiên cứu và chỉnh sửa, người dùng sẽ có được một trải nghiệm selfie tuyệt vời nhất ngay cả khi chụp trong điều kiện thiếu sáng. Có thể thấy, mỗi một sản phẩm mới của Apple đều được hãng chăm chút cực kì tỉ mỉ, nhằm tạo ra một trải nghiệm mới lạ và thú vị hơn cho người dùng.</p>

<h3>Hiệu năng đầu bảng với vi xử lý Apple A14 Bionic</h3>

<p>Bộ vi xử lý Apple A14 Bionic vẫn được Apple tạo ra độc quyền dành cho thế hệ iPhone 12 năm nay nhằm tạo ra một hiệu năng cực kì mạnh mẽ, vượt trội nhưng vẫn mang tới một hiệu quả tiết kiệm điện năng cực tốt. Con chip này được đánh giá là bộ vi xử lý mạnh mẽ nhất, nhanh nhất hiện nay với cấu tạo từ 6 lõi CPU, 11,8 tỷ bóng bán dẫn, 4 lõi GPU mới, và nhanh hơn A13 Bionic tới 40%. Công nghệ kết nối mạng 5G mới cùng với Wi-Fi 6 cũng đã được đưa vào iPhone 12, hứa hẹn sẽ mang tới một khả năng kết nối Internet vượt trội hoàn toàn. Ngoài ra, bộ nhớ 64GB trên iPhone 12 Mini chính hãng VN/A cũng giúp cho người dùng có được không gian lưu trữ thoải mái hơn.</p>

<p><img alt="lcimg-b65bdc65-0f38-42c5-8042-27fcc5f13c2f" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-mini-64gb-chinh-hang-vn-a-4.jpg" /></p>

<p>Face ID cũng được cải thiện khi có thể phân biệt tiền cảnh và ánh xạ khuôn mặt để mở khóa nhanh chóng hơn. Apple đã tăng cường ánh sáng của đèn chiếu nhằm tránh ánh sáng của môi trường tác động làm ảnh hưởng đến hoạt động của Face&nbsp; ID. Nhờ đó nâng cao tính bảo mật cho sản phẩm.</p>

<h3>Pin được nâng tầm cho thời lượng sử dụng dài hơi</h3>

<p>Viên pin của iPhone 12 Mini năm nay cũng đã được nâng cấp so với những thế hệ tiền nhiệm. Theo đó, máy sẽ cung cấp tới cho người dùng tới hơn 17 tiếng xem video liên tục và thời gian nghe nhạc liên tục lên tới 65 tiếng.</p>

<p><img alt="wHWjRUJQ2bx8ubpRuzFnTg" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-mini-64gb-chinh-hang-vn-a-5.jpg" /></p>

<p>Thời lượng pin được cải thiện là rất quan trọng nhưng vẫn không thể thiếu một thứ nữa đó là công nghệ sạc nhanh. iPhone 12 Mini được trang bị công nghệ sạc nhanh Power Delivery 2.0 của Apple, đảm bảo người dùng sau 30 phút sạc sẽ có ngay 50% pin để sử dụng. Đặc biệt, Apple đã đem tính năng sạc không dây MagSafe quay trở lại trên thế hệ iPhone 12 năm nay, cho phép người dùng có thể nạp lại năng lượng mà không cần phải mang theo đủ thứ phụ kiện rắc rối.</p>
', 2, N'Apper a11', N'4GB', N'64GB', N'2K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (6, N'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', N'iphone-13-mini-blue-2-600x600.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iphone-13-pro-sierra-blue-600x600.jpg', N'iphone-se-2020-trang-600x600-600x600.jpg', N'iphone-xi-xanhla-600x600.jpg', N'iPhone 12 64GB', N'1011.jpg', 25490000, 49, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 7, 0, 1, 1, N'<h3>Thiết kế được làm mới lại hoàn toàn</h3>

<p>Nhắc tới Apple, người dùng sẽ luôn nghĩ tới những thiết bị iPhone đẳng cấp, mang trên mình một thiết kế vô cùng sang trọng, hiện đại và thời thượng. Và iPhone 12 Series của năm nay cũng không phải là một ngoại lệ. Mẫu iPhone 12 64GB sở hữu một thiết kế đã được &ldquo;lột xác&rdquo; hoàn toàn so với các thế hệ tiền nhiệm trước đây với cạnh được vát phẳng, vuông thành sắc cạnh, mang tới một cảm giác cực kì bền bỉ và chắc chắn. Thiết kế này khiến cho người dùng có thể dễ dàng liên tưởng tới những mẫu iPhone huyền thoại trước đây đã làm nên tên tuổi của Apple như iPhone 4 hoặc iPhone 5.</p>

<p><img alt="maxresdefault-177" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-2.jpg" /></p>

<p>Màn hình của iPhone 12 64GB được trang bị công nghệ tấm nền OLED Super Retina XDR, mang lại cho iPhone 12 một chất lượng hiển thị xuất sắc nhất từ trước đến nay. Đi cùng với đó là độ phân giải Full HD 2,532 x 1,170; cho mật độ điểm ảnh cực tốt lên tới 460ppi. Với màn hình được nâng cấp và cải tiến như vậy, những vị chủ nhân sở hữu iPhone 12 có thể thoải mái thưởng thức những bộ phim hoặc chơi game mà không cần phải lo nghĩ về bất cứ điều gì.</p>

<h3>&nbsp;&ldquo;Quái thú hiệu năng&rdquo; với bộ vi xử lý Apple A14 Bionic</h3>

<p>Sở hữu một vẻ bên ngoài sang trọng, bóng bẩy và lịch lãm là vậy, thế nhưng iPhone 12 64GB lại mang trong mình một sức mạnh cực kì khủng khiếp, vượt trội hơn tất cả những mẫu smartphone đang có mặt trên thị trường. Tất cả là nhờ có bộ vi xử lý Apple A14 Bionic được sản xuất trên tiến trình 5nm mới nhất, không chỉ manh mà còn tiết kiệm điện năng tới tối đa. Con chip này được đánh giá là bộ vi xử lý mạnh mẽ nhất, nhanh nhất hiện nay với cấu tạo từ 6 lõi CPU, 11,8 tỷ bóng bán dẫn, 4 lõi GPU mới, và nhanh hơn A13 Bionic tới 40%. Công nghệ kết nối mạng 5G mới cùng với Wi-Fi 6 cũng đã được đưa vào iPhone 12, hứa hẹn sẽ mang tới một khả năng kết nối Internet vượt trội hoàn toàn.</p>

<p><img alt="lcimg-a62d96d8-e998-4803-9ac5-dce77df28439" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-3.jpg" /></p>

<p>Đặc biệt, trí tuệ nhân tạo AI Neural Engine giờ đây cũng đã được nâng lên thành 16 lõi, vì vậy nên vi xử lý Apple A14 Bionic có thể tính toán được 11 nghìn tỷ phép tính trong một giây. Bộ nhớ 64GB trên iPhone 12 cũng giúp cho người dùng có được không gian lưu trữ thoải mái hơn.</p>

<h3>Hệ thống camera đẳng cấp</h3>

<p>Vẫn là một hệ thống camera kép như trên người tiền nhiệm iPhone 11, thế nhưng các cảm biến trên iPhone 12 64GB chính hãng VN/A đã có khẩu độ tốt hơn, giúp thu nhận được nhiều ánh sáng, và từ đó những tấm hình cho ra sẽ mang chất lượng &ldquo;xịn xò&rdquo; hơn. Theo đó, cụm camera kép của máy bao gồm một cảm biến chính 12MP góc rộng và một camera phụ góc siêu rộng cũng có độ phân giải là 12MP, cho trường nhìn lên tới 120 độ.</p>

<p><img alt="lcimg-c1948b56-0661-497c-b56e-e938c2d208a7" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-4.jpg" /></p>

<p>Ngoài ra, Apple cũng đã nâng cấp các thuật toán xử lý ảnh trong các tính năng như chụp chân dung Portrait hay chụp chân dung Highkey. iPhone 12 hứa hẹn cũng sẽ cho khả năng chụp đêm tốt hơn nhiều so với iPhone 11. Về khả năng quay video, iPhone 12 sẽ là smartphone đầu tiên hỗ trợ quay video HDR chuẩn Dolby Vision, độ phân giải cao 4K@60fps.</p>

<h3>Viên pin cho thời lượng sử dụng bền bỉ</h3>

<p>Cung cấp năng lượng cho iPhone 12 năm nay là viên pin cho thời lượng sử dụng lên tới 17 tiếng xem video liên tục cùng với thời gian nghe nhac liên tục lên tới hơn 60 tiếng.</p>

<p><img alt="lcimg-2d684d61-a3fc-48a9-8faa-f2ef0d1d3306" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-5.jpg" /></p>

<p>Ngoài dung lượng pin được cải thiện, công nghệ sạc nhanh cũng rất quan trọng. iPhone 12 được trang bị công nghệ sạc nhanh Power Delivery 2.0 18W của Apple, chỉ cần sạc 30 phút là người dùng sẽ có ngay 50% pin để tiếp tục những công việc còn đang dang dở. Đặc biệt hơn cả là Apple đã mang tính năng sạc không dây MagSafe 15W quay trở lại trên iPhone 12, cho phép người dùng có thể nạp lại năng lượng mà không cần phải mang theo quá nhiều củ, cáp sạc phức tạp.</p>
', 2, N'Apper a14', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (7, N'1001.jpg', N'1002.jpg', N'1003.jpg', N'1005.jpg', N'1007.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iPhone 11 256GB', N'iphone-13-pro-sierra-blue-600x600.jpg', 35490000, 49, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 4, 0, 1, 1, N'<h2>Đặc điểm nổi bật của&nbsp;iPhone 11 256GB</h2>

<p><img alt="iPhone 11 256GB" src="https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037994666324831_iphone-11-13.jpg" /></p>

<p><img alt="iPhone 11 256GB" src="https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037994666842981_iphone-11-1.JPG" /></p>

<p><img alt="iPhone 11 256GB" src="https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037994666686523_iphone-11-8.JPG" /></p>

<p><img alt="iPhone 11 256GB" src="https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037994667327879_iphone-11-2.jpg" /></p>

<h2>Đánh giá chi tiết&nbsp;iPhone 11 256GB</h2>

<p><strong>Với bộ nhớ trong lên tới 256GB, phiên bản&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-11-256gb">iPhone 11 256GB</a>&nbsp;thoải mái cho mọi nhu cầu của người dùng, đồng thời bạn sẽ được sở hữu chiếc điện thoai mạnh mẽ nhất, camera xuất sắc và nhiều lựa chọn màu hấp dẫn.</strong></p>

<p><strong><img alt="iPhone 11" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-1.jpg" /></strong></p>

<h3><strong>Cảm nhận sức mạnh đích thực của bộ vi xử lý mạnh nhất thế giới</strong></h3>

<p>Apple A13 Bionic trên iPhone 11 256GB là một bước tiến dài so với những vi xử lý&nbsp;<a href="https://fptshop.com.vn/dien-thoai">smartphone</a>&nbsp;hiện nay. Sức mạnh của A13 Bionic có thể nói là vượt trội, thậm chí là gấp đôi khi đặt cạnh các điện thoại hàng đầu trên thị trường. Chính vì thế mọi tác vụ diễn ra trên iPhone 11 đều nhanh chóng đến mức hoàn hảo. Bạn có thể chơi những tựa game nặng nhất, thiết lập đồ họa cao nhất một cách nhẹ nhàng. Với hiệu năng của iPhone 11, điện thoại sẽ luôn hoạt động ổn định trong nhiều năm tới.</p>

<p><img alt="iPhone 11 chip" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-11.jpg" /></p>

<h3><strong>Thể hiện cá tính bằng màu sắc nổi bật</strong></h3>

<p>Chắc chắn bạn sẽ tìm được phiên bản màu phù hợp khi iPhone 11 256GB có rất nhiều màu sắc. Bạn sẽ có 6 lựa chọn màu Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ đầy phong cách. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Mặt trước máy là màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. iPhone 11 là mẫu<a href="https://fptshop.com.vn/dien-thoai/apple-iphone">&nbsp;iPhone</a>&nbsp;có thiết kế trẻ trung, phong cách nhất hiện nay.</p>

<p><img alt="iPhone 11 màu sắc " src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-2.jpg" /></p>

<h3><strong>Thiết kế siêu bền, chống nước hoàn hảo</strong></h3>

<p>iPhone 11 256GB mang trên mình kiểu dáng thời trang nhưng độ bền cũng rất đáng nể. Điện thoại sử dụng kính cường lực cứng nhất trong thế giới smartphone cùng khung nhôm chắc chắn. Nước cũng không phải là vấn đề khi với khả năng&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">chống nước chuẩn IP68</a>, cho phép bạn ngâm iPhone 11 dưới 2m trong vòng 30 phút, máy vẫn hoàn toàn sống khỏe dưới nước. Bên cạnh đó, 100% nhôm của iPhone 11 có khả năng tái chế, thân thiện với môi trường.</p>

<p><img alt="iPhone 11 chống nước" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-9.jpg" /></p>

<h3><strong>Hình ảnh chân thực, sống động đến từng chi tiết</strong></h3>

<p>Cùng tận hưởng những hình ảnh tuyệt đẹp trên màn hình Liquid Retina của iPhone 11 256GB. Cả thế giới sống động sẽ xuất hiện ngay trước mắt bạn khi mọi thứ đều chân thực một cách tuyệt vời. Cân bằng trắng được điều chỉnh dựa theo ánh sáng xung quanh, để nhiệt độ màu luôn luôn dễ chịu. Cảm ứng xúc giác Haptic Touch hoàn toàn mới thay thế cho 3D Touch sẽ giúp bạn thao tác nhanh và tiện lợi hơn.</p>

<p><img alt="iPhone 11 liquid retina" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-10.jpg" /></p>

<h3><strong>Thế hệ camera kép mới, bổ sung camera góc siêu rộng</strong></h3>

<p>Lần đầu tiên camera góc siêu rộng xuất hiện trên iPhone. Bạn có thể tha hồ chụp những bức ảnh xuất sắc bằng camera góc rộng và góc siêu rộng trên iPhone 11 256GB. Cảm biến camera góc rộng 12MP có khả năng lấy nét tự động nhanh gấp 3 lần trong điều kiện thiếu sáng. Bên cạnh đó cảm biến góc siêu rộng cho khả năng chụp cảnh rộng gấp 4 lần, là phương tiện ghi hình tuyệt vời cho những chuyến du lịch, chụp hình nhóm. Những hình ảnh thiên nhiên thu lại được sẽ hùng vĩ, hoành tráng và sống động hơn.</p>

<p><img alt="iPhone 11 camera kép" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-3.jpg" /></p>

<h3><strong>Nâng tầm chụp ảnh thiếu sáng</strong></h3>

<p>iPhone 11 256GB đã có một bước tiến dài về chụp ảnh thiếu sáng. Bạn sẽ có một chế độ chụp đêm chuyên dụng mang tên Night Mode, cho hiệu quả rõ rệt với nước ảnh sáng rõ, độ chi tiết cao và ít nhiễu dù là chụp trong đêm tối. Không cần phải bật đèn flash, thật dễ dàng để bạn có được một bức ảnh thiếu sáng đẹp với iPhone 11.</p>

<p><img alt="iPhone 11 night mode" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-5.jpg" /></p>

<h3><strong>Hiệu ứng ảnh chụp xóa phông đẳng cấp</strong></h3>

<p>Ảnh xóa phông trên iPhone luôn được đánh giá rất cao nhờ khả năng phân tách chủ thể chính xác, hiệu ứng làm mờ tự nhiên. Giờ đây iPhone 11 256GB còn được thêm vào các hiệu ứng ánh sáng Studio; khả năng thay đổi độ mờ phông nền, đồng thời có thể xóa phông dù đối tượng chụp là hai người hay vật thể. Thỏa sức sáng tạo với những bức ảnh xóa phông &ldquo;ảo diệu&rdquo; trên iPhone 11.</p>

<p><img alt="iPhone 11 xóa phông" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-6.jpg" /></p>

<h3><strong>Chụp ảnh cực chất bằng Smart HDR</strong></h3>

<p>Với sự hỗ trợ của trí tuệ nhân tạo Machine Learning, khả năng chụp ảnh của iPhone 11 256GB được cải tiến toàn diện. Tính năng Smart HDR sẽ tự động nhận diện khung cảnh, đối tượng chụp và đưa ra các tùy chỉnh riêng biệt. Ví dụ trong cùng một bức ảnh nhưng bộ lọc màu, thuật toán, ánh sáng áp dụng cho đối tượng là người sẽ khác với khung cảnh phía sau. Nhờ thế những bức ảnh của bạn sẽ thể hiện đúng &ldquo;chất&rdquo; của chủ thể, khung cảnh bạn đang chụp.</p>

<p><img alt="iPhone 11 smart HDR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-7.jpg" /></p>

<h3><strong>Thể hiện khả năng quay phim chuyên nghiệp</strong></h3>

<p>iPhone 11 256GB chính là một trong những smartphone có khả năng quay phim tốt nhất thế giới. Các đoạn video độ phân giải 4K 60fps siêu sắc nét, chống rung hoàn hảo cho chất lượng chuyên nghiệp. Camera góc siêu rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ nắm bắt được mọi khoảnh khắc. Ngoài ra bạn còn có thể tập trung thu âm vào một chủ thể khi quay video bằng cách phóng to, zoom hình ảnh &ndash; đồng thời zoom âm thanh hết sức thú vị. Thậm chí sau khi hoàn thành đoạn phim bạn có thể chỉnh sửa và xuất bản ngay trên iPhone 11 với những công cụ dễ dàng sử dụng, đầy đủ tính năng.</p>

<p><img alt="video iPhone 11" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-4.jpg" /></p>

<h3><strong>Camera trước 12MP, thể hiện cái tôi của bạn</strong></h3>

<p>Những bức ảnh selfie giờ đây sẽ có chất lượng tuyệt vời khi camera trước của iPhone 11 đã được nâng lên độ phân giải 12MP. Chụp ảnh và quay video bằng camera selfie đang là xu hướng hiện nay. Vì thế, Apple đã tích hợp tính năng quay video chuyển động siêu chậm bằng camera selfie, những đoạn phim này sẽ được gọi là slofie &ndash; lưu giữ khoảnh khắc của bạn một cách vô cùng thú vị.</p>

<p><img alt="camera trước" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-8.jpg" /></p>

<h3><strong>Nhận diện khuôn mặt Face ID tiên tiến, bảo mật tuyệt đối</strong></h3>

<p>Face ID trên iPhone 11 256GB không chỉ mang đến một phương thức mở khóa màn hình nhanh chóng, tiện lợi mà nó còn hết sức bảo mật, sử dụng để đăng nhập ở nhiều ứng dụng khác. Face ID hỗ trợ thay thế mật khẩu, tài khoản trong hầu hết các ứng dụng, kể cả những ứng dụng cần tính bảo mật cao như ngân hàng hay thanh toán. Đơn giản vì Face ID được bảo mật rất kỹ khi toàn bộ thông tin của bạn đều được mã hóa và chỉ lưu trữ duy nhất trên điện thoại, không đưa lên kho dữ liệu đám mây. Bạn sẽ không lo bị hack hay mất dữ liệu Face ID, mọi thứ đều hết sức an toàn.</p>

<p><img alt="iPhone 11 khuôn mặt" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-13.jpg" /></p>

<h3><strong>Thời lượng pin xuất sắc</strong></h3>

<p>Thời lượng pin của iPhone đang tốt dần lên. Với iPhone 11 256GB, bạn sẽ có một chiếc iPhone thoải mái sử dụng trong cả ngày dài. Bộ vi xử lý tiết kiệm điện, cơ chế quản lý pin thông minh kết hợp với trí tuệ nhân tạo giúp thời lượng pin của bạn ngày càng tốt hơn. Ngoài ra, với tính năng sạc nhanh, iPhone 11 nhanh chóng nạp đầy năng lượng để bạn tiếp tục sử dụng mà không phải chờ đợi lâu.</p>
', 2, N'Apper a15', N'4GB', N'64GB', N'2K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (8, N'iphone-13-pro-max-silver-600x600.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'iPhone 12', N'1005.jpg', 22490000, 49, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 6, 0, 1, 1, N'<h3>Thiết kế được làm mới lại hoàn toàn</h3>

<p>Nhắc tới Apple, người dùng sẽ luôn nghĩ tới những thiết bị iPhone đẳng cấp, mang trên mình một thiết kế vô cùng sang trọng, hiện đại và thời thượng. Và iPhone 12 Series của năm nay cũng không phải là một ngoại lệ. Mẫu iPhone 12 64GB sở hữu một thiết kế đã được &ldquo;lột xác&rdquo; hoàn toàn so với các thế hệ tiền nhiệm trước đây với cạnh được vát phẳng, vuông thành sắc cạnh, mang tới một cảm giác cực kì bền bỉ và chắc chắn. Thiết kế này khiến cho người dùng có thể dễ dàng liên tưởng tới những mẫu iPhone huyền thoại trước đây đã làm nên tên tuổi của Apple như iPhone 4 hoặc iPhone 5.</p>

<p><img alt="maxresdefault-177" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-2.jpg" /></p>

<p>Màn hình của iPhone 12 64GB được trang bị công nghệ tấm nền OLED Super Retina XDR, mang lại cho iPhone 12 một chất lượng hiển thị xuất sắc nhất từ trước đến nay. Đi cùng với đó là độ phân giải Full HD 2,532 x 1,170; cho mật độ điểm ảnh cực tốt lên tới 460ppi. Với màn hình được nâng cấp và cải tiến như vậy, những vị chủ nhân sở hữu iPhone 12 có thể thoải mái thưởng thức những bộ phim hoặc chơi game mà không cần phải lo nghĩ về bất cứ điều gì.</p>

<h3>&nbsp;&ldquo;Quái thú hiệu năng&rdquo; với bộ vi xử lý Apple A14 Bionic</h3>

<p>Sở hữu một vẻ bên ngoài sang trọng, bóng bẩy và lịch lãm là vậy, thế nhưng iPhone 12 64GB lại mang trong mình một sức mạnh cực kì khủng khiếp, vượt trội hơn tất cả những mẫu smartphone đang có mặt trên thị trường. Tất cả là nhờ có bộ vi xử lý Apple A14 Bionic được sản xuất trên tiến trình 5nm mới nhất, không chỉ manh mà còn tiết kiệm điện năng tới tối đa. Con chip này được đánh giá là bộ vi xử lý mạnh mẽ nhất, nhanh nhất hiện nay với cấu tạo từ 6 lõi CPU, 11,8 tỷ bóng bán dẫn, 4 lõi GPU mới, và nhanh hơn A13 Bionic tới 40%. Công nghệ kết nối mạng 5G mới cùng với Wi-Fi 6 cũng đã được đưa vào iPhone 12, hứa hẹn sẽ mang tới một khả năng kết nối Internet vượt trội hoàn toàn.</p>

<p><img alt="lcimg-a62d96d8-e998-4803-9ac5-dce77df28439" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-3.jpg" /></p>

<p>Đặc biệt, trí tuệ nhân tạo AI Neural Engine giờ đây cũng đã được nâng lên thành 16 lõi, vì vậy nên vi xử lý Apple A14 Bionic có thể tính toán được 11 nghìn tỷ phép tính trong một giây. Bộ nhớ 64GB trên iPhone 12 cũng giúp cho người dùng có được không gian lưu trữ thoải mái hơn.</p>

<h3>Hệ thống camera đẳng cấp</h3>

<p>Vẫn là một hệ thống camera kép như trên người tiền nhiệm iPhone 11, thế nhưng các cảm biến trên iPhone 12 64GB chính hãng VN/A đã có khẩu độ tốt hơn, giúp thu nhận được nhiều ánh sáng, và từ đó những tấm hình cho ra sẽ mang chất lượng &ldquo;xịn xò&rdquo; hơn. Theo đó, cụm camera kép của máy bao gồm một cảm biến chính 12MP góc rộng và một camera phụ góc siêu rộng cũng có độ phân giải là 12MP, cho trường nhìn lên tới 120 độ.</p>

<p><img alt="lcimg-c1948b56-0661-497c-b56e-e938c2d208a7" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-4.jpg" /></p>

<p>Ngoài ra, Apple cũng đã nâng cấp các thuật toán xử lý ảnh trong các tính năng như chụp chân dung Portrait hay chụp chân dung Highkey. iPhone 12 hứa hẹn cũng sẽ cho khả năng chụp đêm tốt hơn nhiều so với iPhone 11. Về khả năng quay video, iPhone 12 sẽ là smartphone đầu tiên hỗ trợ quay video HDR chuẩn Dolby Vision, độ phân giải cao 4K@60fps.</p>

<h3>Viên pin cho thời lượng sử dụng bền bỉ</h3>

<p>Cung cấp năng lượng cho iPhone 12 năm nay là viên pin cho thời lượng sử dụng lên tới 17 tiếng xem video liên tục cùng với thời gian nghe nhac liên tục lên tới hơn 60 tiếng.</p>

<p><img alt="lcimg-2d684d61-a3fc-48a9-8faa-f2ef0d1d3306" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-128gb-chinh-hang-vn-a-5.jpg" /></p>

<p>Ngoài dung lượng pin được cải thiện, công nghệ sạc nhanh cũng rất quan trọng. iPhone 12 được trang bị công nghệ sạc nhanh Power Delivery 2.0 18W của Apple, chỉ cần sạc 30 phút là người dùng sẽ có ngay 50% pin để tiếp tục những công việc còn đang dang dở. Đặc biệt hơn cả là Apple đã mang tính năng sạc không dây MagSafe 15W quay trở lại trên iPhone 12, cho phép người dùng có thể nạp lại năng lượng mà không cần phải mang theo quá nhiều củ, cáp sạc phức tạp.</p>
', 2, N'Apper a12', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (9, N'iphone-13-mini-blue-2-600x600.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iphone-13-pro-sierra-blue-600x600.jpg', N'iphone-se-128gb-2020-do-600x600.jpg', N'iphone-se-2020-trang-600x600-600x600.jpg', N'iphone-xi-xanhla-600x600.jpg', N'iPhone 13 Pro Max', N'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', 37490000, 5, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 7, 0, 1, 1, N'<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Thiết kế vuông vức sang trọng, tần số quét lên tới 120Hz</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Xét về phong cách thiết kế, iPhone 13 Pro Max vẫn sở hữu khung viền vuông vức bằng kim loại sang trọng tương tự như iPhone 12 Pro Max. Mặt lưng của máy được hoàn thiện nhám để tránh lưu lại vân tay khi sử dụng. Cầm chiếc iPhone 13 Pro Max trên tay chắc chắn sẽ thu hút mọi ánh nhìn bởi thiết kế quá ấn tượng.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Là chiếc iPhone lớn nhất nên màn hình của iPhone 13 Pro Max cũng có kích thước lên tới 6.7 inch. Trên màn hình vẫn có tai thỏ quen thuộc nhưng đã được tinh chỉnh nhỏ gọn hơn thế hệ trước 20% nhằm tối ưu hóa không gian hiển thị. Camera selfie 12MP nằm trong tai thỏ và cung cấp bảo mật Face ID. Màn hình vẫn được bảo vệ bởi kính cường lực Ceramic Shield siêu bền.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Apple đã trang bị màn hình Super Retina XDR với công nghệ ProMotion giúp tinh chỉnh tần số quét 10 - 120Hz. Độ sáng tối đa cũng đã được tăng lên 1.200 nits. Có thể nói đây là điểm sáng giá nhất của iPhone 13 Pro Max.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Chip A15 Bionic mạnh mẽ, bộ nhớ cực khủng</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Chip Apple A15 Bionic 6 nhân, sản xuất trên tiến trình 5nm mang đến sự cải tiến lớn. Con chip này giúp giúp hiệu năng CPU và GPU nhanh hơn 50% so với thế hệ tiền nhiệm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max có tới bốn phiên bản lưu trữ bao gồm 128GB, 256GB, 512GB và 1TB. Đây là chiếc iPhone đầu tiên có dung lượng lưu trữ khủng đến vậy và hứa hẹn mang đến trải nghiệm tuyệt vời cho người dùng.</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max-2.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Dung lượng pin ấn tượng, hỗ trợ băng tần 5G</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max là chiếc iPhone có dung lượng pin lớn nhất trong iPhone 13 Series. Thời lượng pin kéo dài hơn thế hệ trước đến 2.5 giờ cho phép làm việc và giải trí không ngừng nghỉ suốt cả ngày dài. Máy cũng hỗ trợ sạc nhanh 20W giúp sạc đầy pin nhanh chóng, không làm gián đoạn trải nghiệm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Tiếp nối sự thành công của iPhone 12 Pro Max, iPhone 13 Pro Max tiếp tục hỗ trợ băng tần mạng 5G tiên tiến. Thế hệ mạng viễn thông mới mang đến tốc độ truyền tải Internet siêu nhanh. Nhờ đó, mọi hoạt động lướt web, quay video HDR, streaming trực tuyến đều diễn ra mượt mà. &nbsp;</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/09/16/iphone-13-pro-max-3.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Hệ thống camera xứng tầm đẳng cấp</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max vẫn sở hữu hệ thống ba camera chuyên nghiệp hàng đầu. Camera góc rộng 12MP cung cấp khả năng chụp ảnh thiếu sáng tốt hơn nhờ cảm biến kích thước lớn. Cùng với đó là camera góc siêu rộng 12MP khẩu độ f/1.8 giúp tự động lấy nét và chụp cận cảnh. Trên iPhone 13 Pro Max còn có camera tele 12MP cho phép zoom quang lên tới 3x. Apple cũng đã mang tính năng chụp macro lên chiếc iPhone này để chụp các đối tượng ở cự ly gần 2cm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">iPhone 13 Pro Max được bổ sung nhiều tính năng chụp hình quay phim chuyên nghiệp. Đầu tiên phải kể đến Photographic styles, một dạng bộ lọc màu mới dựa trên các thuật toán cho phép người dùng chỉnh sửa ảnh trong thời gian thực theo ý thích. Tính năng Cinematic Mode kết hợp với cảm biến LiDAR cũng giúp quay video chuyên nghiệp hơn.</span></span></span></span></p>
', 2, N'Apper a11', N'4GB', N'64GB', N'2K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (10, N'iphone-se-2020-trang-600x600-600x600.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'iPhone 13 Pro', N'1005.jpg', 31490000, 49, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 8, 0, 1, 1, N'Nổi bật với cụm camera sau được thiết kế đầy mới lạ, phần khuôn hình chữ nhật chứa bộ 3 camera ôm trọn cạnh trái của chiếc smartphone, viền khuôn cong uyển chuyển, hạn chế tối đa độ nhô ra so với mặt lưng, mang lại cái nhìn tổng thể hài hòa, độc đáo.', 2, N'Apper a12', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (11, N'iphone-12-pro-vang-dong-new-600x600-1-600x600.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'1005.jpg', N'iPhone 12 Pro', N'1005.jpg', 28490000, 50, CAST(N'2021-12-19' AS Date), 2, N'Còn hàng ', 9, 0, 1, 1, N'<p>Apple là nhà sản xuất điện thoại thông minh hàng đầu hiện nay. Trong nhiều năm qua, công ty liên tục thống lĩnh thị trường với doanh số bán khổng lồ và doanh thu kỷ lục. Các sản phẩm mang thương hiệu Apple luôn được người dùng đón nhận và tin tưởng nhờ thiết kế dẫn đầu xu hướng và hiệu năng bền bỉ theo thời gian. Trong đó, dòng điện thoại iPhone là sản phẩm chủ lực góp phần làm nên ngôi vị vững chắc của Apple trên thị trường. Năm 2020, Apple chính thức công bố dòng iPhone 12 Series thế hệ mới với 4 phiên bản. Trong đó iPhone 12 Pro 128GB chính hãng VN/A được rất nhiều người dùng lựa chọn. Cùng khám phá xem chiếc iPhone 12 Pro 128GB năm nay có những điểm đáng giá nào!&nbsp;</p>

<p><img alt="" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-pro-256gb-chinh-hang-vn-a-2.jpg" /></p>

<h3>Thiết kế sang trọng với cạnh phẳng vuông vắn</h3>

<p>Nhắc đến Apple, hầu hết người dùng đều nghĩ đến những chiếc iPhone với thiết kế thời thượng, sang trọng và khẳng định đẳng cấp. Thế hệ iPhone 12 Series năm nay cũng không ngoại lệ. Chiếc iPhone 12 Pro 128GB chính hãng sở hữu thiết kế vuông vắn với các cạnh phẳng, mang đến cảm giác mạnh mẽ, chắc chắn khi cầm trên tay. Thiết kế này gợi nhớ đến những chiếc iPhone 5s đã ra mắt từ nhiều năm trước. Hay gần đây nhất là thiết kế các khung nhôm phẳng của iPad Pro cũng khơi nguồn cảm hứng cho diện mạo của chiếc iPhone 12 Pro 128GB.</p>

<p><img alt="" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-pro-256gb-chinh-hang-vn-a-3.jpg" /></p>

<p>Không chỉ vậy, chiếc iPhone 12 Pro 128GB chính hãng mỏng hơn 11%, nhỏ gọn và nhẹ hơn nhiều so với các mẫu iPhone 11 ra mắt năm ngoái. iPhone 12 Pro 128GB chính hãng sở hữu màn hình kích thước 6.1 inch với các viền cực mỏng, mở ra không gian trải nghiệm không giới hạn. Không chỉ vậy, màn hình iPhone 12 Pro 128GB được cải thiện bởi tấm nền OLED và công nghệ Super Retina XDR, mang đến độ sắc nét tuyệt vời trên từng chi tiết hiển thị. Với tỷ lệ tương phản cao 2.000.000:1, màu sắc sống động, người dùng có thể đắm chìm trong các tác vụ làm việc, giải trí cùng iPhone 12 Pro. Hơn thế, 2 mặt kính cả trước và sau của iPhone 12 Pro được tăng cường độ bền bởi chất liệu Ceramic Shield, chống xước gấp 4 lần. iPhone 12 Pro 128GB sở hữu diện mạo khiến bất cứ ai cũng không thể rời mắt.</p>

<h3>Hiệu năng bùng nổ với chip A14 Bionic mạnh mẽ</h3>

<p>Không chỉ sở hữu thiết kế sang trọng, tinh tế, chiếc iPhone 12 Pro 128GB chính hãng VN/A còn được trang bị sức mạnh vượt trội từ con chip A14 Bionic của nhà Apple. Đây cũng là con chip smartphone nhanh nhất thế giới ở thời điểm hiện tại. A14 Bionic là con chip đầu tiên trên thế giới được sản xuất trên tiến trình 5nm, bao gồm 6 nhân CPU và 4 nhân GPU. Nó không chỉ hoạt động với hiệu năng bùng nổ mà còn vô cùng tiết kiệm năng lượng. iPhone 12 Pro 128GB hỗ trợ kết nối 5G nhanh nhất hiện nay, đem đến trải nghiệm xử lý đáng kinh ngạc.</p>

<p><img alt="" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-pro-256gb-chinh-hang-vn-a-4.jpg" /></p>

<p>Ngoài ra, bộ xử lý AI Neural Engine đã được nâng cấp lên 16 nhân, nhờ đó A14 Bionic có khả năng thực hiện 11 nghìn tỷ tính toán/giây. Đi kèm với đó là RAM 6GB và 128GB dung lượng bộ nhớ, cho phép người dùng lưu lại lượng thông tin lớn trên chiếc iPhone 12 Pro này. iPhone 12 Pro 128GB chính hãng VN/A tự hào với bộ xử lý ấn tượng, vượt lên tất cả công nghệ tiên tiến nhất hiện nay.</p>

<h3>Camera được nâng cấp với máy quét LiDAR</h3>

<p>Hệ thống camera trên chiếc iPhone 12 Pro 128GB chính hãng VN/Ađã được Apple nâng cấp đáng kể. Mô-đun camera sau hình vuông với 3 ống kính ultrawide (góc siêu rộng) khẩu độ f/2.4, wide (góc rộng) khẩu độ f/1.6 và telephoto (zoom). Cả hai ống kính góc rộng và siêu rộng đều được trang bị tính năng chụp đêm Nightmode, cùng với khẩu độ lớn, thu được nhiều ánh sáng hơn. Với hệ thống camera này, iPhone 12 Pro 128GB chính hãng sẵn sàng thách thức mọi điều kiện chụp. Bên cạnh đó, iPhone 12 Pro còn được bổ sung máy quét LiDAR từng xuất hiện trên iPad Pro. Nhờ đó nó có thể lấy nét nhanh hơn, chính xác hơn, đo độ sâu ảnh tốt hơn và còn hữu ích cho tính năng thực tế ảo AR. Về khả năng quay video, iPhone 12 Pro là smartphone đầu tiên hỗ trợ quay phim HDR chuẩn Dolby Vision, đạt mức 4K 60fps.</p>

<p><img alt="" src="https://hoanghamobile.com/Uploads/Content/2020/10/14/apple--dien-thoai-di-dong-apple-iphone-12-pro-256gb-chinh-hang-vn-a-5.jpg" /></p>

<p>Chiếc iPhone 12 Pro 128GB chính hãng VN/A đạt chuẩn chống nước và chống bụi IP68. Nó thậm chí có thể ngâm trong nước ở độ sâu 6m trong vòng 30 phút. Apple đã mang đến 4 lựa chọn màu sắc cho iPhone 12 Pro 128GB chính hãng, bao gồm xanh, vàng, đen và bạc. Sản phẩm đang được bán trên hệ thống của Hoàng Hà Mobile với mức giá ưu đãi và chế độ bảo hành chính hãng 12 tháng.</p>
', 2, N'Apper a13', N'4GB', N'128GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (12, N'1007.jpg', N'1001.jpg', N'1002.jpg', N'1003.jpg', N'1004.jpg', N'1005.jpg', N'iPhone XR 64GB', N'1006.jpg', 13490000, 50, CAST(N'2021-11-29' AS Date), 2, N'Còn hàng ', 5, 0, 1, 1, N'<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:18pt">Thiết kế cao cấp và nhiều màu sắc</span></span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">Người dùng đã quá quen với những chiếc điện thoại iPhone với tông màu đen, trắng cơ bản. Chiếc iPhone X đánh dấu 10 năm của dòng điện thoại được ưa thích nhất trên toàn cầu cũng không thoát ly khỏi phong cách già dặn có phần hơi trầm tính của Apple. Tuy nhiên khi ra mắt iPhone XR, Apple đã mang tới một sản phẩm vừa giữ lại được sự cao cấp, vừa có nhiều màu sắc trẻ trung.iPhone XR sở hữu hai mặt lưng kính cường lực bền bỉ và được bao quanh bởi khung viền nhôm, tạo cảm giác trên tay rất chắc chắn. Chiếc điện thoại này sở hữu những màu sắc phù hợp với cá tính của từng người dùng. Bên cạnh màu đen và trắng, Apple đã bổ sung thêm màu cam san hô, xanh dương, vàng và đỏ</span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2021/01/22/xr-1.jpg" style="height:415.48px; max-width:100%; width:415.48px" /></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">Phía trước của sản phẩm là màn hình 6,1 inch Liquid Retina có độ chính xác màu thuộc top đầu trong thế giới smartphone. Mặc dù có mức giá rẻ, đây vẫn là một màn hình tràn viền, giúp tối ưu không gian hiển thị. Mặt lưng vẫn có logo quả táo, camera đơn và đèn flash LED. Những chi tiết khác như phím bấm, loa và cổng sạc vẫn được bố trí ở những vị trí quen thuộc với độ hoàn thiện tốt.</span></span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:18pt">Cấu hình mạnh mẽ. Thời lượng pin cực tốt</span></span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">iPhone XR sở hữu sức mạnh tối tân tới từ con chip Apple A12 Bionic. Đây là con chip sản xuất trên tiến trình 7nm với hiệu năng vô cùng mạnh mẽ. iPhone XR dễ dàng đạt được gần 330.000 điểm AnTuTu Benchmark, và đem lại tốc độ không khác gì iPhone XS cũng như XS Max. Con chip này của Apple, kết hợp cùng dung lượng RAM 3GB, dư sức để đem lại cho người dùng trải nghiệm mượt mà trong mọi tác vụ từ mở ứng dụng, chụp hình, lướt web hay xử lý game đồ hoạ nặng. Dùng lượng 64GB cũng là một con số đủ dùng với những người dùng cơ bản.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">Mặc dù có hiệu năng mạnh mẽ thuộc hàng top, iPhone XR không phải một chiếc smartphone &ldquo;hiện đại &ndash; hại điện&rdquo;. Đây được đánh giá là một trong số những chiếc iPhone có thời lượng pin tốt nhất. Viên pin 2.942 mAh của máy sẵn sàng đáp ứng được nhu cầu sử dụng nặng trong một ngày của người dùng. Máy cũng hỗ trợ công nghệ sạc nhanh 18W và sạc không dây, giúp bạn nhanh chóng sạc đầy pin để nối lại trải nghiệm dang dở của mình.</span></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">Hiện tại, iPhone XR đã có thể được nâng cấp lên iOS 14 mới nhất với nhiều tính năng hiện đại như widget, thay đổi giao diện màn hình chính và Dark Mode. Chiếc điện thoại này hứa hẹn sẽ được hỗ trợ phần mềm trong ít nhất 3-4 năm tới.</span></span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:18pt">Camera chất lượng. Quay phim 4K cực đỉnh</span></span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">Mặc dù thiếu sót những camera tele ở mặt sau, iPhone XR vẫn là chiếc điện thoại có chất lượng quay phim và chụp hình vô cùng tốt. Camera chính có độ phân giải 12MP, khẩu độ f/1.8, được bê nguyên từ camera của iPhone XS Max sang. So với iPhone X, cảm biến của iPhone XR đã lớn hơn, đem lại điểm ảnh lớn và cải thiện khả năng thu sáng. Kết hợp cùng Neural Engine được tích hợp trên chip Apple A12, iPhone XR được trang bị thêm tính năng Smart HDR, giúp cải thiện độ tương phản động, đem lại những bức ảnh rực rỡ ngay cả khi chụp trong điều kiên chênh sáng. Việc thiếu đi một camera phụ cũng không lấy đi của iPhone XR tính năng chụp ảnh chân dung xoá phông. Người dùng hoàn toàn có thể điều chỉnh độ mờ phông nền sau khi đã chụp ảnh.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">iPhone XR cũng lọt top những chiếc điện thoại có khả năng quay phim hàng đầu trong tầm giá. Camera của máy có thể quay video ở độ phân giải tối đa là 4K ở 60 khung hình/giây. Khả năng tự mở rộng độ tương phản động giúp máy có được những thước phim rực rỡ như đang bật HDR. Camera này cũng được trang bị công nghệ chống rung quang học OIS đem lại khả năng quay video mượt mà ngay cả khi bạn đang cầm trên tay và di chuyển.</span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2021/01/22/xr2.jpg" style="height:282.557px; max-width:100%; width:423.703px" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="font-size:10.5pt">iPhone XR được trang bị camera TrueDepth ở mặt trước. Điều này giúp bạn có thể sử dụng tính năng bảo mật khuôn mặt Face ID vô cùng an toàn và tiện lợi. Người dùng cũng có thể sử dụng tính năng Animoji vui nhộn với camera của máy. Camera 7MP có thể chụp những bức ảnh selfie vô cùng chất với khả năng xoá phông tương tự camera sau.</span></span></span></span></span></p>
', 2, N'Apper a14', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (18, N'iphone-xi-xanhla-600x600.jpg', N'1010.jpg', N'1011.jpg', N'1012.jpg', N'iphone-13-pro-max-silver-600x600.jpg', N'iphone-13-pro-sierra-blue-600x600.jpg', N'iPhone SE', N'iphone-se-128gb-2020-do-600x600.jpg', 10490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 0, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apper a110', N'4gb', N'64gb', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (24, N'samsung-galaxy-s21-tim-600x600.jpg', N'iphone-xi-xanhla-600x600.jpg', N'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', N'samsung-galaxy-a03s-black-600x600.jpg', N'samsung-galaxy-a52s-5g-mint-600x600.jpg', N'samsung-galaxy-s21-plus-den-600x600-600x600.jpg', N'Galaxy Z Fold3', N'1001.jpg', 34490000, 48, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 4, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (25, N'samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy A03s', N'1001.jpg', 4490000, 48, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 2, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (26, N'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy A52s', N'1001.jpg', 7490000, 48, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 3, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (27, N'samsung-galaxy-z-flip-3-violet-1-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy Z Fold2 5G ', N'1001.jpg', 6490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 6, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (28, N'samsung-galaxy-z-fold-2-den-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy S21+ 5G', N'1001.jpg', 9490000, 2, CAST(N'2021-12-19' AS Date), 2, N'Còn hàng ', 7, 0, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (29, N'1009.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy A52 5G', N'1001.jpg', 6490000, 50, CAST(N'2021-11-22' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (31, N'samsung-galaxy-z-fold-3-silver-1-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy A52', N'1001.jpg', 5490000, 0, CAST(N'2021-12-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (32, N'samsung-galaxy-a52s-5g-mint-600x600.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy A32', N'1001.jpg', 5490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (33, N'oppo-a74-5g-silver-01-600x600.jpg', N'oppo-a74-blue-9-600x600.jpg', N'oppo-a93-trang-14-600x600.jpg', N'oppo-a94-black-thumb-purple-600x600-600x600.jpg', N'oppo-a95-4g-thumbmau2-600x600.jpg', N'oppo-find-x3-pro-black-001-1-600x600.jpg', N'OPPO Reno6 Z 5G', N'oppo-reno4-pro-trang-600x600.jpg', 6490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (34, N'oppo-reno5-marvel-thumb-600x600-600x600.jpg', N'oppo-reno5-trang-600x600-1-600x600.jpg', N'oppo-reno6-5g-aurora-600x600.jpg', N'oppo-reno6-pro-blue-1-600x600.jpg', N'oppo-find-x3-pro-black-001-1-600x600.jpg', N'oppo-reno4-pro-trang-600x600.jpg', N'OPPO A74', N'oppo-reno5-5g-thumb-600x600.jpg', 7490000, 49, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (35, N'oppo.jpg', N'oppo-a74-5g-silver-01-600x600.jpg', N'oppo-a74-blue-9-600x600.jpg', N'oppo-a95-4g-thumbmau2-600x600.jpg', N'oppo-find-x3-pro-black-001-1-600x600.jpg', N'oppo-reno4-pro-trang-600x600.jpg', N'OPPO Reno6 Pro', N'oppo-reno5-5g-thumb-600x600.jpg', 7490000, 49, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (36, N'oppo-a94-black-thumb-purple-600x600-600x600.jpg', N'oppo-reno5-5g-thumb-600x600.jpg', N'oppo-reno5-marvel-thumb-600x600-600x600.jpg', N'oppo-reno5-trang-600x600-1-600x600.jpg', N'oppo-reno6-5g-aurora-600x600.jpg', N'oppo-reno6-pro-blue-1-600x600.jpg', N'OPPO Find X3', N'1001.jpg', 7490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (37, N'oppo-reno5-marvel-thumb-600x600-600x600.jpg', N'oppo-reno5-trang-600x600-1-600x600.jpg', N'oppo-reno6-5g-aurora-600x600.jpg', N'oppo-reno6-pro-blue-1-600x600.jpg', N'realme.jpg', N'samsung-galaxy-a03s-black-600x600.jpg', N'OPPO Reno6 5G', N'samsung-galaxy-a52s-5g-mint-600x600.jpg', 7490000, 50, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (38, N'oppo.jpg', N'oppo-a74-5g-silver-01-600x600.jpg', N'oppo-a74-blue-9-600x600.jpg', N'oppo-a93-trang-14-600x600.jpg', N'oppo-a94-black-thumb-purple-600x600-600x600.jpg', N'1001.jpg', N'OPPO Reno5', N'1001.jpg', 5490000, 49, CAST(N'2021-11-19' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (39, N'oppo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'OPPO Reno4 Pro', N'1001.jpg', 5490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (40, N'oppo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'OPPO Reno5 Marvel', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (41, N'oppo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'OPPO A74 5G ', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (42, N'oppo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'OPPO A94', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (43, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi 11T 5G', N'1001.jpg', 9490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (44, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi Redmi 10', N'1001.jpg', 9490000, 49, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (45, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi Mi 11', N'1001.jpg', 9490000, 49, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (46, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi 11T Pro', N'1001.jpg', 5490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (47, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi Mi 10T Pro', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (48, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi 11T 5G', N'1001.jpg', 7490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (49, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Xiaomi 11 Lite', N'1001.jpg', 11490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (50, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Redmi Note 10', N'1001.jpg', 2490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (51, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Redmi Note 10S ', N'1001.jpg', 4490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (52, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Redmi 9T', N'1001.jpg', 12490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (53, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Redmi 9A ', N'1001.jpg', 13490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (54, N'xiaomi.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Redmi 9T', N'1001.jpg', 14490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 4, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (62, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y21', N'1001.jpg', 21490000, 48, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (63, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo X70 Pro 5G ', N'1001.jpg', 5490000, 48, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (64, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo V21 5G ', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (65, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo V20 (2021)', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (66, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y72 5G', N'1001.jpg', 3490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (67, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y51 (2020) ', N'1001.jpg', 2490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (68, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y21s 4GB', N'1001.jpg', 4490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (69, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y72 5G', N'1001.jpg', 7490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (70, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y21s 6GB', N'1001.jpg', 8490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (71, N'vivo.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Vivo Y21s 4GB', N'1001.jpg', 11490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 5, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (73, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme C11 (2021)', N'1001.jpg', 10490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (74, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme 8 Pro', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (75, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N' Realme 7 Pro', N'1001.jpg', 23490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (76, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme 8 5G', N'1001.jpg', 3490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (77, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme 8', N'1001.jpg', 4490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (78, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme 6 Pro', N'1001.jpg', 5490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (79, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme 7i', N'1001.jpg', 6490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (80, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme C25Y', N'1001.jpg', 7490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (81, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Realme C25', N'1001.jpg', 7490000, 50, CAST(N'2021-11-11' AS Date), 2, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (82, N'apple-macbook-pro-16-m1-max-2021-600x600.jpg', N'macbook.jpg', N'macbook-air-m1-2020-gold-600x600.jpg', N'macbook-air-m1-2020-gray-600x600.jpg', N'macbook-pro-m1-2020-gray-1-600x600.jpg', N'macbook-pro-m1-2020-gray-600x600.jpg', N' MacBook Air M1', N'macbook-pro-m1-2020-silver-600x600.jpg', 38490000, 50, CAST(N'2021-11-20' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (83, N'apple-macbook-air-m1-2020-z12a00050-600x600.jpg', N'apple-macbook-pro-14-m1-pro-2021-10-core-cpu-1-1-600x600.jpg', N'apple-macbook-pro-14-m1-pro-2021-600x600.jpg', N'apple-macbook-pro-16-m1-max-2021-600x600.jpg', N'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600 (1).jpg', N'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600.jpg', N'MacBook Pro M1 2020', N'apple-macbook-pro-m1-2020-z11c000cj-600x600.jpg', 28490000, 50, CAST(N'2021-11-20' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (84, N'apple-macbook-pro-16-m1-max-2021-600x600.jpg', N'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600 (1).jpg', N'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600.jpg', N'apple-macbook-pro-m1-2020-z11c000cj-600x600.jpg', N'macbook.jpg', N'macbook-air-m1-2020-gold-600x600.jpg', N'MacBook Pro 16', N'macbook-pro-m1-2020-silver-600x600.jpg', 44490000, 50, CAST(N'2021-11-20' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (85, N'macbook.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'MacBook Pro 16 M1', N'1001.jpg', 15490000, 50, CAST(N'2021-11-11' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (86, N'macbook.jpg', N'macbook-air-m1-2020-gold-600x600.jpg', N'macbook-air-m1-2020-gray-600x600.jpg', N'macbook-pro-m1-2020-gray-1-600x600.jpg', N'macbook-pro-m1-2020-gray-600x600.jpg', N'macbook-pro-m1-2020-silver-600x600.jpg', N'MacBook Pro 14', N'1001.jpg', 25490000, 50, CAST(N'2021-11-20' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (87, N'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600 (1).jpg', N'macbook.jpg', N'macbook-air-m1-2020-gold-600x600.jpg', N'macbook-air-m1-2020-gray-600x600.jpg', N'macbook-pro-m1-2020-gray-1-600x600.jpg', N'macbook-pro-m1-2020-gray-600x600.jpg', N'MacBook Pro M1', N'macbook-pro-m1-2020-silver-600x600.jpg', 16490000, 0, CAST(N'2021-12-07' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (88, N'apple-macbook-pro-m1-2020-z11c000cj-600x600.jpg', N'macbook.jpg', N'macbook-air-m1-2020-gold-600x600.jpg', N'macbook-air-m1-2020-gray-600x600.jpg', N'macbook-pro-m1-2020-gray-1-600x600.jpg', N'macbook-pro-m1-2020-gray-600x600.jpg', N' MacBook Air M1 2020', N'macbook-pro-m1-2020-silver-600x600.jpg', 17490000, 2, CAST(N'2021-12-07' AS Date), 1, N'Còn hàng ', 0, 0, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 2, N'Apple M1', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (100, N'opppe.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Oppo Find X2 Pro 5G', N'1001.jpg', 3490000, 50, CAST(N'2020-01-10' AS Date), 2, N'Còn hàng ', 0, 1, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 3, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (101, N's20_ultra_bts_edition_0003_samsung_galaxy_s20_plus_bts_edit.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy S20 + 5G BTS ', N'1001.jpg', 3490000, 50, CAST(N'2020-01-10' AS Date), 2, N'Còn hàng ', 0, 1, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (102, N'iphone-4-16gb-trang-active.png', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'iPhone 4', N'1001.jpg', 3490000, 50, CAST(N'2020-01-10' AS Date), 2, N'Còn hàng ', 0, 1, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 2, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (103, N't1.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Galaxy Note (2011)', N'1001.jpg', 3490000, 50, CAST(N'2020-01-10' AS Date), 2, N'Còn hàng ', 0, 1, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 1, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
INSERT [dbo].[Products] ([Product_id], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Name], [Image7], [Unit_price], [Quantity], [Product_date], [Category_id], [Description], [Distcount], [Special], [Lastest], [Status], [Detail], [Trademark_id], [Chip], [Ram], [Rom], [Resolution], [Pin]) VALUES (104, N'realme.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'1001.jpg', N'Note 10+ Star Wars', N'1001.jpg', 3490000, 50, CAST(N'2020-01-10' AS Date), 2, N'Còn hàng ', 0, 1, 1, 1, N'<p>Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.</p>
', 6, N'Snapdragon 888', N'4GB', N'64GB', N'4K', N'4400 mAh')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Role_id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Role_id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Role_id], [Name]) VALUES (N'STAF', N'Staffs')
GO
SET IDENTITY_INSERT [dbo].[Trademarks] ON 

INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (1, N'SamSung', N'là 1 thương hiệu đến từ hàn quốc')
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (2, N'Iphone', NULL)
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (3, N'Oppo', NULL)
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (4, N'Xiaomi', NULL)
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (5, N'Vivo', NULL)
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (6, N'Realme', NULL)
INSERT [dbo].[Trademarks] ([Trademark_id], [Name], [Detail]) VALUES (8, N'acer', N'ádasdasdadasd')
SET IDENTITY_INSERT [dbo].[Trademarks] OFF
GO
SET IDENTITY_INSERT [dbo].[Votes] ON 

INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (1, 38, N'phuoc', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 3, N'oppo-reno4-pro-trang-600x600.jpg', N'xuaas')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (2, 45, N'phuoc', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 5, N'', N'qq')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (3, 62, N'phuoc', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 5, N'1009.jpg', N'jasdnkjasnd')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (4, 1, N'phuoc', CAST(N'2021-11-25T00:00:00.000' AS DateTime), 4, N'1006.jpg', N'fdfds')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (5, 1, N'phuoc', CAST(N'2021-11-27T00:00:00.000' AS DateTime), 5, N'1002.jpg', N'đẹp')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (6, 1, N'phuoc', CAST(N'2021-11-27T00:00:00.000' AS DateTime), 4, N'1009.jpg', N'Sản phẩm chất lượng')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (7, 2, N'admin', CAST(N'2021-11-29T00:00:00.000' AS DateTime), 5, N'1003.jpg', N'SDSAD')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (8, 2, N'admin', CAST(N'2021-12-04T00:00:00.000' AS DateTime), 5, N'1001.jpg', N'Đẹp')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (9, 2, N'admin', CAST(N'2021-12-06T20:26:21.180' AS DateTime), 5, N'', N'ddfsdf')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (10, 2, N'admin', CAST(N'2021-12-07T19:09:01.623' AS DateTime), 5, N'1008.jpg', N'eqweqwd')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (11, 1, N'admin', CAST(N'2021-12-08T20:06:42.167' AS DateTime), 4, N'1008.jpg', N'Hnagf tốt')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (12, 1, N'admin', CAST(N'2021-12-08T20:17:16.747' AS DateTime), 3, N'1002.jpg', N'sanr pham tot')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (13, 1, N'admin', CAST(N'2021-12-21T19:00:15.590' AS DateTime), 2, N'canbo.png', N'hangd dep')
INSERT [dbo].[Votes] ([Vote_id], [Product_id], [Username], [Vote_Date], [Vote], [Image], [Vote_content]) VALUES (14, 2, N'admin', CAST(N'2021-12-22T08:26:09.390' AS DateTime), 4, N'1007.jpg', N'hàng tối')
SET IDENTITY_INSERT [dbo].[Votes] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher_details] ON 

INSERT [dbo].[voucher_details] ([Voucher_detail_id], [Voucher_id], [Order_id]) VALUES (1, NULL, 172)
INSERT [dbo].[voucher_details] ([Voucher_detail_id], [Voucher_id], [Order_id]) VALUES (2, 1, 173)
INSERT [dbo].[voucher_details] ([Voucher_detail_id], [Voucher_id], [Order_id]) VALUES (3, 1, 174)
INSERT [dbo].[voucher_details] ([Voucher_detail_id], [Voucher_id], [Order_id]) VALUES (4, 1, 182)
INSERT [dbo].[voucher_details] ([Voucher_detail_id], [Voucher_id], [Order_id]) VALUES (1002, 1, 1179)
SET IDENTITY_INSERT [dbo].[voucher_details] OFF
GO
SET IDENTITY_INSERT [dbo].[Vouchers] ON 

INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (1, N'123456', CAST(N'2021-12-21T19:33:00.000' AS DateTime), CAST(N'2024-12-25T19:33:00.000' AS DateTime), 10000000, N'Voucher giảm giá ngày 20/10', 1, NULL)
INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (3, N'123123213123', CAST(N'2021-12-21T19:33:00.000' AS DateTime), CAST(N'2021-12-21T19:33:00.000' AS DateTime), 13123123123, N'Voucher giảm giá ngày 20/10', 0, NULL)
INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (4, N'21312312312', CAST(N'2023-11-03T06:21:00.000' AS DateTime), CAST(N'2023-11-02T06:21:00.000' AS DateTime), 21312312312, N'21312312312', 0, NULL)
INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (7, N'ádasdasdasd', CAST(N'2023-11-18T06:28:00.000' AS DateTime), CAST(N'2023-12-21T06:28:00.000' AS DateTime), 12313123, N'1313123', 0, NULL)
INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (9, N'99999', CAST(N'2023-11-12T06:40:00.000' AS DateTime), CAST(N'2023-11-03T06:40:00.000' AS DateTime), 99999, N'3123132123', 0, NULL)
INSERT [dbo].[Vouchers] ([Voucher_id], [Voucher_name], [CreateDate], [EndDate], [Voucher_price], [Voucher_content], [Status], [Username]) VALUES (10, N'12312sdsdsd44oke6', CAST(N'2023-11-09T18:58:00.000' AS DateTime), CAST(N'2023-11-25T18:58:00.000' AS DateTime), 123123123, N'Voucher giảm giá 20/10', 1, NULL)
SET IDENTITY_INSERT [dbo].[Vouchers] OFF
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorize_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorize_Account]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorize_Role] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Roles] ([Role_id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorize_Role]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_id])
REFERENCES [dbo].[Categories] ([Category_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Trademarks] FOREIGN KEY([Trademark_id])
REFERENCES [dbo].[Trademarks] ([Trademark_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Trademarks]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [FK_Votes_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [FK_Votes_Accounts]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [FK_Votes_Products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [FK_Votes_Products]
GO
ALTER TABLE [dbo].[voucher_details]  WITH CHECK ADD  CONSTRAINT [FK_VoucherDetails_Orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[voucher_details] CHECK CONSTRAINT [FK_VoucherDetails_Orders]
GO
ALTER TABLE [dbo].[voucher_details]  WITH CHECK ADD  CONSTRAINT [FK_VoucherDetails_Vouchers] FOREIGN KEY([Voucher_id])
REFERENCES [dbo].[Vouchers] ([Voucher_id])
GO
ALTER TABLE [dbo].[voucher_details] CHECK CONSTRAINT [FK_VoucherDetails_Vouchers]
GO
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Vouchers_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Vouchers_Accounts]
GO
