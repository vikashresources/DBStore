CREATE TABLE [dbo].[works_with]
(
[emp_id] [int] NOT NULL,
[client_id] [int] NOT NULL,
[total_sales] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[works_with] ADD CONSTRAINT [PK__works_wi__496BB223231934CA] PRIMARY KEY CLUSTERED  ([emp_id], [client_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[works_with] ADD CONSTRAINT [FK__works_wit__clien__4316F928] FOREIGN KEY ([client_id]) REFERENCES [dbo].[client] ([client_id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[works_with] ADD CONSTRAINT [FK__works_wit__emp_i__4222D4EF] FOREIGN KEY ([emp_id]) REFERENCES [dbo].[employee] ([emp_id]) ON DELETE CASCADE
GO
