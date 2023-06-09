USE [final_capstone]
GO
/****** Object:  Table [dbo].[activeLot]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activeLot](
	[parkingSpotId] [int] NOT NULL,
	[ticketNumber] [int] NULL,
	[needsPickedUp] [bit] NULL,
 CONSTRAINT [PK_activeLot] PRIMARY KEY CLUSTERED 
(
	[parkingSpotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cars]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[licensePlate] [nvarchar](7) NOT NULL,
	[make] [nvarchar](50) NOT NULL,
	[model] [nvarchar](50) NOT NULL,
	[vin] [nvarchar](17) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[licensePlate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[owners_cars]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[owners_cars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[licensePlate] [nvarchar](7) NOT NULL,
 CONSTRAINT [PK_owners_cars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[ticketNumber] [int] IDENTITY(1,1) NOT NULL,
	[amountPaid] [float] NOT NULL,
	[owner_carsId] [int] NOT NULL,
	[checkIn] [datetime] NOT NULL,
	[checkOut] [datetime] NULL,
	[valetDroppingOff] [int] NOT NULL,
	[valetPickingUp] [int] NULL,
 CONSTRAINT [PK_transactions] PRIMARY KEY CLUSTERED 
(
	[ticketNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/13/2023 11:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password_hash] [varchar](200) NOT NULL,
	[salt] [varchar](200) NOT NULL,
	[user_role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (1, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (2, 4, 0)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (3, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (4, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (5, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (6, 5, 0)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (7, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (8, NULL, NULL)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (9, 6, 1)
INSERT [dbo].[activeLot] ([parkingSpotId], [ticketNumber], [needsPickedUp]) VALUES (10, NULL, NULL)
GO
INSERT [dbo].[cars] ([licensePlate], [make], [model], [vin], [color]) VALUES (N'abc1234', N'honda', N'waterbottle', N'12345678901234567', N'black')
INSERT [dbo].[cars] ([licensePlate], [make], [model], [vin], [color]) VALUES (N'asd8888', N'toyota', N'corolla', N'asdfasdfasdfasdfa', N'red')
INSERT [dbo].[cars] ([licensePlate], [make], [model], [vin], [color]) VALUES (N'def5678', N'chevy', N'silverado', N'aqwsderfgtyhjuikl', N'silver')
INSERT [dbo].[cars] ([licensePlate], [make], [model], [vin], [color]) VALUES (N'ghi9012', N'expo', N'marker', N'mnbvcxzasdfghjkl', N'light blue')
INSERT [dbo].[cars] ([licensePlate], [make], [model], [vin], [color]) VALUES (N'jkl3456', N'hot wheels', N'toy car', N'defnotacarcarcar', N'metal')
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([customerId], [userId], [firstName], [lastName]) VALUES (1, 5, N'new', N'user')
INSERT [dbo].[customers] ([customerId], [userId], [firstName], [lastName]) VALUES (2, 1, N'user', N'mcUserson')
INSERT [dbo].[customers] ([customerId], [userId], [firstName], [lastName]) VALUES (3, 6, N'Henry', N'Edwards')
INSERT [dbo].[customers] ([customerId], [userId], [firstName], [lastName]) VALUES (4, 8, N'Tim', N'Flunderson')
SET IDENTITY_INSERT [dbo].[customers] OFF
GO
SET IDENTITY_INSERT [dbo].[owners_cars] ON 

INSERT [dbo].[owners_cars] ([id], [customerId], [licensePlate]) VALUES (2, 1, N'asd8888')
INSERT [dbo].[owners_cars] ([id], [customerId], [licensePlate]) VALUES (3, 1, N'abc1234')
INSERT [dbo].[owners_cars] ([id], [customerId], [licensePlate]) VALUES (4, 2, N'def5678')
INSERT [dbo].[owners_cars] ([id], [customerId], [licensePlate]) VALUES (5, 3, N'ghi9012')
INSERT [dbo].[owners_cars] ([id], [customerId], [licensePlate]) VALUES (6, 3, N'def5678')
SET IDENTITY_INSERT [dbo].[owners_cars] OFF
GO
SET IDENTITY_INSERT [dbo].[transactions] ON 

INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (1, 5, 2, CAST(N'2023-04-01T00:00:00.000' AS DateTime), CAST(N'2023-04-01T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (2, 10, 4, CAST(N'2023-04-03T00:00:00.000' AS DateTime), CAST(N'2023-04-03T00:00:00.000' AS DateTime), 7, 7)
INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (3, 100, 6, CAST(N'2022-04-01T00:00:00.000' AS DateTime), CAST(N'2023-04-01T00:00:00.000' AS DateTime), 2, 7)
INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (4, 0, 3, CAST(N'2023-04-13T00:00:00.000' AS DateTime), NULL, 7, NULL)
INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (5, 0, 5, CAST(N'2023-04-12T00:00:00.000' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[transactions] ([ticketNumber], [amountPaid], [owner_carsId], [checkIn], [checkOut], [valetDroppingOff], [valetPickingUp]) VALUES (6, 0, 4, CAST(N'2023-04-13T00:00:00.000' AS DateTime), NULL, 7, NULL)
SET IDENTITY_INSERT [dbo].[transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (1, N'user', N'Jg45HuwT7PZkfuKTz6IB90CtWY4=', N'LHxP4Xh7bN0=', N'user')
INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (2, N'admin', N'YhyGVQ+Ch69n4JMBncM4lNF/i9s=', N'Ar/aB2thQTI=', N'admin')
INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (5, N'new_user', N'hashyhash', N'salty', N'user')
INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (6, N'henry', N'afolnasdhgoqhwelknga;', N'a;sldkjf', N'user')
INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (7, N'billReeves', N'pquweitjlfnk', N'p9oihadnfks', N'admin')
INSERT [dbo].[users] ([user_id], [username], [password_hash], [salt], [user_role]) VALUES (8, N'timFlunderson', N'oihbkjsdnkfml', N'lasdhknfk', N'user')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[activeLot]  WITH CHECK ADD  CONSTRAINT [FK_activeLot_transactions] FOREIGN KEY([ticketNumber])
REFERENCES [dbo].[transactions] ([ticketNumber])
GO
ALTER TABLE [dbo].[activeLot] CHECK CONSTRAINT [FK_activeLot_transactions]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_users] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_users]
GO
ALTER TABLE [dbo].[owners_cars]  WITH CHECK ADD  CONSTRAINT [FK_owners_cars_cars] FOREIGN KEY([licensePlate])
REFERENCES [dbo].[cars] ([licensePlate])
GO
ALTER TABLE [dbo].[owners_cars] CHECK CONSTRAINT [FK_owners_cars_cars]
GO
ALTER TABLE [dbo].[owners_cars]  WITH CHECK ADD  CONSTRAINT [FK_owners_cars_customers] FOREIGN KEY([customerId])
REFERENCES [dbo].[customers] ([customerId])
GO
ALTER TABLE [dbo].[owners_cars] CHECK CONSTRAINT [FK_owners_cars_customers]
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD  CONSTRAINT [FK_transactions_owners_cars] FOREIGN KEY([owner_carsId])
REFERENCES [dbo].[owners_cars] ([id])
GO
ALTER TABLE [dbo].[transactions] CHECK CONSTRAINT [FK_transactions_owners_cars]
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD  CONSTRAINT [FK_transactions_users] FOREIGN KEY([valetDroppingOff])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[transactions] CHECK CONSTRAINT [FK_transactions_users]
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD  CONSTRAINT [FK_transactions_users1] FOREIGN KEY([valetPickingUp])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[transactions] CHECK CONSTRAINT [FK_transactions_users1]
GO
