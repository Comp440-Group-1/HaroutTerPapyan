USE [s16guest45]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[CompanyAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerDownload]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDownload](
	[CustomerId] [int] NOT NULL,
	[PhoneId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[EmailId] [int] NOT NULL,
	[FileDownloadId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductVersionId] [decimal](2, 1) NOT NULL,
	[ReleaseId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
	[DownloadCount] [int] NOT NULL,
	[DownloadDate] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerRelease]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRelease](
	[ReleaseId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
	[ReleaseDate] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DevRelease]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevRelease](
	[ReleaseId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
	[CommitNumber] [int] NOT NULL,
	[Commits] [int] NOT NULL,
	[CommitDate] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Email]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email](
	[EmailId] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feature]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feature](
	[FeatureId] [decimal](2, 1) NOT NULL,
	[Feature] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileDownload]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileDownload](
	[FileDownloadId] [int] NOT NULL,
	[FileName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_FileDownload] PRIMARY KEY CLUSTERED 
(
	[FileDownloadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[PhoneId] [int] NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
	[PhoneType] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[PhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platform](
	[PlatformId] [int] NOT NULL,
	[Platform] [varchar](255) NOT NULL,
 CONSTRAINT [PK_platform] PRIMARY KEY CLUSTERED 
(
	[PlatformId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductVersion]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVersion](
	[ProductVersionId] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_ProductVersion] PRIMARY KEY CLUSTERED 
(
	[ProductVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release](
	[ReleaseId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
 CONSTRAINT [PK_release] PRIMARY KEY CLUSTERED 
(
	[ReleaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReleaseVersion]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReleaseVersion](
	[ProductVersionId] [decimal](2, 1) NOT NULL,
	[ReleaseId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PlatformId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subscription](
	[CustomerId] [int] NOT NULL,
	[PhoneId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[EmailId] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VersionFeature]    Script Date: 5/1/2016 12:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersionFeature](
	[ProductVersionId] [int] NOT NULL,
	[FeatureId] [decimal](2, 1) NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_Company]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_Customer]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_Email] FOREIGN KEY([EmailId])
REFERENCES [dbo].[Email] ([EmailId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_Email]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_FileDownload] FOREIGN KEY([FileDownloadId])
REFERENCES [dbo].[FileDownload] ([FileDownloadId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_FileDownload]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_Phone] FOREIGN KEY([PhoneId])
REFERENCES [dbo].[Phone] ([PhoneId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_Phone]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_platform] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([PlatformId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_platform]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_product]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_ProductVersion] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_ProductVersion]
GO
ALTER TABLE [dbo].[CustomerDownload]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDownload_release] FOREIGN KEY([ReleaseId])
REFERENCES [dbo].[Release] ([ReleaseId])
GO
ALTER TABLE [dbo].[CustomerDownload] CHECK CONSTRAINT [FK_CustomerDownload_release]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_platform] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([PlatformId])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_platform]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_product]
GO
ALTER TABLE [dbo].[CustomerRelease]  WITH CHECK ADD  CONSTRAINT [FK_CustomerRelease_release] FOREIGN KEY([ReleaseId])
REFERENCES [dbo].[Release] ([ReleaseId])
GO
ALTER TABLE [dbo].[CustomerRelease] CHECK CONSTRAINT [FK_CustomerRelease_release]
GO
ALTER TABLE [dbo].[DevRelease]  WITH CHECK ADD  CONSTRAINT [FK_DevRelease_platform] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([PlatformId])
GO
ALTER TABLE [dbo].[DevRelease] CHECK CONSTRAINT [FK_DevRelease_platform]
GO
ALTER TABLE [dbo].[DevRelease]  WITH CHECK ADD  CONSTRAINT [FK_DevRelease_product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[DevRelease] CHECK CONSTRAINT [FK_DevRelease_product]
GO
ALTER TABLE [dbo].[DevRelease]  WITH CHECK ADD  CONSTRAINT [FK_DevRelease_release] FOREIGN KEY([ReleaseId])
REFERENCES [dbo].[Release] ([ReleaseId])
GO
ALTER TABLE [dbo].[DevRelease] CHECK CONSTRAINT [FK_DevRelease_release]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_release_platform] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([PlatformId])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_release_platform]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_release_product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_release_product]
GO
ALTER TABLE [dbo].[ReleaseVersion]  WITH CHECK ADD  CONSTRAINT [FK_ReleaseVersion_platform] FOREIGN KEY([PlatformId])
REFERENCES [dbo].[Platform] ([PlatformId])
GO
ALTER TABLE [dbo].[ReleaseVersion] CHECK CONSTRAINT [FK_ReleaseVersion_platform]
GO
ALTER TABLE [dbo].[ReleaseVersion]  WITH CHECK ADD  CONSTRAINT [FK_ReleaseVersion_product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ReleaseVersion] CHECK CONSTRAINT [FK_ReleaseVersion_product]
GO
ALTER TABLE [dbo].[ReleaseVersion]  WITH CHECK ADD  CONSTRAINT [FK_ReleaseVersion_ProductVersion] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO
ALTER TABLE [dbo].[ReleaseVersion] CHECK CONSTRAINT [FK_ReleaseVersion_ProductVersion]
GO
ALTER TABLE [dbo].[ReleaseVersion]  WITH CHECK ADD  CONSTRAINT [FK_ReleaseVersion_release] FOREIGN KEY([ReleaseId])
REFERENCES [dbo].[Release] ([ReleaseId])
GO
ALTER TABLE [dbo].[ReleaseVersion] CHECK CONSTRAINT [FK_ReleaseVersion_release]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_Company]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_Customer]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Email] FOREIGN KEY([EmailId])
REFERENCES [dbo].[Email] ([EmailId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_Email]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Phone] FOREIGN KEY([PhoneId])
REFERENCES [dbo].[Phone] ([PhoneId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_Phone]
GO
ALTER TABLE [dbo].[VersionFeature]  WITH CHECK ADD  CONSTRAINT [FK_VersionFeature_feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[feature] ([FeatureId])
GO
ALTER TABLE [dbo].[VersionFeature] CHECK CONSTRAINT [FK_VersionFeature_feature]
GO
ALTER TABLE [dbo].[VersionFeature]  WITH CHECK ADD  CONSTRAINT [FK_VersionFeature_feature1] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[feature] ([FeatureId])
GO
ALTER TABLE [dbo].[VersionFeature] CHECK CONSTRAINT [FK_VersionFeature_feature1]
GO
