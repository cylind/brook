# Brook

Lightweight image base on alpine occupied less resource

## Depoly

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/YulinChan/brook)

## Environment

passwd: a password for user authentication

## Usage

Run the command below on your computer

```
brook wssclient --wssserver wss://${app_name}.herokuapp.com:443 --password ${passwd}
```

it will listen on port 1080
