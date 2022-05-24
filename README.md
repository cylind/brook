# Brook Heroku

## Image

Lightweight image base on alpine-latest occupied less resource

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Environment

passwd: a password for user authentication

## Usage

Run the command below on your computer

```
brook wssclient --wssserver wss://${app_name}.herokuapp.com:443 --password ${passwd}
```

$\{app_name\} is the name of your heroku-app, $\{passwd\} is your password setted for brook
