# Envoy Per Route Filter Configuration Demo

This is a small demo showing how you can enable filter configuration on both an envoy listener
and a route attached to that listener. It is a companion to demo to [this blog post]().

## Tasks

### setup
Runs the backend service for envoy to route to
```
docker run -d --rm --name backend -p 8080:8080 hashicorp/http-echo:latest -text "hello world" -listen ":8080"
```

## basic
Runs envoy using `func-e` in the basic configuration
```
func-e run -c ./basic.yaml
```

## per-route
Runs envoy using `func-e` in the configuration using the per route rbac configuration
```
func-e run -c ./per-route.yaml
```

## teardown
Stops the backend service that was started with `setup`
```
docker stop backend
```
