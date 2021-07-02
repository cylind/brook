# V8086 Heroku

## Image

Lightweight image base on alpine-latest occupied less resource

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/YulinChan/v8086-heroku)

## Environment 

UUID: A UUID for User Authentication

webSocket path: `/css`

alterId : `32`

transport security: `tls`

## Tips

Cloudflare worker reverse proxy

```
addEventListener(
  "fetch",event => {
     let url=new URL(event.request.url);
     url.hostname="heroku-app address";
     let request=new Request(url,event.request);
     event. respondWith(
       fetch(request)
     )
  }
)
```

Clash load balance

```
# load-balance: The request of the same eTLD+1 will be dial to the same proxy.
- name: Load-balance
  type: load-balance
  proxies:
    - v8086
    - v8087
    - v8088
    - v80286
    - v80386
  url: 'http://www.gstatic.com/generate_204'
  interval: 300
```

refer: [clash configure wiki](https://github.com/Dreamacro/clash/wiki/configuration)
