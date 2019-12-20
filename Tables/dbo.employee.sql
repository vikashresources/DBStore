CREATE TABLE [dbo].[employee]
(
[emp_id] [int] NOT NULL,
[first_name] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[birth_day] [date] NULL,
[sex] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[salary] [int] NULL,
[super_id] [int] NULL,
[branch_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [PK__employee__1299A861D4581515] PRIMARY KEY CLUSTERED  ([emp_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [FK__employee__branch__3A81B327] FOREIGN KEY ([branch_id]) REFERENCES [dbo].[branch] ([branch_id]) ON DELETE SET NULL
GO
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [FK__employee__super___3C69FB99] FOREIGN KEY ([super_id]) REFERENCES [dbo].[employee] ([emp_id])
GO
