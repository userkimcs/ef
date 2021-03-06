USE [master]
GO
/****** Object:  Database [HPDB]    Script Date: 11/13/2015 4:56:21 PM ******/
CREATE DATABASE [HPDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HPDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HPDB.mdf' , SIZE = 5184KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HPDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HPDB_log.ldf' , SIZE = 2112KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HPDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HPDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HPDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HPDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HPDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HPDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HPDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HPDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HPDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HPDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HPDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HPDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HPDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HPDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HPDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HPDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HPDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HPDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HPDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HPDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HPDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HPDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HPDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HPDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HPDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HPDB] SET RECOVERY FULL 
GO
ALTER DATABASE [HPDB] SET  MULTI_USER 
GO
ALTER DATABASE [HPDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HPDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HPDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HPDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HPDB', N'ON'
GO
USE [HPDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[UserId] [nvarchar](128) NOT NULL,
	[Role] [nvarchar](max) NULL,
	[IsVerified] [bit] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsBanned] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[BirthDay] [datetime] NULL,
	[Job] [nvarchar](max) NULL,
	[Place] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[LastActive] [datetime] NULL,
	[Language] [int] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](64) NULL,
	[AccessKey] [nvarchar](10) NULL,
	[LastAccess] [datetime] NULL,
	[IsBlocked] [bit] NOT NULL,
	[BlockCounter] [int] NOT NULL,
	[CurrentExp] [int] NOT NULL,
	[ContinousCounter] [int] NOT NULL,
	[LastDiligentDate] [datetime] NULL,
	[ExpDate] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassComments]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassComments](
	[ClassCommentId] [nvarchar](128) NOT NULL,
	[CommentContent] [nvarchar](max) NULL,
	[Votes] [int] NOT NULL,
	[CommentParent] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ClassId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ClassComments] PRIMARY KEY CLUSTERED 
(
	[ClassCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classes]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ClassId] [nvarchar](128) NOT NULL,
	[ClassName] [nvarchar](max) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Abstract] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[TotalLikes] [int] NOT NULL,
	[TotalLearns] [int] NOT NULL,
	[NumberOfWords] [int] NOT NULL,
	[NumberOfPhrases] [int] NOT NULL,
	[NumberOfGrammars] [int] NOT NULL,
	[NumberOfPronunciations] [int] NOT NULL,
	[NumberOfWeeks] [float] NOT NULL,
	[IsMaintained] [bit] NOT NULL,
	[CreatedByUserId] [nvarchar](128) NOT NULL,
	[CourseId] [nvarchar](128) NOT NULL,
	[Order] [int] NOT NULL,
	[Complexity] [int] NOT NULL,
	[Test] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Classes] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassTag]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassTag](
	[ClassId] [nvarchar](128) NOT NULL,
	[TagId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ClassTag] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CouponCodes]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponCodes](
	[CouponCodeId] [nvarchar](128) NOT NULL,
	[SaleOffAmount] [float] NOT NULL,
	[Type] [int] NOT NULL,
	[Desciption] [nvarchar](max) NULL,
	[LimitedCondition] [int] NOT NULL,
	[UsageAmount] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.CouponCodes] PRIMARY KEY CLUSTERED 
(
	[CouponCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [nvarchar](128) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Abstract] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[TotalLikes] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NumberOfWords] [int] NOT NULL,
	[NumberOfPhrases] [int] NOT NULL,
	[NumberOfGrammars] [int] NOT NULL,
	[NumberOfPronunciations] [int] NOT NULL,
	[CreatedUserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currency]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IconLink] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currency_UserMap]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency_UserMap](
	[UserId] [nvarchar](128) NOT NULL,
	[CurrencyId] [nvarchar](128) NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Currency_UserMap] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CityId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Districts] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experience]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[ExperienceId] [nvarchar](128) NOT NULL,
	[CurrentExp] [int] NOT NULL,
	[KindOfExp] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Experience] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrammarArticles]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrammarArticles](
	[GrammarId] [nvarchar](128) NOT NULL,
	[TitleInVietnamese] [nvarchar](max) NULL,
	[TitleInEnglish] [nvarchar](max) NULL,
	[Alias] [nvarchar](64) NULL,
	[TextInVietnamese] [nvarchar](3999) NULL,
	[TextInEnglish] [nvarchar](3999) NULL,
	[VisitCounter] [int] NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[ParentId] [nvarchar](128) NULL,
	[Index] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GrammarArticles] PRIMARY KEY CLUSTERED 
