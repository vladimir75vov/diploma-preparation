USE [195bv-sviyazhskyHills]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Code] [varchar](8) NOT NULL,
	[Name] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Pasport] [nchar](50) NULL,
	[DateBirth] [date] NULL,
	[Address] [nchar](100) NULL,
	[Password] [nchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Flag] [binary](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelPhoto]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelPhoto](
	[ID] [int] NOT NULL,
	[Preview] [binary](50) NULL,
	[PhotoPath] [varchar](200) NULL,
 CONSTRAINT [PK_HotelPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[Code] [nchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[CodeClient] [nchar](10) NULL,
	[Service] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[DateClose] [nchar](10) NULL,
	[TimeRental] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[PartnerID] [nchar](10) NULL,
	[HotelID] [int] NULL,
	[Price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceByTour]    Script Date: 07.02.2023 11:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceByTour](
	[ID] [int] NULL,
	[ServiceID] [int] NULL,
	[IsControl] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
