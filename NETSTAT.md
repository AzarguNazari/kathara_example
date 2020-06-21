# Netstat Commands
Netstat stands for Network Statistics and its a command line for monitoring network connection both incoming and outgoing as well as viewing routing tables, interfaces statistics etc.
`netstat` is avaiable on all Unix-Lik operating systems and also available on Windows OS as well. It is very userful in terms of network troublesshotting and performance measurement. `netstat` is one of the most basic network service debuging tools, telling you what ports are open and whether any programs are listening on ports.

Also worth mention that `netstat` copmmand is replaced by new `ss` command, which is capable of displaying more information about network connection and it is much faster than the older `netstat` command.

This tool (`netstat`) is very important and much useful for Linux network administrators as well as system administrators to monityor and troubleshoot their network-related problems and determin network traffice performance. this article shows usages of `netstat` command with their examples which may be useful in daily operation.

- `netstat -a | more` Listening all ports both TCP and UDP 
- `netstat -at` Listening only TCP port connections
- `netstat -au` Listening only UDP port connections
- `netstat -l` Listening all active listening ports connection
- `netstat -lt` Active TCP port connection
- `netstat -lu` active UDP port connection
- `netstat -lx` Unix Listening port connection
- `netstat -s` statistics
- `netstat -st` statistics for TCP protocol
- `netstat -su` statistics for UDP protocols
- `netstat -r` display kernel IP routing

