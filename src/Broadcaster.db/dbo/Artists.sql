CREATE TABLE [dbo].[Artists](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [char](100) NULL,
	[Adress] [char](255) NULL,
	[www] [char](255) NULL,
	[Activ] [int] NULL CONSTRAINT [DF_Artists_Activ]  DEFAULT (1),
	[NationalityID] [int] NULL,
	[Obs] [text] NULL,
	[eMail] [char](255) NULL,
	[Photo] [image] NULL,
	[DRM35] [char](10) NULL,
	[FanClub] [text] NULL,
	[Birthdate] [datetime] NULL,
	[RecordLabelID] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL DEFAULT (newid()),
 CONSTRAINT [PK_Artists] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO 

CREATE UNIQUE NONCLUSTERED INDEX [index_2099048] ON [dbo].[Artists] 
(
	[rowguid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]


