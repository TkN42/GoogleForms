USE [master]
GO
/****** Object:  Database [SurveyAppDatabase]    Script Date: 22.03.2024 15:35:44 ******/
CREATE DATABASE [SurveyAppDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SurveyAppDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SurveyAppDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SurveyAppDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SurveyAppDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SurveyAppDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SurveyAppDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SurveyAppDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SurveyAppDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SurveyAppDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SurveyAppDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SurveyAppDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [SurveyAppDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [SurveyAppDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SurveyAppDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SurveyAppDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SurveyAppDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SurveyAppDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SurveyAppDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SurveyAppDatabase', N'ON'
GO
ALTER DATABASE [SurveyAppDatabase] SET QUERY_STORE = OFF
GO
USE [SurveyAppDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 22.03.2024 15:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubmissionId] [int] NOT NULL,
	[QuestionId] [int] NULL,
	[QuestionText] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22.03.2024 15:35:44 ******/
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22.03.2024 15:35:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choices]    Script Date: 22.03.2024 15:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Choices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 22.03.2024 15:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurveyId] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Submissions]    Script Date: 22.03.2024 15:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurveyId] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Submissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Surveys]    Script Date: 22.03.2024 15:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surveys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Surveys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230621135524_Initial', N'8.0.0-preview.5.23280.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230624092019_AddedSurveySubmissionAndQuestionAnswerTables', N'8.0.0-preview.5.23280.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230627124244_AddedIdentityTables', N'8.0.0-preview.5.23280.1')
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (1, 1, 1, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (2, 1, 2, N'string', N'asd')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (3, 1, 3, N'string', N'asdasd')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (4, 1, 4, N'string', N'string3')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (5, 1, 5, N'string', N'string3')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (6, 1, 6, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (7, 1, 7, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (8, 1, 8, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (9, 1, 9, N'string', N'2')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (10, 2, 1, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (11, 2, 2, N'string', N'sdg')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (12, 2, 3, N'string', N'asedfgh')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (13, 2, 4, N'string', N'string3')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (14, 2, 5, N'string', N'string3')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (15, 2, 6, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (16, 2, 7, N'string', N'string2')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (17, 2, 8, N'string', N'string')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (18, 2, 9, N'string', N'1')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (19, 3, 10, N'adınız', N'dfhjl')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (20, 3, 11, N'string', N'fg')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (21, 4, 15, N'Adınız', N'adsasd')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (22, 5, 15, N'Adınız', N'mustafa')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (23, 5, 16, N'Yorumunuz', N'yorum')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (24, 5, 17, N'Parti Seç', N'MHP')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (25, 5, 18, N'Değenlendir', N'iyi')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (26, 6, 15, N'Adınız', N'furkan')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (27, 6, 16, N'Yorumunuz', N'yorummmm')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (28, 6, 17, N'Parti Seç', N'TKP')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (29, 6, 18, N'Değenlendir', N'çok iyi')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (30, 7, 15, N'Adınız', N'tekin')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (31, 7, 16, N'Yorumunuz', N'yorumum')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (32, 7, 17, N'Parti Seç', N'CHP')
INSERT [dbo].[Answers] ([Id], [SubmissionId], [QuestionId], [QuestionText], [Value]) VALUES (33, 7, 18, N'Değenlendir', N'iyi')
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'56ac0bb9-a5bb-41bf-b85a-64a9ea383b58', N'tekin@mail.com', N'TEKIN@MAIL.COM', N'tekin@mail.com', N'TEKIN@MAIL.COM', 0, N'AQAAAAIAAYagAAAAENLrT/yj9QbmlqODTyC5mFNAfH/B6wCHijcaldNITx0phfSJ+bIhuOXIrUFna0JZ5Q==', N'YQHZK2XWSQUJY2JPRFTB2YNVOOTTF5RF', N'27eea7cc-b5b9-44ce-99d1-c8cb908eca74', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Choices] ON 

INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (1, 1, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (2, 2, 3, N'string3')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (3, 3, 3, N'string3')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (4, 4, 3, N'string3')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (5, 5, 3, N'string3')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (6, 6, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (7, 6, 2, N'string2')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (8, 7, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (9, 7, 2, N'string2')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (10, 8, 5, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (11, 9, 5, N'1')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (12, 9, 6, N'2')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (13, 10, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (14, 11, 2, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (15, 12, 1, N'kötü')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (16, 12, 2, N'orta')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (17, 12, 3, N'iyi')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (18, 13, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (19, 14, 1, N'string')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (20, 15, 1, N'Adınız')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (21, 16, 1, N'Yorumunuz')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (22, 17, 1, N'AKP')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (23, 17, 1, N'MHP')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (24, 17, 1, N'CHP')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (25, 17, 1, N'TKP')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (26, 18, 1, N'çok kötü')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (27, 18, 2, N'kötü')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (28, 18, 3, N'orta')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (29, 18, 4, N'iyi')
INSERT [dbo].[Choices] ([Id], [QuestionId], [Position], [Text]) VALUES (30, 18, 5, N'çok iyi')
SET IDENTITY_INSERT [dbo].[Choices] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (1, 1, 1, N'string', N'string', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (2, 1, 1, N'string', N'string', N'single_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (3, 1, 1, N'string', N'string', N'multi_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (4, 1, 1, N'string', N'string', N'rating')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (5, 1, 1, N'string', N'string', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (6, 1, 1, N'string', N'string', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (7, 1, 1, N'string', N'string', N'rating')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (8, 1, 1, N'string', N'string', N'rating')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (9, 1, 1, N'string', N'string', N'rating')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (10, 2, 1, N'adınız', N'adınız', N'single_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (11, 2, 1, N'string', N'string', N'single_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (12, 2, 1, N'string', N'string', N'rating')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (13, 3, 1, N'string', N'string', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (14, 4, 1, N'Adınız', N'string', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (15, 5, 1, N'Adınız', N'Adınız', N'single_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (16, 5, 2, N'Yorumunuz', N'Yorumunuz', N'multi_open_ended')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (17, 5, 2, N'Parti Seç', N'Parti Seç', N'single_choice')
INSERT [dbo].[Questions] ([Id], [SurveyId], [Position], [Name], [Text], [Type]) VALUES (18, 5, 2, N'Değenlendir', N'Değenlendir', N'rating')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Submissions] ON 

INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (1, 1, CAST(N'2024-03-20T23:49:11.4221698' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (2, 1, CAST(N'2024-03-22T01:02:12.0291004' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (3, 2, CAST(N'2024-03-22T01:06:38.4931325' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (4, 5, CAST(N'2024-03-22T15:12:53.1675939' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (5, 5, CAST(N'2024-03-22T15:27:49.6466664' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (6, 5, CAST(N'2024-03-22T15:28:00.1080721' AS DateTime2))
INSERT [dbo].[Submissions] ([Id], [SurveyId], [CreatedOn]) VALUES (7, 5, CAST(N'2024-03-22T15:28:14.3821417' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Submissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Surveys] ON 

INSERT [dbo].[Surveys] ([Id], [Name]) VALUES (1, N'string')
INSERT [dbo].[Surveys] ([Id], [Name]) VALUES (2, N'anket deneme')
INSERT [dbo].[Surveys] ([Id], [Name]) VALUES (3, N'test')
INSERT [dbo].[Surveys] ([Id], [Name]) VALUES (4, N'Seçin Anketi V1')
INSERT [dbo].[Surveys] ([Id], [Name]) VALUES (5, N'Seçin Anketi V2')
SET IDENTITY_INSERT [dbo].[Surveys] OFF
GO
/****** Object:  Index [IX_Answers_QuestionId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_Answers_QuestionId] ON [dbo].[Answers]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Answers_SubmissionId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_Answers_SubmissionId] ON [dbo].[Answers]
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22.03.2024 15:35:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 22.03.2024 15:35:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Choices_QuestionId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_Choices_QuestionId] ON [dbo].[Choices]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_SurveyId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_Questions_SurveyId] ON [dbo].[Questions]
(
	[SurveyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Submissions_SurveyId]    Script Date: 22.03.2024 15:35:44 ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_SurveyId] ON [dbo].[Submissions]
(
	[SurveyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Choices] ADD  DEFAULT ((1)) FOR [Position]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT ((1)) FOR [Position]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Submissions_SubmissionId] FOREIGN KEY([SubmissionId])
REFERENCES [dbo].[Submissions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Submissions_SubmissionId]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Choices]  WITH CHECK ADD  CONSTRAINT [FK_Choices_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Choices] CHECK CONSTRAINT [FK_Choices_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Surveys_SurveyId] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Surveys] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Surveys_SurveyId]
GO
ALTER TABLE [dbo].[Submissions]  WITH CHECK ADD  CONSTRAINT [FK_Submissions_Surveys_SurveyId] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Surveys] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Submissions] CHECK CONSTRAINT [FK_Submissions_Surveys_SurveyId]
GO
USE [master]
GO
ALTER DATABASE [SurveyAppDatabase] SET  READ_WRITE 
GO
