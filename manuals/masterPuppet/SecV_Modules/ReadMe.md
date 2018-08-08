
<h1>Modules</h1><br>
<ol>
	<li>Anatomoy of a Module and Modulepath Configurations</li>
	<li>Generating Modules</li>
	<li> Classes, Naming Convention and Strategies</li>
	<li> Creating java::install class, Classifying Node with Node Definitions</li>
	<li> Using Default Block, Adding Checkpoints with Notify Resource, Classification</li>
	<li> Ordering, Notifications and Meta Parameters</li>
	<li> Exercise - Creating Tomcat Classes</li>
	<li> Solution to Tomcat Exercise</li>
	<li> Using init.pp , Defining Dependencies</li>
	<li> Managing Configurations</li>
	 <li>Lab: Modules</li>
	<li> Slides: Creating Modular Code</li>
 </ol>

--------------------------------------------------------------------------------
Generating module

	# puppet module generate user-java

	# puppet module generate --skip-interview user-tomcat


NOTE!

Warning: `puppet module generate` is deprecated and will be removed in a future release. This action has been replaced by Puppet Development Kit. For more information visit

	https://puppet.com/docs/pdk/1.x/pdk.html


--------------------------------------------------------------------------------
Class format example

	class java::install {
		package{["epel-release", "java-1.7.0-openjdk"]:
			# The below can be removed, as the default is to install
			# ensure => installed,
		}
	}


--------------------------------------------------------------------------------

Node Definition

<strong>Mapping between the node and class and knows what to pull and apply.</strong>

	node <--------------> list of classes
	node 'nodename' {												---------> simple
		include class 1
		include class 2
		include class 3, class 4
		class {'class3':
			param1 => val1
			param2 => val2
			param3 => val3
		}
	}

	node 'app1.example.io','app2.example.io', 'app3.example.io'{	---------> groups
		include class 1    
		include class 2
	}

	node /^(app|web)\.bir\b+.example\.io$/ {						---------> regex
	  	include class 1
		include class 2
	}


Example of the node declaring

		node 'node1' {

		include java::install

	}

--------------------------------------------------------------------------------
