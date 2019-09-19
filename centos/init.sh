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

# install and config python 3 from src
# cd /usr/src
#  wget http://python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
#  tar xf Python-3.6.4.tar.xz
#  cd Python-3.6.4
#  ./configure --enable-optimizations
#  make altinstall
#  exit

#set up bashrc
$ curl https://raw.githubusercontent.com/linuxacademy/content-python3-sysadmin/master/helpers/bashrc -o ~/.bashrc