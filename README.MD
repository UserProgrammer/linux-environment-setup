## Overview

## :package: Package Managers 

### SDKMan - SDK Manager
`curl -s "https://get.sdkman.io" | bash`

---

## PPAs (Personal Packager Archives)

### Yubico - Yubikey: Hardware authentication devices
`add-apt-repository ppa:yubico/stable`

https://launchpad.net/~yubico/+archive/ubuntu/stable

### Jetbrains
```
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com any main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
```

https://github.com/JonasGroeger/jetbrains-ppa

### KeyPassXC
`add-apt-repository ppa:phoerious/keepassxc`

https://keepassxc.org/blog/2017-10-25-ubuntu-ppa/

---

## SDKs

### Java
`sdk install java 21.0.2-open`

### Python 3
`apt install python3`

---

## CLI Tools

### NeoVIM ```apt install neovim```
### Silver Searcher `apt install silversearcher-ag`
### Tree `apt install tree`