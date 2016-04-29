USE [s16guest45]
GO
/****** Object:  Table [dbo].[address]    Script Date: 4/29/2016 2:39:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[addressId] [int] NOT NULL,
	[cityId] [int] NOT NULL,
	[streetAddress] [nchar](10) NOT NULL,
	[zipcode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[addressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[city]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[cityId] [int] NOT NULL,
	[city] [nchar](10) NULL,
	[zipcode] [nchar](10) NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cityState]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cityState](
	[cityId] [int] NOT NULL,
	[stateId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[client]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[clientId] [int] NOT NULL,
	[firstName] [nchar](10) NULL,
	[lastName] [nchar](10) NULL,
	[subscriptionId] [int] NOT NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[clientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[companyId] [int] NOT NULL,
	[companyName] [nchar](10) NOT NULL,
	[addressId] [int] NOT NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[contactId] [int] NOT NULL,
	[phoneId] [int] NOT NULL,
	[emailId] [int] NOT NULL,
	[subscriptionId] [int] NOT NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[country]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[countryId] [int] NOT NULL,
	[addressId] [int] NOT NULL,
	[country] [nchar](10) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[downloadLog]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[downloadLog](
	[downloadLogId] [int] NOT NULL,
	[subscriptionId] [int] NOT NULL,
	[date] [nchar](10) NOT NULL,
	[version] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[email]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[emailId] [int] NOT NULL,
	[email] [nchar](10) NOT NULL,
	[contactId] [int] NOT NULL,
 CONSTRAINT [PK_email] PRIMARY KEY CLUSTERED 
(
	[emailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feature]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature](
	[newFeatureId] [int] NOT NULL,
	[newFeature] [nchar](10) NOT NULL,
 CONSTRAINT [PK_feature] PRIMARY KEY CLUSTERED 
(
	[newFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phone](
	[phoneId] [int] NOT NULL,
	[contactId] [int] NOT NULL,
	[phoneTypeId] [int] NOT NULL,
	[phoneNumber] [nchar](10) NOT NULL,
 CONSTRAINT [PK_phone] PRIMARY KEY CLUSTERED 
(
	[phoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phoneType]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phoneType](
	[phoneTypeId] [int] NOT NULL,
	[phoneType] [nchar](10) NOT NULL,
 CONSTRAINT [PK_phoneType] PRIMARY KEY CLUSTERED 
(
	[phoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[platform]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[platform](
	[platformId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[platform] [nchar](10) NOT NULL,
 CONSTRAINT [PK_platform] PRIMARY KEY CLUSTERED 
(
	[platformId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productId] [int] NOT NULL,
	[productName] [nchar](10) NOT NULL,
	[productDescription] [nchar](10) NOT NULL,
	[platformId] [int] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[release]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[release](
	[releaseTypeId] [int] NOT NULL,
	[releaseType] [int] NOT NULL,
	[date] [nchar](10) NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_release] PRIMARY KEY CLUSTERED 
(
	[releaseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[state]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[stateId] [int] NOT NULL,
	[state] [nchar](10) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[subscription]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscription](
	[subscriptionId] [int] NOT NULL,
	[clientId] [int] NOT NULL,
 CONSTRAINT [PK_subscription] PRIMARY KEY CLUSTERED 
(
	[subscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[version]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version](
	[versionId] [int] NOT NULL,
	[releaseTypeId] [int] NOT NULL,
	[versionNumber] [int] NOT NULL,
 CONSTRAINT [PK_version] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[versionFeature]    Script Date: 4/29/2016 2:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versionFeature](
	[versionId] [int] NOT NULL,
	[newFeatureId] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_city] FOREIGN KEY([cityId])
REFERENCES [dbo].[city] ([cityId])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_city]
GO
ALTER TABLE [dbo].[cityState]  WITH CHECK ADD  CONSTRAINT [FK_cityState_city] FOREIGN KEY([cityId])
REFERENCES [dbo].[city] ([cityId])
GO
ALTER TABLE [dbo].[cityState] CHECK CONSTRAINT [FK_cityState_city]
GO
ALTER TABLE [dbo].[cityState]  WITH CHECK ADD  CONSTRAINT [FK_cityState_state] FOREIGN KEY([stateId])
REFERENCES [dbo].[state] ([stateId])
GO
ALTER TABLE [dbo].[cityState] CHECK CONSTRAINT [FK_cityState_state]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_company_address] FOREIGN KEY([addressId])
REFERENCES [dbo].[address] ([addressId])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_company_address]
GO
ALTER TABLE [dbo].[country]  WITH CHECK ADD  CONSTRAINT [FK_country_address] FOREIGN KEY([addressId])
REFERENCES [dbo].[address] ([addressId])
GO
ALTER TABLE [dbo].[country] CHECK CONSTRAINT [FK_country_address]
GO
ALTER TABLE [dbo].[email]  WITH CHECK ADD  CONSTRAINT [FK_email_contact] FOREIGN KEY([contactId])
REFERENCES [dbo].[contact] ([contactId])
GO
ALTER TABLE [dbo].[email] CHECK CONSTRAINT [FK_email_contact]
GO
ALTER TABLE [dbo].[phone]  WITH CHECK ADD  CONSTRAINT [FK_phone_contact] FOREIGN KEY([contactId])
REFERENCES [dbo].[contact] ([contactId])
GO
ALTER TABLE [dbo].[phone] CHECK CONSTRAINT [FK_phone_contact]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product] FOREIGN KEY([platformId])
REFERENCES [dbo].[platform] ([platformId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product]
GO
ALTER TABLE [dbo].[release]  WITH CHECK ADD  CONSTRAINT [FK_release_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[release] CHECK CONSTRAINT [FK_release_product]
GO
ALTER TABLE [dbo].[subscription]  WITH CHECK ADD  CONSTRAINT [FK_subscription_client] FOREIGN KEY([clientId])
REFERENCES [dbo].[client] ([clientId])
GO
ALTER TABLE [dbo].[subscription] CHECK CONSTRAINT [FK_subscription_client]
GO
ALTER TABLE [dbo].[versionFeature]  WITH CHECK ADD  CONSTRAINT [FK_versionFeature_feature] FOREIGN KEY([newFeatureId])
REFERENCES [dbo].[feature] ([newFeatureId])
GO
ALTER TABLE [dbo].[versionFeature] CHECK CONSTRAINT [FK_versionFeature_feature]
GO
ALTER TABLE [dbo].[versionFeature]  WITH CHECK ADD  CONSTRAINT [FK_versionFeature_version] FOREIGN KEY([versionId])
REFERENCES [dbo].[version] ([versionId])
GO
ALTER TABLE [dbo].[versionFeature] CHECK CONSTRAINT [FK_versionFeature_version]
GO
