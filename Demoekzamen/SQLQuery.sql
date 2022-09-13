USE [master]
GO
/****** Object:  Database [195bv]    Script Date: 13.09.2022 12:26:10 ******/
CREATE DATABASE [195bv]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'195bv', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\195bv.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'195bv_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\195bv_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [195bv] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [195bv].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [195bv] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [195bv] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [195bv] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [195bv] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [195bv] SET ARITHABORT OFF 
GO
ALTER DATABASE [195bv] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [195bv] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [195bv] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [195bv] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [195bv] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [195bv] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [195bv] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [195bv] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [195bv] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [195bv] SET  DISABLE_BROKER 
GO
ALTER DATABASE [195bv] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [195bv] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [195bv] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [195bv] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [195bv] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [195bv] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [195bv] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [195bv] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [195bv] SET  MULTI_USER 
GO
ALTER DATABASE [195bv] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [195bv] SET DB_CHAINING OFF 
GO
ALTER DATABASE [195bv] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [195bv] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [195bv] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [195bv] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [195bv] SET QUERY_STORE = OFF
GO
USE [195bv]
GO
/****** Object:  Table [dbo].[Src]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Src](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[types_users_id] [int] NULL,
	[Src] [text] NULL,
 CONSTRAINT [PK_Src_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesUsers]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TypesUsers_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[pass] [varbinary](max) NOT NULL,
	[email] [varbinary](50) NOT NULL,
	[types_users_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_all]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_all]
AS
SELECT        dbo.Src.types_users_id AS Expr1, dbo.Src.Src AS Expr2, dbo.Src.id AS Expr3, dbo.Users.id, dbo.Users.login, dbo.Users.pass, dbo.Users.email, dbo.Users.types_users_id, dbo.TypesUsers.id AS Expr4, 
                         dbo.TypesUsers.Name
FROM            dbo.Src INNER JOIN
                         dbo.Users ON dbo.Src.id = dbo.Users.id INNER JOIN
                         dbo.TypesUsers ON dbo.Src.types_users_id = dbo.TypesUsers.id
GO
/****** Object:  Table [dbo].[AutoModels]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoModels](
	[ID] [int] NOT NULL,
	[Model] [varchar](50) NULL,
	[VenderID] [int] NOT NULL,
	[StartDate] [int] NULL,
	[EndDate] [int] NULL,
 CONSTRAINT [PK_AutoModels$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientsAuto]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientsAuto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[VIN] [varchar](50) NULL,
	[GosNumber] [varchar](50) NULL,
	[AutoModelID] [int] NULL,
 CONSTRAINT [PK_ClientsAuto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealsInfo]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealsInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MainInfoID] [int] NULL,
	[ServiceID] [int] NOT NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_DealsInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainInfo]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ClientID] [int] NULL,
	[ClientsAutoID] [int] NULL,
	[Date] [datetime] NULL,
	[StatusID] [int] NULL,
 CONSTRAINT [PK_MainInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceList]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceList](
	[ID] [int] NOT NULL,
	[Name] [varchar](250) NULL,
	[Price] [int] NULL,
	[PriceType] [int] NULL,
	[Service] [varchar](250) NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [nvarchar](255) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table](
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venders]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Venders_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AutoModels]  WITH CHECK ADD  CONSTRAINT [FK_AutoModels_Venders] FOREIGN KEY([VenderID])
REFERENCES [dbo].[Venders] ([ID])
GO
ALTER TABLE [dbo].[AutoModels] CHECK CONSTRAINT [FK_AutoModels_Venders]
GO
ALTER TABLE [dbo].[ClientsAuto]  WITH CHECK ADD  CONSTRAINT [FK_ClientsAuto_AutoModels] FOREIGN KEY([AutoModelID])
REFERENCES [dbo].[AutoModels] ([ID])
GO
ALTER TABLE [dbo].[ClientsAuto] CHECK CONSTRAINT [FK_ClientsAuto_AutoModels]
GO
ALTER TABLE [dbo].[DealsInfo]  WITH CHECK ADD  CONSTRAINT [FK_DealsInfo_MainInfo] FOREIGN KEY([MainInfoID])
REFERENCES [dbo].[MainInfo] ([ID])
GO
ALTER TABLE [dbo].[DealsInfo] CHECK CONSTRAINT [FK_DealsInfo_MainInfo]
GO
ALTER TABLE [dbo].[DealsInfo]  WITH CHECK ADD  CONSTRAINT [FK_DealsInfo_PriceList] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[PriceList] ([ID])
GO
ALTER TABLE [dbo].[DealsInfo] CHECK CONSTRAINT [FK_DealsInfo_PriceList]
GO
ALTER TABLE [dbo].[MainInfo]  WITH CHECK ADD  CONSTRAINT [FK_MainInfo_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ID])
GO
ALTER TABLE [dbo].[MainInfo] CHECK CONSTRAINT [FK_MainInfo_Clients]
GO
ALTER TABLE [dbo].[MainInfo]  WITH CHECK ADD  CONSTRAINT [FK_MainInfo_ClientsAuto] FOREIGN KEY([ClientsAutoID])
REFERENCES [dbo].[ClientsAuto] ([ID])
GO
ALTER TABLE [dbo].[MainInfo] CHECK CONSTRAINT [FK_MainInfo_ClientsAuto]
GO
ALTER TABLE [dbo].[MainInfo]  WITH CHECK ADD  CONSTRAINT [FK_MainInfo_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ID])
GO
ALTER TABLE [dbo].[MainInfo] CHECK CONSTRAINT [FK_MainInfo_Provider]
GO
ALTER TABLE [dbo].[MainInfo]  WITH CHECK ADD  CONSTRAINT [FK_MainInfo_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[MainInfo] CHECK CONSTRAINT [FK_MainInfo_Status]
GO
ALTER TABLE [dbo].[PriceList]  WITH CHECK ADD  CONSTRAINT [FK_PriceList_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ID])
GO
ALTER TABLE [dbo].[PriceList] CHECK CONSTRAINT [FK_PriceList_Services]
GO
ALTER TABLE [dbo].[Src]  WITH CHECK ADD  CONSTRAINT [FK_Src_TypesUsers] FOREIGN KEY([types_users_id])
REFERENCES [dbo].[TypesUsers] ([id])
GO
ALTER TABLE [dbo].[Src] CHECK CONSTRAINT [FK_Src_TypesUsers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_TypesUsers] FOREIGN KEY([types_users_id])
REFERENCES [dbo].[TypesUsers] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_TypesUsers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_TypesUsers1] FOREIGN KEY([types_users_id])
REFERENCES [dbo].[TypesUsers] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_TypesUsers1]
GO
/****** Object:  StoredProcedure [dbo].[View_alls]    Script Date: 13.09.2022 12:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[View_alls]
AS 
BEGIN
	SET NOCOUNT ON;
	SELECT dbo.Src.id, dbo.Src.types_users_id, CONCAT('../Images/', dbo.Src.Src, '.jpg') as Src, dbo.TypesUsers.Name, dbo.Users.login, dbo.Users.pass, dbo.Users.email
FROM dbo.Src INNER JOIN
		dbo.TypesUsers on dbo.Src.types_users_id = dbo.TypesUsers.id INNER JOIN
		dbo.Users on dbo.TypesUsers.id = dbo.Users.types_users_id
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Src"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 9
               Left = 269
               Bottom = 139
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TypesUsers"
            Begin Extent = 
               Top = 7
               Left = 479
               Bottom = 103
               Right = 653
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_all'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_all'
GO
USE [master]
GO
ALTER DATABASE [195bv] SET  READ_WRITE 
GO
