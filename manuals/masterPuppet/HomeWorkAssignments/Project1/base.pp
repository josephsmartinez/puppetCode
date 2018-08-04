# Project goal: 
# Add user => mike
# install package => tree, git, ntp, wget, unzip
# add file '/etc/motd' => "Property of mike"
# start service => ntp

user { 'mike':
	
	# Arributes 
	name => 'mbrown',	   		# Restrict name to lowest common 8 bit denominator
	ensure => present,	   		# Basic state that the object should be in
	comment => 'Mike Brown',  		# User's full name
#	expiry => /^\d{2018}-\d{08}-\d{06}$/,	# The expiry date for this user YYYY-MM-DD
	gid => 10, 				# The users primary group id
	groups => wheel,			# The users primary group name
	home => '/home/mbrown',			# The users home directory
	password => '$1$sRaBpvSK$zt26BUQ3OpN3CrojPpidY1', # Encrypted password format 
	shell => '/bin/bash', 			# The users login shell
	uid => 1001,				# User ID, automatic if not supplied 
	managehome => true,
}

# Packages to install: 

package { 'tree':
	ensure => 'installed',
}

package { 'git':
        ensure => 'installed',
}

package { 'ntp':
        ensure => 'installed',
}

package { 'wget':
        ensure => 'installed',
}

package { 'unzip':
        ensure => 'installed',
}

# Packeage to install (option II)
# package{['tree','wget','git','unzip','ntp']:}


file { '/etc/motd':
	ensure => 'present',
	owner => 'root',
	group => 'root',
	mode => '0644',
#	owner => 'mbrown',
	content => '

     ##############################################################
        Welcome to the College of Arts, Sciences, and Education
     ##############################################################

',
}

# Starting services

service { 'ntpd':
	ensure => 'running',
	enable => true,
}

	

