# Brook Heroku

## Image

Lightweight image base on alpine-latest occupied less resource

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/YulinChan/brook-heroku)

## Environment

passwd: a password for user authentication

## Usage

Run the command below on your computer

```
brook wssclient --wssserver wss://${app_name}.herokuapp.com:443 --password ${passwd}
```

${app_name} is the name of your heroku-app, ${passwd} is your password setted for brook

## Tips

Use cloudflare worker to do a loadbalance

```javascript
const array = ['app1.herokuapp.com',
               'app2.herokuapp.com',
               'app3.herokuapp.com',
               'app4.herokuapp.com',
               'app5.herokuapp.com']
addEventListener(
    "fetch",event => {
        let url = new URL(event.request.url);
        url.hostname = array[Math.round(Math.random()*(array.length-1))];
        let request = new Request(url,event.request);
        event.respondWith(
            fetch(request)
        )
    }
)
```