CREATE TABLE [dbo].[client]
(
[client_id] [int] NOT NULL,
[client_name] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[branch_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[client] ADD CONSTRAINT [PK__client__BF21A42436741D4F] PRIMARY KEY CLUSTERED  ([client_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[client] ADD CONSTRAINT [FK__client__branch_i__3F466844] FOREIGN KEY ([branch_id]) REFERENCES [dbo].[branch] ([branch_id]) ON DELETE SET NULL
GO
