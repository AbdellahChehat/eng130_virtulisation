
## Setup provisioning in `Vagrantfile` to automate all the installations

### First step is : Creating `provision.sh` file in the local host

- Include the `shebang` at the top of the file as its good practice
```
#!/bin/bash
```
###  The following code is what is included in the `provision.sh` 

- Update system & than Upgrade it
```
sudo apt-get update -y   # -y flag is for yes to any prompt
sudo apt-get upgrade -y
```

- Install web-server `Nginx` start it and enable it
```
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

- Install `Python`
```
sudo apt-get install python -y
sudo apt-get install python-software-properties
```

- Install node.js - get node setup file using curl
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
```

- Install node.js

```
sudo apt-get install nodejs -y
```

- Install Process Manager
```
sudo npm install pm2 -g
```

- Navigate to the `app` directory
```
cd app
cd app
```

- Install NPM 
```
sudo npm install
```



### Add the following lines into the `Vagrantfile`

- Add the following code to the `Vagrantfile`
```

 config.vm.provision "shell", path: "provision.sh"
```

### Final steps:

- `vagrant destroy`  make sure spell destroy correctly
- `vagrant up` Create a virtualmachine again
- `vagrant status` Ensure it's running 
- `vagrant ssh` 
- Inside the vm cd into the app folder 
- Finally run  `npm start`