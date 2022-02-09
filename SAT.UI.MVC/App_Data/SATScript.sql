IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
ALTER TABLE [dbo].[Students] DROP CONSTRAINT IF EXISTS [FK_Students_StudentStatuses1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClass]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClass] DROP CONSTRAINT IF EXISTS [FK_ScheduledClass_ScheduledClassStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClass]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClass] DROP CONSTRAINT IF EXISTS [FK_ScheduledClass_Courses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_Students1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_ScheduledClass]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[StudentStatuses]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[Students]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClassStatuses]
GO
/****** Object:  Table [dbo].[ScheduledClass]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClass]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[Enrollments]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[Courses]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/8/2022 6:27:25 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/8/2022 6:27:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/8/2022 6:27:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/8/2022 6:27:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/8/2022 6:27:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
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
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[CourseDescription] [nvarchar](max) NOT NULL,
	[CreditHours] [tinyint] NOT NULL,
	[Curriculum] [nvarchar](250) NULL,
	[Notes] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ScheduledClassId] [int] NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledClass]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledClass](
	[ScheduledClassId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[InstructorName] [nvarchar](40) NOT NULL,
	[Location] [nvarchar](20) NOT NULL,
	[SCSID] [int] NOT NULL,
 CONSTRAINT [PK_ScheduledClass] PRIMARY KEY CLUSTERED 
(
	[ScheduledClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledClassStatuses](
	[SCSID] [int] IDENTITY(1,1) NOT NULL,
	[SCSName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScheduledClassStatuses] PRIMARY KEY CLUSTERED 
(
	[SCSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Major] [nvarchar](15) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](25) NULL,
	[State] [char](2) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](13) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[PhotoUrl] [nchar](100) NULL,
	[SSID] [int] NOT NULL,
 CONSTRAINT [PK_Students_1] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 2/8/2022 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentStatuses](
	[SSID] [int] IDENTITY(1,1) NOT NULL,
	[SSName] [nvarchar](30) NOT NULL,
	[SSDescription] [nvarchar](250) NULL,
 CONSTRAINT [PK_StudentStatuses] PRIMARY KEY CLUSTERED 
(
	[SSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202202030356116_InitialCreate', N'SAT.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD14CEDA6E8DC61764EDA06F0157E2AE8548942251AE8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E02042B727866381C92C3E1D0FFFEFDCFF8E747DF331E7014BB01999807A37DD3C0C40E1C972C27664217AFDE9A3FBFFBF69BF199E33F1A9F72BA2346072D493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF641D1C5818204CC0328CF1C78450D7C7E9077C4E0362E39026C8BB0C1CECC5BC1C6A6629AA71857C1C87C8C6137376723BBABB185D7E9A8E3262D338F15C0482CCB0B7300D4448401105318FEF623CA3514096B3100A9077FB1462A05B202FC65CFCE392BC6B4FF60F594FACB2610E6527310DFC9E8007475C3596D87C25059B85EA407967A064FAC47A9D2A70625E38382DFA1878A00091E1F1D48B18F1C4BC2C589CC4E115A6A3BCE128833C8F00EE8F20FA32AA22EE199DDBED15A67438DA67FFF68C69E2D124C21382131A216FCFB849E69E6BFF869F6E832F984C8E0EE68BA3B7AFDF20E7E8CD8FF8E875B5A7D057A0AB1540D14D14843802D9F0A2E8BF6958F57696D8B06856699369056C096685695CA2C70F982CE93DCC97C3B7A671EE3E62272FE1C675475C9844D08846097C5E259E87E61E2EEAAD469EECFF06AE87AFDF0CC2F50A3DB8CB74E805FE30712298571FB197D6C6F76E984DAFDA787FE664E751E0B3EFBA7D65B59F674112D9AC338196E416454B4CEBD28DADD2783B9934831ADEAC73D4DD376D26A96CDE4A52D6A1556642CE62D3B32197F779F976B6B8933084C14B4D8B69A4C9E0A4BD6A2434DE334A92D2700EBA1A0E810EFD9FD7C1331FB9DE000B61072EE0822CDCC8C7452FDF07607688F496F906C531AC03CEAF28BE6F101D7E0E20FA0CDB4904E639A3C80F9F9DDBCD7D40F055E2CF99D56F8ED7604373FB47708E6C1A446784B55A1BEF43607F09127A469C5344F11DB57340F679EBFADD010611E7C4B6711C9F833163671A80879D035E107A74D81B8EAD4FDB7644A61E727DB52722ACA49F73D2D21B5153481E89864CE5953489FA2158BAA49BA839A95ED48CA255544ED6575406D64D524EA9173425689533A31ACCCF4B476878472F85DD7D4F6FBDCD5BB71654D438831512FF82098E6019736E10A53822E508745937B6E12CA4C3C7983EFBDE9472FA84BC6468562BCD867411187E36A4B0BB3F1B5231A1F8C1759857D2E1F89313037C277AF5C9AA7DCE09926D7A3AD4BAB969E69B590374D3E5248E03DB4D678122F0C5C31675F9C18733DA6318596FC43808740C0CDD655B1E9440DF4CD1A8AEC929F630C5C6899D0506A728B69123AB113AE4F4102CDF51158295F190BA703F483CC1D271C41A2176088A61A6BA84CAD3C225B61B22AF554B42CB8E5B18EB7BC143AC39C521268C61AB26BA3057873F9800051F6150DA3434B62A16D76C881AAF5537E66D2E6C39EE5254622336D9E23B6BEC92FB6FCF6298CD1ADB807136ABA48B00DA50DE360C949F55BA1A807870D93503154E4C1A03E52ED5460CB4AEB12D18685D252FCE40B3236AD7F117CEABBB669EF583F2E6B7F546756DC1366BFAD831D3CC7C4F6843A1058E64F33C9DB34AFC4815873390939FCF62EEEA8A26C2C06798D64336A5BFABF443AD6610D1889A004B436B01E59780129034A17A0897C7F21AA5E35E440FD83CEED608CBD77E01B662033276F532B442A8BF32158DB3D3E9A3E859610D9291773A2C54701406212E5EF58E77508A2E2E2B2BA68B2FDCC71BAE748C0F4683825A3C578D92F2CE0CAEA5DC34DBB5A472C8FAB8646B6949709F345ACA3B33B896B88DB62B49E114F4700BD652517D0B1F68B2E5918E62B729EAC6569622C50BC69626976A7C89C2D025CB4A6E152F31665962D5F4D5AC7FCA919F615876ACC83C2AA42D38D120424B2CD4026B90F4DC8D627A8A289A2316E7993ABE44A6DC5B35CB7FCEB2BA7DCA8398EF033935FBCD6F56A5ABFBDA562BFB221CE21C3AE83387268DA22B865FDDDC60A96EC8439122703F0DBCC4277AFF4ADF3ABBBEABB6CF4A6484B125C82FF94F92B2242FB7AEF94EE322CF8961C6A8F05E561F273D844EDBB9EF59D5B7CE1FD5A3E4E1A92A8A2E64B5B571D3B9317DC64A7410FB0F552BC2F3CC2A9E955205E0453D312A890D1258A5AE3B6A3DF7A48A59AFE98E282498542185AA1E5256D3486A42562B56C2D368544DD19D839C385245976BBB232B5248AAD08AEA15B015328B75DD511559265560457577EC32E5445C437778DFD21E5B56DDB8B283ED7A3B9706E37916C46136BECAFD7D15A852DC138BDFD04B60BC7C278D497BBA5BD598B270C67AC6A4C1D0AF3BB58BEFFAB2D3785BAFC7ACDD66D796F6A6DB7C3D5E3F937D56C390CE762249C1BD38E30967B9313F57B53F9E910E5A198969E46A04737A8A29F6478C6034FBEA4D3D17B3453C27B844C45DE09866191CE6E1FEC1A1F00067771EC35871EC788A73A9EE454C7DCC36908C451E5064DFA3484E8D58E3C148092A459D2F88831F27E69F69ABE33480C17EA5C57BC6457C47DCAF0954DC460936FE92533D8749A0EFF064A310F4AF17F116A2BBCA2F7EFF9C35DD33AE23984EC7C6BEA0E85586BFFE42A2973459D335A459F9DDC4CB9D6DB567094A5461B6ACFE0A61EED2415E20E4527EE7A3C7EFFB8AA67C65B016A2E225C1507883A850F75260152CED2B01073E69FA4AA05F67D5AF0656114DFB62C025FDC1C4F702DD97A1BCE516F721C57969134B52AAE7D67CEBB5922FB7BD374969D96B4D7439F5BA07DCA0E9D5EBB9282F2C6D79B0AD5391953C18F636EDFED953917725FBB874DAB79B74BCC93CE386DBA4FF557AF10E24C429127CB69F44BC695BD30580773C13B35FAAF08E191BDFE6B79F10BC6963D3058877DCD87AA5FDEE98AD6D6BFFDCB2A575DE42B79EC42BE723692E725451E4B624DD2CE40EC7FF790046907994D9DB4A75565853466B0BC39244CF549F8E263296268EC457A26866DBAFAF7CC36FEC2CA76966AB49E26CE2CDD7FF46DE9CA699B72635721BE9C5CAE44455CA77CB3AD6943BF592D2896B3D69C95E6FF3591B6FE55F52F6F0204AA9CD1ECDEDF2CB49161E4425434E9D1EC9C1F24531EC9D95BFC508FB77EC2E4B08F6971909B66BBB664173411641BE790B12E5244284E61253E4C0967A125177816C0AD52C009D3E0E4F837AEC1A648E9D0B729DD030A1D065ECCFBD5AC08B39014DFCD30CE8BACCE3EB907DC5437401C47459E0FE9ABC4F5CCF29E43E57C4843410CCBBE0E15E369694857D974F05D255403A0271F5154ED12DF6430FC0E26B32430F7815D9C0FC3EE025B29FCA08A00EA47D20EA6A1F9FBA6819213FE618657BF8041B76FCC777FF018A85098992540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8099d772-75f3-4936-b4f5-0f8421b9f1f7', N'Scheduler')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'affd0e50-3be6-4ada-b427-a4848340259d', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b40309f9-f380-460c-89e5-faa30e0c47f4', N'affd0e50-3be6-4ada-b427-a4848340259d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b40309f9-f380-460c-89e5-faa30e0c47f4', N'Admin@Sat.com', 0, N'AHX9o0G/XMHTzRfVt9DqHoFh3CXvJnQI89HXCs8UL7Vft4Wun2HLs3lDaomqZ360Ug==', N'24b30c89-84a1-48cf-bcd7-aec00cec3419', NULL, 0, 0, NULL, 1, 0, N'Admin@Sat.com')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (1, N'Explosives', N'Smoke bombs and TNT. ', 3, N'A Hand-book of Modern Explosives', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (4, N'Slips, Trips, and Falls', N'Falling flat on your face. An easy 1, 2, 3 step method.', 3, N'Falling On Purpose', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (5, N'Hunting', N'Whether you''re hunting duck or wabbit.', 3, N'Great American Hunting Stories', NULL, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollments] ON 

INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (2, 11115, 5, CAST(N'2022-02-03' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (3, 11112, 1, CAST(N'2022-02-03' AS Date))
SET IDENTITY_INSERT [dbo].[Enrollments] OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduledClass] ON 

INSERT [dbo].[ScheduledClass] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (1, 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-07-01' AS Date), N'Evan Whitaker', N'Home', 1)
INSERT [dbo].[ScheduledClass] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (4, 4, CAST(N'2022-03-01' AS Date), CAST(N'2022-07-01' AS Date), N'Jeremy Rutherford', N'Venice', 1)
INSERT [dbo].[ScheduledClass] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (5, 5, CAST(N'2022-03-01' AS Date), CAST(N'2022-07-01' AS Date), N'James Caldwell', N'Zoom', 1)
SET IDENTITY_INSERT [dbo].[ScheduledClass] OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] ON 

INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (1, N'Active')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (2, N'Pending')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (3, N'Completed')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (4, N'Cancelled')
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11111, N'George ("Bugs")', N'Bunny', N'Tooning', N'5800 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-1111', N'BugsBunny@MelBlanc.com', N'Bugs.jpg                                                                                            ', 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11112, N'Tasmanian ("Taz")', N'Devil', N'Destruction', N'5802 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-2222', N'TasDevil@MelBlanc.com', N'Tazz.jpg                                                                                            ', 4)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11113, N'Elmer', N'Fudd', N'Hunting Wabbits', N'5804 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-3333', N'ElmerJFudd@WarnerBros.com', N'Fudd.jpg                                                                                            ', 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11114, N'Daffy', N'Duck', N'Tooning', N'5806 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-4444', N'DaffyDuck@WarnerBros.com', N'Daffy.jpg                                                                                           ', 3)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11115, N'Porky', N'Pig', N'Tooning', N'5808 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-5555', N'PorkyPig@MelBlanc.com', N'Porky.jpg                                                                                           ', 1)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11116, N'Wile', N'Coyote', N'Destruction', N'5810 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-6666', N'WileECoyote@Acme.com', N'Wile.jpg                                                                                            ', 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11117, N'Foghorn', N'Leghorn', N'Politics', N'5812 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-7777', N'FoghornForMayor@Looney.com', N'Foghorn.jpg                                                                                         ', 5)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11118, N'Marvin', N'Martian', N'Destruction', N'5814 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-8888', N'MarvinTHEMartian@ACME.com', N'Marvin.jpg                                                                                          ', 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11121, N'Tweety', N'Bird', N'Tooning', N'5815 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-9999', N'TweetyBird@ACME.com', N'Tweety.jpg                                                                                          ', 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11122, N'"Yosemite" Sam', N'Rosenbaum', N'Hunting', N'5816 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-1010', N'GunnerSam@WarnerBros.com', N'Sam.jpg                                                                                             ', 4)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11126, N'Sylvester', N'Cat', N'Tooning', N'5815 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-1011', N'BirdEater@ACME.com', N'Sly.jpg                                                                                             ', 3)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11127, N'Pepe', N'Le Pew', N'Romance', N'5818 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-1012', N'Lovestruck@MelBlanc.com', N'Pepe.jpg                                                                                            ', 4)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11128, N'Speedy', N'Gonzales', N'Racing', N'5819 Sunset Blvd', N'Hollywood', N'CA', N'90027', N'818-954-1013', N'Speedster@ACME.com', N'Speedy.jpg                                                                                          ', 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentStatuses] ON 

INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (1, N'Prospect', N'A student who has inquired about taking classes at the institution.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (2, N'Current Student', N'A student who is actively participating in classes.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (3, N'Former Student - Withdrawn', N'A student who has left the institution on their own accord.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (4, N'Former Student - Dismissed', N'A student who has left the institution at our request.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (5, N'Alumni', N'A student who has finished their coursework and left the institution.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (6, N'Booted', N'This is what happens when you don''t go to class.')
SET IDENTITY_INSERT [dbo].[StudentStatuses] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
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
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_ScheduledClass] FOREIGN KEY([ScheduledClassId])
REFERENCES [dbo].[ScheduledClass] ([ScheduledClassId])
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_ScheduledClass]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Students1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Students1]
GO
ALTER TABLE [dbo].[ScheduledClass]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClass_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[ScheduledClass] CHECK CONSTRAINT [FK_ScheduledClass_Courses]
GO
ALTER TABLE [dbo].[ScheduledClass]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClass_ScheduledClassStatuses] FOREIGN KEY([SCSID])
REFERENCES [dbo].[ScheduledClassStatuses] ([SCSID])
GO
ALTER TABLE [dbo].[ScheduledClass] CHECK CONSTRAINT [FK_ScheduledClass_ScheduledClassStatuses]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_StudentStatuses1] FOREIGN KEY([SSID])
REFERENCES [dbo].[StudentStatuses] ([SSID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudentStatuses1]
GO
