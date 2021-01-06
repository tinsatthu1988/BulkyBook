USE [master]
GO
/****** Object:  Database [BulkyBook]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[Companies]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[Produtcs]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 1/6/2021 11:04:55 PM ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFd4qrUfMfe9+B/OyiyPXcR5N8t2fHvBps5tcOxzNv76//O36dGcKtxU4I+5hjXNWA==', N'EQOUV6EDWH5UICY3V5ETEZ3TGN3BJFJE', N'58453f9b-a739-4fad-9465-cf7dc044e946', N'0969756264', 0, 0, CAST(N'2021-01-04T10:51:06.3442193+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Nguyễn Đức Tín', N'70000', N'Quận 1', N'1 Nguyễn Đình Chiểu', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'48f55ceb-ebf5-423f-b27d-4b3f630403da', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHNhNko7muvpZW81/6DdZSzyt2kOcsrXmqNvx1RA4ZOVT7fDFEX6ibdJOZ4XmwtGFQ==', N'WJTWJMNCUE5YTPACLAZ7L5H7IFYPBD5F', N'851c6a49-fa73-418b-9da2-271af10f4418', N'0969765264', 0, 0, CAST(N'3021-01-05T09:03:53.3748113+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Customer Tin', N'70000', N'Quận Gò Vấp', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'5cd7ac50-e233-4c93-b143-aa43744d364f', N'tinsatthu1987@gmail.com', N'TINSATTHU1987@GMAIL.COM', N'tinsatthu1987@gmail.com', N'TINSATTHU1987@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKv4TlO4AwGObPxtiWp62J5ytLAtWTsQguH/hAmuY03R9rImttrHw222/v3BCcsM0g==', N'ZNBGLC275YJWAEJFRCDRMC7UGTSOZ2JF', N'05a49318-43c3-4447-85a5-c9073a1fcc21', N'0969765264', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'IN SONG TẠO', N'70000', N'Quận Gò Vấp', N'12 Song Hành', N'ApplicationUser', 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'laura@gmail.com', N'LAURA@GMAIL.COM', N'laura@gmail.com', N'LAURA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDKE5S2kKeaSUSB/O2hg49sGKuZ3qNIQlxT4tLghkQgsCFRk6VDSTr1Wlg61oad+aA==', N'UDG4UZBXMOU46FPXEHDKHOOQ3VJYMELM', N'9fb23b0a-3cad-4c95-b197-b5f8b582c232', N'0903852587', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'Employee Laura', N'70000', N'Quận 1', N'1 Hoàng Sa', N'ApplicationUser', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'a3b3464e-c508-41ab-9bf4-1fcf64b86761', N'peter@gmail.com', N'PETER@GMAIL.COM', N'peter@gmail.com', N'PETER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG7sdKb1SKkpb0zKQNHa37QMDVenPji9sZ51cHHQvg20Xna6kE2Mn/r1ffbzK6/EUw==', N'4BABIFSNBK2REH2B5QLRTG3QYVWPD4H6', N'daf26870-b622-4a55-be54-315c7eadd4fc', N'0906547521', 0, 0, NULL, 1, 0, N'Hồ Chí Minh', N'Peter', N'70000', N'Quận Gò Vấp', N'244 Phan Văn Trị', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', N'insongan@gmail.com', N'INSONGAN@GMAIL.COM', N'insongan@gmail.com', N'INSONGAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAJy/mbiIKfpRYgCtdyUAd+ch7gmIMernNEAhfxmnHau64toCf0WnyP+DnNdTgUWiQ==', N'BNHRBW7BV7RRQAPRNVKDV46M4DPD6CCU', N'7c384f0c-382a-407c-917b-2712bcf7ff30', N'0969765264', 0, 0, CAST(N'2021-01-04T10:51:04.2873730+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'IN SONG AN', N'70000', N'Quận Gò Vấp', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'ApplicationUser', 3)
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
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'364807c5-c42a-4a60-8677-1c07624c8eb1', CAST(N'2021-01-06 22:31:46.9434343' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1005, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-01-06 22:31:49.0565552' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_1I6dzGAbCaJ2cDc6W1ymxHVO', N'0969756264', N'1 Nguyễn Đình Chiểu', N'Hồ Chí Minh', N'Quận 1', N'70000', N'Nguyễn Đức Tín')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (2, N'5cd7ac50-e233-4c93-b143-aa43744d364f', CAST(N'2021-01-06 22:48:38.0582668' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 280, NULL, NULL, N'Approved', N'ApprovedForDelayedPayment', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'2021-02-05 22:48:38.2532779' AS DateTime2), NULL, N'0969765264', N'12 Song Hành', N'Hồ Chí Minh', N'Quận Gò Vấp', N'70000', N'IN SONG TẠO')
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
SET IDENTITY_INSERT [dbo].[Produtcs] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (3, N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', 3, 10)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (8, N'364807c5-c42a-4a60-8677-1c07624c8eb1', 3, 13)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (9, N'364807c5-c42a-4a60-8677-1c07624c8eb1', 4, 15)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CategoryId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CategoryId] ON [dbo].[Produtcs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CoverTypeId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CoverTypeId] ON [dbo].[Produtcs]
(
	[CoverTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 1/6/2021 11:04:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_CreateCoverTypes]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_DeleteCoverTypes]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_GetCoverType]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_GetCoverTypes]    Script Date: 1/6/2021 11:04:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_UpdateCoverTypes]    Script Date: 1/6/2021 11:04:55 PM ******/
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
