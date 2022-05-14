
CREATE DATABASE [CompanyDB]
 GO
USE [CompanyDB]
GO
/****** Object:  Table [dbo].[clienttable]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clienttable](
	[clientid] [varchar](50) NOT NULL,
	[clientname] [varchar](100) NULL,
	[cid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[clientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[cid] [varchar](50) NOT NULL,
	[cname] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empdept]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empdept](
	[deptid] [varchar](50) NOT NULL,
	[deptname] [varchar](100) NULL,
	[dept_off] [varchar](100) NULL,
	[depthead] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[deptid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[empid] [int] NOT NULL,
	[empname] [varchar](100) NULL,
	[department] [varchar](50) NULL,
	[contactno] [bigint] NULL,
	[emaildid] [varchar](100) NULL,
	[empheadid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empproject]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empproject](
	[empid] [int] NULL,
	[projectid] [varchar](50) NULL,
	[clientid] [varchar](50) NULL,
	[startyear] [int] NULL,
	[endyear] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empsalary]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empsalary](
	[empid] [int] NULL,
	[salary] [bigint] NULL,
	[ispermanent] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 1/30/2022 9:15:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[projectid] [varchar](50) NOT NULL,
	[duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[projectid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clienttable] ([clientid], [clientname], [cid]) VALUES (N'cl-1', N'ABC Group', N'c-1')
GO
INSERT [dbo].[clienttable] ([clientid], [clientname], [cid]) VALUES (N'cl-2', N'PQR', N'c-1')
GO
INSERT [dbo].[clienttable] ([clientid], [clientname], [cid]) VALUES (N'cl-3', N'XYZ', N'c-2')
GO
INSERT [dbo].[clienttable] ([clientid], [clientname], [cid]) VALUES (N'cl-4', N'tech altum', N'c-3')
GO
INSERT [dbo].[clienttable] ([clientid], [clientname], [cid]) VALUES (N'cl-5', N'mnp', N'c-5')
GO
INSERT [dbo].[country] ([cid], [cname]) VALUES (N'c-1', N'India')
GO
INSERT [dbo].[country] ([cid], [cname]) VALUES (N'c-2', N'USA')
GO
INSERT [dbo].[country] ([cid], [cname]) VALUES (N'c-3', N'China')
GO
INSERT [dbo].[country] ([cid], [cname]) VALUES (N'c-4', N'Pakistan')
GO
INSERT [dbo].[country] ([cid], [cname]) VALUES (N'c-5', N'Russia')
GO
INSERT [dbo].[empdept] ([deptid], [deptname], [dept_off], [depthead]) VALUES (N'E-101', N'HR', N'Monday', 105)
GO
INSERT [dbo].[empdept] ([deptid], [deptname], [dept_off], [depthead]) VALUES (N'E-102', N'Development', N'Tuesday', 101)
GO
INSERT [dbo].[empdept] ([deptid], [deptname], [dept_off], [depthead]) VALUES (N'E-103', N'Hous Keeping', N'Saturday', 103)
GO
INSERT [dbo].[empdept] ([deptid], [deptname], [dept_off], [depthead]) VALUES (N'E-104', N'Sales', N'Sunday', 104)
GO
INSERT [dbo].[empdept] ([deptid], [deptname], [dept_off], [depthead]) VALUES (N'E-105', N'Purchage', N'Tuesday', 104)
GO
INSERT [dbo].[employee] ([empid], [empname], [department], [contactno], [emaildid], [empheadid]) VALUES (101, N'Isha', N'E-101', 1234567890, N'isha@gmail.com', 105)
GO
INSERT [dbo].[employee] ([empid], [empname], [department], [contactno], [emaildid], [empheadid]) VALUES (102, N'Priya', N'E-104', 1234567890, N'priya@yahoo.com', 103)
GO
INSERT [dbo].[employee] ([empid], [empname], [department], [contactno], [emaildid], [empheadid]) VALUES (103, N'Neha', N'E-101', 1234567890, N'neha@gmail.com', 101)
GO
INSERT [dbo].[employee] ([empid], [empname], [department], [contactno], [emaildid], [empheadid]) VALUES (104, N'Rahul', N'E-102', 1234567890, N'rahul@yahoo.com', 105)
GO
INSERT [dbo].[employee] ([empid], [empname], [department], [contactno], [emaildid], [empheadid]) VALUES (105, N'Abhishek', N'E-101', 1234567890, N'abhishek@gmail.com', 102)
GO
INSERT [dbo].[empproject] ([empid], [projectid], [clientid], [startyear], [endyear]) VALUES (101, N'p-1', N'Cl-1', 2010, 2010)
GO
INSERT [dbo].[empproject] ([empid], [projectid], [clientid], [startyear], [endyear]) VALUES (102, N'p-2', N'Cl-2', 2010, 2012)
GO
INSERT [dbo].[empproject] ([empid], [projectid], [clientid], [startyear], [endyear]) VALUES (103, N'p-1', N'Cl-3', 2013, 0)
GO
INSERT [dbo].[empproject] ([empid], [projectid], [clientid], [startyear], [endyear]) VALUES (104, N'p-4', N'Cl-1', 2014, 2015)
GO
INSERT [dbo].[empproject] ([empid], [projectid], [clientid], [startyear], [endyear]) VALUES (105, N'p-4', N'Cl-5', 2015, 0)
GO
INSERT [dbo].[empsalary] ([empid], [salary], [ispermanent]) VALUES (101, 2000, N'Yes')
GO
INSERT [dbo].[empsalary] ([empid], [salary], [ispermanent]) VALUES (102, 10000, N'Yes')
GO
INSERT [dbo].[empsalary] ([empid], [salary], [ispermanent]) VALUES (103, 5000, N'No')
GO
INSERT [dbo].[empsalary] ([empid], [salary], [ispermanent]) VALUES (104, 1900, N'Yes')
GO
INSERT [dbo].[empsalary] ([empid], [salary], [ispermanent]) VALUES (105, 2300, N'Yes')
GO
INSERT [dbo].[project] ([projectid], [duration]) VALUES (N'p-1', 23)
GO
INSERT [dbo].[project] ([projectid], [duration]) VALUES (N'p-2', 15)
GO
INSERT [dbo].[project] ([projectid], [duration]) VALUES (N'p-3', 45)
GO
INSERT [dbo].[project] ([projectid], [duration]) VALUES (N'p-4', 2)
GO
INSERT [dbo].[project] ([projectid], [duration]) VALUES (N'p-5', 30)
GO
ALTER TABLE [dbo].[clienttable]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[country] ([cid])
GO
ALTER TABLE [dbo].[empdept]  WITH CHECK ADD FOREIGN KEY([depthead])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[empproject]  WITH CHECK ADD FOREIGN KEY([clientid])
REFERENCES [dbo].[clienttable] ([clientid])
GO
ALTER TABLE [dbo].[empproject]  WITH CHECK ADD FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
ALTER TABLE [dbo].[empproject]  WITH CHECK ADD FOREIGN KEY([projectid])
REFERENCES [dbo].[project] ([projectid])
GO
ALTER TABLE [dbo].[empsalary]  WITH CHECK ADD FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([empid])
GO
USE [master]
GO
ALTER DATABASE [Company] SET  READ_WRITE 
GO
