CREATE TABLE [dbo].[orders]
(
[id] [int] NOT NULL,
[Title] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__orders__Title__37A5467C] DEFAULT (NULL),
[first_name] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__orders__first_na__38996AB5] DEFAULT (NULL),
[Middle] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__orders__Middle__398D8EEE] DEFAULT (NULL),
[last_name] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__orders__last_nam__3A81B327] DEFAULT (NULL),
[ProductId] [int] NOT NULL,
[NumberShipped] [int] NULL CONSTRAINT [DF__orders__NumberSh__3B75D760] DEFAULT (NULL),
[OrderDate] [date] NULL CONSTRAINT [DF__orders__OrderDat__3C69FB99] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[orders] ADD CONSTRAINT [PK__orders__3213E83F49ABE89C] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
