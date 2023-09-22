CREATE TABLE Country (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Code varchar(255) NOT NULL,
    Name varchar(255)
);


CREATE TABLE State (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Code varchar(255) NOT NULL,
    Name varchar(255) NOT NULL,
	CountryId int
	FOREIGN KEY (CountryId) REFERENCES Country(Id)
);


CREATE TABLE City (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Code varchar(255) NOT NULL,
    Name varchar(255) NOT NULL,
	StateId int
	FOREIGN KEY (StateId) REFERENCES State(Id)
);



SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Age] [int] NULL,
	[Address] [varchar](255) NULL,
	[MobileNumber] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
