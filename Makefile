.PHONY: setup
setup:
	docker run -d --rm --name backend -p 8080:8080 hashicorp/http-echo:latest -text "hello world" -listen ":8080"

.PHONY: basic
basic:
	func-e run -c ./basic.yaml

.PHONY: per-route
per-route:
	func-e run -c ./per-route.yaml

.PHONY: teardown
teardown:
	docker stop backend
