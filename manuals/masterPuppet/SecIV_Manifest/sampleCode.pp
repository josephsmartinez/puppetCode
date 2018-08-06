package { ['libsqlite3-dev', 'sqlite3']: }

# Downloads an application
exec{ 'download_facebooc_from_source':

	command 	=> 'wget https://(example...)',
	path 		=> '/usr/bin:/usr/sbin:/user/local/bin',
	cwd 		=> '/opt',
	user 		=> 'root',
	creates 	=> 'opt/master.zip',
	notify 		=> Exce['extract_facebook_app']
}

# If the file is downloaded ^ the following script will run 
exec { 'extract_facebook_app':
	
	command		=> 'unzip master.zip && touch /opt/.facebook_compile', 
	path 		=> '/usr/bin:/usr/sbin:/user/local/bin',
	refreshonly => true,
	cwd 		=> /opt,
	user 		=> 'root',
	#subscribe 	=> Exec['download_facebook_from_source']
}

# The following will only run if the conditionals are meet. 
exec { 'compile_facebooc':

	command		=> 'make all && rm /opt/.facebook_compile',
	path 		=> '/usr/bin:/usr/sbin:/user/local/bin',
	cwd 		=> 'opt/facebook-master',
	user 		=> 'root',
	onlyif 		=> 'rest -f /opt/.facebook_compile',
}

exec { 'run_facebook': 

	command		=> 'bin/facebook 16000 &',
	path 		=> '/usr/bin:/usr/sbin:/user/local/bin:/opt/facebook-master',
	cwd 		=> '/opt/facebook-master',
	user		=> 'root',
	unless		=> 'nestat -an | grep 1600 | grep -i listen',
}