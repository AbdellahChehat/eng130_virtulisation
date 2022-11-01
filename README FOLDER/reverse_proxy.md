## Setup reverse proxy with nginx

 - First step is to run this command on the VM: 
 - `sudo nano /etc/nginx/sites-available/default`

- Step 2: Within the server block you should have an existing location / block. Replace the contents of that block with the following configuration. If your application is set to listen on a different port, update the highlighted portion to the correct port number.

 
```
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```
- Step 3: `sudo nginx -t ` This checks for syntax errors 

- Step 4: `sudo systemctl restart nginx`

  
