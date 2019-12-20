CREATE TABLE [dbo].[branch_supplier]
(
[branch_id] [int] NOT NULL,
[supplier_name] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[supply_type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[branch_supplier] ADD CONSTRAINT [PK__branch_s__AD7FB15D4A11791F] PRIMARY KEY CLUSTERED  ([branch_id], [supplier_name]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[branch_supplier] ADD CONSTRAINT [FK__branch_su__branc__45F365D3] FOREIGN KEY ([branch_id]) REFERENCES [dbo].[branch] ([branch_id]) ON DELETE CASCADE
GO
