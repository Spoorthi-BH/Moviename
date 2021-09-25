--CREATE A TABLE 'MOVIES'

CREATE TABLE [MOVIES_DETAILS].[dbo].[MOVIES]( Movie_Name varchar(max) NOT NULL,
Lead_Actor varchar(max) NOT NULL,
Lead_Actress varchar(max),
Year_Of_Release int NOT NULL,
Director_Name varchar(max) NOT NUll ); 

--INSERT VALUES INTO TABLE 'MOVIES'

use [MOVIES_DETAILS]
go
INSERT INTO dbo.MOVIES (Movie_Name,Lead_Actor,Lead_Actress,Year_Of_Release,Director_Name)
VALUES('Kalisundam_Raa','Venkatesh','Simran',1995,'Dasri_Rao');

--QUERY THE TABLE 'MOVIES'

use [MOVIES_DETAILS]
go
SELECT [Movie_Name],[Lead_Actor],[Lead_Actress],[Year_Of_Release],[Director_Name] 
FROM [MOVIES_DETAILS].[dbo].[MOVIES] 
WHERE Year_Of_Release = 1996


--drop table [MOVIES_DETAILS].[dbo].[MOVIES]


/* CREATE TABLE USING PYTHON IDLE

>>> import pyodbc
>>> conn = pyodbc.connect('Driver={SQL Server};''Server=PREMAMANJU\SQL2017;''Database=MOVIES_DETAILS;''Trusted_Connection=yes;')
>>> cursor = conn.cursor()
>>> cursor.execute('''
		CREATE TABLE [MOVIES_DETAILS].[dbo].[MOVIES] (
			Movie_Name varchar(max) NOT NULL,
			Lead_Actor varchar(max) NOT NULL,
			Lead_Actress varchar(max) NOT NULL,
			Year_Of_Release int NOT NULL,
			Director_Name varchar(max) NOT NUll
			)
               ''')
<pyodbc.Cursor object at 0x0000022638848930>
>>> conn.commit()

/* INSERT VALUES TO TABLE USING PYTHON IDLE

>>> import pyodbc
>>> conn = pyodbc.connect('Driver={SQL Server};''Server=PREMAMANJU\SQL2017;''Database=MOVIES_DETAILS;''Trusted_Connection=yes;')
>>> cursor = conn.cursor()
>>> cursor.execute('''
                INSERT INTO MOVIES_DETAILS.dbo.MOVIES (Movie_Name,Lead_Actor,Lead_Actress,Year_Of_Release,Director_Name)
                VALUES
                ('CBI_Shankar','Shankar_Nag','Soundarya',1996,'Shankar_Nag'),
                ('Kalisundam_Raa','Venkatesh','Simran',1995,'Dasri_Rao')
                ''')
<pyodbc.Cursor object at 0x0000022638E7D8B0>
>>> conn.commit()

*/

/* QUERY THE TABLE USING PYTHON IDLE

>>> import pyodbc
>>> conn = pyodbc.connect('Driver={SQL Server};''Server=PREMAMANJU\SQL2017;''Database=AdventureWorks2017;''Trusted_Connection=yes;')
>>> cursor = conn.cursor()
>>> cursor.execute('SELECT [Movie_Name],[Lead_Actor],[Lead_Actress],[Year_Of_Release],[Director_Name] FROM [MOVIES_DETAILS].[dbo].[MOVIES] WHERE Year_Of_Release = 1996')
<pyodbc.Cursor object at 0x0000022638848930>
>>> for row in cursor:
	print(row)

*/