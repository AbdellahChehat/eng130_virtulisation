First step of creating 2 virtual machines is to set up the following config in the vagrant file.



```
Vagrant.configure("2") do |config|
   config.vm.define "app" do |app|
     app.vm.box = "ubuntu/bionic64"
     app.vm.network "private_network", ip: "192.168.56.10"
     app.vm.synced_folder ".", "/home/vagrant/app" # change it to your home location 
     app.vm.provision "shell", path: "app/provsion.sh", privileged: false
                                    # provide path for your provision.sh 
   end
 
   config.vm.define "db" do |db|
     db.vm.box = "ubuntu/bionic64"
     db.vm.network "private_network", ip: "192.168.56.11"
     
   end
 end
# exit out of your vm
# run vagrant reload from your localhost - from same location
# where your vagrantfile
# vagrant ssh
# sudo apt-get install nginx -y

```

## MongoDB set up

-  Be careful of these keys, they will go out of date:
  
  ```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update -y
sudo apt-get upgrade -y

# sudo apt-get install mongodb-org=3.2.20 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
# sudo apt-get install mongodb-org=3.2.20 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# if mongo is is set up correctly these will be successful
sudo systemctl restart mongod
sudo systemctl enable mongod

```

`sudo systemctl status mongod`
`sudo systemctl restart mongod`
`sudo systemctl enable mongod`
`sudo systemctl status mongod`

## Change the mongod.conf

- allow ip 0.0.0.0
- cd /etc
- sudo nano mongod.conf
```
port: 27017
  bindIp: 0.0.0.0
  ```

sudo systemctl restart mongod
sudo systemctl enable mongod
sudo systemctl status mongod

### Final step return to app vm 

- `create an env var called DB_HOST=mongodb://192.168.56.11:27017/posts `
- the ip address needs to be the one for the db
- printenv DB_HOST
- npm start
- if experience any errors loading up the app then `ps aux`
- delete the npm bur doing `kill -9 no`