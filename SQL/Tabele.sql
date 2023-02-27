IF not exists(	SELECT * FROM dbo.sysobjects WHERE ID = OBJECT_ID(N'[dbo].[Faktury_naglowek]') 
   AND OBJECTPROPERTY(ID, N'IsTable')=1)
BEGIN

	CREATE TABLE [dbo].[Faktury_naglowek](
		ID	INTEGER IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
		SprzedawcaID	INT NOT NULL,
		KontrahentID	INT NOT NULL,
		GUID_ Uniqueidentifier DEFAULT NewID() NOT NULL,
		Nr    VARCHAR(100) NOT NULL,
		DataWystawienia Datetime Not NULL,
		DataDostawy  DateTime NULL,
		TerminPlatnosci DateTime NOT NULL,  	 
		MiejsceWystawienia  VARCHAR(100),
		Uwagi VARCHAR(200) NULL,
		Ksef VARCHAR(200) NULL,
		KsefDozw BIT NOT NULL  DEFAULT 0,
		SposobZaplaty VARCHAR(100) NULL,
		NazwaBanku   VARCHAR(200) NULL,
		NRKonta	 VARCHAR(100) NULL,
		WartoscNetto float NULL,
		WartoscBrutto float NULL,
		WartoscZaplacona float NULL,
		PozostaloDoZaplaty float NULL
	)
	 CREATE UNIQUE INDEX UX_Faktury_naglowek__0 ON Faktury_naglowek(Id);
END;
GO


IF not exists(	SELECT * FROM dbo.sysobjects WHERE ID = OBJECT_ID(N'[dbo].[Firma]') 
   AND OBJECTPROPERTY(ID, N'IsTable')=1)
BEGIN

	CREATE TABLE [dbo].[Firma](
		ID	INTEGER IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
		NIP	VARCHAR(40) NOT NULL,
		REGON   VARCHAR(40) NOT NULL,
		AdresId INTEGER NULL,
		NAZWA   VARCHAR(200) NULL
	)
	 CREATE UNIQUE INDEX UX_Firma__0 ON Firma(Id);
END;
Go


IF not exists(	SELECT * FROM dbo.sysobjects WHERE ID = OBJECT_ID(N'[dbo].[Adres]') 
   AND OBJECTPROPERTY(ID, N'IsTable')=1)
BEGIN

	CREATE TABLE [dbo].[Adres](
		ID	INTEGER IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
		KOD VARCHAR(20) NULL,
		Miejscowosc VARCHAR(50) NULL,
		Ulica VARCHAR(100) NULL,
		NrBudynku VARCHAR(10) NULL,
		NrLokalu VARCHAR(10) NULL,
		Poczta VARCHAR(50) NULL,
		Gmina  VARCHAR(50) NULL,
		Powiat VARCHAR(50),
		Wojewodztwo VARCHAR(50)
	)
	 CREATE UNIQUE INDEX UX_Adres__0 ON Adres(Id);
END;
Go




IF not exists(	SELECT * FROM dbo.sysobjects WHERE ID = OBJECT_ID(N'[dbo].[Kontrahent]') 
   AND OBJECTPROPERTY(ID, N'IsTable')=1)
BEGIN

	CREATE TABLE [dbo].[Kontrahent](
		ID	INTEGER IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
		NIP	VARCHAR(40) NOT NULL,
		REGON   VARCHAR(40) NOT NULL,
		AdresId INTEGER NULL,
		NAZWA   VARCHAR(200) NULL,
		Aktywny BIT NOT NULL DEFAULT 1
	)
	 CREATE UNIQUE INDEX UX_Kontrahent__0 ON Kontrahent(Id);
END;
Go