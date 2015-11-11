An Archivematica instance running on 64-bit Ubuntu 14.04
using 4 GB RAM and 2 CPU's configured according to

https://www.archivematica.org/en/docs/archivematica-1.4/admin-manual/installation/installation/#install-new

You will need the newest release of vagrant and virtualbox
installed on the host system first.

Use

    vagrant up

to download dependencies and start Archivematica.

http://localhost:8080 corresponds to Archivematica.
http://localhost:8000 corresponds to Archivematica Storage Server.

Use

    vagrant halt

to stop the virtual machine.
