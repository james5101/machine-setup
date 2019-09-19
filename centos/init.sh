yum groupinstall -y "development tools"
yum install -y lsof wget vim-enhanced words which

#set up bashrc
$ curl https://raw.githubusercontent.com/linuxacademy/content-python3-sysadmin/master/helpers/bashrc -o ~/.bashrc