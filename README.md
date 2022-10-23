# Virtualisation


### Important commands in linux to remember  

- check internet connectivity `sudo apt-get update`

- Run upgrade `sudo apt-get upgrade -y`

- Where am i `pwd` give you your current location

- Whomai `uname` or `uname -a`

- How to create a file in linux `touch filename` & `nano filename`

- How to check file/folder available in current location `ls` or to check all files hidden files as well `ls -a`

- How to create a folder `mkdir fodler-name`

- How navigate to the folder `cd folder-name`

- How to navigate back/out `cd ..` or `cd` Enter

- How to delete a file/folder `rm -rf file/foldername`

- Research how to copy file from 1 location to another

- copy test.txt into app folder

- How to navigate between OS & VM `exit` Enter

- for Admin access `sudo` switch to admin user `sudo su`

- change permission `chmod instruction file-name` i.e `chmod 700 test.text`

- Currently running process `top` & `ps aux`

- To remove any process `kill PID` - `kill 7`

- how to delete folder/hidden folder `ls -a`

- print last 3 lines from the test.txt

- print first 3 lines from the test.txt

- print last 10 lines from the test.txt

- print last  lines from the test.txt

- Research how to use `| pipe` & `grep` & `sort`

- `ps aux` short list by name

- How to create/run a process in the background & foreground, create/run a process in both areas

- kill the process that you created

- Install `nginx` in our VM

- create a `private-network` betweek localhost&vm

- allocate an IP address - for mac users 

- `sudo apt-get install nginx -y`

- How to check a tool/software status in linux `sudo systemctl status nginx`

- How to restart a process in Linux `

- Mac ip ranges `192.168.56.10` `192.168.56.11` `192.168.56.12`

- `vagrant reload` or `vagrant destroy` then `vagrant up` 

- `rm -rf .vagrant` then `vagrant up`

## Task

- print last 3 lines from test.txt 
- Answer: tail -3 test.txt 
  
- print first 3 lines from test.txt
- Answer: head -3 test.txt
  
- print last 10 lines from the test.txt
- Answer: tail -10 test.txt 
  
- print last lines from the test.txt
- Answer: tail -1 test.txt
- research how to use `| pipe` &`grep` & `sort`
- `| pipe` 
- `grep` 
- `sort`
- A:pipe - sends the output of one command to another/ COMBINES 2 commands 

- A:grep -  It lets you find a word by searching through all the texts in a specific file.

- A:sort -  sorts the contents of a text file, line by line

- `ps-aux` sort list by name - ps aux --sort user

- How to create/run a process in the background & foreground, create/run a 
process in $

- kill the process that you created


## What is virtualisation & benefits of it?

- Virtualization relies on software to simulate hardware functionality and create a virtual computer system. This enables IT organizations to run more than one virtual system – and multiple operating systems and applications – on a single server. 

### Benefits of virtualisation

- Greater efficiency.
- Increased flexibility
- Better security
- Improved performance
- Improved availability
- Saving money 

## What is dev env?

A development environment in software and web development is a workspace for developers to make changes without breaking anything in a live environment.

## What is vagrant?
Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time

## What is a virtual box?
VirtualBox is open-source software for virtualizing the x86 computing architecture. It acts as a hypervisor, creating a VM (virtual machine) where the user can run another OS (operating system).

<img width="586" alt="Screenshot 2022-10-18 at 17 39 14" src="https://user-images.githubusercontent.com/115224560/196491547-0b097c60-6f5b-4e7f-a161-2b8c823a5508.png">


### My diagram:

<img width="845" alt="Screenshot 2022-10-19 at 09 13 29" src="https://user-images.githubusercontent.com/115224560/196635128-4026201e-abba-421b-b727-70fcd4a291c7.png">

### Link to repo to install and set up RUBY,VAGRANT AND VIRTUALBOX

- ---------------

BASH scripting – file.sh


`#!/bin/bash` this is must be the first line

Change permission so that file is executable  chmod +x file.sh

to run sudo ./provision.sh

-----------------
 

 `/var/log/nginx`

 store a copy of the log on the cloud 

 `sudo rm /etc/nginx/sites-available/default`

 -repalce it with your own file `sudo cp exisitng-location /etc/nginx/sites-available/default`

 - `sudo nginx -t`
 - restart `sudo systemctl restart nginx`
 - - Enable `sudo systemctl enablec nginx`


---------- 
Linux Enviroment var

- syntax NAME = Abdullah 
- How to check existing env var `env`
- `export` to create env var 
- `printenv` var
- `export DB_HOST=DB-IP:27017
  
  
  ### Permanentaly add env var

- Open the file `sudo nano /etc/environment`

- Add the variable `MY_VAR=hello`

- Save the file `ctrl + x` and `y`

- Close the terminal and open a new one

- Check if the variable is set `echo $MY_VAR` or `printenv`

### Method 2:

https://phoenixnap.com/kb/linux-set-environment-variable

DB_HOST=DB-IP:27017

STEP 1 : Create 2 VMs 1.1 set up an in app machine 
1.2 install mongoDB in db machine 

Step2: Install required of monogoDB  with valid key

Step3: Ensure it's running -3.1 change mongob.conf file to allow access to everyone 

Step4:restart mongoDB then enable then check status to ensure it's running with new config. cat mongob.conf  

back to app machine to create env var called 

export DB_HOST="mongodb//192.168.33.150:27017/posts"


`sudo systemctl status mongod`
`sudo systemctl restart mongod`
`sudo systemctl enable mongod`

- back to app machine 
- create an env var called DB_HOST=mongofb://192.168.56.13:27017/posts
- `printenv DB_HOST`

----------
