# nomad-poc

1. Install Virtual Box 
https://www.virtualbox.org/wiki/Downloads

2. Install vagrant, as we are going to create a VM that will run our nomad single node cluster. 
https://developer.hashicorp.com/vagrant/downloads

Please install the one for your OS.




```
vagrant up
```

Logging into vagrant box.

```
vagrant ssh
```

```
Welcome to Ubuntu 22.04.4 LTS (GNU/Linux 5.15.0-116-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon Jan 13 05:42:29 PM UTC 2025

  System load:           0.14
  Usage of /:            15.9% of 30.34GB
  Memory usage:          29%
  Swap usage:            0%
  Processes:             149
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd00::a00:27ff:fec8:9864


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
vagrant@vagrant:~$ nomad --version
Nomad v1.3.1 (2b054e38e91af964d1235faa98c286ca3f527e56)
vagrant@vagrant:~$
```



output of installation

```
PS C:\source\nomad-poc> vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Box 'bento/ubuntu-22.04' could not be found. Attempting to find and install...
    default: Box Provider: virtualbox
    default: Box Version: >= 0
==> default: Loading metadata for box 'bento/ubuntu-22.04'
    default: URL: https://vagrantcloud.com/api/v2/vagrant/bento/ubuntu-22.04
==> default: Adding box 'bento/ubuntu-22.04' (v202407.23.0) for provider: virtualbox (amd64)
    default: Downloading: https://vagrantcloud.com/bento/boxes/ubuntu-22.04/versions/202407.23.0/providers/virtualbox/amd64/vagrant.box
    default:
==> default: Successfully added box 'bento/ubuntu-22.04' (v202407.23.0) for 'virtualbox (amd64)'!
==> default: Importing base box 'bento/ubuntu-22.04'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'bento/ubuntu-22.04' version '202407.23.0' is up to date...
==> default: Setting the name of the VM: nomad-poc_default_1736789464663_64542
Vagrant is currently configured to create VirtualBox synced folders with
the `SharedFoldersEnableSymlinksCreate` option enabled. If the Vagrant
guest is not trusted, you may want to disable this option. For more
information on this option, please refer to the VirtualBox manual:

  https://www.virtualbox.org/manual/ch04.html#sharedfolders

This option can be disabled globally with an environment variable:

  VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

or on a per folder basis within the Vagrantfile:

  config.vm.synced_folder '/host/path', '/guest/path', SharedFoldersEnableSymlinksCreate: false
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 4646 (guest) => 4646 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'bento/ubuntu-22.04' version '202407.23.0' is up to date...
==> default: Running provisioner: shell...
    default: Running: inline script
    default: Installing Docker...
    default: Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
    default: Hit:2 http://us.archive.ubuntu.com/ubuntu jammy InRelease
    default: Get:3 http://us.archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
    default: Get:4 http://us.archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
    default: Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [2,040 kB]
    default: Get:6 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [2,276 kB]
    default: Get:7 http://security.ubuntu.com/ubuntu jammy-security/main Translation-en [321 kB]
    default: Get:8 http://us.archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [382 kB]
    default: Get:9 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [2,772 kB]
    default: Get:10 http://us.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [2,877 kB]
    default: Get:11 http://us.archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [501 kB]
    default: Get:12 http://security.ubuntu.com/ubuntu jammy-security/restricted Translation-en [484 kB]
    default: Get:13 http://us.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1,181 kB]
    default: Get:14 http://us.archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [289 kB]
    default: Get:15 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [959 kB]
    default: Get:16 http://us.archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [44.5 kB]
    default: Get:17 http://us.archive.ubuntu.com/ubuntu jammy-updates/multiverse Translation-en [11.5 kB]
    default: Get:18 http://security.ubuntu.com/ubuntu jammy-security/universe Translation-en [204 kB]
    default: Get:19 http://us.archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [67.7 kB]
    default: Get:20 http://us.archive.ubuntu.com/ubuntu jammy-backports/main Translation-en [11.1 kB]
    default: Get:21 http://us.archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [28.9 kB]
    default: Get:22 http://us.archive.ubuntu.com/ubuntu jammy-backports/universe Translation-en [16.5 kB]
    default: Get:23 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [37.6 kB]
    default: Get:24 http://security.ubuntu.com/ubuntu jammy-security/multiverse Translation-en [8,260 B]
    default: Fetched 14.9 MB in 4s (4,209 kB/s)
    default: Reading package lists...
    default: Reading package lists...
    default: Building dependency tree...
    default: Reading state information...
    default: E: Unable to locate package docker-engine
    default: Reading package lists...
    default: Building dependency tree...
    default: Reading state information...
    default: software-properties-common is already the newest version (0.99.22.9).
    default: The following NEW packages will be installed:
    default:   apt-transport-https
    default: The following packages will be upgraded:
    default:   ca-certificates curl libcurl4
    default: 3 upgraded, 1 newly installed, 0 to remove and 77 not upgraded.
    default: Need to get 647 kB of archives.
    default: After this operation, 181 kB of additional disk space will be used.
    default: Get:1 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20240203~22.04.1 [162 kB]
    default: Get:2 http://us.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 apt-transport-https all 2.4.13 [1,510 B]
    default: Get:3 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 curl amd64 7.81.0-1ubuntu1.20 [194 kB]
    default: Get:4 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.20 [289 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 647 kB in 2s (332 kB/s)
(Reading database ... 44902 files and directories currently installed.)
    default: Preparing to unpack .../ca-certificates_20240203~22.04.1_all.deb ...
    default: Unpacking ca-certificates (20240203~22.04.1) over (20230311ubuntu0.22.04.1) ...
    default: Selecting previously unselected package apt-transport-https.
    default: Preparing to unpack .../apt-transport-https_2.4.13_all.deb ...
    default: Unpacking apt-transport-https (2.4.13) ...
    default: Preparing to unpack .../curl_7.81.0-1ubuntu1.20_amd64.deb ...
    default: Unpacking curl (7.81.0-1ubuntu1.20) over (7.81.0-1ubuntu1.16) ...
    default: Preparing to unpack .../libcurl4_7.81.0-1ubuntu1.20_amd64.deb ...
    default: Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.20) over (7.81.0-1ubuntu1.16) ...
    default: Setting up apt-transport-https (2.4.13) ...
    default: Setting up ca-certificates (20240203~22.04.1) ...
    default: Updating certificates in /etc/ssl/certs...
    default: rehash: warning: skipping ca-certificates.crt,it does not contain exactly one certificate or CRL
    default: 14 added, 5 removed; done.
    default: Setting up libcurl4:amd64 (7.81.0-1ubuntu1.20) ...
    default: Setting up curl (7.81.0-1ubuntu1.20) ...
    default: Processing triggers for man-db (2.10.2-1) ...
    default: Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
    default: Processing triggers for ca-certificates (20240203~22.04.1) ...
    default: Updating certificates in /etc/ssl/certs...
    default: 0 added, 0 removed; done.
    default: Running hooks in /etc/ca-certificates/update.d...
    default: done.
    default: 
    default: Running kernel seems to be up-to-date.
    default:
    default: No services need to be restarted.
    default:
    default: No containers need to be restarted.
    default:
    default: No user sessions are running outdated binaries.
    default:
    default: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    default: Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
    default: OK
    default: Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
    default: pub   rsa4096 2017-02-22 [SCEA]
    default:       9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
    default: uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
    default: sub   rsa4096 2017-02-22 [S]
    default:
    default: Get:1 https://download.docker.com/linux/ubuntu jammy InRelease [48.8 kB]
    default: Hit:2 http://us.archive.ubuntu.com/ubuntu jammy InRelease
    default: Hit:3 http://security.ubuntu.com/ubuntu jammy-security InRelease
    default: Hit:4 http://us.archive.ubuntu.com/ubuntu jammy-updates InRelease
    default: Get:5 https://download.docker.com/linux/ubuntu jammy/stable amd64 Packages [42.5 kB]
    default: Hit:6 http://us.archive.ubuntu.com/ubuntu jammy-backports InRelease
    default: Fetched 91.3 kB in 1s (101 kB/s)
    default: Reading package lists...
    default: W: https://download.docker.com/linux/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
    default: Repository: 'deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable'
    default: Description:
    default: Archive for codename: jammy components: stable
    default: More info: https://download.docker.com/linux/ubuntu
    default: Adding repository.
    default: Adding deb entry to /etc/apt/sources.list.d/archive_uri-https_download_docker_com_linux_ubuntu-jammy.list
    default: Adding disabled deb-src entry to /etc/apt/sources.list.d/archive_uri-https_download_docker_com_linux_ubuntu-jammy.list
    default: Hit:1 https://download.docker.com/linux/ubuntu jammy InRelease
    default: Hit:2 http://security.ubuntu.com/ubuntu jammy-security InRelease
    default: Hit:3 http://us.archive.ubuntu.com/ubuntu jammy InRelease
    default: Hit:4 http://us.archive.ubuntu.com/ubuntu jammy-updates InRelease
    default: Hit:5 http://us.archive.ubuntu.com/ubuntu jammy-backports InRelease
    default: Reading package lists...
    default: W: https://download.docker.com/linux/ubuntu/dists/jammy/InRelease: Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg), see the DEPRECATION section in apt-key(8) for details.
    default: Reading package lists...
    default: Building dependency tree...
    default: Reading state information...
    default: The following additional packages will be installed:
    default:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
    default:   docker-compose-plugin libltdl7 libslirp0 pigz slirp4netns
    default: Suggested packages:
    default:   aufs-tools cgroupfs-mount | cgroup-lite
    default: The following NEW packages will be installed:
    default:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
    default:   docker-ce-rootless-extras docker-compose-plugin libltdl7 libslirp0 pigz
    default:   slirp4netns
    default: 0 upgraded, 10 newly installed, 0 to remove and 77 not upgraded.
    default: Need to get 124 MB of archives.
    default: After this operation, 446 MB of additional disk space will be used.
    default: Get:1 https://download.docker.com/linux/ubuntu jammy/stable amd64 containerd.io amd64 1.7.24-1 [29.5 MB]
    default: Get:2 http://us.archive.ubuntu.com/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
    default: Get:3 http://us.archive.ubuntu.com/ubuntu jammy/main amd64 libltdl7 amd64 2.4.6-15build2 [39.6 kB]
    default: Get:4 http://us.archive.ubuntu.com/ubuntu jammy/main amd64 libslirp0 amd64 4.6.1-1build1 [61.5 kB]
    default: Get:5 http://us.archive.ubuntu.com/ubuntu jammy/universe amd64 slirp4netns amd64 1.0.1-2 [28.2 kB]
    default: Get:6 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-buildx-plugin amd64 0.19.3-1~ubuntu.22.04~jammy [30.7 MB]
    default: Get:7 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-cli amd64 5:27.4.1-1~ubuntu.22.04~jammy [15.1 MB]
    default: Get:8 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce amd64 5:27.4.1-1~ubuntu.22.04~jammy [25.8 MB]
    default: Get:9 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-rootless-extras amd64 5:27.4.1-1~ubuntu.22.04~jammy [9,590 kB]
    default: Get:10 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-compose-plugin amd64 2.32.1-1~ubuntu.22.04~jammy [12.8 MB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 124 MB in 14s (8,792 kB/s)
    default: Selecting previously unselected package pigz.
(Reading database ... 44915 files and directories currently installed.)
    default: Preparing to unpack .../0-pigz_2.6-1_amd64.deb ...
    default: Unpacking pigz (2.6-1) ...
    default: Selecting previously unselected package containerd.io.
    default: Preparing to unpack .../1-containerd.io_1.7.24-1_amd64.deb ...
    default: Unpacking containerd.io (1.7.24-1) ...
    default: Selecting previously unselected package docker-buildx-plugin.
    default: Preparing to unpack .../2-docker-buildx-plugin_0.19.3-1~ubuntu.22.04~jammy_amd64.deb ...
    default: Unpacking docker-buildx-plugin (0.19.3-1~ubuntu.22.04~jammy) ...
    default: Selecting previously unselected package docker-ce-cli.
    default: Preparing to unpack .../3-docker-ce-cli_5%3a27.4.1-1~ubuntu.22.04~jammy_amd64.deb ...
    default: Unpacking docker-ce-cli (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Selecting previously unselected package docker-ce.
    default: Preparing to unpack .../4-docker-ce_5%3a27.4.1-1~ubuntu.22.04~jammy_amd64.deb ...
    default: Unpacking docker-ce (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Selecting previously unselected package docker-ce-rootless-extras.
    default: Preparing to unpack .../5-docker-ce-rootless-extras_5%3a27.4.1-1~ubuntu.22.04~jammy_amd64.deb ...
    default: Unpacking docker-ce-rootless-extras (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Selecting previously unselected package docker-compose-plugin.
    default: Preparing to unpack .../6-docker-compose-plugin_2.32.1-1~ubuntu.22.04~jammy_amd64.deb ...
    default: Unpacking docker-compose-plugin (2.32.1-1~ubuntu.22.04~jammy) ...
    default: Selecting previously unselected package libltdl7:amd64.
    default: Preparing to unpack .../7-libltdl7_2.4.6-15build2_amd64.deb ...
    default: Unpacking libltdl7:amd64 (2.4.6-15build2) ...
    default: Selecting previously unselected package libslirp0:amd64.
    default: Preparing to unpack .../8-libslirp0_4.6.1-1build1_amd64.deb ...
    default: Unpacking libslirp0:amd64 (4.6.1-1build1) ...
    default: Selecting previously unselected package slirp4netns.
    default: Preparing to unpack .../9-slirp4netns_1.0.1-2_amd64.deb ...
    default: Unpacking slirp4netns (1.0.1-2) ...
    default: Setting up docker-buildx-plugin (0.19.3-1~ubuntu.22.04~jammy) ...
    default: Setting up containerd.io (1.7.24-1) ...
    default: Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
    default: Setting up docker-compose-plugin (2.32.1-1~ubuntu.22.04~jammy) ...
    default: Setting up libltdl7:amd64 (2.4.6-15build2) ...
    default: Setting up docker-ce-cli (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Setting up libslirp0:amd64 (4.6.1-1build1) ...
    default: Setting up pigz (2.6-1) ...
    default: Setting up docker-ce-rootless-extras (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Setting up slirp4netns (1.0.1-2) ...
    default: Setting up docker-ce (5:27.4.1-1~ubuntu.22.04~jammy) ...
    default: Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
    default: Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
    default: Processing triggers for man-db (2.10.2-1) ...
    default: Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
    default: 
    default: Running kernel seems to be up-to-date.
    default: 
    default: No services need to be restarted.
    default:
    default: No containers need to be restarted.
    default:
    default: No user sessions are running outdated binaries.
    default:
    default: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    default: Docker version 27.4.1, build b9d17ea
    default: Reading package lists...
    default: Building dependency tree...
    default: Reading state information...
    default: curl is already the newest version (7.81.0-1ubuntu1.20).
    default: The following additional packages will be installed:
    default:   vim-common vim-runtime vim-tiny
    default: Suggested packages:
    default:   zip ctags vim-doc vim-scripts indent
    default: The following NEW packages will be installed:
    default:   unzip
    default: The following packages will be upgraded:
    default:   vim vim-common vim-runtime vim-tiny
    default: 4 upgraded, 1 newly installed, 0 to remove and 73 not upgraded.
    default: Need to get 9,527 kB of archives.
    default: After this operation, 386 kB of additional disk space will be used.
    default: Get:1 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim amd64 2:8.2.3995-1ubuntu2.21 [1,729 kB]
    default: Get:2 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-tiny amd64 2:8.2.3995-1ubuntu2.21 [708 kB]
    default: Get:3 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-runtime all 2:8.2.3995-1ubuntu2.21 [6,834 kB]
    default: Get:4 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-common all 2:8.2.3995-1ubuntu2.21 [81.5 kB]
    default: Get:5 http://us.archive.ubuntu.com/ubuntu jammy-updates/main amd64 unzip amd64 6.0-26ubuntu3.2 [175 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 9,527 kB in 2s (4,381 kB/s)
(Reading database ... 45181 files and directories currently installed.)
    default: Preparing to unpack .../vim_2%3a8.2.3995-1ubuntu2.21_amd64.deb ...
    default: Unpacking vim (2:8.2.3995-1ubuntu2.21) over (2:8.2.3995-1ubuntu2.17) ...
    default: Preparing to unpack .../vim-tiny_2%3a8.2.3995-1ubuntu2.21_amd64.deb ...
    default: Unpacking vim-tiny (2:8.2.3995-1ubuntu2.21) over (2:8.2.3995-1ubuntu2.17) ...
    default: Preparing to unpack .../vim-runtime_2%3a8.2.3995-1ubuntu2.21_all.deb ...
    default: Unpacking vim-runtime (2:8.2.3995-1ubuntu2.21) over (2:8.2.3995-1ubuntu2.17) ...
    default: Preparing to unpack .../vim-common_2%3a8.2.3995-1ubuntu2.21_all.deb ...
    default: Unpacking vim-common (2:8.2.3995-1ubuntu2.21) over (2:8.2.3995-1ubuntu2.17) ...
    default: Selecting previously unselected package unzip.
    default: Preparing to unpack .../unzip_6.0-26ubuntu3.2_amd64.deb ...
    default: Unpacking unzip (6.0-26ubuntu3.2) ...
    default: Setting up unzip (6.0-26ubuntu3.2) ...
    default: Setting up vim-common (2:8.2.3995-1ubuntu2.21) ...
    default: Setting up vim-runtime (2:8.2.3995-1ubuntu2.21) ...
    default: Setting up vim (2:8.2.3995-1ubuntu2.21) ...
    default: Setting up vim-tiny (2:8.2.3995-1ubuntu2.21) ...
    default: Processing triggers for man-db (2.10.2-1) ...
    default: 
    default: Running kernel seems to be up-to-date.
    default:
    default: No services need to be restarted.
    default:
    default: No containers need to be restarted.
    default:
    default: No user sessions are running outdated binaries.
    default:
    default: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    default: Installing Nomad...
    default: Archive:  nomad.zip
    default:   inflating: nomad
    default: Installing Consul...
    default: Archive:  /tmp/consul.zip
    default:   inflating: consul
    default:   [Unit]
    default:   Description=consul agent
    default:   Requires=network-online.target
    default:   After=network-online.target
    default:
    default:   [Service]
    default:   Restart=on-failure
    default:   ExecStart=/usr/bin/consul agent -dev
    default:   ExecReload=/bin/kill -HUP
    default:
    default:   [Install]
    default:   WantedBy=multi-user.target
    default: Created symlink /etc/systemd/system/multi-user.target.wants/consul.service → /etc/systemd/system/consul.service.
    default: Installing cfssl...
    default: Installing cfssl-certinfo...
    default: Installing cfssljson...
```