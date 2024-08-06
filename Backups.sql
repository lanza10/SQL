--To make a backup for a db we can right click on it and on the submenu tasks click on back up...

--Inside, whe can select the db we want to back up and the type of backup.
--You also can choose if you want to backup the database or de file and filegroups on it.
--The destination of the backup can be a disk or an URL if you want to save it somewhere else.

--On media options we can find diferent options but its important not to select the option:
--			Overwrite all existing backup sets 
--This is due to the fact that is not a good idea to overwrite an existing backup because it cuold be useful


--On backup options there are other options where we can indicate a name, a description and an expiration date if we want
--We can also choose the kind of compression we want.

--With all that, when we click ok the backup will be ready on the location selected

--Other option:
backup database AdventureWorks
to disk = ''; --path to where we want to save it + \backup name.bak