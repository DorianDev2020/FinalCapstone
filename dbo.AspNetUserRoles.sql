CREATE TABLE [dbo].[AspNetUserRoles] (
    [TennantId] NVARCHAR (450) NOT NULL,
    [AdminId] NVARCHAR (450) NOT NULL,
    [ContractorId] NCHAR(10) NULL, 
    CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([TennantId] ASC, [AdminId] ASC),
    CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([AdminId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([TennantId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
    ON [dbo].[AspNetUserRoles]([AdminId] ASC);

