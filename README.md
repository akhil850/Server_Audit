# Linux Basic Security Setup v1.3

![License: AGPL v3](https://img.shields.io/github/license/akhil850/Server_Audit)

Script Automates commonly used linux server secuirty setups.

1.Full System Update
2.Disabling SELINUX
3.SSH Port changing
4.Rkhunter Installation
5.CSF Installation
6.Adding Admin and Cloudflare IPs

### Tech

Used a number of open source projects to work properly:

* [Curl] - cURL is a computer software project providing a library and command-line tool for transferring data using various network protocols.
* [bash] - command language interpreter

And of course Linux Basic Security Setup v1.3 itself is open source with a public repository on [GitHub](git-repo-url)

### Execution

Script requires [curl](https://curl.haxx.se/) to run.

Install the dependencies and and start the server.

```sh
[centos]
$ yum install curl

[Debian Linux 10/9/8]
$ sudo apt-get install curl
```

Execute the script...

```sh
$ curl -s https://raw.githubusercontent.com/akhil850/Server_Audit/master/SecureServer.sh | bash
```

### Development

Want to contribute? Great!


**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note)

[Server_Audit]: <https://github.com/akhil850/Server_Audit>
[git-repo-url]: <https://github.com/akhil850/Server_Audit.git>
