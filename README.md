# Perl-scanner
#!/usr/bin/perl
# The above line may need to be changed to point at your version of Perl
#
#	This script attempts to find malicious files/scripts on your machine.
#	It specifically looks for spambots that we're aware of, as well
#	as "suspicious" constructs in various scripting languages.
#
#	Normally it should be run as root.
#
#	By default, findbot.pl scans the directories /tmp, /usr/tmp, /home and
#	/var/www.  This script isn't fast.  So if you know where to look you can
#	speed things up by giving just the directories that you suspect has the
#	malware.
#
#	You can often find out what user is infected by using:
#		lsof -i | grep smtp
#	and looking for processes that are NOT your mail server.
#
#	If you're successful finding the user, you need to look everywhere the user
#	has write permissions - and you can run findbot.pl faster, by something like:
#
#	findbot.pl /tmp /usr/tmp /home/<user> <user's web directory>
#
#	There are two types of "detections" - "suspicious files" are files that contain
#	things that -may- be malicious.
#	"malware" is definitely malicious software.
#
#	This script needs the following command line utilities.  It will not run
#	if it can't find them, you will have to install them yourself:
#		- "md5sum" (Linux) or "md5" (FreeBSD etc) this appears to be standard
#			core utilities.
#		- "strings" - on Linux this is in the "binutils" package
#		- "file" - on Linux this is in the "file" package.
#
# Usage:
#	findbot.pl [directories...]
#
#	If a list of directories is supplied, it's used, otherwise,
#	/tmp, /usr/tmp, /home and /var/www are use by default.
#
# Very simple web malware detection module.
# Version 0.02 2013/01/02 Ray
# .01 -> .02:
#	- more strings of bad software
#	- search for encoded perl scripts
# .02 -> .03: 2013/01/10 Ray
#	- speed up
#	- MD5 stuff
# .03 -> .04: 2013/01/13 Ray
#	- improved docs
# .04 -> .005: 2013/01/20 Ray
#	- more patterns
#	- MAXLINES way too small
