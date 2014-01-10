INSTALL Document of Projest metis

Thanks for you to use my scripts
Some words from Google translate.

Project Information:

	Name	  : metis
	Language  : Bash Shell
	Created by: Statemood,	2011.07.?
	Updated by: Statemood,	2012.11.03	22:30
	

Install setup:
	
	1.	Set path on ./metis/sbin/including
	2.	Files Permission
			chmod 0755 ./metis/*
	
			chmod 0755 ./metis/sbin/including
				   ./metis/bin/gt
			
			chmod 0644 ./metis/cfg/*
			chmod 0644 ./metis/fun/*
			
	3.	Global Environment
			Add the following line to /etc/bashrc or /etc/bash.bashrc or /etc/profile:
			
				export PATH=$PATH:/YOUR-INSTALL-PATH/metis/bin
				
	4.	Creating Database:
			create database metis;
			create database logs;
			
			use database metis;
			source ./metis/support-files/database_metis.sql;
			grant select on metis.server to 'YOUR-DB-USER'@'YOUR-DB-IP' identified by 'YOUR-DB-PASSWORD' with grant option;
			
			use database logs;
			source ./metis/support-files/database_logs.sql;
			grant insert on logs.application to 'YOUR-DB-USER'@'YOUR-DB-IP' identified by 'YOUR-DB-PASSWORD' with grant option;
			
	5.	Configuration:
	
			Importment:    ./metis/sbin/including:  Line 2
			
			./metis/cfg/metis.cfg.ge
				DB_User='YOUR-DB-USER'
				DB_Pswd='YOUR-DB-PASSWORD'
				DB_Host='YOUR-DB-IP'
				DB_Name='metis'
				DB_TLog='logs.application'
				DB_TSrv='metis.server'
				DB_Conn=""
					
	6.	Alias(optional):	
			Add the following lines to /etc/bashrc or /etc/bash.bashrc or /etc/profile:
			
				alias go='gt -l'
				alias gi='gt -i'
				alias gu='gt -u'
				alias gd='gt -d'
	
.	
If you have any questions, comments, or suggestions please contact me with email: Statemood@gmail.com. Thanks for your help!

													by Statemood, 2012.12.03 23:20 GMT +8