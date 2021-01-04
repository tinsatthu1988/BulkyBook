USE [master]
GO
/****** Object:  Database [BulkyBook]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/4/2021 4:59:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/4/2021 4:59:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[Companies]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  Table [dbo].[Produtcs]    Script Date: 1/4/2021 4:59:48 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231021321_AddDefaultIdentityMigration', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201231035714_AddCategoryToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101154921_addCoverTypeToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210101161003_AddStoredProcForCoverType', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102023052_addProductToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102023307_addValidationToProduct', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102091603_AddUserPropertiesToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102092348_AddCompanyToDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102092616_AddCompanyIdToUser', N'3.1.10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1ed2903a-58fa-4c97-8bb9-997a529a3d6a', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'f0f86ea2-ef1a-465a-a4ba-62a4381de7c3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'65593d48-b6fa-4b51-bdfc-1d691ad1193e', N'Admin', N'ADMIN', N'3bf17b7f-a6d2-4b9f-a0a1-c7f47de91a9a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4', N'Company Customer', N'COMPANY CUSTOMER', N'aeb098c2-e809-4f94-9212-1d02f5258c2e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6', N'Employee', N'EMPLOYEE', N'a8b37de4-037f-4238-9efd-776615c8d635')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'48f55ceb-ebf5-423f-b27d-4b3f630403da', N'1ed2903a-58fa-4c97-8bb9-997a529a3d6a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'65593d48-b6fa-4b51-bdfc-1d691ad1193e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e8191e6b-18a8-4c26-83a8-6625d5e4d97e', N'c74c7143-f6c4-4d24-9cfa-97d6477ff4f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8977e69c-d54c-43be-b320-5a923f4690de', N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3b3464e-c508-41ab-9bf4-1fcf64b86761', N'dcb70ed0-6959-4436-9a3c-fefe5dfa03b6')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'364807c5-c42a-4a60-8677-1c07624c8eb1', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFd4qrUfMfe9+B/OyiyPXcR5N8t2fHvBps5tcOxzNv76//O36dGcKtxU4I+5hjXNWA==', N'EQOUV6EDWH5UICY3V5ETEZ3TGN3BJFJE', N'58453f9b-a739-4fad-9465-cf7dc044e946', N'0969756264', 0, 0, CAST(N'2021-01-04T10:51:06.3442193+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Nguyễn Đức Tín', N'70000', N'Quận 1', N'1 Nguyễn Đình Chiểu', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'48f55ceb-ebf5-423f-b27d-4b3f630403da', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', N'tin29021988@gmail.com', N'TIN29021988@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHNhNko7muvpZW81/6DdZSzyt2kOcsrXmqNvx1RA4ZOVT7fDFEX6ibdJOZ4XmwtGFQ==', N'WJTWJMNCUE5YTPACLAZ7L5H7IFYPBD5F', N'851c6a49-fa73-418b-9da2-271af10f4418', N'0969765264', 0, 0, CAST(N'2021-01-04T10:51:02.7452583+07:00' AS DateTimeOffset), 1, 0, N'Hồ Chí Minh', N'Customer Tin', N'70000', N'Quận Gò Vấp', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'ApplicationUser', NULL)
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
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (1, N'Hard Cover')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'Soft Cover')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
SET IDENTITY_INSERT [dbo].[Produtcs] ON 

INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (2, N'Earthlings', N'<p>This is book of <span style="background-color: #ffffff; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 16.875px; letter-spacing: 1px; text-transform: uppercase;">SAYAKA MURATA</span></p>', N'1111', N'SAYAKA MURATA', 11, 10, 9, 8, N'\images\products\e96186cb-fc3c-40a1-bc6f-08858218f6d6.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (3, N'Girls Against God', NULL, N'222', N'JENNY HVAL', 22, 20, 15, 12, N'\images\products\59594d61-7535-4f36-bcca-2998757c9868.jpg', 2, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (4, N'A Promised Land', N'<p>This is book of BARACK OBAMA</p>', N'3334', N'BARACK OBAMA', 55, 50, 45, 40, N'\images\products\98c7dcef-5876-43d1-9871-b60f56fc4265.jpg', 4, 2)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (5, N'Field Notes', NULL, N'555', N'JULIA ZARANKIN (CA)', 55, 45, 33, 30, N'\images\products\1827a268-16ce-4fb2-804a-04432f579137.jpg', 4, 1)
INSERT [dbo].[Produtcs] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (6, N'Shit, Actually', NULL, N'5555', N'LINDY WEST', 60, 55, 45, 35, N'\images\products\b7946c1a-7d41-4577-9504-e818c4c55e75.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Produtcs] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CategoryId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CategoryId] ON [dbo].[Produtcs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtcs_CoverTypeId]    Script Date: 1/4/2021 4:59:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_Produtcs_CoverTypeId] ON [dbo].[Produtcs]
(
	[CoverTypeId] ASC
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
/****** Object:  StoredProcedure [dbo].[ups_CreateCoverTypes]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_DeleteCoverTypes]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_GetCoverType]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_GetCoverTypes]    Script Date: 1/4/2021 4:59:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ups_UpdateCoverTypes]    Script Date: 1/4/2021 4:59:48 PM ******/
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
