USE [QLSV]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[id] [int] IDENTITY(500,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
	[sotinchi] [int] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NganhHoc]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganhHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
	[id_khoa] [int] NOT NULL,
 CONSTRAINT [PK_NganhHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](20) NULL,
	[birthday] [nvarchar](50) NULL,
	[email] [nvarchar](200) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](500) NULL,
	[avatar] [nvarchar](500) NULL,
	[password] [nvarchar](50) NULL,
	[id_khoa] [int] NOT NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](500) NULL,
	[id_nganhhoc] [int] NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_MonHoc]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_MonHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_gv] [int] NOT NULL,
	[id_mon] [int] NOT NULL,
	[diadiem] [nvarchar](500) NULL,
	[ghichu] [nvarchar](500) NULL,
 CONSTRAINT [PK_GV_MonHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[id] [int] IDENTITY(100,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](20) NULL,
	[birthday] [nvarchar](50) NULL,
	[email] [nvarchar](200) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](500) NULL,
	[avatar] [nvarchar](500) NULL,
	[password] [nvarchar](50) NULL,
	[id_lop] [int] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 12/24/2020 16:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id_sv] [int] NOT NULL,
	[id_mon] [int] NOT NULL,
	[diemTX1] [float] NULL,
	[diemTX2] [float] NULL,
	[diemThi1] [float] NULL,
	[diemThi2] [float] NULL,
	[diem10] [float] NULL,
	[diem4] [float] NULL,
	[diemChu] [nvarchar](50) NULL,
	[xepLoai] [nvarchar](50) NULL,
	[ghiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id_sv] ASC,
	[id_mon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Diem_MonHoc1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_MonHoc1] FOREIGN KEY([id_mon])
REFERENCES [dbo].[MonHoc] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_MonHoc1]
GO
/****** Object:  ForeignKey [FK_Diem_SinhVien1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_SinhVien1] FOREIGN KEY([id_sv])
REFERENCES [dbo].[SinhVien] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_SinhVien1]
GO
/****** Object:  ForeignKey [FK_GiangVien_Khoa1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_Khoa1] FOREIGN KEY([id_khoa])
REFERENCES [dbo].[Khoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_Khoa1]
GO
/****** Object:  ForeignKey [FK_GV_MonHoc_GiangVien]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[GV_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GV_MonHoc_GiangVien] FOREIGN KEY([id_gv])
REFERENCES [dbo].[GiangVien] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GV_MonHoc] CHECK CONSTRAINT [FK_GV_MonHoc_GiangVien]
GO
/****** Object:  ForeignKey [FK_GV_MonHoc_MonHoc]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[GV_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GV_MonHoc_MonHoc] FOREIGN KEY([id_mon])
REFERENCES [dbo].[MonHoc] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GV_MonHoc] CHECK CONSTRAINT [FK_GV_MonHoc_MonHoc]
GO
/****** Object:  ForeignKey [FK_Lop_NganhHoc1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_NganhHoc1] FOREIGN KEY([id_nganhhoc])
REFERENCES [dbo].[NganhHoc] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_NganhHoc1]
GO
/****** Object:  ForeignKey [FK_NganhHoc_Khoa1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[NganhHoc]  WITH CHECK ADD  CONSTRAINT [FK_NganhHoc_Khoa1] FOREIGN KEY([id_khoa])
REFERENCES [dbo].[Khoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NganhHoc] CHECK CONSTRAINT [FK_NganhHoc_Khoa1]
GO
/****** Object:  ForeignKey [FK_SinhVien_Lop1]    Script Date: 12/24/2020 16:58:44 ******/
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop1] FOREIGN KEY([id_lop])
REFERENCES [dbo].[Lop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop1]
GO
