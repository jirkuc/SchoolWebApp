/*/****** Object:  Database [VSBKursSchoolDb]    Script Date: 10.07.2024 15:19:05 ******/
CREATE DATABASE [VSBKursSchoolDb]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_1', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [VSBKursSchoolDb] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [VSBKursSchoolDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VSBKursSchoolDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VSBKursSchoolDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VSBKursSchoolDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VSBKursSchoolDb] SET  MULTI_USER 
GO
ALTER DATABASE [VSBKursSchoolDb] SET ENCRYPTION ON
GO
ALTER DATABASE [VSBKursSchoolDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [VSBKursSchoolDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.07.2024 15:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO*/
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10.07.2024 15:19:05 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 10.07.2024 15:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[Topic] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Mark] [int] NOT NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10.07.2024 15:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 10.07.2024 15:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240603074741_InitialSchoolWebAppMigration_StudentClassAdded', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240605060148_SubjectTableAdded', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240605080848_GradesTableAdded', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240610060142_UsersAndAccountsAdded', N'8.0.6')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'660659aa-29f8-47d5-931e-ffa3244dba9c', N'Parent', N'PARENT', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'78c8cb08-6ba2-49ce-9be4-589e957f062c', N'Teacher', N'TEACHER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ad89e918-559c-4b1b-8fe6-d3218b286660', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b76f2917-b1ed-4fef-849d-855558fbc47e', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd5e78063-7405-40f8-aefd-e26850e9df53', N'Janitor', N'JANITOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f6a89f61-7d83-4d77-870d-28ead401fb2d', N'Student', N'STUDENT', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'30c34667-02fe-4bcc-9766-fa1cbaecc560', N'660659aa-29f8-47d5-931e-ffa3244dba9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64359228-b583-40ee-9a02-e2fb9e230b11', N'78c8cb08-6ba2-49ce-9be4-589e957f062c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec70a909-5c58-4333-bd6a-6b8cfbe88536', N'78c8cb08-6ba2-49ce-9be4-589e957f062c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0dc4221f-a38d-4145-b714-7d772c52ae5d', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2239d96f-38ed-4564-bb08-83d9643d93df', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'30c34667-02fe-4bcc-9766-fa1cbaecc560', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44568b82-25ee-4a8e-b8ba-cd2c6c6ab863', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64359228-b583-40ee-9a02-e2fb9e230b11', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e7f3f5e-b970-45e4-bab7-0ec761d74cab', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bc770bc9-7792-4ea5-8969-e4eeb85ed849', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec70a909-5c58-4333-bd6a-6b8cfbe88536', N'ad89e918-559c-4b1b-8fe6-d3218b286660')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e7f3f5e-b970-45e4-bab7-0ec761d74cab', N'b76f2917-b1ed-4fef-849d-855558fbc47e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bc770bc9-7792-4ea5-8969-e4eeb85ed849', N'b76f2917-b1ed-4fef-849d-855558fbc47e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2239d96f-38ed-4564-bb08-83d9643d93df', N'd5e78063-7405-40f8-aefd-e26850e9df53')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0dc4221f-a38d-4145-b714-7d772c52ae5d', N'f6a89f61-7d83-4d77-870d-28ead401fb2d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44568b82-25ee-4a8e-b8ba-cd2c6c6ab863', N'f6a89f61-7d83-4d77-870d-28ead401fb2d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0dc4221f-a38d-4145-b714-7d772c52ae5d', N'petr', N'PETR', N'petr@petr.com', N'PETR@PETR.COM', 0, N'AQAAAAIAAYagAAAAEM/Vs0FDZJ54FIAbcnpJtpxva1t+aaOeqXne63DMXG+FjUGryB1lkRZdr+rY3xRhcg==', N'NNUOLCI3TPZKKYWO626N4V56NFMTYRHV', N'23f47198-a4a4-496b-a717-255a11f5c5f3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2239d96f-38ed-4564-bb08-83d9643d93df', N'skolnik', N'SKOLNIK', N'skolnik@skolnik.cz', N'SKOLNIK@SKOLNIK.CZ', 0, N'AQAAAAIAAYagAAAAEI5WLTvA+NfyijNxyqDk9QjyypNBCiZnaoOY/ByFiffWAwSBGppdSKC9HS+vJsNsOA==', N'3MVOX3T52AR3YCMWEWVPKTG7RXVWY433', N'2a43816b-b6eb-45ab-a81e-c3f58a30e8e1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'30c34667-02fe-4bcc-9766-fa1cbaecc560', N'mama', N'MAMA', N'mama@mama.cz', N'MAMA@MAMA.CZ', 0, N'AQAAAAIAAYagAAAAEMVj/lBuobEEifNaEBmoVxY3CdLHlvK6Glmr7wgwRjQW3vYXh95noc6Njrjk+BtRLQ==', N'XXSKUDF6ECIXWWZ5GTFNU2WTLBDLLUC2', N'ae157bdd-af9a-475e-b04d-6c0389aeb2cb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'44568b82-25ee-4a8e-b8ba-cd2c6c6ab863', N'aja', N'AJA', N'aja@aja.cz', N'AJA@AJA.CZ', 0, N'AQAAAAIAAYagAAAAEB/pXKAa8vINghw6QJtuopz+oY8VubFbozHMtPyO9NU5qL/9sE0S+z7tdU4U2ZvQjw==', N'ALR5WABTX76Z4YMT54KTB4CS6ZZ43E6T', N'8b987e23-9715-439c-b591-5505a3a9fd73', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'64359228-b583-40ee-9a02-e2fb9e230b11', N'jecmen', N'JECMEN', N'jecmen@jecmen.cz', N'JECMEN@JECMEN.CZ', 0, N'AQAAAAIAAYagAAAAEI6uwhwkofouYO1ziGlF0bSg6IQ6KEBzUwg4Yh87CgQh2s8uA1Aki0mtCmwW+i1x9A==', N'CYAOLR4VPYSXOXHJOPF6U4Y7O4IU5W2U', N'4b2a3780-3666-439b-971a-d05a2ecd36fd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9e7f3f5e-b970-45e4-bab7-0ec761d74cab', N'rida', N'RIDA', N'rida@rida.cz', N'RIDA@RIDA.CZ', 0, N'AQAAAAIAAYagAAAAEELXLdvXMncY/mdwY4mQW61uxicnJlxxIXGeAVju2ebAqkXA5Ohgmk2DRIJAYXqyvA==', N'7RIVLZPPSCUR2S6APGYNUSZL3O4UD7NS', N'6c3bfb59-6c20-4af5-9963-27098952e345', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc770bc9-7792-4ea5-8969-e4eeb85ed849', N'admin', N'ADMIN', N'admin@admin.cz', N'ADMIN@ADMIN.CZ', 0, N'AQAAAAIAAYagAAAAEPf6inLSk0X+6uKOQ4HueSuKnHTz26SYQdYE1juz1jY5kfLhT0mVmHK83V1dB0+CyA==', N'AIT2BRSCGVQDBLRM6IP66ZIBEBVQBOGJ', N'ad898cb7-f32f-4005-b0e1-395fa1c9b9fd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ec70a909-5c58-4333-bd6a-6b8cfbe88536', N'matikar', N'MATIKAR', N'matikar@matikar.cz', N'MATIKAR@MATIKAR.CZ', 0, N'AQAAAAIAAYagAAAAED2PUk293gopKpOpzT1/XvOeGDs7B8jIHiOFK3RBZqCmlckoSPfiuSh6CBcSH4CjSw==', N'CGY6FKULTO2E5KGYT7QZEP5WMDJ4K72C', N'38136124-8ae8-492b-b92e-343b848de1be', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Grades] ON 

INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (5, 4, 2, N'Jan Hus', CAST(N'2024-06-05T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (7, 3, 1, N'Basics of linear algebra', CAST(N'2024-06-13T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (8, 22, 4, N'Dark energy', CAST(N'2024-06-17T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (9, 32, 1, N'Krácení zlomků ', CAST(N'2024-06-17T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (10, 4, 6, N'Eagles and their family life ', CAST(N'2024-06-17T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (11, 22, 7, N'Rains in the Sahara ', CAST(N'2024-06-17T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (12, 29, 2, N'Baroque architekture', CAST(N'2024-06-17T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Grades] ([Id], [StudentId], [SubjectId], [Topic], [Date], [Mark]) VALUES (13, 3, 3, N'phrase verbs', CAST(N'2024-06-27T00:00:00.0000000' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Grades] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (3, N'Bobo', N'Bóbó', CAST(N'2007-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (4, N'Yvona Alžběta ', N'První', CAST(N'2008-08-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (22, N'Babbette', N'Dowers', CAST(N'2001-09-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (29, N'Marilyn ', N'Jansens', CAST(N'2001-03-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (30, N'Freddy', N'Giorgietto', CAST(N'2003-06-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (32, N'František', N'Dovtipný ', CAST(N'2001-03-08T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Math')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'History')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'English')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Physics')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (6, N'Biology')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (7, N'Geography')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10.07.2024 15:19:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10.07.2024 15:19:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grades_StudentId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_Grades_StudentId] ON [dbo].[Grades]
(
	[StudentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Grades_SubjectId]    Script Date: 10.07.2024 15:19:06 ******/
CREATE NONCLUSTERED INDEX [IX_Grades_SubjectId] ON [dbo].[Grades]
(
	[SubjectId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Students_StudentId]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Subjects_SubjectId]
GO
/*ALTER DATABASE [VSBKursSchoolDb] SET  READ_WRITE 
GO
*/