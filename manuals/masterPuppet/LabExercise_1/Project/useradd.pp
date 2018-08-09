user {'deploy':

	ensure => present, 
	uid =>  5001,
	home => '/home/deploy'
	password => '$1$7vx0qG4u$oen/DvSe9YXRM0fZoxMUJ1'
	managehome => true,

}