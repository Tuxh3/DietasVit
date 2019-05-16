
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/14/2019 11:29:42
-- Generated from EDMX file: C:\Users\andre\source\repos\Vitadiet\VitaDiet\Models\BaseDatosModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [VITADIET];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__HISTORIAL__IDPAC__182C9B23]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HISTORIAL] DROP CONSTRAINT [FK__HISTORIAL__IDPAC__182C9B23];
GO
IF OBJECT_ID(N'[dbo].[FK__NUTRICION__IDUSU__20C1E124]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NUTRICIONISTA] DROP CONSTRAINT [FK__NUTRICION__IDUSU__20C1E124];
GO
IF OBJECT_ID(N'[dbo].[FK__CHEQUEO__CEDULA___24927208]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CHEQUEO] DROP CONSTRAINT [FK__CHEQUEO__CEDULA___24927208];
GO
IF OBJECT_ID(N'[dbo].[FK__CHEQUEO__CEDULA___25869641]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CHEQUEO] DROP CONSTRAINT [FK__CHEQUEO__CEDULA___25869641];
GO
IF OBJECT_ID(N'[dbo].[FK_USUARIOPACIENTE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PACIENTE] DROP CONSTRAINT [FK_USUARIOPACIENTE];
GO
IF OBJECT_ID(N'[dbo].[FK_USUARIOCOCINERO]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COCINERO] DROP CONSTRAINT [FK_USUARIOCOCINERO];
GO
IF OBJECT_ID(N'[dbo].[FK_USUARIODISTRIBUIDOR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DISTRIBUIDOR] DROP CONSTRAINT [FK_USUARIODISTRIBUIDOR];
GO
IF OBJECT_ID(N'[dbo].[FK_DISTRIBUIDORRUTA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RUTA] DROP CONSTRAINT [FK_DISTRIBUIDORRUTA];
GO
IF OBJECT_ID(N'[dbo].[FK_PACIENTEDIETA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PACIENTE] DROP CONSTRAINT [FK_PACIENTEDIETA];
GO
IF OBJECT_ID(N'[dbo].[FK_PACIENTEPQR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PQR] DROP CONSTRAINT [FK_PACIENTEPQR];
GO
IF OBJECT_ID(N'[dbo].[FK_RUTACOCINA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COCINASet] DROP CONSTRAINT [FK_RUTACOCINA];
GO
IF OBJECT_ID(N'[dbo].[FK_COCINACOCINERO]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COCINERO] DROP CONSTRAINT [FK_COCINACOCINERO];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DIETA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DIETA];
GO
IF OBJECT_ID(N'[dbo].[HISTORIAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HISTORIAL];
GO
IF OBJECT_ID(N'[dbo].[NUTRICIONISTA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NUTRICIONISTA];
GO
IF OBJECT_ID(N'[dbo].[PACIENTE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PACIENTE];
GO
IF OBJECT_ID(N'[dbo].[PQR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PQR];
GO
IF OBJECT_ID(N'[dbo].[RUTA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RUTA];
GO
IF OBJECT_ID(N'[dbo].[USUARIO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[USUARIO];
GO
IF OBJECT_ID(N'[dbo].[CHEQUEO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CHEQUEO];
GO
IF OBJECT_ID(N'[dbo].[COCINERO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COCINERO];
GO
IF OBJECT_ID(N'[dbo].[DISTRIBUIDOR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DISTRIBUIDOR];
GO
IF OBJECT_ID(N'[dbo].[COCINASet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COCINASet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DIETA'
CREATE TABLE [dbo].[DIETA] (
    [ID] varchar(10)  NOT NULL,
    [NOMBRE] varchar(30)  NULL,
    [CEDULA_PACIENTE] int  NULL,
    [COMIDA] varchar(50)  NULL,
    [DOMICILIO] varchar(20)  NULL
);
GO

-- Creating table 'HISTORIAL'
CREATE TABLE [dbo].[HISTORIAL] (
    [ID] varchar(10)  NOT NULL,
    [IDPACIENTE] varchar(10)  NULL,
    [HISTORIAL1] varchar(1)  NULL
);
GO

-- Creating table 'NUTRICIONISTA'
CREATE TABLE [dbo].[NUTRICIONISTA] (
    [ID] varchar(10)  NOT NULL,
    [NOMBRE] varchar(30)  NULL,
    [APELLIDO] varchar(30)  NULL,
    [FECHA_NACIMIENTO] datetime  NULL,
    [CEDULA_NUTRICIONISTA] int  NULL,
    [TARJETA_PROFESIONAL] int  NULL,
    [GENERO] char(1)  NULL,
    [CELULAR] varchar(10)  NULL,
    [CORREO] varchar(30)  NULL,
    [IDUSUARIO] varchar(10)  NULL
);
GO

-- Creating table 'PACIENTE'
CREATE TABLE [dbo].[PACIENTE] (
    [ID] varchar(10)  NOT NULL,
    [NOMBRE] varchar(30)  NULL,
    [APELLIDO] varchar(30)  NULL,
    [FECHA_NACIMIENTO] datetime  NULL,
    [CEDULA_PACIENTE] int  NULL,
    [GENERO] char(1)  NULL,
    [RH] varchar(3)  NULL,
    [DOMICILIO] varchar(30)  NULL,
    [OBJETIVOS] varchar(50)  NULL,
    [TIEMPO_ESPERADO] varchar(30)  NULL,
    [CELULAR] varchar(10)  NULL,
    [CORREO] varchar(30)  NULL,
    [USUARIO_ID] varchar(10)  NOT NULL,
    [DIETA_ID] varchar(10)  NOT NULL
);
GO

-- Creating table 'PQR'
CREATE TABLE [dbo].[PQR] (
    [ID] varchar(10)  NOT NULL,
    [NOMBRE_PACIENTE] varchar(50)  NULL,
    [CALIFICACION] int  NULL,
    [PACIENTEID] varchar(10)  NOT NULL
);
GO

-- Creating table 'RUTA'
CREATE TABLE [dbo].[RUTA] (
    [ID] varchar(10)  NOT NULL,
    [DESTINOS] varchar(1)  NULL,
    [COCINAS] varchar(1)  NULL,
    [DISTRIBUIDORID] varchar(10)  NOT NULL
);
GO

-- Creating table 'USUARIO'
CREATE TABLE [dbo].[USUARIO] (
    [ID] varchar(10)  NOT NULL,
    [ROL] varchar(20)  NULL,
    [CONTRASENA] varchar(20)  NULL,
	[USERNAME] varchar(20) NULL
);
GO

-- Creating table 'CHEQUEO'
CREATE TABLE [dbo].[CHEQUEO] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CEDULA_PACIENTE] varchar(10)  NULL,
    [CEDULA_NUTRICIONISTA] varchar(10)  NULL,
    [FECHA_CHEQUEO] datetime  NULL
);
GO

-- Creating table 'COCINERO'
CREATE TABLE [dbo].[COCINERO] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(30)  NULL,
    [CEDULA] varchar(30)  NULL,
    [FECHA_NACIMIENTO] datetime  NULL,
    [CIUDAD] varchar(30)  NULL,
    [GENERO] char(1)  NULL,
    [TELEFONO] varchar(30)  NULL,
    [USUARIOID] varchar(10)  NOT NULL,
    [COCINAId] int  NOT NULL
);
GO

-- Creating table 'DISTRIBUIDOR'
CREATE TABLE [dbo].[DISTRIBUIDOR] (
    [ID] varchar(10)  NOT NULL,
    [NOMBRE] varchar(30)  NULL,
    [APELLIDO] varchar(30)  NULL,
    [CELULAR] varchar(10)  NULL,
    [CORREO] varchar(30)  NULL,
    [USUARIOID] varchar(10)  NOT NULL,
    [CEDULA_DISTRIBUIDOR] int  NULL
);
GO

-- Creating table 'COCINASet'
CREATE TABLE [dbo].[COCINASet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UBICACION] nvarchar(max)  NOT NULL,
    [RUTAID] varchar(10)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'DIETA'
ALTER TABLE [dbo].[DIETA]
ADD CONSTRAINT [PK_DIETA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'HISTORIAL'
ALTER TABLE [dbo].[HISTORIAL]
ADD CONSTRAINT [PK_HISTORIAL]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'NUTRICIONISTA'
ALTER TABLE [dbo].[NUTRICIONISTA]
ADD CONSTRAINT [PK_NUTRICIONISTA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PACIENTE'
ALTER TABLE [dbo].[PACIENTE]
ADD CONSTRAINT [PK_PACIENTE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PQR'
ALTER TABLE [dbo].[PQR]
ADD CONSTRAINT [PK_PQR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'RUTA'
ALTER TABLE [dbo].[RUTA]
ADD CONSTRAINT [PK_RUTA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'USUARIO'
ALTER TABLE [dbo].[USUARIO]
ADD CONSTRAINT [PK_USUARIO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CHEQUEO'
ALTER TABLE [dbo].[CHEQUEO]
ADD CONSTRAINT [PK_CHEQUEO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'COCINERO'
ALTER TABLE [dbo].[COCINERO]
ADD CONSTRAINT [PK_COCINERO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'DISTRIBUIDOR'
ALTER TABLE [dbo].[DISTRIBUIDOR]
ADD CONSTRAINT [PK_DISTRIBUIDOR]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'COCINASet'
ALTER TABLE [dbo].[COCINASet]
ADD CONSTRAINT [PK_COCINASet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IDPACIENTE] in table 'HISTORIAL'
ALTER TABLE [dbo].[HISTORIAL]
ADD CONSTRAINT [FK__HISTORIAL__IDPAC__182C9B23]
    FOREIGN KEY ([IDPACIENTE])
    REFERENCES [dbo].[PACIENTE]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__HISTORIAL__IDPAC__182C9B23'
CREATE INDEX [IX_FK__HISTORIAL__IDPAC__182C9B23]
ON [dbo].[HISTORIAL]
    ([IDPACIENTE]);
GO

-- Creating foreign key on [IDUSUARIO] in table 'NUTRICIONISTA'
ALTER TABLE [dbo].[NUTRICIONISTA]
ADD CONSTRAINT [FK__NUTRICION__IDUSU__20C1E124]
    FOREIGN KEY ([IDUSUARIO])
    REFERENCES [dbo].[USUARIO]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__NUTRICION__IDUSU__20C1E124'
CREATE INDEX [IX_FK__NUTRICION__IDUSU__20C1E124]
ON [dbo].[NUTRICIONISTA]
    ([IDUSUARIO]);
GO

-- Creating foreign key on [CEDULA_PACIENTE] in table 'CHEQUEO'
ALTER TABLE [dbo].[CHEQUEO]
ADD CONSTRAINT [FK__CHEQUEO__CEDULA___24927208]
    FOREIGN KEY ([CEDULA_PACIENTE])
    REFERENCES [dbo].[PACIENTE]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__CHEQUEO__CEDULA___24927208'
CREATE INDEX [IX_FK__CHEQUEO__CEDULA___24927208]
ON [dbo].[CHEQUEO]
    ([CEDULA_PACIENTE]);
GO

-- Creating foreign key on [CEDULA_NUTRICIONISTA] in table 'CHEQUEO'
ALTER TABLE [dbo].[CHEQUEO]
ADD CONSTRAINT [FK__CHEQUEO__CEDULA___25869641]
    FOREIGN KEY ([CEDULA_NUTRICIONISTA])
    REFERENCES [dbo].[NUTRICIONISTA]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__CHEQUEO__CEDULA___25869641'
CREATE INDEX [IX_FK__CHEQUEO__CEDULA___25869641]
ON [dbo].[CHEQUEO]
    ([CEDULA_NUTRICIONISTA]);
GO

-- Creating foreign key on [USUARIO_ID] in table 'PACIENTE'
ALTER TABLE [dbo].[PACIENTE]
ADD CONSTRAINT [FK_USUARIOPACIENTE]
    FOREIGN KEY ([USUARIO_ID])
    REFERENCES [dbo].[USUARIO]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USUARIOPACIENTE'
CREATE INDEX [IX_FK_USUARIOPACIENTE]
ON [dbo].[PACIENTE]
    ([USUARIO_ID]);
GO

-- Creating foreign key on [USUARIOID] in table 'COCINERO'
ALTER TABLE [dbo].[COCINERO]
ADD CONSTRAINT [FK_USUARIOCOCINERO]
    FOREIGN KEY ([USUARIOID])
    REFERENCES [dbo].[USUARIO]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USUARIOCOCINERO'
CREATE INDEX [IX_FK_USUARIOCOCINERO]
ON [dbo].[COCINERO]
    ([USUARIOID]);
GO

-- Creating foreign key on [USUARIOID] in table 'DISTRIBUIDOR'
ALTER TABLE [dbo].[DISTRIBUIDOR]
ADD CONSTRAINT [FK_USUARIODISTRIBUIDOR]
    FOREIGN KEY ([USUARIOID])
    REFERENCES [dbo].[USUARIO]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USUARIODISTRIBUIDOR'
CREATE INDEX [IX_FK_USUARIODISTRIBUIDOR]
ON [dbo].[DISTRIBUIDOR]
    ([USUARIOID]);
GO

-- Creating foreign key on [DISTRIBUIDORID] in table 'RUTA'
ALTER TABLE [dbo].[RUTA]
ADD CONSTRAINT [FK_DISTRIBUIDORRUTA]
    FOREIGN KEY ([DISTRIBUIDORID])
    REFERENCES [dbo].[DISTRIBUIDOR]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DISTRIBUIDORRUTA'
CREATE INDEX [IX_FK_DISTRIBUIDORRUTA]
ON [dbo].[RUTA]
    ([DISTRIBUIDORID]);
GO

-- Creating foreign key on [DIETA_ID] in table 'PACIENTE'
ALTER TABLE [dbo].[PACIENTE]
ADD CONSTRAINT [FK_PACIENTEDIETA]
    FOREIGN KEY ([DIETA_ID])
    REFERENCES [dbo].[DIETA]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PACIENTEDIETA'
CREATE INDEX [IX_FK_PACIENTEDIETA]
ON [dbo].[PACIENTE]
    ([DIETA_ID]);
GO

-- Creating foreign key on [PACIENTEID] in table 'PQR'
ALTER TABLE [dbo].[PQR]
ADD CONSTRAINT [FK_PACIENTEPQR]
    FOREIGN KEY ([PACIENTEID])
    REFERENCES [dbo].[PACIENTE]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PACIENTEPQR'
CREATE INDEX [IX_FK_PACIENTEPQR]
ON [dbo].[PQR]
    ([PACIENTEID]);
GO

-- Creating foreign key on [RUTAID] in table 'COCINASet'
ALTER TABLE [dbo].[COCINASet]
ADD CONSTRAINT [FK_RUTACOCINA]
    FOREIGN KEY ([RUTAID])
    REFERENCES [dbo].[RUTA]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RUTACOCINA'
CREATE INDEX [IX_FK_RUTACOCINA]
ON [dbo].[COCINASet]
    ([RUTAID]);
GO

-- Creating foreign key on [COCINAId] in table 'COCINERO'
ALTER TABLE [dbo].[COCINERO]
ADD CONSTRAINT [FK_COCINACOCINERO]
    FOREIGN KEY ([COCINAId])
    REFERENCES [dbo].[COCINASet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_COCINACOCINERO'
CREATE INDEX [IX_FK_COCINACOCINERO]
ON [dbo].[COCINERO]
    ([COCINAId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------