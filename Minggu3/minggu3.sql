USE Master;
GO
RESTORE FILELISTONLY FROM DISK = 'c:\TokoBarokah\TokoBarokah.bak'
GO


RESTORE DATABASE TokoBarokah
FROM DISK='c:\TokoBarokah\TokoBarokah.bak'
 WITH REPLACE,
  MOVE 'TokoBarokah' TO 'c:\TokoBarokah\TokoBarokah.mdf',
  MOVE 'TokoBarokah_log' TO 'c:\TokoBarokah\TokoBarokah_log.ldf';
  
USE TokoBarokah;
GO
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