(
	[GrammarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HepaPassports]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HepaPassports](
	[PassportId] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[ExpiryDate] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ActiveDate] [datetime] NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.HepaPassports] PRIMARY KEY CLUSTERED 
(
	[PassportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HepaProducts]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HepaProducts](
	[HepaProductId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.HepaProducts] PRIMARY KEY CLUSTERED 
(
	[HepaProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KindOfExperiences]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KindOfExperiences](
	[KindOfExpId] [nvarchar](128) NOT NULL,
	[ExpName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.KindOfExperiences] PRIMARY KEY CLUSTERED 
(
	[KindOfExpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LearnWordHistories]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearnWordHistories](
	[LearnWordHistoryId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[WordId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
	[aWord] [nvarchar](max) NOT NULL,
	[Meaning] [nvarchar](max) NULL,
	[PartOfSpeech] [nvarchar](max) NULL,
	[Complexity] [int] NOT NULL,
	[ArchivedScore] [int] NOT NULL,
	[IsSuccessed] [bit] NOT NULL,
	[LearningDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.LearnWordHistories] PRIMARY KEY CLUSTERED 
(
	[LearnWordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LearnWordResults]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearnWordResults](
	[UserId] [nvarchar](128) NOT NULL,
	[WordId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
	[IsSuccessed] [bit] NOT NULL,
	[LastUpdated] [datetime] NULL,
	[AchievedScore] [float] NOT NULL,
 CONSTRAINT [PK_dbo.LearnWordResults] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[WordId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[CustomerId] [nvarchar](128) NOT NULL,
	[HepaProductId] [nvarchar](128) NOT NULL,
	[NumberOfItems] [int] NOT NULL,
	[CouponCodeId] [nvarchar](128) NULL,
	[KindOfPurchase] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[OrderDetailId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[HepaProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhraseComments]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhraseComments](
	[PhraseCommentId] [nvarchar](128) NOT NULL,
	[CommentContent] [nvarchar](max) NULL,
	[Votes] [int] NOT NULL,
	[CommentParent] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[PhraseId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.PhraseComments] PRIMARY KEY CLUSTERED 
(
	[PhraseCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhraseExampleSentances]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhraseExampleSentances](
	[ExamplePhraseId] [nvarchar](128) NOT NULL,
	[Sentence] [nvarchar](max) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[AudioLink] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[PhraseId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.PhraseExampleSentances] PRIMARY KEY CLUSTERED 
(
	[ExamplePhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phrases]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phrases](
	[PhraseId] [nvarchar](128) NOT NULL,
	[aPhrase] [nvarchar](max) NULL,
	[ImageLink] [nvarchar](max) NULL,
	[IPA] [nvarchar](max) NULL,
	[Meaning] [nvarchar](max) NULL,
	[AudioLink] [nvarchar](128) NULL,
	[TotalLikes] [int] NOT NULL,
	[TotalViews] [int] NOT NULL,
	[TotalComments] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[Complexity] [int] NOT NULL,
	[ClassBelongId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Phrases] PRIMARY KEY CLUSTERED 
(
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PromotionEvent]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionEvent](
	[PromotionEventId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[Desciption] [nvarchar](max) NULL,
	[LimitedCondition] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.PromotionEvent] PRIMARY KEY CLUSTERED 
(
	[PromotionEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rank_User]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank_User](
	[UserId] [nvarchar](128) NOT NULL,
	[RankId] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ApplicationUser_Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Rank_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ranks]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranks](
	[Id] [nvarchar](128) NOT NULL,
	[RankName] [nvarchar](max) NULL,
	[RankExp] [float] NOT NULL,
	[RankIcon] [nvarchar](max) NULL,
	[KindOfRank] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Ranks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [nvarchar](128) NOT NULL,
	[TagName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ToDayWords]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToDayWords](
	[UserId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
	[WordId] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsLearned] [bit] NOT NULL,
	[IsPassed] [bit] NOT NULL,
	[ArchivedScore] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ToDayWords] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ClassId] ASC,
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Towns]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Towns](
	[TownId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DistrictId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Towns] PRIMARY KEY CLUSTERED 
(
	[TownId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersJoinClasses_Goal]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersJoinClasses_Goal](
	[UserId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
	[NumberOfDays] [float] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastChanged] [datetime] NULL,
	[LastActive] [datetime] NULL,
	[CourseId] [nvarchar](128) NOT NULL,
	[Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UsersJoinClasses_Goal] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersLearnPhrases]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLearnPhrases](
	[UserId] [nvarchar](128) NOT NULL,
	[PhraseId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UsersLearnPhrases] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersLikedClasses]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLikedClasses](
	[UserId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UsersLikedClasses] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersLikedPhrases]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLikedPhrases](
	[UserId] [nvarchar](128) NOT NULL,
	[PhraseId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UsersLikedPhrases] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersLikedWordComments]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLikedWordComments](
	[UserId] [nvarchar](128) NOT NULL,
	[CommentId] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.UsersLikedWordComments] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersLikedWords]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLikedWords](
	[UserId] [nvarchar](128) NOT NULL,
	[WordId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.UsersLikedWords] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserWithExperiences]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWithExperiences](
	[UserExperienceId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[KindOfExpId] [nvarchar](128) NOT NULL,
	[Exp] [int] NOT NULL,
	[ActionName] [nvarchar](1024) NULL,
 CONSTRAINT [PK_dbo.UserWithExperiences] PRIMARY KEY CLUSTERED 
(
	[UserExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordComments]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordComments](
	[WordCommentId] [nvarchar](128) NOT NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentParent] [nvarchar](max) NULL,
	[Votes] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[NumberOfReplies] [int] NOT NULL,
	[WordId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.WordComments] PRIMARY KEY CLUSTERED 
(
	[WordCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordExampleSentences]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordExampleSentences](
	[ExampleSentenceId] [nvarchar](128) NOT NULL,
	[Sentence] [nvarchar](max) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[AudioLink] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[WordId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.WordExampleSentences] PRIMARY KEY CLUSTERED 
(
	[ExampleSentenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 11/13/2015 4:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordId] [nvarchar](128) NOT NULL,
	[aWord] [nvarchar](max) NOT NULL,
	[ImageLink] [nvarchar](max) NULL,
	[IPA] [nvarchar](max) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[AudioLink] [nvarchar](128) NULL,
	[TotalLikes] [int] NULL,
	[TotalComments] [int] NULL,
	[TotalViews] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[Complexity] [int] NOT NULL,
	[PartOfSpeech] [nvarchar](max) NULL,
	[ClassBelongId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Words] PRIMARY KEY CLUSTERED 
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassId] ON [dbo].[ClassComments]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[ClassComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseId] ON [dbo].[Classes]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CreatedByUserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreatedByUserId] ON [dbo].[Classes]
(
	[CreatedByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassId] ON [dbo].[ClassTag]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TagId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_TagId] ON [dbo].[ClassTag]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CreatedUserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreatedUserId] ON [dbo].[Courses]
(
	[CreatedUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CurrencyId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CurrencyId] ON [dbo].[Currency_UserMap]
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Currency_UserMap]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_GrammarArticles_Alias]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IDX_GrammarArticles_Alias] ON [dbo].[GrammarArticles]
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WordId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_WordId] ON [dbo].[LearnWordResults]
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CouponCodeId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CouponCodeId] ON [dbo].[OrderDetails]
(
	[CouponCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CustomerId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[OrderDetails]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HepaProductId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_HepaProductId] ON [dbo].[OrderDetails]
(
	[HepaProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PhraseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhraseId] ON [dbo].[PhraseComments]
(
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[PhraseComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PhraseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhraseId] ON [dbo].[PhraseExampleSentances]
(
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassBelongId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassBelongId] ON [dbo].[Phrases]
(
	[ClassBelongId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUser_Id]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUser_Id] ON [dbo].[Rank_User]
(
	[ApplicationUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RankId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_RankId] ON [dbo].[Rank_User]
(
	[RankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WordId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_WordId] ON [dbo].[ToDayWords]
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassId] ON [dbo].[UsersJoinClasses_Goal]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseId] ON [dbo].[UsersJoinClasses_Goal]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersJoinClasses_Goal]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PhraseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhraseId] ON [dbo].[UsersLearnPhrases]
(
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersLearnPhrases]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassId] ON [dbo].[UsersLikedClasses]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersLikedClasses]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PhraseId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_PhraseId] ON [dbo].[UsersLikedPhrases]
(
	[PhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersLikedPhrases]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CommentId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommentId] ON [dbo].[UsersLikedWordComments]
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersLikedWordComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UsersLikedWords]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WordId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_WordId] ON [dbo].[UsersLikedWords]
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_KindOfExpId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_KindOfExpId] ON [dbo].[UserWithExperiences]
(
	[KindOfExpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UserWithExperiences]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[WordComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WordId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_WordId] ON [dbo].[WordComments]
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_WordId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_WordId] ON [dbo].[WordExampleSentences]
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClassBelongId]    Script Date: 11/13/2015 4:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassBelongId] ON [dbo].[Words]
(
	[ClassBelongId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Classes] ADD  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[Classes] ADD  DEFAULT ((0)) FOR [Complexity]
GO
ALTER TABLE [dbo].[Classes] ADD  DEFAULT ((0)) FOR [Test]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClassComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClassComments_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[ClassComments] CHECK CONSTRAINT [FK_dbo.ClassComments_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClassComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClassComments_dbo.Classes_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[ClassComments] CHECK CONSTRAINT [FK_dbo.ClassComments_dbo.Classes_ClassId]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Classes_dbo.AspNetUsers_CreatedByUserId] FOREIGN KEY([CreatedByUserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_dbo.Classes_dbo.AspNetUsers_CreatedByUserId]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Classes_dbo.Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_dbo.Classes_dbo.Courses_CourseId]
GO
ALTER TABLE [dbo].[ClassTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClassTag_dbo.Classes_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Classes] ([ClassId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassTag] CHECK CONSTRAINT [FK_dbo.ClassTag_dbo.Classes_TagId]
GO
ALTER TABLE [dbo].[ClassTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClassTag_dbo.Tags_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Tags] ([TagId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassTag] CHECK CONSTRAINT [FK_dbo.ClassTag_dbo.Tags_ClassId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Courses_dbo.AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_dbo.Courses_dbo.AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Currency_UserMap]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Currency_UserMap_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Currency_UserMap] CHECK CONSTRAINT [FK_dbo.Currency_UserMap_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Currency_UserMap]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Currency_UserMap_dbo.Currency_CurrencyId] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currency] ([CurrencyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Currency_UserMap] CHECK CONSTRAINT [FK_dbo.Currency_UserMap_dbo.Currency_CurrencyId]
GO
ALTER TABLE [dbo].[LearnWordResults]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LearnWordResults_dbo.Words_WordId] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LearnWordResults] CHECK CONSTRAINT [FK_dbo.LearnWordResults_dbo.Words_WordId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.CouponCodes_CouponCodeId] FOREIGN KEY([CouponCodeId])
REFERENCES [dbo].[CouponCodes] ([CouponCodeId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.CouponCodes_CouponCodeId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Customers_CustomerId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.HepaProducts_HepaProductId] FOREIGN KEY([HepaProductId])
REFERENCES [dbo].[HepaProducts] ([HepaProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.HepaProducts_HepaProductId]
GO
ALTER TABLE [dbo].[PhraseComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhraseComments_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[PhraseComments] CHECK CONSTRAINT [FK_dbo.PhraseComments_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PhraseComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhraseComments_dbo.Phrases_PhraseId] FOREIGN KEY([PhraseId])
REFERENCES [dbo].[Phrases] ([PhraseId])
GO
ALTER TABLE [dbo].[PhraseComments] CHECK CONSTRAINT [FK_dbo.PhraseComments_dbo.Phrases_PhraseId]
GO
ALTER TABLE [dbo].[PhraseExampleSentances]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhraseExampleSentances_dbo.Phrases_PhraseId] FOREIGN KEY([PhraseId])
REFERENCES [dbo].[Phrases] ([PhraseId])
GO
ALTER TABLE [dbo].[PhraseExampleSentances] CHECK CONSTRAINT [FK_dbo.PhraseExampleSentances_dbo.Phrases_PhraseId]
GO
ALTER TABLE [dbo].[Phrases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Phrases_dbo.Classes_ClassBelongId] FOREIGN KEY([ClassBelongId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[Phrases] CHECK CONSTRAINT [FK_dbo.Phrases_dbo.Classes_ClassBelongId]
GO
ALTER TABLE [dbo].[Rank_User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rank_User_dbo.AspNetUsers_ApplicationUser_Id] FOREIGN KEY([ApplicationUser_Id])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[Rank_User] CHECK CONSTRAINT [FK_dbo.Rank_User_dbo.AspNetUsers_ApplicationUser_Id]
GO
ALTER TABLE [dbo].[Rank_User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rank_User_dbo.Ranks_RankId] FOREIGN KEY([RankId])
REFERENCES [dbo].[Ranks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rank_User] CHECK CONSTRAINT [FK_dbo.Rank_User_dbo.Ranks_RankId]
GO
ALTER TABLE [dbo].[ToDayWords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ToDayWords_dbo.Words_WordId] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ToDayWords] CHECK CONSTRAINT [FK_dbo.ToDayWords_dbo.Words_WordId]
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal] CHECK CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.Classes_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal] CHECK CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.Classes_ClassId]
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[UsersJoinClasses_Goal] CHECK CONSTRAINT [FK_dbo.UsersJoinClasses_Goal_dbo.Courses_CourseId]
GO
ALTER TABLE [dbo].[UsersLearnPhrases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLearnPhrases_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLearnPhrases] CHECK CONSTRAINT [FK_dbo.UsersLearnPhrases_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersLearnPhrases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLearnPhrases_dbo.Phrases_PhraseId] FOREIGN KEY([PhraseId])
REFERENCES [dbo].[Phrases] ([PhraseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLearnPhrases] CHECK CONSTRAINT [FK_dbo.UsersLearnPhrases_dbo.Phrases_PhraseId]
GO
ALTER TABLE [dbo].[UsersLikedClasses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedClasses_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedClasses] CHECK CONSTRAINT [FK_dbo.UsersLikedClasses_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersLikedClasses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedClasses_dbo.Classes_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedClasses] CHECK CONSTRAINT [FK_dbo.UsersLikedClasses_dbo.Classes_ClassId]
GO
ALTER TABLE [dbo].[UsersLikedPhrases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedPhrases_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedPhrases] CHECK CONSTRAINT [FK_dbo.UsersLikedPhrases_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersLikedPhrases]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedPhrases_dbo.Phrases_PhraseId] FOREIGN KEY([PhraseId])
REFERENCES [dbo].[Phrases] ([PhraseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedPhrases] CHECK CONSTRAINT [FK_dbo.UsersLikedPhrases_dbo.Phrases_PhraseId]
GO
ALTER TABLE [dbo].[UsersLikedWordComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedWordComments_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[UsersLikedWordComments] CHECK CONSTRAINT [FK_dbo.UsersLikedWordComments_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersLikedWordComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedWordComments_dbo.WordComments_CommentId] FOREIGN KEY([CommentId])
REFERENCES [dbo].[WordComments] ([WordCommentId])
GO
ALTER TABLE [dbo].[UsersLikedWordComments] CHECK CONSTRAINT [FK_dbo.UsersLikedWordComments_dbo.WordComments_CommentId]
GO
ALTER TABLE [dbo].[UsersLikedWords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedWords_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedWords] CHECK CONSTRAINT [FK_dbo.UsersLikedWords_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersLikedWords]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsersLikedWords_dbo.Words_WordId] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersLikedWords] CHECK CONSTRAINT [FK_dbo.UsersLikedWords_dbo.Words_WordId]
GO
ALTER TABLE [dbo].[UserWithExperiences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserWithExperiences_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserWithExperiences] CHECK CONSTRAINT [FK_dbo.UserWithExperiences_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserWithExperiences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserWithExperiences_dbo.KindOfExperiences_KindOfExpId] FOREIGN KEY([KindOfExpId])
REFERENCES [dbo].[KindOfExperiences] ([KindOfExpId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserWithExperiences] CHECK CONSTRAINT [FK_dbo.UserWithExperiences_dbo.KindOfExperiences_KindOfExpId]
GO
ALTER TABLE [dbo].[WordComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WordComments_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserId])
GO
ALTER TABLE [dbo].[WordComments] CHECK CONSTRAINT [FK_dbo.WordComments_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[WordComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WordComments_dbo.Words_WordId] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[WordComments] CHECK CONSTRAINT [FK_dbo.WordComments_dbo.Words_WordId]
GO
ALTER TABLE [dbo].[WordExampleSentences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WordExampleSentences_dbo.Words_WordId] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[WordExampleSentences] CHECK CONSTRAINT [FK_dbo.WordExampleSentences_dbo.Words_WordId]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Words_dbo.Classes_ClassBelongId] FOREIGN KEY([ClassBelongId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_dbo.Words_dbo.Classes_ClassBelongId]
GO
USE [master]
GO
ALTER DATABASE [HPDB] SET  READ_WRITE 
GO
