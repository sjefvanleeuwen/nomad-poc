```
cube3@omen:/mnt/c/source/nomad-poc$ wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install nomad
--2025-01-15 12:25:41--  https://apt.releases.hashicorp.com/gpg
[sudo] password for cube3: Resolving apt.releases.hashicorp.com (apt.releases.hashicorp.com)... 18.239.18.10, 18.239.18.66, 18.239.18.14, ...
Connecting to apt.releases.hashicorp.com (apt.releases.hashicorp.com)|18.239.18.10|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 3980 (3.9K) [binary/octet-stream]
Saving to: ‘STDOUT’

-                                                              100%[===================================================================================================================================================>]   3.89K  --.-KB/s    in 0s      

2025-01-15 12:25:41 (2.80 GB/s) - written to stdout [3980/3980]


Sorry, try again.
[sudo] password for cube3: 
deb [arch=amd64 signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [2276 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [382 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [2877 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [501 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1181 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [289 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [44.5 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse Translation-en [11.5 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [67.7 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [28.9 kB]
Get:14 https://apt.releases.hashicorp.com jammy InRelease [12.9 kB]
Get:15 https://apt.releases.hashicorp.com jammy/main amd64 Packages [165 kB]                                                                                                                                                                               
Get:22 http://security.ubuntu.com/ubuntu jammy-security/universe Translation-en [204 kB]
Get:23 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [37.6 kB]
Fetched 15.0 MB in 11s (1313 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
95 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  nomad
0 upgraded, 1 newly installed, 0 to remove and 95 not upgraded.
Need to get 51.6 MB of archives.
After this operation, 121 MB of additional disk space will be used.
Get:1 https://apt.releases.hashicorp.com jammy/main amd64 nomad amd64 1.9.5-1 [51.6 MB]
Fetched 51.6 MB in 20s (2613 kB/s)
Selecting previously unselected package nomad.
(Reading database ... 31420 files and directories currently installed.)
Preparing to unpack .../nomad_1.9.5-1_amd64.deb ...
Unpacking nomad (1.9.5-1) ...
Setting up nomad (1.9.5-1) ...
cube3@omen:/mnt/c/source/nomad-poc$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
OK
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
Repository: 'deb [arch=amd64] https://apt.releases.hashicorp.com jammy main'
Description:
Archive for codename: jammy components: main
More info: https://apt.releases.hashicorp.com
Adding repository.
Press [ENTER] to continue or Ctrl-c to cancel.                                                  
Adding deb entry to /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list
Adding disabled deb-src entry to /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 https://apt.releases.hashicorp.com jammy InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt-get update && sudo apt-get install packer
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 https://apt.releases.hashicorp.com jammy InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  packer
0 upgraded, 1 newly installed, 0 to remove and 95 not upgraded.
Need to get 15.4 MB of archives.
After this operation, 49.7 MB of additional disk space will be used.
Get:1 https://apt.releases.hashicorp.com jammy/main amd64 packer amd64 1.11.2-1 [15.4 MB]
Fetched 15.4 MB in 12s (1257 kB/s)
Selecting previously unselected package packer.
(Reading database ... 31428 files and directories currently installed.)
Preparing to unpack .../packer_1.11.2-1_amd64.deb ...
Unpacking packer (1.11.2-1) ...
Setting up packer (1.11.2-1) ...
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 https://apt.releases.hashicorp.com jammy InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
gnupg is already the newest version (2.2.27-3ubuntu2.1).
gnupg set to manually installed.
The following packages will be upgraded:
  python3-software-properties software-properties-common
2 upgraded, 0 newly installed, 0 to remove and 93 not upgraded.
Need to get 42.9 kB of archives.
After this operation, 0 B of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 software-properties-common all 0.99.22.9 [14.1 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 python3-software-properties all 0.99.22.9 [28.8 kB]
Fetched 42.9 kB in 0s (527 kB/s)
(Reading database ... 31431 files and directories currently installed.)
Preparing to unpack .../software-properties-common_0.99.22.9_all.deb ...
Unpacking software-properties-common (0.99.22.9) over (0.99.22.8) ...
Preparing to unpack .../python3-software-properties_0.99.22.9_all.deb ...
Unpacking python3-software-properties (0.99.22.9) over (0.99.22.8) ...
Setting up python3-software-properties (0.99.22.9) ...
Setting up software-properties-common (0.99.22.9) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for dbus (1.12.20-2ubuntu4.1) ...
cube3@omen:/mnt/c/source/nomad-poc$ wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
--2025-01-15 12:28:29--  https://apt.releases.hashicorp.com/gpg
Resolving apt.releases.hashicorp.com (apt.releases.hashicorp.com)... 18.239.18.66, 18.239.18.49, 18.239.18.14, ...
Connecting to apt.releases.hashicorp.com (apt.releases.hashicorp.com)|18.239.18.66|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 3980 (3.9K) [binary/octet-stream]
Saving to: ‘STDOUT’

-                                                              100%[===================================================================================================================================================>]   3.89K  --.-KB/s    in 0s       

2025-01-15 12:28:29 (1.09 GB/s) - written to stdout [3980/3980]

cube3@omen:/mnt/c/source/nomad-poc$ gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
gpg: directory '/home/cube3/.gnupg' created
gpg: /home/cube3/.gnupg/trustdb.gpg: trustdb created
/usr/share/keyrings/hashicorp-archive-keyring.gpg
-------------------------------------------------
pub   rsa4096 2023-01-10 [SC] [expires: 2028-01-09]
      798A EC65 4E5C 1542 8C8E  42EE AA16 FCBC A621 E701
uid           [ unknown] HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>
sub   rsa4096 2023-01-10 [S] [expires: 2028-01-09]

cube3@omen:/mnt/c/source/nomad-poc$ echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
0% [Working]sudo apt-get install terraform
Hit:4 https://apt.releases.hashicorp.com jammy InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
93 packages can be upgraded. Run 'apt list --upgradable' to see them.
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
cube3@omen:/mnt/c/source/nomad-poc$ terraform -help
Command 'terraform' not found, but can be installed with:
sudo snap install terraform
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
0% [Working]sudo apt-get install terraform
0% [Working]
Hit:4 https://apt.releases.hashicorp.com jammy InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
93 packages can be upgraded. Run 'apt list --upgradable' to see them.
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Packages (main/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
W: Target CNF (main/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list.d/archive_uri-https_apt_releases_hashicorp_com-jammy.list:1 and /etc/apt/sources.list.d/hashicorp.list:1
cube3@omen:/mnt/c/source/nomad-poc$ sudo apt-get install terraform
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  terraform
0 upgraded, 1 newly installed, 0 to remove and 93 not upgraded.
Need to get 27.4 MB of archives.
After this operation, 90.2 MB of additional disk space will be used.
Get:1 https://apt.releases.hashicorp.com jammy/main amd64 terraform amd64 1.10.4-1 [27.4 MB]
Fetched 27.4 MB in 14s (1955 kB/s)
Selecting previously unselected package terraform.
(Reading database ... 31431 files and directories currently installed.)
Preparing to unpack .../terraform_1.10.4-1_amd64.deb ...
Unpacking terraform (1.10.4-1) ...
Setting up terraform (1.10.4-1) ...
cube3@omen:/mnt/c/source/nomad-poc$ terraform -help
Usage: terraform [global options] <subcommand> [args]

The available commands for execution are listed below.
The primary workflow commands are given first, followed by
less common or more advanced commands.

Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure

All other commands:
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  metadata      Metadata related commands
  modules       Show all declared modules in a working directory
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Execute integration tests for Terraform modules
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management

Global options (use these before the subcommand, if any):
  -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.
cube3@omen:/mnt/c/source/nomad-poc$ touch ~/.bashrc
cube3@omen:/mnt/c/source/nomad-poc$ terraform -install-autocomplete
cube3@omen:/mnt/c/source/nomad-poc$ nomad -v
Nomad v1.9.5
BuildDate 2025-01-14T18:35:12Z
Revision 0b7bb8b60758981dae2a78a0946742e09f8316f5+CHANGES
cube3@omen:/mnt/c/source/nomad-poc$ git clone https://github.com/hashicorp-education/learn-nomad-cluster-setup
Cloning into 'learn-nomad-cluster-setup'...
remote: Enumerating objects: 319, done.
remote: Counting objects: 100% (160/160), done.
remote: Compressing objects: 100% (56/56), done.
remote: Total 319 (delta 125), reused 104 (delta 104), pack-reused 159 (from 1)
Receiving objects: 100% (319/319), 64.33 KiB | 2.38 MiB/s, done.
Resolving deltas: 100% (196/196), done.
cube3@omen:/mnt/c/source/nomad-poc$ cd learn-nomad-cluster-setup
cube3@omen:/mnt/c/source/nomad-poc/learn-nomad-cluster-setup$ cd azure
cube3@omen:/mnt/c/source/nomad-poc/learn-nomad-cluster-setup/azure$ mv variables.hcl.example variables.hcl
cube3@omen:/mnt/c/source/nomad-poc/learn-nomad-cluster-setup/azure$ terraform init
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/azuread...
- Finding hashicorp/random versions matching ">= 2.0.0"...
- Finding hashicorp/azurerm versions matching "3.0.0"...
- Installing hashicorp/azuread v3.0.2...
- Installed hashicorp/azuread v3.0.2 (signed by HashiCorp)
- Installing hashicorp/random v3.6.3...
- Installed hashicorp/random v3.6.3 (signed by HashiCorp)
- Installing hashicorp/azurerm v3.0.0...
- Installed hashicorp/azurerm v3.0.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
cube3@omen:/mnt/c/source/nomad-poc/learn-nomad-cluster-setup/azure$ terraform apply -target='azurerm_resource_group.hashistack' -var-file=variables.hcl

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.hashistack will be created
  + resource "azurerm_resource_group" "hashistack" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "hashistack"
    }

Plan: 1 to add, 0 to change, 0 to destroy.
╷
│ Warning: Resource targeting is in effect
│
│ You are creating a plan with the -target option, which means that the result of this plan may not represent all of the changes requested by the current configuration.
│
│ The -target option is not for routine use, and is provided only for exceptional situations such as recovering from errors or mistakes, or when Terraform specifically suggests to use it as part of an error message.
╵

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.hashistack: Creating...
azurerm_resource_group.hashistack: Creation complete after 2s [id=/subscriptions/2807ca51-25de-4598-bb76-932840d9c043/resourceGroups/hashistack]
╷
│ Warning: Applied changes may be incomplete
│
│ The plan was created with the -target option in effect, so some changes requested in the configuration may have been ignored and the output values may not be fully updated. Run the following command to verify that no other changes are pending:      
│     terraform plan
│
│ Note that the -target option is not suitable for routine use, and is provided only for exceptional situations such as recovering from errors or mistakes, or when Terraform specifically suggests to use it as part of an error message.
╵

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
cube3@omen:/mnt/c/source/nomad-poc/learn-nomad-cluster-setup/azure$
```