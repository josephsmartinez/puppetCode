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