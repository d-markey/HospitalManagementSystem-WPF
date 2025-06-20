USE [master]
GO
/****** Object:  Database [hospitals]    Script Date: 19/06/2025 15:12:02 ******/
CREATE DATABASE [hospitals]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hospitals', FILENAME = N'C:\_Projects\ai\sampleapps\Hospital-Management-System\Database\hospitals.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hospitals_log', FILENAME = N'C:\_Projects\ai\sampleapps\Hospital-Management-System\Database\hospitals_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [hospitals] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hospitals].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hospitals] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hospitals] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hospitals] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hospitals] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hospitals] SET ARITHABORT OFF 
GO
ALTER DATABASE [hospitals] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hospitals] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hospitals] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hospitals] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hospitals] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hospitals] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hospitals] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hospitals] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hospitals] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hospitals] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hospitals] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hospitals] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hospitals] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hospitals] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hospitals] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hospitals] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hospitals] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hospitals] SET RECOVERY FULL 
GO
ALTER DATABASE [hospitals] SET  MULTI_USER 
GO
ALTER DATABASE [hospitals] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hospitals] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hospitals] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hospitals] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [hospitals] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hospitals] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'hospitals', N'ON'
GO
ALTER DATABASE [hospitals] SET QUERY_STORE = OFF
GO
USE [hospitals]
GO
/****** Object:  Table [dbo].[bed]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bed](
	[Idsickroom] [int] NULL,
	[Idbed] [int] NULL,
	[KId] [int] NULL,
	[State] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bingli]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bingli](
	[kId] [int] NULL,
	[Rid] [varchar](10) NULL,
	[bing] [varchar](20) NULL,
	[zhusu] [varchar](50) NULL,
	[xianbingshi] [varchar](50) NULL,
	[jiwangbingshi] [varchar](50) NULL,
	[guominshi] [varchar](50) NULL,
	[geirenshi] [varchar](50) NULL,
	[jiatingshi] [varchar](50) NULL,
	[tijian] [varchar](50) NULL,
	[fuzhu] [varchar](50) NULL,
	[zhiliaojianyi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[casehistory]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[casehistory](
	[UId] [varchar](10) NULL,
	[BedNo] [varchar](10) NULL,
	[UseDrug] [varchar](50) NULL,
	[Disposal] [varchar](50) NULL,
	[Time] [smalldatetime] NULL,
	[Remark] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[controlinfo]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[controlinfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[CLocation] [varchar](20) NULL,
	[CFont] [varchar](20) NULL,
	[CColor] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[controls]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[controls](
	[name] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drug_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drug_insert](
	[Dname] [varchar](10) NULL,
	[Dtype] [varchar](10) NULL,
	[DcostName] [varchar](10) NULL,
	[Dspec] [varchar](10) NULL,
	[DjiXing] [varchar](10) NULL,
	[DinsertPrice] [int] NULL,
	[DsellPrice] [int] NULL,
	[Dstock] [int] NULL,
	[DstockMax] [int] NULL,
	[DstockMin] [int] NULL,
	[DeffectTime] [smalldatetime] NULL,
	[DproductTime] [smalldatetime] NULL,
	[Efficay] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdCard]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdCard](
	[KId] [int] IDENTITY(10000,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Sex] [char](2) NULL,
	[Age] [int] NULL,
	[Birthday] [smalldatetime] NULL,
	[Address] [varchar](50) NULL,
	[Phone] [char](11) NULL,
	[Nation] [varchar](20) NULL,
	[Cultrue] [varchar](20) NULL,
	[Marriage] [char](4) NULL,
	[Work] [varchar](10) NULL,
	[Postcode] [varchar](6) NULL,
	[IdcardNo] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[KId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kaiyao]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kaiyao](
	[Rid] [varchar](10) NULL,
	[Kid] [int] NULL,
	[yaopinName] [varchar](100) NULL,
	[zhuangtai] [varchar](20) NULL,
	[yizhu] [varchar](50) NULL,
	[yongfa] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kaiyao1]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kaiyao1](
	[Rid] [varchar](10) NULL,
	[Kid] [int] NULL,
	[yaopinName] [varchar](100) NULL,
	[zhuangtai] [varchar](20) NULL,
	[yizhu] [varchar](50) NULL,
	[yongfa] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nurse]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nurse](
	[Nid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NULL,
	[Type] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[Rid] [varchar](10) NOT NULL,
	[KId] [int] NULL,
	[IdType] [varchar](10) NULL,
	[GuaDanFei] [int] NULL,
	[OtherFei] [int] NULL,
	[SectionRoom] [varchar](10) NULL,
	[Doctor] [varchar](10) NULL,
	[ReristerTime] [smalldatetime] NULL,
	[SeeDoctorTime] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionRoom]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionRoom](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](10) NULL,
	[Saddr] [varchar](20) NULL,
	[Sprice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionRooomSon]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionRooomSon](
	[SonId] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](10) NULL,
	[SonName] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sickroom]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sickroom](
	[Idsickroom] [int] NOT NULL,
	[Sid] [int] NULL,
	[Tyep] [varchar](10) NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Idsickroom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Uid] [int] IDENTITY(1000,1) NOT NULL,
	[Uname] [varchar](10) NULL,
	[name] [varchar](10) NULL,
	[Pwd] [varchar](10) NULL,
	[Sex] [char](2) NULL,
	[Address] [varchar](20) NULL,
	[Phone] [char](11) NULL,
	[Spell] [varchar](10) NULL,
	[Type] [varchar](20) NULL,
	[SectionRoom] [varchar](10) NULL,
	[money] [int] NULL,
	[Peodom] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersType]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersType](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NULL,
	[Peodom] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zhuayuantongji]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zhuayuantongji](
	[Kid] [int] NULL,
	[Sname] [varchar](20) NULL,
	[zmoney] [int] NULL,
	[ymoney] [int] NULL,
	[time] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zhuyuan]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zhuyuan](
	[kId] [int] NULL,
	[Sid] [int] NULL,
	[Idsickroom] [int] NULL,
	[BedNo] [varchar](10) NULL,
	[Imprest] [int] NULL,
	[Bewrite] [varchar](50) NULL,
	[Tabu] [varchar](50) NULL,
	[Ztime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zhuyuanxiaofei]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zhuyuanxiaofei](
	[iD] [int] IDENTITY(1,1) NOT NULL,
	[Kid] [int] NULL,
	[yaoName] [varchar](20) NULL,
	[yaonum] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Bingli_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Bingli_insert]
@kID int, @Rid varchar(10), @bing varchar(20), @zhusu varchar(50), @xianbingshi varchar(50), @jiwangbingshi varchar(50), 
@guominshi varchar(50), @geirenshi varchar(50), @jiatingshi varchar(50), @tijian varchar(50), @fuzhu varchar(50), @zhiliaojianyi varchar(50),
@result int output
as
	if(select COUNT(*) from Bingli where kId=@kId)=0
	begin
		insert Bingli values(@kID, @Rid, @bing, @zhusu, @xianbingshi, @jiwangbingshi, @guominshi, @geirenshi, @jiatingshi, @tijian,
		@fuzhu, @zhiliaojianyi)
		set @result = 1
	end
	else 
		set @result = 0


GO
/****** Object:  StoredProcedure [dbo].[Drug_Delete_p]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Drug_Delete_p]
@DName varchar(10)
as
  delete drug_insert where @DName=DName

 --++++++++++++++++++++++++++++++++++++++++++++++++7+++++++++++++++++++++

GO
/****** Object:  StoredProcedure [dbo].[Drug_insert_p]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Drug_insert_p]
@DName varchar(10), @Dtype varchar(10), @DcostName varchar(10), @Dspec varchar(10), @DjiXing varchar(10), @DinsertPrice int, 
@DsellPrice int, @Dstock int, @DstockMax int, @DstockMin int, @DeffectTime smalldatetime, @DproductTime smalldatetime, @Efficay varchar(50),
@result int output
as
	if(select COUNT(*) from Drug_insert where DName=@DName)=0
	begin
		insert Drug_insert values(@DName, @Dtype, @DcostName, @Dspec, @DjiXing, @DinsertPrice, @DsellPrice, @Dstock, @DstockMax, @DstockMin,
		@DeffectTime, @DproductTime, @Efficay)
		set @result = 1
	end
	else 
		set @result = 0
GO
/****** Object:  StoredProcedure [dbo].[Drug_SelectName_p]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[Drug_SelectName_p]
@DName varchar(10)
as
	select * from drug_insert where DName Like '%'+@DName+'%'
	
	--exec Drug_SelectName_p @DName='21'
	
GO
/****** Object:  StoredProcedure [dbo].[Drug_update_p]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Drug_update_p]
@DName varchar(10), @Dtype varchar(10), @DcostName varchar(10), @Dspec varchar(10), @DjiXing varchar(10), @DinsertPrice int, 
@DsellPrice int, @Dstock int, @DstockMax int, @DstockMin int, @DeffectTime smalldatetime, @DproductTime smalldatetime, @Efficay varchar(50)
as
	update drug_insert set Dtype=@Dtype, DcostName=@DcostName,Dspec= @Dspec, DjiXing=@DjiXing, DinsertPrice=@DinsertPrice, 
	DsellPrice=@DsellPrice, Dstock=@Dstock, DstockMax=@DstockMax, DstockMin=@DstockMin,DeffectTime=@DeffectTime, DproductTime=@DproductTime, 
	Efficay=@Efficay where Dname=@DName

GO
/****** Object:  StoredProcedure [dbo].[IdCard_S_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[IdCard_S_select]
@kid int
as
	select Name , sex, age, address from IdCard where KId=@kid

--+++++++++++++++++++++++++++++++++++++++++++++++2++++++++++++++++++++++
GO
/****** Object:  StoredProcedure [dbo].[kaiyao_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[kaiyao_insert]   ---添加病人药品
@Rid varchar(10), @Kid int, @yaopinName varchar(100), @zhuangtai varchar(20), @yizhu varchar(50), @yongfa varchar(100),
@result int output
as
	if(select COUNT(*) from kaiyao where kId=@kId)=0
	begin
		insert kaiyao values(@Rid, @kID, @yaopinName, @zhuangtai, @yizhu, @yongfa)
		insert kaiyao1 values(@Rid, @kID, @yaopinName, @zhuangtai, @yizhu, @yongfa)
		set @result = 1
	end
	else 
		set @result = 0


GO
/****** Object:  StoredProcedure [dbo].[p_bed_Delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_bed_Delete] --删除病房
@Idsickroom int 
as
	delete bed where @Idsickroom=Idsickroom

--drop table bed

 --++++++++++++++++++++++++++++++++++++++++++++++++10病人住院表+++++++++++++++++++++
GO
/****** Object:  StoredProcedure [dbo].[p_bed_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[p_bed_insert] --添加病床
@Idsickroom int ,
@Idbed int,
@KId   int,
@State varchar(10)
as
   insert bed values(@Idsickroom, @Idbed,@KId,@State)


GO
/****** Object:  StoredProcedure [dbo].[p_bed_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_bed_select]--查询病房
as 
   select * from bed
  
  
GO
/****** Object:  StoredProcedure [dbo].[p_bed_update]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_bed_update]
@Idsickroom int ,
@Idbed int 
as
	update bed set State='空' where @Idsickroom=Idsickroom and @Idbed=Idbed


GO
/****** Object:  StoredProcedure [dbo].[p_controls_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_controls_select]
as
select * from controls
--****************************

GO
/****** Object:  StoredProcedure [dbo].[p_IdCard_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_IdCard_select]
as
  select * from IdCard
  
GO
/****** Object:  StoredProcedure [dbo].[p_IdCard_select1]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_IdCard_select1]
as
  select * from IdCard
  
GO
/****** Object:  StoredProcedure [dbo].[p_kaiyao_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[p_kaiyao_select]   ---查询以点药品存储过程
as
	select  register. Rid ,				--挂号表
			  register . Doctor ,		--主诊医生
	          register . SectionRoom ,--科室
	          IdCard .  Name ,				--姓名
	          IdCard .  IdcardNo ,		--身份证
	          IdCard .  Sex ,				--性别
	          kaiyao.   yaopinName,		--药品
	         kaiyao. zhuangtai
	 from kaiyao join   register  on kaiyao .Rid =register .Rid  join IdCard on   IdCard .KId =kaiyao.Kid 


GO
/****** Object:  StoredProcedure [dbo].[p_kaiyao_update]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[p_kaiyao_update]----以买单修改存储过程
@Rid varchar(10)
as
	update kaiyao set  zhuangtai='yes' where Rid=@Rid 
update kaiyao set  zhuangtai='no' where Rid='0001' 


--UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU

GO
/****** Object:  StoredProcedure [dbo].[p_kaiyaoregister_delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_kaiyaoregister_delete] --买单删除数据
@Rid  varchar(10)
as 
      delete  kaiyao where  Rid = @Rid
      delete  register where Rid=@Rid 
------------------------------

GO
/****** Object:  StoredProcedure [dbo].[p_peodom_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_peodom_select]
@Uname varchar(10)
as
	select users.Peodom ,usersType .Peodom    from  users join usersType  on users.Type=usersType.Type  where Uname=@Uname

GO
/****** Object:  StoredProcedure [dbo].[p_retister_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_retister_insert]
@Rid varchar(10),
@Kid int,
@IdType varchar(10),
@GuaDanFei int,
@OtherFei  int,
@SectionRoom varchar(10),
@Doctor      varchar(10),
@ReristerTime smalldatetime,
@SeeDoctorTime smalldatetime,
@mess varchar(10) output
as
    if (select count(*) from register where Rid=@Rid or Kid=@Kid)=0 and (select COUNT(*) from IdCard where @Kid=KId)=1
    begin
    insert register values( @Rid,@Kid,@IdType, @GuaDanFei,@OtherFei,@SectionRoom,@Doctor,@ReristerTime,@SeeDoctorTime)
    set @mess ='挂号成功'
    end
    else
    set @mess='此卡已挂号'

    select * from register

GO
/****** Object:  StoredProcedure [dbo].[p_retister_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_retister_select]  ---查询已提交病人
as
select * from register



GO
/****** Object:  StoredProcedure [dbo].[p_SectionRoom]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRoom]
@Sname         varchar(10) ,
@Saddr		   varchar(20) ,
@Sprice		   int,
@result        varchar(10) output
as
    if (select COUNT(*) from SectionRoom where  Sname=@Sname)=0
       insert SectionRoom values(@Sname,@Saddr,@Sprice) 
    else
       set @result='此科室已有'
      
     
GO
/****** Object:  StoredProcedure [dbo].[p_SectionRoom_delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRoom_delete]
@Sname  varchar(10) 
as
	delete SectionRoom where @Sname=Sname


--++++++++++++++++++++++++++++++++++++++++++++++++5+++++++++++++++++++++

GO
/****** Object:  StoredProcedure [dbo].[p_SectionRoom_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRoom_select]
as
   select * from SectionRoom
  
  
GO
/****** Object:  StoredProcedure [dbo].[p_SectionRoom_Update]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRoom_Update]
@Sname         varchar(10) ,
@Saddr		   varchar(20) ,
@Sprice		   int
as
   update SectionRoom  set Saddr=@Saddr, Sprice=@Sprice where Sname=@Sname


GO
/****** Object:  StoredProcedure [dbo].[p_SectionRooomSon_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRooomSon_select]
as
	select * from SectionRooomSon
--drop table SectionRooomSon


GO
/****** Object:  StoredProcedure [dbo].[p_SectionRooomSonDelete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[p_SectionRooomSonDelete]
@SonName	     varchar(10) ,
@result   varchar(20)  output
as
			delete SectionRooomSon where  SonName=@SonName
			set @result='删除成功'


GO
/****** Object:  StoredProcedure [dbo].[p_SectionRooomSonInsert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_SectionRooomSonInsert]
@Sname      varchar(10),
@SonName    varchar(10),
@result     varchar(20) output
as
  if(select COUNT(*) from SectionRooomSon where SonName= @SonName)=0
  begin
      insert SectionRooomSon values (@Sname,@SonName)
      
  end
  else
        set @result='此子科室已经添加'
   
GO
/****** Object:  StoredProcedure [dbo].[p_sickroom_Delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_sickroom_Delete]
@Idsickroom int 
as
	delete sickroom where @Idsickroom=Idsickroom

 --++++++++++++++++++++++++++++++++++++++++++++++++9床位表+++++++++++++++++++++
GO
/****** Object:  StoredProcedure [dbo].[p_sickroom_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create  proc [dbo].[p_sickroom_insert] --添加病房
@Idsickroom int ,
@Sid int,
@Type varchar(10),
@Price int,
@result varchar(30) output
as
    if(select  COUNT(*) from sickroom  where @Idsickroom=Idsickroom)=0
    begin
			  insert sickroom values(@Idsickroom, @Sid,@Type,@Price)
			  set @result ='OK'
    end
    else
			  set @result='@Idsickroom   房号一出现相同'
	
	
GO
/****** Object:  StoredProcedure [dbo].[p_sickroom_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_sickroom_select]  --查询病房
as
	select * from sickroom
	
GO
/****** Object:  StoredProcedure [dbo].[p_users_delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[p_users_delete] 
@Uid int 
as 
	delete users  where Uid =@Uid 
	
	
select * from users
GO
/****** Object:  StoredProcedure [dbo].[p_users_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_users_insert] 
@Uname        varchar(10),									--用户名
@name          varchar (10),
@Pwd          varchar(10),									   --密码    
@Sex          char(2),                                              --性别
@Address      varchar(20),										 --地址
@Phone        char(11),											 --联系电话
@Spell        varchar(10),										--拼音码
@Type         varchar(20),								     --类型
@SectionRoom varchar(10),
@money      int,                              					 --挂号费	
@Peodom       varchar(500),								 --权限   
@result       varchar(20) output								   
as
    if (select COUNT(*) from users where Uname=@Uname)=0
        begin 
          insert users values(@Uname,@name,@Pwd,@Sex,@Address,@Phone, @Spell, @Type,@SectionRoom,@money,@Peodom)
           set @result = '添加成功'
         end
         else
           set @result = '用户名已经存在'

 select * from users   

--****************************************************************************************************** 


GO
/****** Object:  StoredProcedure [dbo].[p_users_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_users_select]
@Uname   varchar(10),
@Pwd     varchar(10),
@return  int output
as 
    if(select COUNT(*) from users where Uname=@Uname )=0
        set @return=0
     else   if(select COUNT(*) from users where Uname=@Uname and Pwd=@Pwd) = 0
       set @return=1   
       
    else
       set @return=2
       

 
--++++++++++++++++++++++++++++++++++++++++++++++++4+++++++++++++++++++++

GO
/****** Object:  StoredProcedure [dbo].[p_users_select01]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_users_select01] 
as
	select * from users 

GO
/****** Object:  StoredProcedure [dbo].[p_usersPeodom_update]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_usersPeodom_update]
@Uname varchar(20),
@peodom varchar(500)
as
	update users  set  Peodom =@peodom  where Uname = @Uname 

--drop table users
GO
/****** Object:  StoredProcedure [dbo].[p_usersType_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[p_usersType_insert]--------------------------------------------------
@Type varchar(20),
@peodom varchar(500),
@mess varchar(20) output
as 
  if (select COUNT(*) from usersType where @Type=Type )=0
  begin
		insert usersType  values(@Type ,@peodom )
		 set @mess='添加成功！'
 end
  else 
    set @mess='此类型以存在！'
   
    
   


GO
/****** Object:  StoredProcedure [dbo].[p_usesType_delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_usesType_delete] 
@Type varchar(20)
as
	delete usersType  where @Type =Type 

GO
/****** Object:  StoredProcedure [dbo].[p_usesType_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_usesType_select]
as	
	select * from usersType


GO
/****** Object:  StoredProcedure [dbo].[p_usesType_update]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[p_usesType_update]
@Type varchar(20),
@peodom varchar(500)
as
	update usersType  set  Peodom =@peodom  where Type = @Type 


GO
/****** Object:  StoredProcedure [dbo].[p_zhuayuantongji]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc  [dbo].[p_zhuayuantongji]
  as 
      select * from zhuayuantongji
 
GO
/****** Object:  StoredProcedure [dbo].[p_zhuayuantongji_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_zhuayuantongji_select]
@Kid			int ,
@Sname		varchar(20),
@zmoney	    int ,
@ymoney	    int ,
 @time			varchar(30)
as 
   insert zhuayuantongji values(@Kid, @Sname, @zmoney, @ymoney, @time)
  
  
GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuan_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[p_zhuyuan_insert]  --住院查询
@kId				int ,			
@Sid               int,             
@Idsickroom   int ,            
@BedNo			varchar(10),
@Imprest			int,			
@Bewrite			varchar(50),
@Tabu				varchar(50),
@Ztime            datetime,
@result varchar(30) output
as
   if ( select  COUNT(*) from IdCard  where @kId=kId  )=1  
    begin
			if ( select  COUNT(*) from zhuyuan   where @kId=kId  ) !=0  
				 set    @result ='KO'
		   else 
		   begin 
				 insert zhuyuan values(@kId, @Sid,@Idsickroom,@BedNo, @Imprest, @Bewrite, @Tabu,@Ztime)
				update  bed set  State='占用' where @Idsickroom=Idsickroom and @BedNo=Idbed
 				 set @result ='OK'
		   end 
    end
   else
             set   @result ='NO'
   
     

 --++++++++++++++++++++++++++++++++++++++++++++++++11住院病人病历表+++++++++++++++++++++
GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuan_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc  [dbo].[p_zhuyuan_select]
as		
	select zhuyuan. kId, zhuyuan.Sid ,zhuyuan.Idsickroom ,zhuyuan .BedNo ,zhuyuan .Imprest ,zhuyuan .Bewrite ,zhuyuan .Tabu ,zhuyuan.Ztime,IdCard.Name  from zhuyuan  join IdCard on zhuyuan .kId =IdCard.KId 

--drop table zhuyuan
GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuanxiaofei_delete]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_zhuyuanxiaofei_delete]
@kId int ,
@yaoName varchar(20)
as
	delete zhuyuanxiaofei where Kid= @kId and yaoName=@yaoName
	
	----********************************************************************

GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuanxiaofei_insert]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc  [dbo].[p_zhuyuanxiaofei_insert]
@kId			int ,			
@yaoName    varchar(20),           
@yaonum		int           
 as
       if(select COUNT(*) from zhuyuanxiaofei where Kid= @kId and yaoName=@yaoName ) >0
       begin
			  delete zhuyuanxiaofei where Kid= @kId and yaoName=@yaoName
		end 
		 insert zhuyuanxiaofei values(@kId,@yaoName, @yaonum)
--------------------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuanxiaofei_select]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc  [dbo].[p_zhuyuanxiaofei_select]
@Kid int 
as
	select * from zhuyuanxiaofei where Kid=@kId 
	-----------------------------------------------
	
	
GO
/****** Object:  StoredProcedure [dbo].[p_zhuyuanzhuyuanxiaofei_deleted]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc   [dbo].[p_zhuyuanzhuyuanxiaofei_deleted] ----住院买单删除数据
@kId int 
as	
    delete zhuyuan  where @kId=kId
    delete zhuyuanxiaofei   where @kId=kId


GO
/****** Object:  StoredProcedure [dbo].[Reg_IdCard]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Reg_IdCard]
@Name varchar(20), @Sex char(2), @Age int, @Birthday smalldatetime, @Address varchar(50), @Phone char(11), 
@Nation varchar(20), @Cultrue varchar(20), @Marriage char(4), @Work varchar(6), @Postcode varchar(6), 
@IdcardNo varchar(18), @result int output
as
	if(select COUNT(*) from IdCard where IdcardNo=@IdcardNo)=0
	begin
		insert IdCard values(@Name, @Sex, @Age, @Birthday, @Address, @Phone, @Nation, @Cultrue, @Marriage, @Work,
		@Postcode, @IdcardNo)
		set @result = 1
	end
	else 
		set @result = 0

GO
/****** Object:  StoredProcedure [dbo].[update_zhuyuan_yujiao]    Script Date: 19/06/2025 15:12:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_zhuyuan_yujiao]
@kId int ,
@Imprest int 
as
	update zhuyuan set  Imprest=@Imprest where kId=@kId


GO
USE [master]
GO
ALTER DATABASE [hospitals] SET  READ_WRITE 
GO
