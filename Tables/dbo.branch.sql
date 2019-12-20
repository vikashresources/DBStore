CREATE TABLE [dbo].[branch]
(
[branch_id] [int] NOT NULL,
[branch_name] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mgr_id] [int] NULL,
[mgr_start_date] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[branch] ADD CONSTRAINT [PK__branch__E55E37DE4E47EE75] PRIMARY KEY CLUSTERED  ([branch_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[branch] ADD CONSTRAINT [FK__branch__mgr_id__398D8EEE] FOREIGN KEY ([mgr_id]) REFERENCES [dbo].[employee] ([emp_id]) ON DELETE SET NULL
GO
