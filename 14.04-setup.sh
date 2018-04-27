# This installation script is designed for and tested on Ubuntu 14.04 x64 kernel 4.4.0-121 generic

# Optimized for Chinese Mainland ISP --------------------------------------------------------------------------------------------------------
# Backup
cp /etc/apt/sources.list /etc/apt/sources.list.bak 
# `sources.list` Modify START 
echo "\
# UTSC
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty-proposed main restricted universe multiverse 
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty-updates main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty-proposed main restricted universe multiverse 
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty-backports main restricted universe multiverse
# 163
deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse
# Aliyun
deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse 

#deb cdrom:[Ubuntu 14.04.5 LTS _Trusty Tahr_ - Release amd64 (20160803)]/ trusty main restricted

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates main restricted

### N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
### team. Also, please note that software in universe WILL NOT receive any
### review or updates from the Ubuntu security team.
#deb http://us.archive.ubuntu.com/ubuntu/ trusty universe
#deb-src http://us.archive.ubuntu.com/ubuntu/ trusty universe
#deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe
#deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe

### N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
### team, and may not be under a free licence. Please satisfy yourself as to 
### your rights to use the software. Also, please note that software in 
### multiverse WILL NOT receive any review or updates from the Ubuntu
### security team.
#deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
#deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
#deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
#deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse

### N.B. software from this repository may not have been tested as
### extensively as that contained in the main release, although it includes
### newer versions of some applications which may provide useful features.
### Also, please note that software in backports WILL NOT receive any review
### or updates from the Ubuntu security team.
#deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse
#deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu trusty-security main restricted
deb-src http://security.ubuntu.com/ubuntu trusty-security main restricted
deb http://security.ubuntu.com/ubuntu trusty-security universe
deb-src http://security.ubuntu.com/ubuntu trusty-security universe
deb http://security.ubuntu.com/ubuntu trusty-security multiverse
deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu trusty partner
# deb-src http://archive.canonical.com/ubuntu trusty partner

## This software is not part of Ubuntu, but is offered by third-party
## developers who want to ship their latest software.
deb http://extras.ubuntu.com/ubuntu trusty main
deb-src http://extras.ubuntu.com/ubuntu trusty main">sources.list
# `sources.list` Modify END 
# Overwrite sources.list file
cp -f sources.list /etc/apt/sources.list

# Flush --------------------------------------------------------------------------------------------------------
sudo apt-get update

# Upgrade --------------------------------------------------------------------------------------------------------
sudo apt-get -y upgrade

# Common installs --------------------------------------------------------------------------------------------------------
# open terminal from right click menu
sudo apt-get install -y nautilus-open-terminal
# GUI VIM
sudo apt install -y vim-gtk vim-syntax-gtk vim-addon-manager vim-common
# Chromium
sudo apt install -y chromium-browser
# htop
sudo apt install -y htop
# unity tweak tool
sudo apt install -y unity-tweak-tool
# Flatabulous theme
add-apt-repository -y ppa:noobslab/themes
add-apt-repository -y ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y flatabulous-theme ultra-flat-icons
# git
sudo apt-get install -y git
git config --global user.name "sgyzetrov"
git config --global user.email "guoyang@webmail.hzau.edu.cn"
# zsh
sudo apt-get install -y zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc