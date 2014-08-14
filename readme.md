#My ip is

a web service that echo the internet protocol (IP) of a request.

## Usage

```
$ curl myipis.herokuapp.com
1.2.3.4
```

```
$ curl -H "Accept: application/json" myipis.herokuapp.com
=> {"ip" : "1.2.3.4"}
```
