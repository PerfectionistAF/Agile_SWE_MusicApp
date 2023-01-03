CREATE TABLE [dbo].[Table]
(
	[FirstName] NVARCHAR(50) NOT NULL, 
    [MiddleName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(MAX) NOT NULL, 
    [PhoneNumber] NUMERIC(11) NOT NULL, 
    [DOB] DATE NOT NULL, 
    [Gender] BIT NOT NULL, 
    [InstrumentChoice] NVARCHAR(50) NOT NULL, 
    [NationalId] NUMERIC(14) NOT NULL, 
    [College] NVARCHAR(50) NOT NULL, 
    [Faculty] NVARCHAR(50) NOT NULL, 
    [YearOfStudy] DATE NOT NULL, 
    [Disability] BIT NOT NULL, 
    [NationalIdImage] IMAGE NOT NULL, 
    [CollegeIdImage] IMAGE NOT NULL, 
    [PersonalImage] IMAGE NOT NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([Email]) 
)
