yum groupinstall -y "development tools"
yum install -y lsof wget vim-enhanced words which

yum install -y \
  libffi-devel \
  zlib-devel \
  bzip2-devel \
  openssl-devel \
  ncurses-devel \
  sqlite-devel \
  readline-devel \
  tk-devel \
  gdbm-devel \
  db4-devel \
  libpcap-devel \
  xz-devel \
  expat-devel

#set up bashrc
$ curl https://raw.githubusercontent.com/linuxacademy/content-python3-sysadmin/master/helpers/bashrc -o ~/.bashrc