Useful Commands:

--------------------------------------------------------------------------------
Time Zones

	available timezones
	#timedatectl list-timezones

--------------------------------------------------------------------------------
Firewall Commands

https://www.ibm.com/support/knowledgecenter/en/STXKQY_5.0.0/com.ibm.spectrum.scale.v5r00.doc/bl1adv_firewallportopenexamples.htm

--------------------------------------------------------------------------------
Puppet Certs

Puppet cert signing
https://linuxconfig.org/puppet-agent-exiting-no-certificate-found-and-waitforcert-is-disabled-solution

	# puppet cert sign agent1

Notice: Signed certificate request for agent1
Notice: Removing file Puppet::SSL::CertificateRequest agent1
at '/etc/puppetlabs/puppet/ssl/ca/requests/agent1.pem'

	# puppet cert sign --all

--------------------------------------------------------------------------------
Puppet Fire Walls

Puppet master/agent communication (FIRE WALLS and PORTS)
https://puppet.com/docs/puppet/5.3/quick_start_master_agent_communication.html#opening-port-8140-on-your-firewall

--------------------------------------------------------------------------------
OpenSSL

https://www.openssl.org/docs/man1.1.0/apps/openssl-passwd.html
openssl-passwd, passwd - compute password hashes

	# openssl passwd -1

--------------------------------------------------------------------------------
Code Compiling and validation

	Syntax checking
		# puppet parser validate [ file name .pp ]

	Applying Manifest
		(On the agent without cotacting master)
		# puppet apply

	(Apply by contacting the master)
	# puppet agent -t
		Options		
			-d, --debug
				--noop
			-v,	--verbose

--------------------------------------------------------------------------------
Shells

5 Most Frequently Used Open Source Shells for Linux
https://www.tecmint.com/different-types-of-linux-shells/

--------------------------------------------------------------------------------
Tree Command
 Tree is a recursive directory listing program that produces a depth-indentedl isting of files. 
https://www.geeksforgeeks.org/tree-command-unixlinux/

--------------------------------------------------------------------------------
figlet Command
Install Figlet on RHEL7

An easy and fun way to add fancy text to your motd or banner file in RHEL7 or CentOS7.
http://www.ananimuss.com/2018/01/20/install-figlet-on-rhel7-or-centos7/

--------------------------------------------------------------------------------
