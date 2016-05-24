Packages needed:

	perl-DateTime
	liberation-sans-fonts
	gnuplot
	bc

To setup:

	cp bin/copy-to-website.example bin/copy-to-website
	# edit bin/copy-to-website to copy the files to your website
	cp titles.example titles
	# edit titles to have the IPs and hostnames of your remote clocks
	cp -a runX run1
	# edit run1/index.html.tmpl to show the graphs for the IPs of the remote clocks
	# decide if you're running this graphing program on the ntp server or a different machine
	# same machine: edit bin/run if your logdir is different: LOGDIR=/var/log/ntpstats
	# different machine: see bin/copy-logfiles.example, create bin/copy-logfiles
	# if you query ntp servers with multiple IPs (such as IPv4+IPv6), see aliases.example

To run (under screen/tmux):

	cd run1 ; ../bin/loop
	# you can use the file run1/notes to keep track of any changes made, they get added to the HTML

Optional scripts:

	run1/startime - you can set the start time to filter the log files
	run1/custom-plot - create this script to generate your own custom plots
