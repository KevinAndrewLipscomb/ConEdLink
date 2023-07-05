REM
REM $Id: work.bat 5486 2014-11-22 22:37:03Z kevinanlipscomb $
REM
cd "C:\Inetpub\wwwroot\ConEdLink"
start /max explorer /e,/select,C:\Inetpub\wwwroot\ConEdLink\.svn
start /max ConEdLink.sln
IF EXIST "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe" (start "" /max "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe") ELSE start "" /max "C:\Program Files (x86)\MySQL\MySQL Workbench\MySQLWorkbench.exe"
