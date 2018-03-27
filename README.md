### Jenkins_dashboard


### install ruby:

```sudo apt-get install ruby-dev```

### install nodejs:

```sudo apt-get install nodejs```

### install bundle ( to install dependencies ):


```gem install bundle```


### install dependencies:

```sudo bundle install```


### create config
```cp config.ru.example config.ru```


### edit config
```nano config.ru```

change "http://jenkins.address.edit.me/" with the address of your Jenkins instance
change "edit-username" with your jenkins username
change "edit-password" with your jenkins password


### start the dashboard

```dashing start```


### create a screen session
to run it when terminal connection closes.

#### install screen
```sudo apt-get install screen```

#### create new screen session
```screen -S dashboard```

#### start dashboard inside screen
```dashing start```

#### leave screen
```ctrl+a+d```


## Reverse Proxy Config for Nginx
the dashboard listens on port 3030, use nginx as a reverse proxy infront ( free letsencrypt certs/rate limits)
```
location / {
       proxy_set_header Host $host;
       proxy_set_header X-Real-IP $remote_addr;
       proxy_pass http://localhost:3030;
   }
```
