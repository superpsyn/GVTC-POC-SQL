USE [GVTC-Pavan,Chandra,Nithin]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 8/20/2024 6:11:20 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [SQLArcExtensionUserRole]    Script Date: 8/20/2024 6:11:20 PM ******/
CREATE ROLE [SQLArcExtensionUserRole]
GO
ALTER ROLE [SQLArcExtensionUserRole] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 8/20/2024 6:11:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AID] [int] NOT NULL,
	[Address] [varchar](40) NULL,
	[ZipCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bottle]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottle](
	[BottleID] [int] NOT NULL,
	[Shape] [varchar](10) NULL,
	[Color] [varchar](10) NULL,
	[Capacity] [int] NULL,
	[UnitCost] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[BottleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[CaseID] [int] NOT NULL,
	[WTID] [int] NULL,
	[BottleID] [int] NULL,
	[NoOfBottles] [int] NULL,
	[DateOfPacking] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseLot]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseLot](
	[LotID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[CaseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commercial]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commercial](
	[TaxID] [int] NOT NULL,
	[ResaleLicenseNumber] [int] NULL,
	[DiscountPercentage] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cottage]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cottage](
	[CottageID] [int] NOT NULL,
	[RoomNumber] [int] NULL,
	[RentPrice] [int] NULL,
	[CheckInDetails] [varchar](15) NULL,
	[CheckOutDetails] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[CottageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[Email] [varchar](30) NULL,
	[Phone] [bigint] NULL,
	[AID] [int] NULL,
	[MemberID] [int] NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerServer]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerServer](
	[CustID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
 CONSTRAINT [CustServ] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[DrivingLicenseID] [int] NOT NULL,
	[DrivingLicenseType] [varchar](50) NULL,
	[ExpiryDate] [date] NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DrivingLicenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[CertificationNumber] [int] NULL,
	[EmployeePosition] [char](28) NULL,
	[SSNNO] [int] NULL,
	[StartDate] [date] NULL,
	[InitialPayRole] [int] NULL,
	[CurrentPayRole] [int] NULL,
	[Email] [varchar](30) NULL,
	[Phone] [bigint] NULL,
	[EmergencyContact] [bigint] NULL,
	[Gender] [char](6) NULL,
	[AID] [int] NULL,
	[Supervisor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SSNNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] NOT NULL,
	[EventType] [varchar](10) NULL,
	[RoomCapacity] [int] NULL,
	[RoomNumber] [int] NULL,
	[WTID] [int] NULL,
	[LEID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FID] [int] NOT NULL,
	[Name] [varchar](20) NULL,
	[Description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrapeVariety]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrapeVariety](
	[GVID] [int] NOT NULL,
	[Name] [varchar](15) NULL,
	[JuiceConversionRatio] [decimal](4, 2) NULL,
	[WineStorageRequirement] [varchar](10) NULL,
	[WineAgingRequirement] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[GVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestID] [int] NOT NULL,
	[FirstName] [varchar](10) NULL,
	[LastName] [varchar](10) NULL,
	[DateOfBirth] [date] NULL,
	[GuestProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Harvest]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Harvest](
	[VID] [int] NULL,
	[GVID] [int] NULL,
	[Quantity] [int] NULL,
	[Weight] [decimal](10, 2) NULL,
	[SugarPercentage] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intern]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intern](
	[InternID] [int] NOT NULL,
	[InternshipRequirment] [varchar](100) NULL,
	[GraduationLastDate] [date] NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InternID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LifeEvents]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeEvents](
	[LEID] [int] NOT NULL,
	[Rent] [int] NULL,
	[Date] [date] NULL,
	[EventTitle] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[LEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketingCampaign]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingCampaign](
	[CampaignID] [int] NOT NULL,
	[MarketingDate] [date] NULL,
	[AdType] [char](10) NULL,
	[NoOfCustomersEngaged] [int] NULL,
	[Referral] [char](10) NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[MemberID] [int] NOT NULL,
	[JoiningDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[WineSelection] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[WineOfferedID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipWineOffered]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipWineOffered](
	[WineOfferedID] [int] NOT NULL,
	[MemberID] [int] NULL,
	[WineID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WineOfferedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[Date] [date] NULL,
	[CustomerID] [int] NULL,
	[PaymentID] [int] NULL,
	[ShipmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [OLID] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[PaymentType] [varchar](10) NULL,
	[Amount] [int] NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plot]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plot](
	[PlotID] [int] NOT NULL,
	[PlotName] [varchar](15) NULL,
	[PlotLocation] [varchar](50) NULL,
	[PlotDescription] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Type] [varchar](10) NULL,
	[Price] [int] NULL,
	[SKU] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductFood]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFood](
	[PID] [int] NOT NULL,
	[FID] [int] NOT NULL,
 CONSTRAINT [PFID] PRIMARY KEY CLUSTERED 
(
	[PID] ASC,
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductWine]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductWine](
	[PID] [int] NOT NULL,
	[WID] [int] NOT NULL,
 CONSTRAINT [PWID] PRIMARY KEY CLUSTERED 
(
	[PID] ASC,
	[WID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[VendorID] [int] NOT NULL,
	[BottleID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Date] [date] NULL,
	[Cost] [int] NULL,
	[Description] [varchar](40) NULL,
 CONSTRAINT [POID] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC,
	[BottleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server](
	[ServerID] [int] NOT NULL,
	[TipsCertification] [varchar](50) NULL,
	[CertificationDate] [date] NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] NOT NULL,
	[ServiceTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceGuestProducts]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceGuestProducts](
	[GuestProductID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[WineID] [int] NULL,
	[FoodID] [int] NULL,
	[ServiceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GuestProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[ServiceTypeID] [int] NOT NULL,
	[EventID] [int] NULL,
	[CottageID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[ShipmentID] [int] NOT NULL,
	[Date] [date] NULL,
	[Address] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[VendorID] [int] NULL,
	[BottleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] NOT NULL,
	[Name] [varchar](10) NULL,
	[Number] [bigint] NULL,
	[AID] [int] NULL,
	[PrincipalContact] [bigint] NULL,
	[Phone] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vineyard]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vineyard](
	[VID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Size] [decimal](10, 2) NULL,
	[Owner] [varchar](50) NULL,
	[PlotID] [int] NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wine]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wine](
	[WID] [int] NOT NULL,
	[Type] [varchar](10) NULL,
	[Quantity] [int] NULL,
	[WineID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineBlend]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineBlend](
	[GVID] [int] NOT NULL,
	[WineID] [int] NOT NULL,
	[juiceProportion] [decimal](6, 2) NULL,
	[BlendPercentage] [decimal](6, 2) NULL,
 CONSTRAINT [WBID] PRIMARY KEY CLUSTERED 
(
	[GVID] ASC,
	[WineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineHolding]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineHolding](
	[WHID] [int] NOT NULL,
	[TypeOfContainer] [varchar](10) NULL,
	[Holdingdate] [date] NULL,
	[Duration] [int] NULL,
	[WineID] [int] NULL,
	[CaseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineMaker]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineMaker](
	[WineMakerID] [int] NOT NULL,
	[CertificationLevel] [varchar](50) NULL,
	[CertificationDate] [date] NULL,
	[ReCertificationOutcomes] [varchar](100) NULL,
	[EmployeeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WineMakerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineProduced]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineProduced](
	[WineID] [int] NOT NULL,
	[WineType] [varchar](20) NULL,
	[Price] [decimal](10, 2) NULL,
	[Category] [varchar](20) NULL,
	[AlcoholPercentage] [decimal](4, 2) NULL,
	[VintageYear] [int] NULL,
	[LegalRequirement] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[WineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineTastingEvent]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineTastingEvent](
	[WTID] [int] NOT NULL,
	[Date] [date] NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WineType]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WineType](
	[WTID] [int] NOT NULL,
	[TypeOfWine] [varchar](10) NULL,
	[Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[WTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 8/20/2024 6:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode](
	[ZipCode] [int] NOT NULL,
	[State] [varchar](25) NULL,
	[City] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ZipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([ZipCode])
REFERENCES [dbo].[ZipCode] ([ZipCode])
GO
ALTER TABLE [dbo].[Case]  WITH CHECK ADD FOREIGN KEY([BottleID])
REFERENCES [dbo].[Bottle] ([BottleID])
GO
ALTER TABLE [dbo].[Case]  WITH CHECK ADD FOREIGN KEY([WTID])
REFERENCES [dbo].[WineType] ([WTID])
GO
ALTER TABLE [dbo].[CaseLot]  WITH CHECK ADD FOREIGN KEY([CaseID])
REFERENCES [dbo].[Case] ([CaseID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([AID])
REFERENCES [dbo].[Address] ([AID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Membership] ([MemberID])
GO
ALTER TABLE [dbo].[CustomerServer]  WITH CHECK ADD FOREIGN KEY([CustID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerServer]  WITH CHECK ADD FOREIGN KEY([ServerID])
REFERENCES [dbo].[Server] ([ServerID])
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Supervisor])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([LEID])
REFERENCES [dbo].[LifeEvents] ([LEID])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([WTID])
REFERENCES [dbo].[WineTastingEvent] ([WTID])
GO
ALTER TABLE [dbo].[Guest]  WITH CHECK ADD FOREIGN KEY([GuestProductID])
REFERENCES [dbo].[ServiceGuestProducts] ([GuestProductID])
GO
ALTER TABLE [dbo].[Harvest]  WITH CHECK ADD FOREIGN KEY([GVID])
REFERENCES [dbo].[GrapeVariety] ([GVID])
GO
ALTER TABLE [dbo].[Harvest]  WITH CHECK ADD FOREIGN KEY([VID])
REFERENCES [dbo].[Vineyard] ([VID])
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[MarketingCampaign]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[MarketingCampaign]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [fk_membership_membershipwineoffered] FOREIGN KEY([WineOfferedID])
REFERENCES [dbo].[MembershipWineOffered] ([WineOfferedID])
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [fk_membership_membershipwineoffered]
GO
ALTER TABLE [dbo].[MembershipWineOffered]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Membership] ([MemberID])
GO
ALTER TABLE [dbo].[MembershipWineOffered]  WITH CHECK ADD FOREIGN KEY([WineID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__PaymentID__1C873BEC] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__PaymentID__1C873BEC]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([ShipmentID])
REFERENCES [dbo].[Shipment] ([ShipmentID])
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductFood]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductFood]  WITH CHECK ADD FOREIGN KEY([FID])
REFERENCES [dbo].[Food] ([FID])
GO
ALTER TABLE [dbo].[ProductWine]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductWine]  WITH CHECK ADD FOREIGN KEY([WID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD FOREIGN KEY([BottleID])
REFERENCES [dbo].[Bottle] ([BottleID])
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[Server]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD FOREIGN KEY([ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ServiceTypeID])
GO
ALTER TABLE [dbo].[ServiceGuestProducts]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[ServiceGuestProducts]  WITH CHECK ADD FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([FID])
GO
ALTER TABLE [dbo].[ServiceGuestProducts]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[ServiceGuestProducts]  WITH CHECK ADD FOREIGN KEY([WineID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[ServiceType]  WITH CHECK ADD FOREIGN KEY([CottageID])
REFERENCES [dbo].[Cottage] ([CottageID])
GO
ALTER TABLE [dbo].[ServiceType]  WITH CHECK ADD FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD FOREIGN KEY([BottleID])
REFERENCES [dbo].[Bottle] ([BottleID])
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD FOREIGN KEY([AID])
REFERENCES [dbo].[Address] ([AID])
GO
ALTER TABLE [dbo].[Vineyard]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Vineyard]  WITH CHECK ADD FOREIGN KEY([PlotID])
REFERENCES [dbo].[Plot] ([PlotID])
GO
ALTER TABLE [dbo].[Wine]  WITH CHECK ADD FOREIGN KEY([WineID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[WineBlend]  WITH CHECK ADD FOREIGN KEY([GVID])
REFERENCES [dbo].[GrapeVariety] ([GVID])
GO
ALTER TABLE [dbo].[WineBlend]  WITH CHECK ADD FOREIGN KEY([WineID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[WineHolding]  WITH CHECK ADD FOREIGN KEY([CaseID])
REFERENCES [dbo].[Case] ([CaseID])
GO
ALTER TABLE [dbo].[WineHolding]  WITH CHECK ADD FOREIGN KEY([WineID])
REFERENCES [dbo].[WineProduced] ([WineID])
GO
ALTER TABLE [dbo].[WineMaker]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
