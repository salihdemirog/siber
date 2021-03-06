USE [Northwind]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16.06.2021 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16.06.2021 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[QuantityPerUnit] [nvarchar](50) NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [smallint] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.06.2021 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Password] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Dairy Products', N'Cheeses')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (7, N'Produce', N'Dried fruit and bean curd')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (8, N'Seafood', N'Seaweed and fish')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (9, N'Gıda', N'Acıklama Ürün')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (1, N'Chai', 1, N'10 boxes x 20 bags', 50.0000, 100)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (2, N'Chang', 1, N'24 - 12 oz bottles', 19.0000, 17)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (3, N'Aniseed Syrup', 2, N'12 - 550 ml bottles', 10.0000, 13)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, N'48 - 6 oz jars', 22.0000, 53)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, N'36 boxes', 21.3500, 0)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (6, N'Grandma''s Boysenberry Spread', 2, N'12 - 8 oz jars', 25.0000, 120)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 7, N'12 - 1 lb pkgs.', 30.0000, 15)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (8, N'Northwoods Cranberry Sauce', 2, N'12 - 12 oz jars', 40.0000, 6)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (9, N'Mishi Kobe Niku', 6, N'18 - 500 g pkgs.', 97.0000, 29)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (10, N'Ikura', 8, N'12 - 200 ml jars', 31.0000, 31)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (11, N'Queso Cabrales', 4, N'1 kg pkg.', 21.0000, 22)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (12, N'Queso Manchego La Pastora', 4, N'10 - 500 g pkgs.', 38.0000, 86)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (13, N'Konbu', 8, N'2 kg box', 6.0000, 24)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (14, N'Tofu', 7, N'40 - 100 g pkgs.', 23.2500, 35)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (15, N'Genen Shouyu', 2, N'24 - 250 ml bottles', 15.5000, 39)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (16, N'Pavlova', 3, N'32 - 500 g boxes', 17.4500, 29)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (17, N'Alice Mutton', 6, N'20 - 1 kg tins', 39.0000, 0)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (18, N'Carnarvon Tigers', 8, N'16 kg pkg.', 62.5000, 42)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (19, N'Teatime Chocolate Biscuits', 3, N'10 boxes x 12 pieces', 9.2000, 25)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (20, N'Sir Rodney''s Marmalade', 3, N'30 gift boxes', 81.0000, 40)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (21, N'Sir Rodney''s Scones', 3, N'24 pkgs. x 4 pieces', 10.0000, 3)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (22, N'Gustaf''s Knäckebröd', 5, N'24 - 500 g pkgs.', 21.0000, 104)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (23, N'Tunnbröd', 5, N'12 - 250 g pkgs.', 9.0000, 61)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (24, N'Guaraná Fantástica', 1, N'12 - 355 ml cans', 4.5000, 20)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 3, N'20 - 450 g glasses', 14.0000, 76)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (26, N'Gumbär Gummibärchen', 3, N'100 - 250 g bags', 31.2300, 15)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (27, N'Schoggi Schokolade', 3, N'100 - 100 g pieces', 43.9000, 49)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (28, N'Rössle Sauerkraut', 7, N'25 - 825 g cans', 45.6000, 26)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (29, N'Thüringer Rostbratwurst', 6, N'50 bags x 30 sausgs.', 123.7900, 0)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (30, N'Nord-Ost Matjeshering', 8, N'10 - 200 g glasses', 25.8900, 10)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (31, N'Gorgonzola Telino', 4, N'12 - 100 g pkgs', 12.5000, 0)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (32, N'Mascarpone Fabioli', 4, N'24 - 200 g pkgs.', 32.0000, 9)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (33, N'Geitost', 4, N'500 g', 2.5000, 112)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (34, N'Sasquatch Ale', 1, N'24 - 12 oz bottles', 14.0000, 111)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (35, N'Steeleye Stout', 1, N'24 - 12 oz bottles', 18.0000, 20)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (36, N'Inlagd Sill', 8, N'24 - 250 g  jars', 19.0000, 112)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (37, N'Gravad lax', 8, N'12 - 500 g pkgs.', 26.0000, 11)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (38, N'Côte de Blaye', 1, N'12 - 75 cl bottles', 263.5000, 17)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (39, N'Chartreuse verte', 1, N'750 cc per bottle', 18.0000, 69)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (40, N'Boston Crab Meat', 8, N'24 - 4 oz tins', 18.4000, 123)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (41, N'Jack''s New England Clam Chowder', 8, N'12 - 12 oz cans', 9.6500, 85)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (42, N'Singaporean Hokkien Fried Mee', 5, N'32 - 1 kg pkgs.', 14.0000, 26)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (43, N'Ipoh Coffee', 1, N'16 - 500 g tins', 46.0000, 17)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (44, N'Gula Malacca', 2, N'20 - 2 kg bags', 19.4500, 27)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (45, N'Rogede sild', 8, N'1k pkg.', 9.5000, 5)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (46, N'Spegesild', 8, N'4 - 450 g glasses', 12.0000, 95)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (47, N'Zaanse koeken', 3, N'10 - 4 oz boxes', 9.5000, 36)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (48, N'Chocolade', 3, N'10 pkgs.', 12.7500, 15)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (49, N'Maxilaku', 3, N'24 - 50 g pkgs.', 20.0000, 10)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (50, N'Valkoinen suklaa', 3, N'12 - 100 g bars', 16.2500, 65)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (51, N'Manjimup Dried Apples', 7, N'50 - 300 g pkgs.', 53.0000, 20)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (52, N'Filo Mix', 5, N'16 - 2 kg boxes', 7.0000, 38)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (53, N'Perth Pasties', 6, N'48 pieces', 32.8000, 0)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (54, N'Tourtière', 6, N'16 pies', 7.4500, 21)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (55, N'Pâté chinois', 6, N'24 boxes x 2 pies', 24.0000, 115)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (56, N'Gnocchi di nonna Alice', 5, N'24 - 250 g pkgs.', 38.0000, 21)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (57, N'Ravioli Angelo', 5, N'24 - 250 g pkgs.', 19.5000, 36)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (58, N'Escargots de Bourgogne', 8, N'24 pieces', 13.2500, 62)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (59, N'Raclette Courdavault', 4, N'5 kg pkg.', 55.0000, 79)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (60, N'Camembert Pierrot', 4, N'15 - 300 g rounds', 34.0000, 19)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (61, N'Sirop d''érable', 2, N'24 - 500 ml bottles', 28.5000, 113)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (62, N'Tarte au sucre', 3, N'48 pies', 49.3000, 17)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (63, N'Vegie-spread', 2, N'15 - 625 g jars', 43.9000, 24)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (64, N'Wimmers gute Semmelknödel', 5, N'20 bags x 4 pieces', 33.2500, 22)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, N'32 - 8 oz bottles', 21.0500, 76)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, N'24 - 8 oz jars', 17.0000, 4)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (67, N'Laughing Lumberjack Lager', 1, N'24 - 12 oz bottles', 14.0000, 52)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (68, N'Scottish Longbreads', 3, N'10 boxes x 8 pieces', 12.5000, 6)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (69, N'Gudbrandsdalsost', 4, N'10 kg pkg.', 36.0000, 26)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (70, N'Outback Lager', 1, N'24 - 355 ml bottles', 15.0000, 15)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (71, N'Flotemysost', 4, N'10 - 500 g pkgs.', 21.5000, 26)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (72, N'Mozzarella di Giovanni', 4, N'24 - 200 g pkgs.', 34.8000, 14)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (73, N'Röd Kaviar', 8, N'24 - 150 g jars', 15.0000, 101)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (74, N'Longlife Tofu', 7, N'5 kg pkg.', 10.0000, 4)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (75, N'Rhönbräu Klosterbier', 1, N'24 - 0.5 l bottles', 7.7500, 125)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (76, N'Lakkalikööri', 1, N'500 ml', 18.0000, 57)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock]) VALUES (77, N'Original Frankfurter grüne Soße', 2, N'12 boxes', 13.0000, 32)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (142, N'Salih<script>alert(1);<script>', N'Demirog', N'salihdemirog@gmail.com', N'iqeBuiCI9rGSweSiF5A+t0o8P2X5W6/0m0U4U+jAOzpqvEK7SXvWmXkI3DhOf/ZHIR3xn8SURfro3vF5Kksb3g==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (143, N'Salih', N'Demirog', N'foo-bar@example.com', N'g+CcJ5LZm3op0tyOReWnL2FJUN3a6AsNA7ZVe4fbpbW7EDwq7nAljkOUMJUcrYTn/IRwrhDCxR/gC203iO2yEg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (144, N'Salih', N'Demirog', N'foo-bar@example.com', N'sUubKIewo6W6ixAybc9VGP8Cwh92C7rRlJVkeKFzAPYOrhqjuNBiXbA7mfScpZT9HkVOgqNSXTG5W4UeMHGd7A==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (145, N'Salih', N'Demirog', N'foo-bar@example.com', N'dSc898nZ4YXxuH3vdK96xusYo56GLuoIDi6i/VBIsaqHSbA8RDBqA20IzlSkWxQ6vZnvcZcoYuxPU7IyIDk6xQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (146, N'Salih', N'Demirog', N'foo-bar@example.com', N'iEsy//VYP1GVxfgmnUcLq/ZCbv3cqC8CfMvTp/XU6rpQII6V3hWvnRxtOfHtqXotbJCsMxmM7iWNZGYNP0vn4w==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (147, N'Salih', N'Demirog', N'foo-bar@example.com', N'bnj05brbryXv6Lk2z0qD40JhUFwZPftgZuGy99nS2/wDkALKiusTkBRlvwK3e1icdE4ZECvCowHQ3EByirFszw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (148, N'Salih', N'Demirog', N'foo-bar@example.com', N'/LSNM1Rwy38e+pWzO/DhftvYXv7SYN28Hq742tk6etCS5HeFuteXQRT5EZcjimb8v0totJWfxJve/AJTKWjGwQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (149, N'Salih', N'Demirog', N'foo-bar@example.com', N'3zfTlmjEtHONpj7XcupV8F1wapPdqBLtGrjUiGYDS6hefy46Eb6rAdKYySJ8EkuiOB13nUYdFYKLRldJTsQUtQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (150, N'Salih', N'Demirog', N'foo-bar@example.com', N'yzKxs/4OW0jx33LiZjlq9lOCeRQ2lTwk77FvDzaWIJTsy1+ha3ohZIBty7NaiBQYC1ic2NDRhbgi5yxA29ipdg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (151, N'Salih', N'Demirog', N'foo-bar@example.com', N'PGNza2CzwPx8lpnT1i8+LiydFY06fSLOPiREL3BNzxaGOoVnQnk/oYiqPxJitdOCYbeRGQgwnb2Mqfmcxpt58A==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (152, N'Salih', N'Demirog', N'foo-bar@example.com', N'i1ma3U3/f2mQ1UvIz3DrygYL4URJjjMtnoTsBr7X1lfXRq91WEfR9Am9YiKfDILCmto4v3+hsKp008Gnt7lNOQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (153, N'Salih', N'Demirog', N'foo-bar@example.com', N'UsDjPLhShjLiMsllP6DJoOxfBN704aPdjqu8C4M3XP5TbqY6ds6eGghi4Ue92ismDM8BzT0wUg9CwsICYmA1AA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (154, N'Salih', N'Demirog', N'foo-bar@example.com', N'SYTZA/J1ZiDeBjzjcqIMPqSLOniTFj9GeXpbFRyyMA6rGKBBcB3+tMyJB/DhEvNbszs3/6YM3ZtP5ZBj/fASEw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (155, N'Salih', N'Demirog', N'foo-bar@example.com', N'wSmwABjNJTu9JAnY0S2jVC3g4o44Y7HucXjXvONVmicsbFSAspCVuQ3jXQkjZMZ37Umt/qDj6oFgt93GMUpJNQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (156, N'Salih', N'Demirog', N'foo-bar@example.com', N'fYxVPO3jv8ZX2aIc/wQs4mOGZOIftLVSZi/bkdwsgzpdWyFtqN9k5QaT0Zoba6SfjZgVyx6YwKs4TttZXJVAFA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (157, N'Salih', N'Demirog', N'foo-bar@example.com', N'Oi5DPLRWveczuq3sVQbo0aEi0B2vZkEmm6A8vZ31E4C45b4f4TFyMn1BYgL1sLBxBqGfD5hR1MLG21dR2iPMkA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (158, N'Salih', N'Demirog', N'foo-bar@example.com', N'9zn7UmAnmyLV3KiE7XInPfyeG6+06Qr0FgORbgs08fA+Hy4bnkg+wx7gM1MAx1A4uGw8c3Pj+HRPrrqtZkXE3Q==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (159, N'Salih', N'Demirog', N'foo-bar@example.com', N'VIa1G1znHxJhw7wwdz0loALXoYWGPoJGPr4ZeKm41Qsd/HJ93oZKXNhOc7Gl3DOi8E6DurVjY/j0A5c/eXmvVw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (160, N'Salih', N'Demirog', N'foo-bar@example.com', N'OhXCwjByl8qQzQemq1NwP5y8K5eJL7D+kLTBV907TdYVb54rqpCq1jul/1oqlthpxGEsm7WH/DGXuBCE866Obg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (161, N'Salih', N'Demirog', N'foo-bar@example.com', N'XaKxApfITTsKgTWbRG+NV4MyDTH50Rhr2BuHNT07us/T+/bse88FMbn1LNtHRD5W5Og5SqIoCecmH65jnJlZIw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (162, N'Salih', N'Demirog', N'foo-bar@example.com', N'n9jfHHaUAOFBVJ1Qe/haD1pUMTxz0DcOHNzbse3eH8ZHD9Bq165YH1aA8WGR0Gcb35U6zWH8cSTKn5YQXQHkVg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (163, N'Salih', N'Demirog', N'foo-bar@example.com', N'2mV5F06vaATRghM4VzVzXUlIs8Mk9R9vFBYcjqCgs/QU8HG+hduD1NPutaWqtMtBTnMWYoiUPBCfqlFFL/XCzQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (164, N'Salih', N'Demirog', N'foo-bar@example.com', N'HR476LIlKHfnweg9wgEK7sQ0vTpymq+VVQOHQlZB4v+3j+SJAjspbUIJ1cL/qoyRay1yXXJpF1hnGmkDnS+6Qg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (165, N'Salih', N'Demirog', N'foo-bar@example.com', N'e88inYYwLw8ZukWu6BeP/gMnUxdHlwhZ6Y6zNxLGWzz5q+62rPXXZxfsdkhBwh2NXhlsm7NEnHCYAxCdt1wtLA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (166, N'Salih', N'Demirog', N'foo-bar@example.com', N'0yixijdeuuSZZT4nBegxy90bSoTiAjL2xckSQPoZko2BV0aywOfXyt6vVURTER3OC34HR8XZ0XT2Rl0kEs3iwA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (167, N'Salih', N'Demirog', N'foo-bar@example.com', N'lKKs51Ue73TJuUNVgE8uJIQzn1jQBxT1SxMdyHptmF0l5olqloxYTE8KBRyPdmBArnuYvJjlnQalknkS1iW3hw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (168, N'Salih', N'Demirog', N'foo-bar@example.com', N'5DijRvXy95iiSXw/EpPwTxfVn3EEj7SBxUcA8KEcVxfBCaxlImnuiozKK89kvH+D5Hz0jqfIQCxYAX61OI8ryg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (169, N'Salih', N'Demirog', N'foo-bar@example.com', N'rxohyZxwtQGKEY8lms3y2+FHX+izxkKvEHcoAIFGHdjLGal5UIJ7nBWvhwytgqy/LJMzKFp+suotOIL46VceKQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (170, N'Salih', N'Demirog', N'foo-bar@example.com', N'GAAowCRUBjSi7LQXP01hr6+/MPkcuZFyEN2nRHI9yRYK/neGso5OffnEUfJJiesHkqCaU6ybVCzU3AkdaSxsNg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (171, N'Salih', N'Demirog', N'foo-bar@example.com', N'L32UbIEanlYcYBmq/nOG1zAhWWN7i3QEJu7zfB1xqDk+TgikGcfB3OMyNfmEY5OZoV1/1ahr8J08BgpjaCLLmQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (172, N'Salih', N'Demirog', N'foo-bar@example.com', N'C02uOcBAoog5SYhGXTeYrCIVFKx2A1HQNUgKpc/ubv+N/cEOmI4zUIDn/RcPLS/EB+xtFYuAW40DahXsz4PxfA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (173, N'Salih', N'Demirog', N'foo-bar@example.com', N'8t93siIloKOJqt0y4IasNAGy2T6ZcWejHE4kjwKVsQF2IjwJGTl0LE22k+38DwWo2fRQjORzGmQkbOm5xvr21w==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (174, N'Salih', N'Demirog', N'foo-bar@example.com', N'48fL3xiL+Tp4B9ynATd3gfImnKihXpREwQPBN2ZmCHSaT6D4iQ7xQFSEa4+pfnnPO5Fvc9aJdGjI4uCtSRB9YA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (175, N'Salih', N'Demirog', N'foo-bar@example.com', N'JpF9/zc4C6wcA33C9HyOQ2vyfe9IwPx4nYdxEbQWQ4vx9ZhF6GGboe6FidZvFhXbnvhh2lNJ4ttonT6nk4zo5w==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (176, N'Salih', N'Demirog', N'foo-bar@example.com', N'1Jy2UCM1vT1ti5Y4kO4RJTmIGGWK8q39hAjTmEOcZjMjUkfUBzMLHiGJHi0P+kGPRh7POSr/ez+M/qrsJzw+YA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (177, N'Salih', N'Demirog', N'foo-bar@example.com', N'tEOXAY9lbP4Eeq4/57YVSP8xeIgVYlGip/w0xeuH/4Ub1MK042WEUAp3U0G0HSWWmRvhXnfINjOAnhvyQ1yT2w==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (178, N'Salih', N'Demirog', N'foo-bar@example.com', N'Wm4ImJ+UAaa+pqVHrvUgVqWTaEGpsPvJPlnVeBouE8CZF2oRbslPnbYWT/GvZq2pcCYcoFv7NVMzTFg5EYEEBA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (179, N'Salih', N'Demirog', N'foo-bar@example.com', N'8MPybgRJDx+0qsXPhaulWrxlBXnru33gVEarggue5z+LgqcsLXOHru06Mkw4awRjbo/FVvdXzuZJ6YcO3suYhA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (180, N'Salih', N'Demirog', N'foo-bar@example.com', N'pN49KZ+zuZSLdK/DPqGcHQdD1W8gnWvbXTrOWB4G3UTJjju4KKWE0+jC5KVY7DXL1HFbA0c2kZ1TSjvryw5UBA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (181, N'Salih', N'Demirog', N'foo-bar@example.com', N'oqXQIpTIC6pu24HnLN9uzL0Yf6p7+X99jgEMlGd9XlqLC6gjJfosIJC/MIkj5w2Vvf4Ljag7HBcyPrvfjaQLjA==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (182, N'Salih', N'Demirog', N'foo-bar@example.com', N'DttK/IqXNQ3WlgWh/B93zmvArINhbf4MMMJATLgUGpEaNY9RrkxsQ549jjh2ugXIuphoAeniBJUuHbQXcyv9qw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (183, N'Salih', N'Demirog', N'foo-bar@example.com', N'i9QUACEQdK/ABPnTmdZukuAXhJmGRWZkD/OR55EaB7dcTd0izv+IOgbW0z7Ypxgct3nTjyveccTXgWtt410zMQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (184, N'Salih', N'Demirog', N'foo-bar@example.com', N'rUqpRDCU2lGQ5y2pYCcmPXEsTMYe596mneQk5t9MI8WopntE2d/y9EURr1R035KiOfygIIfDhY1SrCoxgHfgLg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (185, N'Salih', N'Demirog', N'foo-bar@example.com', N'G5fSewONzeu1KBHBYJEbwQSoR1vnJM/HgVAAhQZDR+ek3xU2b5tCr/mRlV3gnFyoMjJb0IE0ZfZNY6ztsofNhQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (186, N'Salih', N'Demirog', N'foo-bar@example.com', N'JEm4+GShpVN8DiZMfPOYFcJDJyaDvLYjbisxroKZ+vqnys+wxx2uuzDCjOXWiUruGtkPCJ23LqrbWziULxVP1A==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (187, N'Salih', N'Demirog', N'foo-bar@example.com', N'pspxfxS4IP6tmsJAVSKtkWC7DtA+kQ1R6HgCoo5j24i3qw9r+l/xQHJOPJ0Bk8GNNc9jCpK02PGIYoyjIUPe3A==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (188, N'Salih', N'Demirog', N'foo-bar@example.com', N'pmJRVy+YDJgkXx/agY+5y/fgTU77d+9eMK2RxmiU7ujmyqX5KPO2YPCQt90VGi8BgNWY2kQLQIKVsB9Wtct6vw==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (189, N'Salih', N'Demirog', N'foo-bar@example.com', N'LHPceZaUWen84VGqfSF/1ttmC26NpTNulOL5u28dEuW3yJ2zirrH1t9d2LXkzRMFaPigGF3Lqsx9y06rdeDwfQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (190, N'Salih', N'Demirog', N'foo-bar@example.com', N'PGLIQFLgEiVyBqSts5o2SU2cCxM6jrITiObqK40vJ2nfiFPiBo5F4TjktZnJ0Ft0ZNPaxKtE7yM+cu1yJNm7kg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (191, N'Salih', N'Demirog', N'foo-bar@example.com', N'9NRK3Geqz+xfPBJ9p2n5StiC67AptjHVV/FId/p//2hoQWEhOcv1W66t8YX/XpPIGfrScpovuwFyPAAdmFzAnQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (192, N'Salih', N'Demirog', N'foo-bar@example.com', N'pjWWiHXRtK501kh8pluJZQPbDtNiJVouQSJmAS059+ooB8A5cJem2xn6xEi+6eX2+BH8w0Oqhvrq7k5qqOGAWg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (193, N'Salih', N'Demirog', N'foo-bar@example.com', N'2QZ4rzNEVUv/sRxHOMwxtbtgAWwOcZnmBYW8wVjkJ9uEmOW2dS3ZQEsUxkPn6P4s+dtvuclLXtn9jrYYFxYrcg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (194, N'Salih', N'Demirog', N'foo-bar@example.com', N'3ekD3HmMLPz0f1yerBzPfZwU4Y4zK1RTITHYfWrv0dJNm3etK0teTVrBZ2xmq2l/2dEKWVnyzscrlbFlO7VDaQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (195, N'Salih', N'Demirog', N'foo-bar@example.com', N'EYKnzLZHrbCWmBDfYRexW0PIVUc89jhXGD09F5+TsAXvk4zjsnKpmrpoQh2IV52/UIEstfwInk8KbnnRt4ui1A==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (196, N'Salih', N'Demirog', N'foo-bar@example.com', N'ZTWoPVhRc6hxxOMm0FC6pdK77P4vzKX6ekwmuItWpxJmnA8VASyxTdvOhp+argwJlZ+iOwFNMMNczGagx6hkZg==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (197, N'Salih', N'Demirog', N'foo-bar@example.com', N'zH559o1idefxb4jHf60pB5z8Fr1wFr3hiDmpEqwgop7FjmP0tiUZe7Jkdmm/u7mGhqlUtYMYF8TvyXgGXVE3SQ==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (198, N'Salih', N'Demirog', N'foo-bar@example.com', N'ZUR6+KD981Nhhk4pVn0vvnP7G88O+eP5kviFgAAS+F6pcVqUjRij8Zve4keBjFZ9onW9GXx7W14BZ4XI2voH/w==')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Mail], [Password]) VALUES (199, N'Salih', N'Demirog', N'foo-bar@example.com', N'3/NeDw+U4VcOHX3hjCN6bBJBw5gcZ6eIr1LfXjppLZUoapJscTZOO/WB4EFsrjO3Lp5PuJBr/XOydg4UnXjgQg==')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
