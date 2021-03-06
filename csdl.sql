USE [master]
GO
/****** Object:  Database [BulkyBook]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE DATABASE [BulkyBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BulkyBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BulkyBook.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BulkyBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BulkyBook_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BulkyBook] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BulkyBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BulkyBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BulkyBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [BulkyBook] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BulkyBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BulkyBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BulkyBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BulkyBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BulkyBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BulkyBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BulkyBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BulkyBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BulkyBook] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BulkyBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BulkyBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BulkyBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BulkyBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BulkyBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BulkyBook] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BulkyBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BulkyBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BulkyBook] SET  MULTI_USER 
GO
ALTER DATABASE [BulkyBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BulkyBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BulkyBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BulkyBook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BulkyBook] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BulkyBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL DEFAULT (N''),
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsAuthorizedCompany] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produtcs]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtcs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[CoverTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Produtcs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231021321_AddDefaultIdentityMigration', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231035714_AddCategoryToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101154921_addCoverTypeToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101161003_AddStoredProcForCoverType', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102023052_addProductToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102023307_addValidationToProduct', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102091603_AddUserPropertiesToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102092348_AddCompanyToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102092616_AddCompanyIdToUser', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210105023824_AddShoppingCartAndOrderHeaderAndOrderDetailsToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106155707_addValidationOnOrderHeader', N'3.1.10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1ed2903a-58fa-4c97-8bb9-997a529a3d6a', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'f0f86ea2-ef1a-465a-a4ba-62a4381de7c3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'65593d48-b6fa-4b51-bdfc-1d691ad1193e', N'Admin', N'ADMIN', N'3bf17b7f-a6d2-4b9f-a0a1-c7f47de91a9a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4', N'Company Customer', N'COMPANY CUSTOMER', N'aeb098c2-e809-4f94-9212-1d02f5258c2e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6', N'Employee', N'EMPLOYEE', N'a8b37de4-037f-4238-9efd-776615c8d635')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'48f55ceb-ebf5-423f-b27d-4b3f630403da', N'1ed2903a-58fa-4c97-8bb9-997a529a3d6a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'65593d48-b6fa-4b51-bdfc-1d691ad1193e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5cd7ac50-e233-4c93-b143-aa43744d364f', N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3b3464e-c508-41ab-9bf4-1fcf64b86761', N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFd4qrUfMfe9+B/OyiyPXcR5N8t2fHvBps5tcOxzNv76//O36dGcKtxU4I+5hjXNWA==', N'OKHBGLVQE3FBRETLDMQ4U4CXDT77OMNN', N'cb8536ac-3839-4ddd-8d19-b4be42250304', N'0969756264', 0, 1, CAST(N'2021-01-04T10:51:06.3442193+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Nguyễn Đức Tín', N'70000', N'Quận 1', N'1 Nguyễn Đình Chiểu', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'48f55ceb-ebf5-423f-b27d-4b3f630403da', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHNhNko7muvpZW81/6DdZSzyt2kOcsrXmqNvx1RA4ZOVT7fDFEX6ibdJOZ4XmwtGFQ==', N'WJTWJMNCUE5YTPACLAZ7L5H7IFYPBD5F', N'851c6a49-fa73-418b-9da2-271af10f4418', N'0969765264', 0, 0, CAST(N'3021-01-05T09:03:53.3748113+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Customer Tin', N'70000', N'Quận Gò Vấp', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'5cd7ac50-e233-4c93-b143-aa43744d364f', N'tinsatthu1987@gmail.com', N'TINSATTHU1987@GMAIL.COM', N'tinsatthu1987@gmail.com', N'TINSATTHU1987@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKv4TlO4AwGObPxtiWp62J5ytLAtWTsQguH/hAmuY03R9rImttrHw222/v3BCcsM0g==', N'ZNBGLC275YJWAEJFRCDRMC7UGTSOZ2JF', N'05a49318-43c3-4447-85a5-c9073a1fcc21', N'0969765264', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'IN SONG TẠO', N'70000', N'Quận Gò Vấp', N'12 Song Hành', N'ApplicationUser', 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'laura@gmail.com', N'LAURA@GMAIL.COM', N'laura@gmail.com', N'LAURA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDKE5S2kKeaSUSB/O2hg49sGKuZ3qNIQlxT4tLghkQgsCFRk6VDSTr1Wlg61oad+aA==', N'UDG4UZBXMOU46FPXEHDKHOOQ3VJYMELM', N'9fb23b0a-3cad-4c95-b197-b5f8b582c232', N'0903852587', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'Employee Laura', N'70000', N'Quận 1', N'1 Hoàng Sa', N'ApplicationUser', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'a3b3464e-c508-41ab-9bf4-1fcf64b86761', N'peter@gmail.com', N'PETER@GMAIL.COM', N'peter@gmail.com', N'PETER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG7sdKb1SKkpb0zKQNHa37QMDVenPji9sZ51cHHQvg20Xna6kE2Mn/r1ffbzK6/EUw==', N'4BABIFSNBK2REH2B5QLRTG3QYVWPD4H6', N'daf26870-b622-4a55-be54-315c7eadd4fc', N'0906547521', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'Peter', N'70000', N'Quận Gò Vấp', N'244 Phan Văn Trị', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', N'insongan@gmail.com', N'INSONGAN@GMAIL.COM', N'insongan@gmail.com', N'INSONGAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAJy/mbiIKfpRYgCtdyUAd+ch7gmIMernNEAhfxmnHau64toCf0WnyP+DnNdTgUWiQ==', N'BNHRBW7BV7RRQAPRNVKDV46M4DPD6CCU', N'7c384f0c-382a-407c-917b-2712bcf7ff30', N'0969765264', 0, 0, CAST(N'2021-01-04T10:51:04.2873730+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'IN SONG AN', N'70000', N'Quận Gò Vấp', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'ApplicationUser', 3)
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'[AspNetUserStore]', N'AuthenticatorKey', N'Y5YKFPOEBAL5UC3BDHQWOHK4BXFTPVOF')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'[AspNetUserStore]', N'RecoveryCodes', N'c982f1d4;b38904e1;668fc99b;cb168f7f;9e170470;15d910ad;08556ee3;2ef2b4a2;b9f7470b;bf6872db')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Film')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Fiction')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Nature')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Memoir')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (2, N'IN LIÊN SƠN', N'10 Nguyễn Bỉnh Khiêm', N'Hồ Chí Minh', N'Quận 1', N'70000', N'0922442225', 0)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (3, N'IN SONG AN', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'Hồ Chí Minh', N'Quận Gò Vấp', N'70000', N'0969765264', 0)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (4, N'IN SONG TẠO', N'12 Hạnh Thông', N'Hồ Chí Minh', N'Quận Gò Vấp', N'70000', N'0969765264', 1)
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (1, N'Hard Cover')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'Soft Cover')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, 1, 3, 52, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2, 1, 5, 5, 45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3, 2, 3, 14, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4, 3, 3, 13, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (5, 3, 4, 17, 50)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (6, 4, 4, 4, 50)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (7, 4, 3, 10, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (8, 5, 4, 1, 50)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (9, 6, 3, 1, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (10, 7, 3, 1, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (11, 8, 4, 1, 50)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-06 22:31:46.9434343' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1005, NULL, NULL, N'Processing', N'Approved', CAST(N'2021-01-06 22:31:49.0565552' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_1I6dzGAbCaJ2cDc6W1ymxHVO', N'0969756264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (2, N'5cd7ac50-e233-4c93-b143-aa43744d364f', CAST(N'2021-01-06 22:48:38.0582668' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 280, NULL, NULL, N'Approved', N'ApprovedForDelayedPayment', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-02-05 22:48:38.2532779' AS DateTime2), NULL, N'0969765264', N'12 Song Hành', N'Hồ Chí Minh', N'Quận Gò Vấp', N'70000', N'IN SONG TẠO')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (3, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:30:38.7539642' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1110, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:30:41.1040986' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I8348AbCaJ2cDc63WhfUGxv', N'0969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (4, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:37:27.3953372' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 400, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:37:28.9574265' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I83AiAbCaJ2cDc6BFD4cVpO', N'84969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (5, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:38:55.4093713' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 50, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:38:57.0584656' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I83C8AbCaJ2cDc6V348EHpE', N'0969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (6, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:41:16.0324145' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 20, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:41:17.5084989' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I83EPAbCaJ2cDc6sWkNNoY5', N'+84969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (7, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:43:12.2090594' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 20, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:43:13.7381468' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I83GHAbCaJ2cDc6VL0nsPa3', N'+84969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (8, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-10 19:52:28.9619038' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 50, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-10 19:52:30.6009976' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1I83PFAbCaJ2cDc6JcllrOsL', N'+840969765264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
SET IDENTITY_INSERT [dbo].[Produtcs] ON 

INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (2, N'Earthlings', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">As a child, Natsuki doesn&rsquo;t fit into her family. Her parents favor her sister, and her best friend is a plush toy hedgehog named Piyyut who has explained to her that he has come from the planet Popinpobopia on a special quest to help her save the Earth.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Each summer, Natsuki counts down the days until her family drives into the mountains of Nagano to visit her grandparents in their wooden house in the forest, a place that couldn&rsquo;t be more different from her grey commuter town.</p>', N'1111', N'SAYAKA MURATA', 11, 10, 9, 8, N'\images\products\e96186cb-fc3c-40a1-bc6f-08858218f6d6.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (3, N'Girls Against God', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">A genre-warping, time-travelling horror novel-slash-feminist manifesto for fans of&nbsp;Clarice Lispector and&nbsp;Jeanette Winterson.</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Welcome to 1990s Norway. White picket fences run in neat rows and Christian conservatism runs deep. But as the Artist considers her work, things start stirring themselves up. In a corner of Oslo a coven of witches begin cooking up some curses. A time-travelling Edvard Munch arrives in town to join a death metal band, closely pursued by the teenaged subject of his painting Puberty, who has murder on her mind. Meanwhile, out deep in the forest, a group of school girls get very lost and things get very strange. And awful things happen in aspic.</span></p>', N'222', N'JENNY HVAL', 22, 20, 15, 12, N'\images\products\59594d61-7535-4f36-bcca-2998757c9868.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (4, N'A Promised Land', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A riveting, deeply personal account of history in the making&mdash;from the president who inspired us to believe in the power of democracy</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency&mdash;a time of dramatic transformation and turmoil.</p>', N'3334', N'BARACK OBAMA', 55, 50, 45, 40, N'\images\products\98c7dcef-5876-43d1-9871-b60f56fc4265.jpg', 4, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (5, N'Field Notes', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">When Julia Zarankin saw her first red-winged blackbird at the age of thirty-five, she didn&rsquo;t expect that it would change her life. Recently divorced and auditioning hobbies during a stressful career transition, she stumbled on birdwatching, initially out of curiosity for the strange breed of humans who wear multi-pocketed vests, carry spotting scopes and discuss the finer points of optics with disturbing fervour. What she never could have predicted was that she would become one of them. Not only would she come to identify proudly as a birder, but birding would ultimately lead her to find love, uncover a new language and lay down her roots.</span></p>', N'555', N'JULIA ZARANKIN (CA)', 55, 45, 33, 30, N'\images\products\1827a268-16ce-4fb2-804a-04432f579137.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (6, N'Shit, Actually', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">This book is maybe the only good thing to come out of 2020. I was laughing so loud that my dog kept coming to check on me. - RA</span></p>
<div style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">&nbsp;</span></div>
<div style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><em style="box-sizing: border-box;">New York Times</em>&nbsp;opinion writer and bestselling author Lindy West was once the in-house movie critic for Seattle''s alternative newsweekly&nbsp;<em style="box-sizing: border-box;">The Stranger</em>, where she covered film with brutal honesty and giddy irreverence. In&nbsp;<em style="box-sizing: border-box;">Shit, Actually,</em>&nbsp;Lindy returns to those roots, re-examining beloved and iconic movies from the past 40 years with an eye toward the big questions of our time: Is&nbsp;<em style="box-sizing: border-box;">Twilight&nbsp;</em>the horniest movie in history? Why do the zebras in&nbsp;<em style="box-sizing: border-box;">The Lion King&nbsp;</em>trust Mufasa-WHO IS A LION-to look out for their best interests? Why did anyone bother making any more movies after&nbsp;<em style="box-sizing: border-box;">The Fugitive</em>&nbsp;achieved perfection? And, my god, why don''t any of the women in&nbsp;<em style="box-sizing: border-box;">Love, Actually&nbsp;</em>ever fucking talk?!?!</div>', N'5555', N'LINDY WEST', 60, 55, 45, 35, N'\images\products\b7946c1a-7d41-4577-9504-e818c4c55e75.jpg', 1, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (7, N'Joe Biden', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A concise, brilliant, and trenchant examination of Democratic Nominee Joseph R. Biden Jr.&rsquo;s lifelong quest for the presidency by National Book Award winner Evan Osnos, adapted from nearly a decade of his reporting for&nbsp;<em style="box-sizing: border-box;">The New Yorker</em>.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />Former vice president Joseph R. Biden Jr. has been called both the luckiest man and the unluckiest&mdash;fortunate to have sustained a fifty-year political career that reached the White House, but also marked by deep personal losses and disappointments that he has suffered.</p>', N'111', N'EVAN OSNOS', 32, 30, 23, 20, N'\images\products\4cc0f932-9edd-42e1-b6da-ff767a41365b.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (8, N'No Time Like the Future', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A moving account of resilience, hope, fear and mortality, and how these things resonate in our lives, by actor and advocate Michael J. Fox.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />The entire world knows Michael J. Fox as Marty McFly, the teenage sidekick of Doc Brown in&nbsp;<em style="box-sizing: border-box;">Back to the Future</em>; as Alex P. Keaton in&nbsp;<em style="box-sizing: border-box;">Family Ties</em>; as Mike Flaherty in&nbsp;<em style="box-sizing: border-box;">Spin City</em>; and through numerous other movie roles and guest appearances on shows such as<em style="box-sizing: border-box;">T he Good Wife&nbsp;</em>and&nbsp;<em style="box-sizing: border-box;">Curb Your Enthusiasm</em>. Diagnosed at age 29, Michael is equally engaged in Parkinson&rsquo;s advocacy work, raising global awareness of the disease and helping find a cure through The Michael J. Fox Foundation for Parkinson&rsquo;s Research, the world&rsquo;s leading non-profit funder of PD science. His two previous bestselling memoirs,&nbsp;<em style="box-sizing: border-box;">Lucky Man&nbsp;</em>and&nbsp;<em style="box-sizing: border-box;">Always Looking Up</em>, dealt with how he came to terms with the illness, all the while exhibiting his iconic optimism. His new memoir</p>', N'2222', N'MICHAEL J. FOX (CA)', 38, 35, 32, 26, N'\images\products\9d55a425-3b71-4f14-9fd5-0c06b813c18c.jpg', 4, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (9, N'The Best of Me', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">David Sedaris&rsquo;s best stories and essays,&nbsp;</span><span style="box-sizing: border-box; font-weight: bold;">spanning his remarkable career&mdash;as s</span><span style="box-sizing: border-box; font-weight: bold;">elected by the author himself</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />For more than twenty-five years, David Sedaris has been carving out a unique literary space, virtually creating his own genre. A Sedaris story may seem confessional, but is also highly attuned to the world outside. It opens our eyes to what is at absurd and moving about our daily existence. And it is almost impossible to read without laughing.</p>', N'2323', N'DAVID SEDARIS', 38, 36, 30, 25, N'\images\products\3c09909a-4df8-4d1f-96d7-c34245b03e97.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (10, N'The Dead Are Arising', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">An epic biography of Malcolm X finally emerges, drawing on hundreds of hours of the author&rsquo;s interviews, rewriting much of the known narrative.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Les Payne, the renowned Pulitzer Prize&ndash;winning investigative journalist, embarked in 1990 on a nearly thirty-year-long quest to interview anyone he could find who had actually known Malcolm X&mdash;all living siblings of the Malcolm Little family, classmates, street friends, cellmates, Nation of Islam figures, FBI moles and cops, and political leaders around the world. His goal was ambitious: to transform what would become over a hundred hours of interviews into an unprecedented portrait of Malcolm X, one that would separate fact from fiction.</p>', N'4343', N'LES PAYNE', 47, 43, 35, 30, N'\images\products\894d5f0b-fd5d-4d09-9c18-c2668a6d779c.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (11, N'The Selected Works of Audre Lorde', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A definitive selection of Audre Lorde&rsquo;s intelligent, fierce, powerful, sensual, provocative, indelible prose and poetry, for a new generation of readers.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Self-described "black, lesbian, mother, warrior, poet" Audre Lorde is an unforgettable voice in twentieth-century literature, and one of the first to center the experiences of black, queer women. This essential reader showcases her indelible contributions to intersectional feminism, queer theory, and critical race studies in twelve landmark essays and more than sixty poems&mdash;selected and introduced by one of our most powerful contemporary voices on race and gender, Roxane Gay.</p>', N'2121', N'AUDRE LORDE', 23, 20, 18, 15, N'\images\products\33e0d8f8-4329-4fe6-a5a0-93a7c9718c11.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (12, N'Vesper Flights', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">From the bestselling author of&nbsp;<em style="box-sizing: border-box;">H is for Hawk</em>, a brilliant and insightful work about our relationship to the natural world</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Our world is a fascinating place, teeming not only with natural wonders that defy description, but complex interactions that create layers of meaning. Helen Macdonald is gifted with a special lens that seems to peer right through it all, and she shares her insights--at times startling, nostalgic, weighty, or simply entertaining--in this masterful collection of essays.</span></p>', N'4321', N'HELEN MACDONALD', 30, 25, 22, 20, N'\images\products\08358826-d6cb-4eed-8843-80aea3f57d78.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (13, N'Leave the World Behind', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A magnetic novel about two families, strangers to each other, who are forced together on a long weekend gone terribly wrong.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">From the bestselling author of&nbsp;<em style="box-sizing: border-box;">Rich and Pretty</em>&nbsp;comes a suspenseful and provocative novel keenly attuned to the complexities of parenthood, race, and class.&nbsp;<em style="box-sizing: border-box;">Leave the World Behind&nbsp;</em>explores how our closest bonds are reshaped&mdash;and unexpected new ones are forged&mdash;in moments of crisis.</p>', N'2121', N'RUMAAN ALAM', 34, 30, 28, 25, N'\images\products\bd8fc610-ffb9-4c2e-bef7-495e6e91ce9f.jpg', 2, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (14, N'Long Live the Post Horn!', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">A brilliant study of the mundane, full of unexpected detours and driving prose. Hjorth''s novel ingeniously orbits the intimate stories that are possible only when a character has put words on paper and sent them through the post.</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Ellinor, a 35-year-old media consultant, has not been feeling herself; she''s not been feeling much at all lately. Far beyond jaded, she picks through an old diary and fails to recognise the woman in its pages, seemingly as far away from the world around her as she''s ever been. But when her coworker vanishes overnight, an unusual new task is dropped on her desk. Off she goes to meet the Norwegian Postal Workers Union, setting the ball rolling on a strange and transformative six months.</span></p>', N'1212', N'VIGDIS HJORTH', 25, 22, 18, 15, N'\images\products\d482e8ee-e670-4599-9927-b3e5a5c6f359.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (15, N'Love after the End', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A bold and breathtaking anthology of queer Indigenous speculative fiction, edited by the author of&nbsp;<em style="box-sizing: border-box;">Jonny Appleseed</em>.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">This exciting and groundbreaking fiction collection showcases a number of new and emerging 2SQ (Two-Spirit and queer) Indigenous writers from across Turtle Island. These visionary authors show how queer Indigenous communities can bloom and thrive through utopian narratives that detail the vivacity and strength of 2SQness throughout its plight in the maw of settler colonialism''s histories.</p>', N'3431', N'JOSHUA WHITEHEAD (CA)', 22, 20, 18, 15, N'\images\products\c786c9fa-5ab9-438f-ab0e-0ef797a67e91.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (16, N'Memorial', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">A funny and profound story about family in all its strange forms, joyful and hard-won vulnerability, becoming who you''re supposed to be, and the limits of love.</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">&nbsp;</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Benson and Mike are two young guys who live together in Houston. Mike is a Japanese American chef at a Mexican restaurant and Benson''s a Black day care teacher, and they''ve been together for a few years&mdash;good years&mdash;but now they''re not sure why they''re still a couple. There''s the sex, sure, and the meals Mike cooks for Benson, and, well, they love each other.</span></p>', N'2121', N'BRYAN WASHINGTON', 36, 32, 30, 28, N'\images\products\4e93be13-a80e-48f1-94bc-aba79e110550.jpg', 2, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (17, N'Noopiming', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">I read this in one sitting and have been thinking about it since, how I can''t wait to reread it but I''ve already loaned my copy away. This is a book to be shared. This is a book that makes me think not once, but five times, before I tweet my pain on the internet. There is no other artist like Leanne Betasamosake Simpson and we are lucky to be alive at the same time, to be able to experience her gifts. -CP</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Award-winning Nishnaabeg storyteller and writer Leanne Betasamosake Simpson returns with a bold reimagination of the novel, one that combines narrative and poetic fragments through a careful and fierce reclamation of Anishinaabe aesthetics.</p>', N'4542', N'LEANNE BETASAMOSAKE SIMPSON (CA)', 23, 21, 18, 15, N'\images\products\8180b8d4-636f-48d8-b55f-54e7148a7c09.jpg', 2, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (18, N'Shuggie Bain', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">SHORTLISTED FOR THE BOOKER PRIZE</p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><em style="box-sizing: border-box;">Shuggie Bain</em>&nbsp;is the unforgettable story of young Hugh &ldquo;Shuggie&rdquo; Bain, a sweet and lonely boy who spends his 1980s childhood in run-down public housing in Glasgow, Scotland. Thatcher&rsquo;s policies have put husbands and sons out of work, and the city&rsquo;s notorious drugs epidemic is waiting in the wings.</p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Shuggie&rsquo;s mother Agnes walks a wayward path: she is Shuggie&rsquo;s guiding light but a burden for him and his siblings. She dreams of a house with its own front door while she flicks through the pages of the Freemans catalogue, ordering a little happiness on credit, anything to brighten up her grey life. Married to a philandering taxi-driver husband, Agnes keeps her pride by looking good&mdash;her beehive, make-up, and pearly-white false teeth offer a glamorous image of a Glaswegian Elizabeth Taylor. But under the surface, Agnes finds increasing solace in drink, and she drains away the lion&rsquo;s share of each week&rsquo;s benefits&mdash;all the family has to live on&mdash;on cans of extra-strong lager hidden in handbags and poured into tea mugs. Agnes&rsquo;s older children find their own ways to get a safe distance from their mother, abandoning Shuggie to care for her as she swings between alcoholic binges and sobriety.</p>', N'2121', N'DOUGLAS STUART', 25, 23, 21, 15, N'\images\products\89d0792c-a451-46c0-aeeb-3d5170798b07.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (19, N'The Lying Life of Adults', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A&nbsp;powerful new novel set in a divided Naples by the&nbsp;<em style="box-sizing: border-box;">New York Times</em>&nbsp;best-selling author of&nbsp;<em style="box-sizing: border-box;">My Brilliant Friend</em>&nbsp;and&nbsp;<em style="box-sizing: border-box;">The Lost Daughter</em>.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">Soon to be a NETFLIX Original Series</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Giovanna&rsquo;s pretty face is changing, turning ugly, at least so her father thinks. Giovanna, he says, looks more like her Aunt Vittoria every day. But can it be true? Is she really changing? Is she turning into her Aunt Vittoria, a woman she hardly knows but whom her mother and father clearly despise? Surely there is a mirror somewhere in which she can see herself as she truly is.</p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Giovanna is searching for her reflection in two kindred cities that fear and detest one another: Naples of the heights, which assumes a mask of refinement, and Naples of the depths, a place of excess and vulgarity. She moves from one to the other in search of the truth, but neither city seems to offer answers or escape.</p>', N'5332', N'ELENA FERRANTE', 39, 35, 32, 30, N'\images\products\69c81155-7c52-4e8d-b39d-7f46554fe82f.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (20, N'Where the Wild Ladies Are', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">In this witty and exuberant collection of feminist retellings of traditional Japanese folktales, humans live side by side with spirits who provide a variety of useful services&mdash;from truth-telling to babysitting, from protecting castles to fighting crime.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">A busybody aunt who disapproves of hair removal; a pair of door-to-door saleswomen hawking portable lanterns; a cheerful lover who visits every night to take a luxurious bath; a silent house-caller who babysits and cleans while a single mother is out working.<em style="box-sizing: border-box;">Where the Wild Ladies Are</em>&nbsp;is populated by these and many other spirited women&mdash;who also happen to be ghosts. This is a realm in which jealousy, stubbornness, and other excessive &ldquo;feminine&rdquo; passions are not to be feared or suppressed, but rather cultivated; and, chances are, a man named Mr. Tei will notice your talents and recruit you, dead or alive (preferably dead), to join his mysterious company.</p>', N'1213', N'AOKO MATSUDA', 26, 23, 21, 18, N'\images\products\7e3cb750-4c95-490d-8455-4129320764e7.jpg', 2, 1)
SET IDENTITY_INSERT [dbo].[Produtcs] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (3, N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', 3, 10)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CategoryId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CategoryId] ON [dbo].[Produtcs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CoverTypeId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CoverTypeId] ON [dbo].[Produtcs]
(
	[CoverTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 1/10/2021 10:30:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ProductId] ON [dbo].[ShoppingCarts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Produtcs_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Produtcs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Produtcs_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Produtcs]  WITH CHECK ADD  CONSTRAINT [FK_Produtcs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produtcs] CHECK CONSTRAINT [FK_Produtcs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Produtcs]  WITH CHECK ADD  CONSTRAINT [FK_Produtcs_CoverTypes_CoverTypeId] FOREIGN KEY([CoverTypeId])
REFERENCES [dbo].[CoverTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produtcs] CHECK CONSTRAINT [FK_Produtcs_CoverTypes_CoverTypeId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Produtcs_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Produtcs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Produtcs_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[ups_CreateCoverTypes]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ups_CreateCoverTypes]
                                    @Name varchar(100)
                                    AS
                                    BEGIN
                                        INSERT INTO CoverTypes (Name)
                                        VALUES (@Name)
                                    END


GO
/****** Object:  StoredProcedure [dbo].[ups_DeleteCoverTypes]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ups_DeleteCoverTypes]
                                    @Id int
                                    AS
                                    BEGIN
                                        DELETE FROM dbo.CoverTypes
                                        WHERE Id = @Id
                                    END



GO
/****** Object:  StoredProcedure [dbo].[ups_GetCoverType]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ups_GetCoverType]
                                    @Id int
                                    AS
                                    BEGIN
                                        SELECT * FROM dbo.CoverTypes WHERE (Id = @Id)
                                    END



GO
/****** Object:  StoredProcedure [dbo].[ups_GetCoverTypes]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ups_GetCoverTypes]
                                    AS
                                    BEGIN
                                        SELECT * FROM dbo.CoverTypes
                                    END



GO
/****** Object:  StoredProcedure [dbo].[ups_UpdateCoverTypes]    Script Date: 1/10/2021 10:30:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ups_UpdateCoverTypes]
                                    @Id int,
                                    @Name varchar(100)
                                    AS
                                    BEGIN
                                        UPDATE dbo.CoverTypes
                                        SET Name = @Name
                                        WHERE Id = @Id
                                    END



GO
USE [master]
GO
ALTER DATABASE [BulkyBook] SET  READ_WRITE 
GO
