# puzzle-docker
Here is where I am creating a base docker for technology puzzles. I will
use serverspec and docker-spec to test drive the functionality.

## basic configuration
- ubuntu 18.04
- less
- vim
- user pillar in sudoers wheel group
- git
- bash completion
- git completion

## experiences
To create a user with a password that works, the -p option for useradd
is incorrect. `-p` requires an encrypted password. The other way is to
use the passwd command as in the following example:
```
useradd <username> ; echo -e "<newpassword>\n<newpassword>" | passwd username
```
