build-docker:
	docker build -t moonwell-subgraph .

bash:
	docker run --rm -it \
		-v $$(pwd):$$(pwd) \
		--workdir $$(pwd) \
		moonwell-subgraph \
		bash

clean:
	rm -rf subgraph.yaml src/constants.ts generated/ build/

generate-config:
	YARN_SILENT=1 yarn mustache config/$(network).subgraph.json subgraph.mustache > subgraph.yaml && \
	jq -r 'to_entries[] | "export let " + .key + " = " + (.value | tojson)' config/$(network).constants.json > src/constants.ts

codegen:
	yarn graph codegen

.PHONY: build
build:
	yarn graph build

deploy:
	yarn graph deploy moonwell-fi/moonwell-$(network) --access-token $(access_token) --node https://api.thegraph.com/deploy/

all:
	$(MAKE) clean generate-config codegen deploy