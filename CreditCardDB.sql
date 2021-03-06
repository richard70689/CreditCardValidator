USE [CreditCardDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreditCardNumberValidator]    Script Date: 12/1/2018 1:32:32 PM ******/
DROP PROCEDURE [dbo].[sp_CreditCardNumberValidator]
GO
/****** Object:  Table [dbo].[tblCreditCardsList]    Script Date: 12/1/2018 1:32:32 PM ******/
DROP TABLE [dbo].[tblCreditCardsList]
GO
USE [master]
GO
/****** Object:  Database [CreditCardDB]    Script Date: 12/1/2018 1:32:32 PM ******/
DROP DATABASE [CreditCardDB]
GO
/****** Object:  Database [CreditCardDB]    Script Date: 12/1/2018 1:32:32 PM ******/
CREATE DATABASE [CreditCardDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CreditCardDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\CreditCardDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CreditCardDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\CreditCardDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CreditCardDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CreditCardDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CreditCardDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CreditCardDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CreditCardDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CreditCardDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CreditCardDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CreditCardDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CreditCardDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CreditCardDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CreditCardDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CreditCardDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CreditCardDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CreditCardDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CreditCardDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CreditCardDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CreditCardDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CreditCardDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CreditCardDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CreditCardDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CreditCardDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CreditCardDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CreditCardDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CreditCardDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CreditCardDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CreditCardDB] SET  MULTI_USER 
GO
ALTER DATABASE [CreditCardDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CreditCardDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CreditCardDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CreditCardDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CreditCardDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CreditCardDB] SET QUERY_STORE = OFF
GO
USE [CreditCardDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CreditCardDB]
GO
/****** Object:  Table [dbo].[tblCreditCardsList]    Script Date: 12/1/2018 1:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCreditCardsList](
	[fldSeqNo] [int] IDENTITY(1,1) NOT NULL,
	[fldCardNumber] [varchar](20) NULL,
	[fldExpiryDate] [varchar](7) NULL,
	[fldCardType] [varchar](30) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCreditCardsList] ON 

INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (1, N'4124123478745478', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (2, N'5524123478745478', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (3, N'342412347874547', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (4, N'3528123478745478', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (5, N'3529123478745478', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (6, N'1234567890123456', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (7, N'4100521021110022', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (8, N'376582125412533', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (9, N'3527123478745478', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (10, N'3589554121422241', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (11, N'3591554121422241', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (12, N'412412345558745', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (13, N'5500025544444114', N'2016/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (14, N'5688544412244120', N'2015/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (15, N'4000002544122512', N'2016/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (16, N'0003254125214221', N'2017/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (17, N'8003254125214221', N'2010/10', N'')
INSERT [dbo].[tblCreditCardsList] ([fldSeqNo], [fldCardNumber], [fldExpiryDate], [fldCardType]) VALUES (18, N'352812344447444', N'2017/10', N'')
SET IDENTITY_INSERT [dbo].[tblCreditCardsList] OFF
/****** Object:  StoredProcedure [dbo].[sp_CreditCardNumberValidator]    Script Date: 12/1/2018 1:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- 1234
--sp_CreditCardNumberValidator '412412345558745'
CREATE PROCEDURE [dbo].[sp_CreditCardNumberValidator] @creditCard varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @count AS INT
	DECLARE @cardType AS VARCHAR(30)
	DECLARE @expiryDate AS VARCHAR(7)
	DECLARE @length AS INT
	DECLARE @getYear AS INT
	DECLARE @validInvalid AS VARCHAR(7) = 'Valid'
	DECLARE @isLeapYear AS INT
	DECLARE @counter AS INT=2 
	  
	SET @length = LEN(@creditCard);

    -- Insert statements for procedure here
	SELECT @count= COUNT(0)FROM tblCreditCardsList WITH(NOLOCK) WHERE fldCardNumber=@creditCard

	if @count>0 
	BEGIN
		SELECT @expiryDate=fldExpiryDate, @isLeapYear=(CASE WHEN ISDATE(CAST(LEFT(fldExpiryDate,4) AS char(4)) + '0229') = 1 THEN 1 ELSE 0 END) FROM tblCreditCardsList WITH(NOLOCK) WHERE fldCardNumber=@creditCard
		SET @getYear = LEFT(@expiryDate,4)

		if LEFT(@creditCard,1) = '4'
		BEGIN
			set @cardType='Visa'
			if @length != 16 OR @isLeapYear = 1
			BEGIN
				SET @validInvalid = 'Invalid'
			END
		END			
		else if LEFT(@creditCard,1) = '5'
		BEGIN
			set @cardType='MasterCard'			
			
			if @length != 16
			BEGIN
				SET @validInvalid = 'Invalid'
			END
			
		END	
		else if CAST(LEFT(@creditCard,4) AS INT) >= 3528 AND CAST(LEFT(@creditCard,4) AS INT) < 3590
		BEGIN
			set @cardType='JCB'
			if @length != 16
			BEGIN
				SET @validInvalid = 'Invalid'
			END
		END	
		else if LEFT(@creditCard,2) = '34' OR LEFT(@creditCard,2) = '37'
		BEGIN
			set @cardType='Amex'
			if @length != 15
			BEGIN
				SET @validInvalid = 'Invalid '
			END
		END	
		else 
		BEGIN
			set @cardType='Uknown'
			set @validInvalid='' 
		END	
	END
	else 
		BEGIN
			set @cardType='Does not exist'
			set @validInvalid='' 
		END	


	if @cardType = 'MasterCard'
	BEGIN  
		WHILE(@counter)<@getYear  
				BEGIN  
					 if(@getYear%@counter=0)  
					  begin  
						SELECT 1 AS 'fldSeqNo',@creditCard AS 'fldCardNumber',@expiryDate AS 'fldExpiryDate',CONCAT('Invalid ',@cardType) AS 'fldCardType'
						return  
					  end  
					  set @counter=@counter+1  
				END  
				SELECT 1 AS 'fldSeqNo',@creditCard AS 'fldCardNumber',@expiryDate AS 'fldExpiryDate',CONCAT(@validInvalid,' ',@cardType) AS 'fldCardType'
				return  
	END  
	else
	BEGIN
		SELECT 1 AS 'fldSeqNo',@creditCard AS 'fldCardNumber',@expiryDate AS 'fldExpiryDate',CONCAT(@validInvalid,' ',@cardType) AS 'fldCardType'
	END
END

GO
USE [master]
GO
ALTER DATABASE [CreditCardDB] SET  READ_WRITE 
GO
