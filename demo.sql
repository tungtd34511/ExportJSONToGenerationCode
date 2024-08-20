USE [Facolos]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[AccountStatusId] [bigint] NULL,
	[AccountTypeId] [bigint] NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Photo] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[IdCardNumber] [nvarchar](max) NULL,
	[GoogleId] [nvarchar](max) NULL,
	[FacebookId] [nvarchar](max) NULL,
	[IDCardNumberPhoto1] [nvarchar](max) NULL,
	[IDCardNumberPhoto2] [nvarchar](max) NULL,
	[DoB] [datetime2](7) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[AddressCity] [nvarchar](max) NULL,
	[AddressDistrict] [nvarchar](max) NULL,
	[AddressWard] [nvarchar](max) NULL,
	[AddressDetail] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[AccessFailedCount] [int] NULL,
	[LockoutEnabled] [bit] NULL,
	[LockoutEndDate] [datetime2](7) NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Search] [nvarchar](255) NULL,
	[RoleId] [bigint] NULL,
	[Phone] [nvarchar](12) NULL,
	[Email] [nvarchar](255) NULL,
 CONSTRAINT [PK__Account__3214EC07FBF9051C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountMeta]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountMeta](
	[Id] [bigint] IDENTITY(1001,1) NOT FOR REPLICATION NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [ntext] NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountMeta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Color] [nvarchar](255) NULL,
 CONSTRAINT [PK__AccountS__3214EC0768461D3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[AccountId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[EntityCode] [nvarchar](255) NULL,
	[Info] [nvarchar](255) NULL,
	[ObjectOld] [nvarchar](max) NULL,
	[ObjectNew] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[UrlSource] [nvarchar](max) NULL,
	[IpAddress] [nvarchar](255) NULL,
	[Device] [nvarchar](255) NULL,
	[Browser] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[UserAgent] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AffiliateCode]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AffiliateCode](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Discount] [int] NOT NULL,
	[DiscountType] [int] NOT NULL,
	[Commission] [int] NOT NULL,
	[CommissionType] [int] NOT NULL,
	[DiscountEndDate] [datetime2](7) NULL,
	[MinimumOrderTotal] [int] NULL,
	[AccountId] [bigint] NULL,
 CONSTRAINT [PK_AffiliateCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[VideoURL] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[ProductId] [bigint] NULL,
	[Quantity] [int] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[CountryCode] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
 CONSTRAINT [PK__Country__3214EC07457DF0A9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[CustomerCategoryId] [bigint] NULL,
	[AccountId] [bigint] NULL,
	[FullName] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](512) NULL,
	[Address] [nvarchar](2048) NULL,
	[CitizenId] [nvarchar](2048) NULL,
	[Description] [nvarchar](1024) NULL,
	[Photo] [nvarchar](max) NULL,
	[IDCardNumberPhoto1] [nvarchar](max) NULL,
	[IDCardNumberPhoto2] [nvarchar](max) NULL,
	[DoB] [datetime2](7) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[AddressCity] [nvarchar](max) NULL,
	[AddressDistrict] [nvarchar](max) NULL,
	[AddressWard] [nvarchar](max) NULL,
	[AddressDetail] [nvarchar](max) NULL,
	[Search] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[RankId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCategory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCategory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[DiscountType] [int] NULL,
	[Color] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerShipAddress]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerShipAddress](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[CustomerId] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[ProvinceId] [bigint] NULL,
	[DistrictId] [bigint] NULL,
	[WardId] [bigint] NULL,
	[AddressDetail] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[RecipientName] [nvarchar](max) NULL,
	[RecipientPhoneNumber] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[ProvinceId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportInternalRequest]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportInternalRequest](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[AccountRequestId] [bigint] NULL,
	[RequestDate] [datetime] NULL,
	[AccountConfirmId] [bigint] NULL,
	[ConfirmDate] [datetime] NULL,
	[ProductId] [bigint] NOT NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NOT NULL,
	[ExportInternalRequestStatusId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportInternalRequestStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportInternalRequestStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderUpload]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderUpload](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[ParentId] [bigint] NULL,
	[TreeIds] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[GroupId] [int] NULL,
	[ParentId] [int] NULL,
	[Active] [bit] NOT NULL,
	[Priority] [int] NULL,
	[MenuTypeId] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[NotificationStatusId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[SenderId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
	[ApproveTime] [datetime] NULL,
	[Url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderCallEvent]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderCallEvent](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[IsCreateEvent] [bit] NULL,
	[TimeToCall] [datetime2](7) NULL,
	[IsCall] [bit] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[ProductId] [bigint] NULL,
	[Quantity] [int] NULL,
	[QuantityReturn] [int] NULL,
	[Price] [int] NULL,
	[FinalPrice] [int] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[OrderDetailStatusId] [bigint] NULL,
	[IsEdit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailMeta]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailMeta](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[OrderDetailId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Key] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Color] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Color] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPromotion]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPromotion](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[PromotionId] [bigint] NULL,
	[OrderId] [bigint] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__OrderPro__3214EC07C94B5A8D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[OrderTypeId] [bigint] NULL,
	[OrderStatusId] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[OrderPaymentStatusId] [bigint] NULL,
	[Active] [bit] NOT NULL,
	[DirectDiscount] [float] NULL,
	[Price] [int] NULL,
	[TotalPaid] [int] NULL,
	[FinalPrice] [int] NULL,
	[Feedback] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Search] [nvarchar](max) NULL,
	[DepositValue] [nvarchar](255) NULL,
	[DepositTypeId] [bigint] NULL,
	[AccountId] [bigint] NULL,
	[ShipCountryAddress] [nvarchar](max) NULL,
	[ShipProvinceAddress] [nvarchar](max) NULL,
	[ShipDistrictAddress] [nvarchar](max) NULL,
	[ShipWardAddress] [nvarchar](max) NULL,
	[ShipAddressDetail] [nvarchar](max) NULL,
	[ShipRecipientName] [nvarchar](max) NULL,
	[ShipRecipientPhone] [nvarchar](max) NULL,
	[ShipWarehouseReceiverValue] [int] NULL,
	[ShipWarehouseValue] [int] NULL,
	[ShipReturnValue] [int] NULL,
	[ShipValue] [int] NULL,
	[ShipProvinceAddressId] [bigint] NULL,
	[ShipDistrictAddressId] [bigint] NULL,
	[ShipWardAddressId] [bigint] NULL,
	[IsSingleOrder] [int] NULL,
	[LabelId] [nvarchar](max) NULL,
	[VoucherCode] [nvarchar](50) NULL,
	[VoucherDiscount] [float] NULL,
	[AffiliateCode] [nvarchar](50) NULL,
	[AffiliateDiscount] [float] NULL,
	[Email] [nvarchar](255) NULL,
 CONSTRAINT [PK__Orders__3214EC07083BAF13] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Color] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Description] [nvarchar](max) NULL,
	[Color] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderUpdateHistory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderUpdateHistory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[OrderId] [bigint] NULL,
	[AccountId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[ObjectOld] [nvarchar](max) NULL,
	[ObjectNew] [nvarchar](max) NULL,
	[ListOrderDetailOld] [nvarchar](max) NULL,
	[ListOrderDetailNew] [nvarchar](max) NULL,
	[Change] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
	[IpAddress] [nvarchar](255) NULL,
	[Device] [nvarchar](255) NULL,
	[Browser] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[UserAgent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PenaltyType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PenaltyType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[PostTypeId] [bigint] NOT NULL,
	[PostLayoutId] [bigint] NOT NULL,
	[PostStatusId] [bigint] NOT NULL,
	[PostCategoryId] [bigint] NOT NULL,
	[Overview] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[AuthorId] [bigint] NOT NULL,
	[IsPublish] [bit] NOT NULL,
	[IsDraft] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[ApprovalDate] [datetime2](7) NOT NULL,
	[PublishedTime] [datetime2](7) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Search] [varchar](max) NOT NULL,
	[Price] [int] NULL,
	[Url] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[ParrentId] [bigint] NOT NULL,
	[Color] [nvarchar](12) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostLayout]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostLayout](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PostLayout] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Color] [nvarchar](12) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PostStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[PostId] [bigint] NOT NULL,
	[TagId] [bigint] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PostTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PostType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[ProductCategoryId] [bigint] NOT NULL,
	[ProductBrandId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Search] [nvarchar](max) NULL,
	[ProductCode] [nvarchar](max) NULL,
	[TotalSold] [bigint] NOT NULL,
	[Weigh] [float] NULL,
	[DiscountPrice] [decimal](18, 0) NOT NULL,
	[WholesalePrice] [decimal](18, 0) NOT NULL,
	[Price] [bigint] NOT NULL,
	[SupplierId] [bigint] NOT NULL,
	[Height] [nvarchar](max) NULL,
	[ParentId] [bigint] NULL,
	[MultiplePhoto] [nvarchar](max) NULL,
	[IsFeature] [bit] NOT NULL,
	[IsSale] [bit] NOT NULL,
	[IsPopular] [bit] NOT NULL,
	[TotalReview] [int] NOT NULL,
	[ReviewAverage] [float] NOT NULL,
	[DiscountEndDate] [datetime] NULL,
	[Quantity] [int] NOT NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK__Product__3214EC07CDEF4952] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttribute]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttribute](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
	[ProductId] [bigint] NOT NULL,
	[AttributeId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductBrand]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBrand](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[ParentId] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[TreeId] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReview]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReview](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[ProductId] [bigint] NULL,
	[Score] [float] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[TotalLike] [int] NOT NULL,
	[TotalUnlike] [int] NOT NULL,
 CONSTRAINT [PK__ProductR__3214EC07DABAB1E5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionMeta]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionMeta](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[PromotionId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Key] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[CountryId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NOT NULL,
	[CustomerId] [bigint] NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewLikes]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewLikes](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[ProductReviewId] [bigint] NULL,
	[IsLiked] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ReviewLikes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rights]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rights](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL,
	[Url] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK__Role__3214EC07C4B497F9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMenu]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenu](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[RoleId] [bigint] NULL,
	[MenuId] [bigint] NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleRights]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleRights](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[RoleId] [bigint] NULL,
	[RightsId] [bigint] NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[KeyValue] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[CustomerShipAddressId] [bigint] NULL,
	[ShipTypeId] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[ShipStatusId] [bigint] NULL,
	[ShipSuccessTime] [datetime2](7) NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ThemeMode] [nvarchar](15) NULL,
 CONSTRAINT [PK__Slide__3214EC076979490F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[SupplierTypeId] [bigint] NOT NULL,
	[SupplierStatusId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemProductLogHistory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemProductLogHistory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ProductId] [bigint] NOT NULL,
	[ObjectOld] [nvarchar](max) NULL,
	[ObjectNew] [nvarchar](max) NULL,
	[OrderReturnId] [bigint] NULL,
	[OrderId] [bigint] NULL,
	[PurchaseOrderId] [bigint] NULL,
	[UpdatedAccountId] [bigint] NOT NULL,
	[UpdatedTime] [datetime] NOT NULL,
	[SystemProductLogHistoryTypeId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemProductLogHistoryType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemProductLogHistoryType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[TagTypeId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TagType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[TransactionTypeId] [bigint] NULL,
	[TransactionStatusId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Amount] [int] NULL,
	[SenderInfo] [nvarchar](max) NULL,
	[ReceiveInfo] [nvarchar](max) NULL,
	[OrderId] [bigint] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsMeta]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsMeta](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[TransactionId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Key] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadFile]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadFile](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[FolderUploadId] [bigint] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Size] [bigint] NULL,
	[Extension] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[ThumbnailPath] [nvarchar](max) NULL,
	[MimeType] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[PromotionId] [bigint] NULL,
	[VoucherTypeId] [bigint] NULL,
	[VoucherStatusId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Value] [int] NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherMeta]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherMeta](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[VoucherId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Key] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[DistrictId] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NULL,
	[WarehouseStatusId] [bigint] NOT NULL,
	[WarehouseTypeId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[AddressCity] [bigint] NULL,
	[AddressDistrict] [bigint] NULL,
	[AddressWard] [bigint] NULL,
	[AddressDetail] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseAccount]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseAccount](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseCard]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseCard](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Quantity] [int] NULL,
	[OrderId] [bigint] NULL,
	[WarehouseEntryRequestId] [bigint] NULL,
	[WarehouseId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseCardDetail]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseCardDetail](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ProductId] [bigint] NULL,
	[WarehouseCardId] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[QuantityRemain] [int] NULL,
	[Sign] [nvarchar](5) NULL,
	[StatusName] [nvarchar](max) NULL,
	[StatusId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseEntryRequest]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseEntryRequest](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[WarehouseEntryRequestStatusId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[AccountId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[Reason] [nvarchar](max) NULL,
	[ShipValue] [decimal](18, 0) NULL,
	[ShipCountryAddress] [nvarchar](max) NULL,
	[ShipProvinceAddress] [nvarchar](max) NULL,
	[ShipDistrictAddress] [nvarchar](max) NULL,
	[ShipWardAddress] [nvarchar](max) NULL,
	[ShipAddressDetail] [nvarchar](max) NULL,
	[ShipRecipientName] [nvarchar](max) NULL,
	[ShipRecipientPhone] [nvarchar](max) NULL,
	[ShipProvinceAddressId] [bigint] NULL,
	[ShipDistrictAddressId] [bigint] NULL,
	[ShipWardAddressId] [bigint] NULL,
	[ShipRecipientId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseEntryRequestDetail]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseEntryRequestDetail](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[ProductId] [bigint] NOT NULL,
	[WarehouseEntryRequestId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[FinalPrice] [decimal](18, 0) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Unit] [nvarchar](max) NULL,
	[ProductAddedCanbinetQuantity] [int] NULL,
	[ExpiryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseEntryRequestHistory]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseEntryRequestHistory](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[WarehouseEntryRequestId] [bigint] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[ObjectOld] [nvarchar](max) NULL,
	[ObjectNew] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseEntryRequestStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseEntryRequestStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseStatus]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseStatus](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Color] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseType]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseType](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Info] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 8/20/2024 11:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[Id] [bigint] IDENTITY(1001,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[AccountMeta] ADD  CONSTRAINT [DF_AccountMeta_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[AccountStatus] ADD  CONSTRAINT [DF_AccountStatus_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[AccountType] ADD  CONSTRAINT [DF_AccountType_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[AffiliateCode] ADD  CONSTRAINT [DF_AffiliateCode_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[AffiliateCode] ADD  CONSTRAINT [DF_AffiliateCode_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[AffiliateCode] ADD  CONSTRAINT [DF_AffiliateCode_DiscountType]  DEFAULT ((0)) FOR [DiscountType]
GO
ALTER TABLE [dbo].[AffiliateCode] ADD  CONSTRAINT [DF_AffiliateCode_Commission]  DEFAULT ((0)) FOR [Commission]
GO
ALTER TABLE [dbo].[AffiliateCode] ADD  CONSTRAINT [DF_AffiliateCode_CommissionType]  DEFAULT ((0)) FOR [CommissionType]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF__Post__Active__0AF29B96]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF__Post__CreatedTim__0BE6BFCF]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PostCategory] ADD  CONSTRAINT [DF__PostCateg__Activ__51EF2864]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PostCategory] ADD  CONSTRAINT [DF__PostCateg__Creat__52E34C9D]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PostLayout] ADD  CONSTRAINT [DF__PostLayou__Activ__53D770D6]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PostLayout] ADD  CONSTRAINT [DF__PostLayou__Creat__54CB950F]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PostStatus] ADD  CONSTRAINT [DF__PostStatu__Activ__55BFB948]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PostStatus] ADD  CONSTRAINT [DF__PostStatu__Creat__56B3DD81]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PostTag] ADD  CONSTRAINT [DF__PostTag__Active__6319B466]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PostTag] ADD  CONSTRAINT [DF__PostTag__Created__640DD89F]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PostType] ADD  CONSTRAINT [DF__PostType__Active__57A801BA]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PostType] ADD  CONSTRAINT [DF__PostType__Create__589C25F3]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_TotalReview]  DEFAULT ((0)) FOR [TotalReview]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ReviewAverage]  DEFAULT ((0.0)) FOR [ReviewAverage]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_ShowOnHomePage]  DEFAULT ((0)) FOR [ShowOnHomePage]
GO
ALTER TABLE [dbo].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_TotalLike]  DEFAULT ((0)) FOR [TotalLike]
GO
ALTER TABLE [dbo].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_TotalUnlike]  DEFAULT ((0)) FOR [TotalUnlike]
GO
ALTER TABLE [dbo].[Tag] ADD  CONSTRAINT [DF__Tag__Active__6501FCD8]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Tag] ADD  CONSTRAINT [DF__Tag__CreatedTime__65F62111]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[TagType] ADD  CONSTRAINT [DF__TagType__Active__59904A2C]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[TagType] ADD  CONSTRAINT [DF__TagType__Created__5A846E65]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__Account__3B40CD36] FOREIGN KEY([AccountStatusId])
REFERENCES [dbo].[AccountStatus] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__Account__3B40CD36]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__Account__3C34F16F] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountType] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__Account__3C34F16F]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__RoleId__3D2915A8] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__RoleId__3D2915A8]
GO
ALTER TABLE [dbo].[AccountMeta]  WITH CHECK ADD  CONSTRAINT [FK_AccountMeta_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[AccountMeta] CHECK CONSTRAINT [FK_AccountMeta_Account]
GO
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK__ActivityL__Accou__3E1D39E1] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK__ActivityL__Accou__3E1D39E1]
GO
ALTER TABLE [dbo].[AffiliateCode]  WITH CHECK ADD  CONSTRAINT [FK_AffiliateCode_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[AffiliateCode] CHECK CONSTRAINT [FK_AffiliateCode_Account]
GO
ALTER TABLE [dbo].[AffiliateCode]  WITH CHECK ADD  CONSTRAINT [FK_AffiliateCode_AffiliateCode] FOREIGN KEY([Id])
REFERENCES [dbo].[AffiliateCode] ([Id])
GO
ALTER TABLE [dbo].[AffiliateCode] CHECK CONSTRAINT [FK_AffiliateCode_AffiliateCode]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK__Cart__AccountId__3864608B] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK__Cart__AccountId__3864608B]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK__Cart__ProductId__37703C52] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK__Cart__ProductId__37703C52]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Accoun__3F115E1A] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Accoun__3F115E1A]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CustomerCategoryId])
REFERENCES [dbo].[CustomerCategory] ([Id])
GO
ALTER TABLE [dbo].[CustomerShipAddress]  WITH CHECK ADD  CONSTRAINT [FK__CustomerS__Count__41EDCAC5] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[CustomerShipAddress] CHECK CONSTRAINT [FK__CustomerS__Count__41EDCAC5]
GO
ALTER TABLE [dbo].[CustomerShipAddress]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[CustomerShipAddress]  WITH CHECK ADD FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[CustomerShipAddress]  WITH CHECK ADD FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[CustomerShipAddress]  WITH CHECK ADD FOREIGN KEY([WardId])
REFERENCES [dbo].[Ward] ([Id])
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[ExportInternalRequest]  WITH CHECK ADD  CONSTRAINT [FK__ExportInt__Accou__47A6A41B] FOREIGN KEY([AccountRequestId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[ExportInternalRequest] CHECK CONSTRAINT [FK__ExportInt__Accou__47A6A41B]
GO
ALTER TABLE [dbo].[ExportInternalRequest]  WITH CHECK ADD FOREIGN KEY([ExportInternalRequestStatusId])
REFERENCES [dbo].[ExportInternalRequestStatus] ([Id])
GO
ALTER TABLE [dbo].[ExportInternalRequest]  WITH CHECK ADD  CONSTRAINT [FK__ExportInt__Produ__498EEC8D] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ExportInternalRequest] CHECK CONSTRAINT [FK__ExportInt__Produ__498EEC8D]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([MenuTypeId])
REFERENCES [dbo].[MenuType] ([Id])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([NotificationStatusId])
REFERENCES [dbo].[NotificationStatus] ([Id])
GO
ALTER TABLE [dbo].[OrderCallEvent]  WITH CHECK ADD  CONSTRAINT [FK__OrderCall__Order__4C6B5938] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderCallEvent] CHECK CONSTRAINT [FK__OrderCall__Order__4C6B5938]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__4D5F7D71] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__4D5F7D71]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderDetailStatusId])
REFERENCES [dbo].[OrderDetailStatus] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__4F47C5E3] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Produ__4F47C5E3]
GO
ALTER TABLE [dbo].[OrderDetailMeta]  WITH CHECK ADD FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[OrderPromotion]  WITH CHECK ADD  CONSTRAINT [FK__OrderProm__Order__51300E55] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderPromotion] CHECK CONSTRAINT [FK__OrderProm__Order__51300E55]
GO
ALTER TABLE [dbo].[OrderPromotion]  WITH CHECK ADD  CONSTRAINT [FK__OrderProm__Promo__5224328E] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[OrderPromotion] CHECK CONSTRAINT [FK__OrderProm__Promo__5224328E]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__AccountI__57DD0BE4] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__AccountI__57DD0BE4]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Customer__531856C7] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Customer__531856C7]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__DepositT__540C7B00] FOREIGN KEY([DepositTypeId])
REFERENCES [dbo].[DepositType] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__DepositT__540C7B00]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__OrderPay__55009F39] FOREIGN KEY([OrderPaymentStatusId])
REFERENCES [dbo].[OrderPaymentStatus] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__OrderPay__55009F39]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__OrderSta__55F4C372] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__OrderSta__55F4C372]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__OrderTyp__56E8E7AB] FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[OrderType] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__OrderTyp__56E8E7AB]
GO
ALTER TABLE [dbo].[OrderUpdateHistory]  WITH CHECK ADD  CONSTRAINT [FK__OrderUpda__Order__58D1301D] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderUpdateHistory] CHECK CONSTRAINT [FK__OrderUpda__Order__58D1301D]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Account] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Account]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategory] FOREIGN KEY([PostCategoryId])
REFERENCES [dbo].[PostCategory] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategory]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostLayout] FOREIGN KEY([PostLayoutId])
REFERENCES [dbo].[PostLayout] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostLayout]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostStatus] FOREIGN KEY([PostStatusId])
REFERENCES [dbo].[PostStatus] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostStatus]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostType] FOREIGN KEY([PostTypeId])
REFERENCES [dbo].[PostType] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostType]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Post]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Tag]
GO
ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK__ProductAt__Attri__5CA1C101] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Attribute] ([Id])
GO
ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK__ProductAt__Attri__5CA1C101]
GO
ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK__ProductAt__Produ__5D95E53A] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK__ProductAt__Produ__5D95E53A]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK__ProductRe__Accou__367C1819] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK__ProductRe__Accou__367C1819]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK__ProductRe__Produ__3587F3E0] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK__ProductRe__Produ__3587F3E0]
GO
ALTER TABLE [dbo].[PromotionMeta]  WITH CHECK ADD FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD  CONSTRAINT [FK__Province__Countr__5F7E2DAC] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Province] CHECK CONSTRAINT [FK__Province__Countr__5F7E2DAC]
GO
ALTER TABLE [dbo].[Rank]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[ReviewLikes]  WITH CHECK ADD  CONSTRAINT [FK__ReviewLik__Accou__4F9CCB9E] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[ReviewLikes] CHECK CONSTRAINT [FK__ReviewLik__Accou__4F9CCB9E]
GO
ALTER TABLE [dbo].[ReviewLikes]  WITH CHECK ADD  CONSTRAINT [FK_ReviewLikes_ProductReview] FOREIGN KEY([ProductReviewId])
REFERENCES [dbo].[ProductReview] ([Id])
GO
ALTER TABLE [dbo].[ReviewLikes] CHECK CONSTRAINT [FK_ReviewLikes_ProductReview]
GO
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK__RoleMenu__RoleId__625A9A57] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RoleMenu] CHECK CONSTRAINT [FK__RoleMenu__RoleId__625A9A57]
GO
ALTER TABLE [dbo].[RoleRights]  WITH CHECK ADD FOREIGN KEY([RightsId])
REFERENCES [dbo].[Rights] ([Id])
GO
ALTER TABLE [dbo].[RoleRights]  WITH CHECK ADD  CONSTRAINT [FK__RoleRight__RoleI__6442E2C9] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RoleRights] CHECK CONSTRAINT [FK__RoleRight__RoleI__6442E2C9]
GO
ALTER TABLE [dbo].[Ship]  WITH CHECK ADD FOREIGN KEY([CustomerShipAddressId])
REFERENCES [dbo].[CustomerShipAddress] ([Id])
GO
ALTER TABLE [dbo].[Ship]  WITH CHECK ADD  CONSTRAINT [FK__Ship__OrderId__662B2B3B] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Ship] CHECK CONSTRAINT [FK__Ship__OrderId__662B2B3B]
GO
ALTER TABLE [dbo].[Ship]  WITH CHECK ADD FOREIGN KEY([ShipStatusId])
REFERENCES [dbo].[ShipStatus] ([Id])
GO
ALTER TABLE [dbo].[Ship]  WITH CHECK ADD FOREIGN KEY([ShipTypeId])
REFERENCES [dbo].[ShipType] ([Id])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([SupplierTypeId])
REFERENCES [dbo].[SupplierType] ([Id])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([SupplierStatusId])
REFERENCES [dbo].[SupplierStatus] ([Id])
GO
ALTER TABLE [dbo].[SystemProductLogHistory]  WITH CHECK ADD  CONSTRAINT [FK__SystemPro__Produ__6AEFE058] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SystemProductLogHistory] CHECK CONSTRAINT [FK__SystemPro__Produ__6AEFE058]
GO
ALTER TABLE [dbo].[SystemProductLogHistory]  WITH CHECK ADD FOREIGN KEY([SystemProductLogHistoryTypeId])
REFERENCES [dbo].[SystemProductLogHistoryType] ([Id])
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_TagType] FOREIGN KEY([TagTypeId])
REFERENCES [dbo].[TagType] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_TagType]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK__Transacti__Order__6CD828CA] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK__Transacti__Order__6CD828CA]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([TransactionStatusId])
REFERENCES [dbo].[TransactionStatus] ([Id])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionType] ([Id])
GO
ALTER TABLE [dbo].[TransactionsMeta]  WITH CHECK ADD FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transactions] ([Id])
GO
ALTER TABLE [dbo].[UploadFile]  WITH CHECK ADD FOREIGN KEY([FolderUploadId])
REFERENCES [dbo].[FolderUpload] ([Id])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([VoucherStatusId])
REFERENCES [dbo].[VoucherStatus] ([Id])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([VoucherTypeId])
REFERENCES [dbo].[VoucherType] ([Id])
GO
ALTER TABLE [dbo].[VoucherMeta]  WITH CHECK ADD FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([AddressDistrict])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([AddressCity])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([AddressWard])
REFERENCES [dbo].[Ward] ([Id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([WarehouseStatusId])
REFERENCES [dbo].[WarehouseStatus] ([Id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([WarehouseTypeId])
REFERENCES [dbo].[WarehouseType] ([Id])
GO
ALTER TABLE [dbo].[WarehouseAccount]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__Accou__7B264821] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[WarehouseAccount] CHECK CONSTRAINT [FK__Warehouse__Accou__7B264821]
GO
ALTER TABLE [dbo].[WarehouseAccount]  WITH CHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[WarehouseCardDetail]  WITH CHECK ADD FOREIGN KEY([WarehouseCardId])
REFERENCES [dbo].[WarehouseCard] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequest]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__Accou__7E02B4CC] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequest] CHECK CONSTRAINT [FK__Warehouse__Accou__7E02B4CC]
GO
ALTER TABLE [dbo].[WarehouseEntryRequest]  WITH CHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequest]  WITH CHECK ADD FOREIGN KEY([WarehouseEntryRequestStatusId])
REFERENCES [dbo].[WarehouseEntryRequestStatus] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequestDetail]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__Produ__00DF2177] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequestDetail] CHECK CONSTRAINT [FK__Warehouse__Produ__00DF2177]
GO
ALTER TABLE [dbo].[WarehouseEntryRequestDetail]  WITH CHECK ADD FOREIGN KEY([WarehouseEntryRequestId])
REFERENCES [dbo].[WarehouseEntryRequest] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequestHistory]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__Accou__02C769E9] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[WarehouseEntryRequestHistory] CHECK CONSTRAINT [FK__Warehouse__Accou__02C769E9]
GO
ALTER TABLE [dbo].[WarehouseEntryRequestHistory]  WITH CHECK ADD FOREIGN KEY([WarehouseEntryRequestId])
REFERENCES [dbo].[WarehouseEntryRequest] ([Id])
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK__Wishlist__Accoun__3A4CA8FD] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK__Wishlist__Accoun__3A4CA8FD]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK__Wishlist__Produc__395884C4] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK__Wishlist__Produc__395884C4]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả ngắn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Overview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đường dẫn ảnh bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tác giả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'AuthorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái xuất bản bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'IsPublish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái duyệt bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'IsApproved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian duyệt bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'ApprovalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian xuất bản bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'PublishedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tìm kiếm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Search'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá tiền dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã danh mục bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã cấp danh mục bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'ParrentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Màu danh mục bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên danh mục bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostCategory', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã layout bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostLayout', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostLayout', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostLayout', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên layout bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostLayout', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostLayout', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã trạng thái bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Màu trạng thái bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên trạng thái bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thẻ bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostTag', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostTag', @level2type=N'COLUMN',@level2name=N'PostId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thẻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostTag', @level2type=N'COLUMN',@level2name=N'TagId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostTag', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostTag', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostType', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostType', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostType', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostType', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostType', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thẻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tag', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên thẻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tag', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tag', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tag', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại thẻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TagType', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đánh dấu bị xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TagType', @level2type=N'COLUMN',@level2name=N'Active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TagType', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại thẻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TagType', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TagType', @level2type=N'COLUMN',@level2name=N'Description'
GO