USE [master]
GO
/****** Object:  Database [BookStore]    Script Date: 1/6/2021 5:01:57 PM ******/
CREATE DATABASE [BookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BookStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BookStore_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BookStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookStore] SET  MULTI_USER 
GO
ALTER DATABASE [BookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BookStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BookStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/6/2021 5:01:57 PM ******/
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
/****** Object:  Table [dbo].[BookGallery]    Script Date: 1/6/2021 5:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_BookGallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books]    Script Date: 1/6/2021 5:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[TotalPages] [int] NOT NULL,
	[CUpdatedOn] [datetime2](7) NULL,
	[CreatedOn] [datetime2](7) NULL,
	[LanguageId] [int] NOT NULL DEFAULT ((0)),
	[CoverImageUrl] [nvarchar](max) NULL,
	[BookPdfUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 1/6/2021 5:01:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201218064509_Init', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201218065329_Add2Columns', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201221080308_AddedLanguageTable', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201223155039_addednewcolunm', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201224035114_addednewgallerytable', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201224094435_addednewfk', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201225113024_addedbookurl', N'3.1.10')
SET IDENTITY_INSERT [dbo].[BookGallery] ON 

INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (1, 11, N'book1.jpg', N'/books/gallery/745e9634-e124-4604-96ae-354396ba8f28_book1.jpg')
INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (2, 11, N'book2.jpg', N'/books/gallery/980c8041-3f80-4ad1-a9af-a78ecc73df4c_book2.jpg')
INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (3, 11, N'book3.jpg', N'/books/gallery/0574bb9b-d549-4bc1-990a-25a64e9ac854_book3.jpg')
INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (4, 12, N'book1.jpg', N'/books/gallery/2134ffa6-ac38-4ae8-bd73-ef15381d44bd_book1.jpg')
INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (5, 12, N'book2.jpg', N'/books/gallery/438f6cb0-a72b-45bc-956d-4b403ff980fd_book2.jpg')
INSERT [dbo].[BookGallery] ([Id], [BookId], [Name], [URL]) VALUES (6, 12, N'book3.jpg', N'/books/gallery/c7be5ab7-830c-44a1-9d83-25b6bd8345a6_book3.jpg')
SET IDENTITY_INSERT [dbo].[BookGallery] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Title], [Author], [Description], [Category], [TotalPages], [CUpdatedOn], [CreatedOn], [LanguageId], [CoverImageUrl], [BookPdfUrl]) VALUES (11, N'PHP Franework', N'Nguyễn Đức Tín', N'this is PHP', NULL, 111, CAST(N'2020-12-26 07:09:59.8362063' AS DateTime2), CAST(N'2020-12-26 07:09:59.8359452' AS DateTime2), 1, N'/books/cover/465b47e9-e4d0-42c6-871e-1e51d9fbc750_book4.png', N'/books/pdf/77aea46b-812f-4a41-8c44-ad5d398c9826_Python_Basic_Advanced_Week_1.pdf')
INSERT [dbo].[Books] ([Id], [Title], [Author], [Description], [Category], [TotalPages], [CUpdatedOn], [CreatedOn], [LanguageId], [CoverImageUrl], [BookPdfUrl]) VALUES (12, N'ASP.Net MVC 5', N'Nguyễn Đức Tín', N'this is ASP.net MVC 5', NULL, 222, CAST(N'2020-12-26 07:11:17.5134913' AS DateTime2), CAST(N'2020-12-26 07:11:17.5134869' AS DateTime2), 2, N'/books/cover/150286cf-46dc-4342-b0c9-f77f84498551_book5.png', N'/books/pdf/853710c7-9904-4cd2-979f-8d9ddbff0e21_Python_Basic_Advanced_Week_2.pdf')
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (1, N'Hindi', N'This is Description of Hindi')
INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (2, N'English', N'English description')
INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (3, N'Chinese', NULL)
INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (4, N'Dutch', NULL)
INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (5, N'Punjabi', NULL)
INSERT [dbo].[Language] ([Id], [Name], [Description]) VALUES (6, N'Tamil', NULL)
SET IDENTITY_INSERT [dbo].[Language] OFF
/****** Object:  Index [IX_BookGallery_BookId]    Script Date: 1/6/2021 5:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookGallery_BookId] ON [dbo].[BookGallery]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_LanguageId]    Script Date: 1/6/2021 5:01:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_LanguageId] ON [dbo].[Books]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookGallery]  WITH CHECK ADD  CONSTRAINT [FK_BookGallery_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookGallery] CHECK CONSTRAINT [FK_BookGallery_Books_BookId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Language_LanguageId]
GO
USE [master]
GO
ALTER DATABASE [BookStore] SET  READ_WRITE 
GO
