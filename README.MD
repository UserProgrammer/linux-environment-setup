## Overview

<br/>

## :file_cabinet: Package Managers 

### SDKMan - SDK Manager
```
curl -s "https://get.sdkman.io" | bash
```
https://sdkman.io/

<br/>

## :package: PPAs (Personal Packager Archives)

### :card_index_dividers: Yubico - Yubikey: Hardware authentication devices
```
add-apt-repository ppa:yubico/stable
```

https://launchpad.net/~yubico/+archive/ubuntu/stable

### :card_index_dividers: Jetbrains
```
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com any main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
```

https://github.com/JonasGroeger/jetbrains-ppa

### :card_index_dividers: KeyPassXC
```
add-apt-repository ppa:phoerious/keepassxc
```

https://keepassxc.org/blog/2017-10-25-ubuntu-ppa/

<br/>

## SDKs

### :coffee: Java
```
sdk install java 21.0.2-open
```

### :snake: Python 3
```
apt install python3
```

<br/>

## :rocket: Applications
### :key: KeePassXC
```
apt install keepassxc
```

### :memo: Obsidian
```
apt install obsidian
```

### :pencil2: IntellijIDEA CE
```
apt install intellij-idea-community
```

<br/>

## :toolbox: CLI Tools
```
apt install neovim silversearcher-ag tree
```